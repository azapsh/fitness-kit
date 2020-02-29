//
//  LessenViewModuleRouter.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation
import UIKit

protocol LessenViewModuleRouter: class {

}

final class LessenViewModuleRouterImplementation: LessenViewModuleRouter {
    
    // MARK: Properties
    weak var view: LessenViewModuleViewController?
    weak var presenter: LessenViewModulePresenter? 
    
    init(with viewController: LessenViewModuleViewController) {
        self.view = viewController
    }
    // MARK: Internal helpers

}

