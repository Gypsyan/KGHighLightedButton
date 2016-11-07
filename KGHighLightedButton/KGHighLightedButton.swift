//
//  KGHighLightedButton.swift
//  KGHighLightedButton
//
//  Created by Anantha Krishnan K G on 07/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit

@IBDesignable
open class KGHighLightedButton: UIButton {

    public enum Defaults {
        public static var colors = ColorSet(
            button: UIColor(colorLiteralRed: 29 / 255, green: 119 / 255, blue: 239 / 255, alpha: 1),
            shadow: UIColor(colorLiteralRed: 129 / 255, green: 243 / 255, blue: 253 / 255, alpha: 1)
        )
        public static var shadowHeight: CGFloat = 2
        public static var depth: Double = 3
        public static var cornerRadius: CGFloat = 5
    }
    
    public struct ColorSet {
        let button: UIColor
        let shadow: UIColor
        
        public init(button: UIColor, shadow: UIColor) {
            self.button = button
            self.shadow = shadow
        }
    }
    
    public var colors: ColorSet = Defaults.colors {
        didSet {
            setImages()
        }
    }
    
    @IBInspectable
    public var foreGroundColor:UIColor = Defaults.colors.button {
        didSet{
           setColor()
        }
    }
    @IBInspectable
    public var shadowsColor:UIColor = Defaults.colors.shadow{
        didSet{
            setColor()
        }
    }
    
    fileprivate func setColor(){
        
        self.colors = .init(button: foreGroundColor, shadow: shadowsColor)
        
    }
    
    @IBInspectable
    public var shadowHeight: CGFloat = Defaults.shadowHeight {
        didSet {
            setImages()
            updateTitleInsets()
        }
    }
    
    @IBInspectable
    public var depth: Double = Defaults.depth {
        didSet {
            setImages()
            updateTitleInsets()
        }
    }
    
    @IBInspectable
    public var cornerRadius: CGFloat = Defaults.cornerRadius {
        didSet {
            setImages()
        }
    }

    func configure() {
        adjustsImageWhenDisabled = false
        adjustsImageWhenHighlighted = false
    }
    // MARK: - UIButton
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setImages()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
        setImages()
    }
    
    override open var isHighlighted: Bool {
        didSet {
            updateTitleInsets()
        }
    }
    
    func updateTitleInsets() {
        let topPadding = isHighlighted ? shadowHeight * CGFloat(depth) : 0
        let bottomPadding = isHighlighted ? shadowHeight * (1 - CGFloat(depth)) : shadowHeight
        titleEdgeInsets = UIEdgeInsets(top: topPadding, left: 0, bottom: bottomPadding, right: 0)
    }
    
    fileprivate func setImages() {
        
        let normalImage = KGEnum.normalImage(color: colors.button, shadowHeight: shadowHeight, shadowColor: colors.shadow, cornerRadius: cornerRadius, buttonPressDepth: 0)
        let highlightedImage = KGEnum.normalImage(color: colors.button, shadowHeight: shadowHeight, shadowColor: colors.shadow, cornerRadius: cornerRadius, buttonPressDepth: shadowHeight * CGFloat(depth))
        
        setBackgroundImage(normalImage, for: .normal)
        setBackgroundImage(highlightedImage, for: .highlighted)
    }

}
