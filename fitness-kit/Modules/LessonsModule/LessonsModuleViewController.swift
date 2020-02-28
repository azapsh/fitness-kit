//
//  LessonsModuleViewController.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import UIKit

final class LessonsModuleViewController: UIViewController {
    // MARK: Constants

    // MARK: IBOutlets

    @IBOutlet weak var tableView: UITableView!
    // MARK: Properties

    var presenter: LessonsModulePresenter!

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "LessonTableViewCell", bundle: nil), forCellReuseIdentifier: "LessonTableViewCell")
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    // MARK: Methods

    // MARK: IBActions

}

extension LessonsModuleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("LessonsService.shared.lessons.count>",LessonsService.shared.lessons.count)
        return LessonsService.shared.lessons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonTableViewCell") as! LessonTableViewCell
        print(" LessonsService.shared.lessons[indexPath.row]>",indexPath.row," ->",LessonsService.shared.lessons[indexPath.row])
        cell.setup(less: LessonsService.shared.lessons[indexPath.row])
        return cell
    }
}


extension LessonsModuleViewController: LessonsModuleViewProtocol {

}


