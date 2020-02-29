//
//  LessonTableViewCell.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import UIKit

class LessonTableViewCell: UITableViewCell {
    var lesson = Lesson()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var teacherLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setup(less:Lesson){
        print("less>",less.name, " lesson.color>",lesson.color)
        self.lesson = less
        nameLabel.text = lesson.name
        descriptionTextView.text = lesson.descript
        timeLabel.text = "Time:" + lesson.startTime + " - " + lesson.endTime
        teacherLabel.text = "teacher:" + lesson.teacher
        placeLabel.text = lesson.place
        colorView.backgroundColor =  UIColor(hex: lesson.color.lowercased() + "ff")
    }
}
