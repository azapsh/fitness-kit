//
//  LessonsModuleRouter.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation
import UIKit
import SwinjectStoryboard

protocol LessonsModuleRouter: class {
    func showLessonViewMudule(lesson: Lesson)
}

final class LessonsModuleRouterImplementation: LessonsModuleRouter {
    
    // MARK: Properties
    weak var view: LessonsModuleViewController?
    weak var presenter: LessonsModulePresenter? 
    
    init(with viewController: LessonsModuleViewController) {
        self.view = viewController
    }
    // MARK: Internal helpers
    func showLessonViewMudule(lesson: Lesson) {
          let sb = SwinjectStoryboard.create(name: R.storyboard.lessenViewModuleViewController.name, bundle: nil)
          guard let vc = sb.instantiateInitialViewController() as? LessenViewModuleViewController else {
              return
          }
          view?.navigationController?.setNavigationBarHidden(false, animated: false)
          view?.navigationController?.pushViewController(vc, animated: true) 
      }
}

