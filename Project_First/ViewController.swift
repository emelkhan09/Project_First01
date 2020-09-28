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
    private enum Section: CaseIterable {
    case main
    }
    private lazy var dataSource: UICollectionViewDiffableDataSource<Section, [String]> = {
        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, [String]>
          { cell, indexPath, repositary in
            var content = cell.defaultContentConfiguration()
            content.text = repositary
            cell.contentConfiguration = content
        }


    return UICollectionViewDiffableDataSource<Section, [String]>(collectionView: collectionView)
      { (collectionView, indexPath, repositary) -> UICollectionViewCell? in
    collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: repositary)
      }
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
    }
        private func applySnapshot(animatingDifferences: Bool = true) {
          var snapshot = NSDiffableDataSourceSnapshot<Section, [String]>()
          snapshot.appendSections(Section.allCases)
          snapshot.appendItems(repositaries)
          dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
        }
        
        private func createLayout() {
        var config = UICollectionLayoutListConfiguration(appearance:
          .insetGrouped)
        config.backgroundColor = .systemPurple
        collectionView.collectionViewLayout =
          UICollectionViewCompositionalLayout.list(using: config)
        }
   
}

