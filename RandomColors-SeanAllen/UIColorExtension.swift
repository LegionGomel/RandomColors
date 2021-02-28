//
//  UIColorExtension.swift
//  RandomColors-SeanAllen
//
//  Created by Yuri Ershov on 15.02.21.
//

import UIKit

extension UIColor {
    
    // Extend standart class for random functionality
    static func random() -> UIColor {
        let color = UIColor(red: CGFloat.random(in: 0...1),
                            green: CGFloat.random(in: 0...1),
                            blue: CGFloat.random(in: 0...1),
                            alpha: 1)
        return color
    }
}
