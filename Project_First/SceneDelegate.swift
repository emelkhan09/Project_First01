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
            
            let vc = ListController()
            vc.title = "Users"
            
            let nav = UINavigationController(rootViewController: vc)
            nav.navigationBar.prefersLargeTitles = true
            
            window.rootViewController = nav
            self.window = window
            window.makeKeyAndVisible()
        }

    }
