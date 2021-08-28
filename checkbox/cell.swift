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
