//
//  ViewController.swift
//  Project_First
//
//  Created by test on 23.09.2020.
//  Copyright © 2020 Emelkhan. All rights reserved.
//

import UIKit

class ListController: UICollectionViewController {
    
    var repositaries = ["Alamofire","Realm","KingFisher","SnapKit"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var config = UICollectionLayoutListConfiguration(appearance:
          .insetGrouped)
        config.backgroundColor = .systemPurple
        collectionView.collectionViewLayout =
          UICollectionViewCompositionalLayout.list(using: config)
    }


}

