//
//  model.swift
//  checkbox
//
//  Created by Стас Жингель on 28.08.2021.
//

import UIKit

class Task {
    var isEnabled: Bool = false
    
}


struct buttonColor {
    var button: UIButton
    var isEnable: Bool = false
}

extension UIButton {
    convenience init(color: UIColor) {
        self.init()
        self.tintColor = color
    }
}
