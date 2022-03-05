//
//  Extensions.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 02/03/2022.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius}
        set { layer.cornerRadius =  newValue
            layer.masksToBounds = newValue > 0}
    }
}
