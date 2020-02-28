//
//  LaunchModuleeRouter.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation
import UIKit
import SwinjectStoryboard

protocol LaunchModuleRouter: class {
    func showLessonsMudule() 
}

final class LaunchModuleRouterImplementation: LaunchModuleRouter {
    
    // MARK: Properties
    weak var view: LaunchModuleViewController?
    weak var presenter: LaunchModulePresenter?
    
    init(with viewController: LaunchModuleViewController) {
        self.view = viewController
    }
    // MARK: Internal helpers
    func showLessonsMudule() {
        let sb = SwinjectStoryboard.create(name: R.storyboard.lessonsModuleViewController.name, bundle: nil)
        guard let vc = sb.instantiateInitialViewController() as? LessonsModuleViewController else {
            return
        }
        
        view?.navigationController?.setNavigationBarHidden(true, animated: false)
        view?.navigationController?.setViewControllers([vc], animated: true)
    }
}

