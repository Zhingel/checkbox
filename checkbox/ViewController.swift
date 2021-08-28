//
//  ViewController.swift
//  checkbox
//
//  Created by Стас Жингель on 28.08.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {
    let tasks: [Task] = [Task(),Task(),Task(),Task(),Task(),Task(),Task(),Task(),Task()]
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        collectionView.register(Cell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tasks.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
        
        cell.backgroundColor = .green
        if indexPath.row != tasks.count + 1 {
        cell.button.setImage(tasks[indexPath.row].isEnabled ? UIImage(systemName: "largecircle.fill.circle",withConfiguration: UIImage.SymbolConfiguration(pointSize: 30)) : UIImage(systemName: "circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30)), for: .normal)
        cell.tapp = {
            self.tasks[indexPath.row].isEnabled.toggle()
            self.collectionView.reloadData()
        } }
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row != 10 {
         return   CGSize(width: 100, height: 100)}
        else {
         return   CGSize(width: view.bounds.width, height: 150)
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
}
