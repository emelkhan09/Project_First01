//
//  SceneDelegate.swift
//  Project_First
//
//  Created by test on 23.09.2020.
//  Copyright © 2020 Emelkhan. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

        var window: UIWindow?

        func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            
            guard let windowScene = scene as? UIWindowScene else { return }
            let window = UIWindow(windowScene: windowScene)
            
            let searchViewController = SearchViewController()
            searchViewController.title = "Users"
            
            let nav = UINavigationController(rootViewController: searchViewController)
            nav.navigationBar.prefersLargeTitles = true
            
            window.rootViewController = nav
            self.window = window
            window.makeKeyAndVisible()
        }

    }
