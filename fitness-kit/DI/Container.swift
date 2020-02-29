//
//  Container.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import SwinjectStoryboard

extension SwinjectStoryboard {
    @objc class func setup() {
        //In this func register all services/controllers
        // MARK: LaunchViewController as Example
        defaultContainer.storyboardInitCompleted(LaunchModuleViewController.self) { (resolver, container) in
            let router = LaunchModuleRouterImplementation(with: container)
            let presenter = LaunchModulePresenter(with: container, router: router)
            container.presenter = presenter
        }
        // MARK: LaunchViewController as Example
        defaultContainer.storyboardInitCompleted(LessonsModuleViewController.self) { (resolver, container) in
            let router = LessonsModuleRouterImplementation(with: container)
            let presenter = LessonsModulePresenter(with: container, router: router)
            container.presenter = presenter
        }
    }
}
