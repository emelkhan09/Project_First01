//
//  ViewController.swift
//  Project_First
//
//  Created by test on 23.09.2020.
//  Copyright © 2020 Emelkhan. All rights reserved.
//

import UIKit

final class SearchViewController: UIViewController {
    
    private enum Section: CaseIterable {
        case main
    }
    
    private var repositories = ["Alamofire", "Realm", "KingFisher", "SnapKit"]
    
    private lazy var collectionView: UICollectionView = {
        let config = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: config)

        let collectionView = UICollectionView(
            frame: view.bounds,
            collectionViewLayout: layout
        )
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        return collectionView
    }()
    
    private lazy var dataSource: UICollectionViewDiffableDataSource<Section, String> = {
        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, [String]>
          { cell, indexPath, repository in
            var content = cell.defaultContentConfiguration()
            content.text = repository
            cell.contentConfiguration = content
        }


    return UICollectionViewDiffableDataSource<Section, String>(collectionView: collectionView)
      { (collectionView, indexPath, repository) -> UICollectionViewCell? in
    collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: repository)
      }
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        title = "Search"
    }
}
