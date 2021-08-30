//
//  cell.swift
//  checkbox
//
//  Created by Стас Жингель on 28.08.2021.
//

import UIKit

class Cell: UICollectionViewCell {
    let button: UIButton = .init()
    var tapp: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(button)
        button.tintColor = .orange
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    
    @objc func tap() {
        tapp?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//class lastCell: UICollectionViewCell {
//    var colorArray = [UIColor(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)), UIColor(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)),UIColor(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), UIColor(#colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)), UIColor(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))]
//    var buttons : [UIButton] = .init()
//    var tapp: (() -> Void)?
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        for (index,color) in colorArray.enumerated() {
//            let button = UIButton()
//            button.tintColor = color
//            self.contentView.addSubview(button)
//            button.translatesAutoresizingMaskIntoConstraints = false
//            button.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
//            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: CGFloat(30 + index * 40)).isActive = true
//            button.setImage(UIImage(systemName: "circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 35)), for: .normal)
//            buttons.append(button)
//        }
//    }
//    @objc func tap() {
//        tapp?()
//    }
//
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//
//
//}



class lastCell : UICollectionViewCell {
    var select = false
    var colors: [buttonColor] = [buttonColor(button: UIButton(color: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))),
                                  buttonColor(button: UIButton(color: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))),
                                  buttonColor(button: UIButton(color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))),
                                  buttonColor(button: UIButton(color: #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1))),
                                  buttonColor(button: UIButton(color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
    ]
    var tapp: (() -> Void)?
    override init(frame: CGRect) {
        super.init(frame: frame)
        for (index,button) in colors.enumerated() {
            self.contentView.addSubview(button.button)
            button.button.translatesAutoresizingMaskIntoConstraints = false
            button.button.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
            button.button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: CGFloat(30 + index * 40)).isActive = true
           
            button.button.addTarget(self, action: #selector(tap), for: .touchUpInside)
            button.button.setImage(button.isEnable ? UIImage(systemName: "circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 35)) : UIImage(systemName: "circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 15)), for: .normal)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //    func buttonAction(_ sender: UIButton) {
//        for button in buttons {
//            if button == sender {
//                button.setImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControl.State#>)
//            }
//
//
//        }
//    }
    @objc func tap() {
           tapp?()
       }
}
