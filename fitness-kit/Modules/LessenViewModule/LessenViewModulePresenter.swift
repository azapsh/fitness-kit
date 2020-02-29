//
//  LessenViewModulePresenter.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation

protocol LessenViewModuleViewProtocol: class {

}

protocol LessenViewModuleViewPresenter: class {
    init(with view: LessenViewModuleViewProtocol, router: LessenViewModuleRouter)
}

final class LessenViewModulePresenter: LessenViewModuleViewPresenter {

    // MARK: Constants

    // MARK: Properties

    weak var view: LessenViewModuleViewProtocol?
    var router: LessenViewModuleRouter!

    init(with view: LessenViewModuleViewProtocol, router: LessenViewModuleRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: Methods
    
}
