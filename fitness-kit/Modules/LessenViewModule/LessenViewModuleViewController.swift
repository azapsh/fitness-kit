//
//  LessenViewModuleViewController.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import UIKit

final class LessenViewModuleViewController: UIViewController {
    // MARK: Constants

    // MARK: IBOutlets

    // MARK: Properties

    var presenter: LessenViewModulePresenter!
    var lesson: Lesson?
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    // MARK: Methods

    // MARK: IBActions

}

extension LessenViewModuleViewController: LessenViewModuleViewProtocol {
    
}
