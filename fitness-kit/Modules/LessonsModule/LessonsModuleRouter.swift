//
//  LessonsModuleRouter.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation
import UIKit

protocol LessonsModuleRouter: class {

}

final class LessonsModuleRouterImplementation: LessonsModuleRouter {
    
    // MARK: Properties
    weak var view: LessonsModuleViewController?
    weak var presenter: LessonsModulePresenter? 
    
    init(with viewController: LessonsModuleViewController) {
        self.view = viewController
    }
    // MARK: Internal helpers

}

