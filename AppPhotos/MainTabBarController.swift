//
//  MainTabBarController.swift
//  AppPhotos
//
//  Created by Карина on 07.03.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
       
        
        viewControllers = [
            generationViewController(rootViewController: photosVC, title: "Photo", image: UIImage(systemName: "folder")),
            generationViewController(rootViewController: ViewController(), title: "Favourites", image: UIImage(systemName: "heart"))
        ]
    }
    
    private func generationViewController(rootViewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
