//
//  PhotosCollectionViewController.swift
//  AppPhotos
//
//  Created by Карина on 07.03.2023.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .blue
        setupCollectionView()
        setupNavigationBar()
    }
    
    private func setupCollectionView() {
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellId")
    }
    
    private func setupNavigationBar() {
        let titleLabel = UILabel()
        titleLabel.text = "PHOTOS"
        titleLabel.textColor = .systemGray
        titleLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: titleLabel)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellId", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}


