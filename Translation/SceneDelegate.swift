//
//  SceneDelegate.swift
//  Translation
//
//  Created by JeongminKim on 2022/03/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: TabBarController())
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
    }
}
