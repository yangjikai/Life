//
//  Extension-UIView.swift
//  Life
//
//  Created by 杨冀凯 on 2019/6/12.
//  Copyright © 2019 yyy. All rights reserved.
//

extension UIView {
    
    /// 给view添加边框
    ///
    /// - Parameters:
    ///   - position: 边框位置
    ///   - inset: 内边距，默认zero
    ///   - color: 颜色
    ///   - width: 边框宽度
    public func addBorder(position: CommonPosition, inset: UIEdgeInsets? = nil, color: UIColor, width: CGFloat) {
        
        let scaleWidth = width
        
        let border = CALayer()
        border.backgroundColor = color.cgColor
        if inset != nil {
            switch position {
            case .top:
                border.frame = CGRect(x: inset!.left, y: 0, width: self.bounds.size.width - abs(inset!.left) - abs(inset!.right), height: scaleWidth)
            case .left:
                border.frame = CGRect(x: 0, y: inset!.top, width: scaleWidth, height: self.bounds.size.height - abs(inset!.top) - abs(inset!.bottom))
            case .bottom:
                border.frame = CGRect(x: inset!.left, y: self.bounds.size.height - scaleWidth, width: self.bounds.size.width - abs(inset!.left) - abs(inset!.right), height: scaleWidth)
            case .right:
                border.frame = CGRect(x: self.bounds.size.width - scaleWidth, y: inset!.top, width: scaleWidth, height: self.bounds.size.height - abs(inset!.top) - abs(inset!.bottom))
            case .center: break
                
            }
        } else {
            switch position {
            case .top:
                border.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: scaleWidth)
            case .left:
                border.frame = CGRect(x: 0, y: 0, width: scaleWidth, height: self.bounds.size.height)
            case .bottom:
                border.frame = CGRect(x: 0, y: self.bounds.size.height - scaleWidth, width: self.bounds.size.width, height: scaleWidth)
            case .right:
                border.frame = CGRect(x: self.bounds.size.width - scaleWidth, y: 0, width: scaleWidth, height: self.bounds.size.height)
            case .center: break
            }
        }
        self.layer.addSublayer(border)
    }
    
}

