//
//  ViewController.swift
//  Translation
//
//  Created by JeongminKim on 2022/03/24.
//

import UIKit

enum TabBarItem: CaseIterable {
    case translate
    case bookmark
    
    var title: String {
        switch self {
        case .translate:
            return "번역"
        case .bookmark:
            return "즐겨찾기"
        }
    }
    
    var icon: (default: UIImage?, selected: UIImage?) {
        switch self {
        case .translate:
            return (default: UIImage(systemName: "mic"), selected: UIImage(systemName: "mic.fill"))
        case .bookmark:
            return (default: UIImage(systemName: "star"), selected: UIImage(systemName: "star.fill"))
        }
    }
    
    var viewController: UIViewController {
        switch self {
        case .translate:
            return UINavigationController(rootViewController: TranslateViewController())
        case .bookmark:
            return UINavigationController(rootViewController: BookmarkListViewController())
        }
    }
}

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarViewController: [UIViewController] = TabBarItem.allCases
            .map { tabCase in
                let viewController = tabCase.viewController
                viewController.tabBarItem = UITabBarItem(
                    title: tabCase.title,
                    image: tabCase.icon.default,
                    selectedImage: tabCase.icon.selected
                )
                return viewController
            }
        
        self.viewControllers = tabBarViewController
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
