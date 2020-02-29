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
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    // MARK: Methods

    // MARK: IBActions

}

extension LessonsModuleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LessonsService.shared.lessons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonTableViewCell") as! LessonTableViewCell
        cell.setup(less: LessonsService.shared.lessons[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lesson = LessonsService.shared.lessons[indexPath.row]
        presenter?.showLessoneInfo(lesson: lesson)
    }
}


extension LessonsModuleViewController: LessonsModuleViewProtocol {

}


