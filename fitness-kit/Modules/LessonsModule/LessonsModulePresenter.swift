//
//  LessonsModulePresenter.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation

protocol LessonsModuleViewProtocol: class {

}

protocol LessonsModuleViewPresenter: class {
    init(with view: LessonsModuleViewProtocol, router: LessonsModuleRouter)
}

final class LessonsModulePresenter: LessonsModuleViewPresenter {

    // MARK: Constants

    // MARK: Properties

    weak var view: LessonsModuleViewProtocol?
    var router: LessonsModuleRouter!

    init(with view: LessonsModuleViewProtocol, router: LessonsModuleRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: Methods
    
}
