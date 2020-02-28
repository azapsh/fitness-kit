//
//  LaunchModuleePresenter.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation

protocol LaunchModuleViewProtocol: class {

}

protocol LaunchModuleViewPresenter: class {
    init(with view: LaunchModuleViewProtocol, router: LaunchModuleRouter)
    func loadLessons()
}

final class LaunchModulePresenter: LaunchModuleViewPresenter {
    
    // MARK: Constants
    
    // MARK: Properties
    
    weak var view: LaunchModuleViewProtocol?
    var router: LaunchModuleRouter!
    
    init(with view: LaunchModuleViewProtocol, router: LaunchModuleRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: Methods
    // MARK: Methods
    func showLessonsMudule() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.router?.showLessonsMudule()
        }
    }
    func loadLessons(){
        LessonsService.shared.loadCacheLessons()
        LessonsService.shared.getLessons() { (status) in
            if status == 200 {
                LessonsService.shared.saveCacheLessons()
            }
            self.showLessonsMudule()
        }
    }
}
