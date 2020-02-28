//
//  Lesson.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import ObjectMapper

class Lesson: NSObject, NSCoding, Mappable  {
    var name = ""
    var startTime = ""
    var endTime = ""
    var teacher = ""
    var place = ""
    var descript = ""
    var color = ""
    
    override init() {}
    
    required convenience init?(map: Map) {
        self.init()
    }
    func mapping(map: Map) {
        name <- map["name"]
        startTime <- map["startTime"]
        endTime <- map["endTime"]
        teacher <- map["teacher"]
        place <- map["place"]
        descript <- map["description"]
        color <- map["color"]
    }
    // MARK: NSCoding
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        self.startTime = aDecoder.decodeObject(forKey: "startTime") as? String ?? ""
        self.endTime = aDecoder.decodeObject(forKey: "endTime")  as? String ?? ""
        self.teacher = aDecoder.decodeObject(forKey: "teacher")  as? String ?? ""
        self.place = aDecoder.decodeObject(forKey: "place")  as? String ?? ""
        self.descript = aDecoder.decodeObject(forKey: "descript")  as? String ?? ""
        self.color = aDecoder.decodeObject(forKey: "color")  as? String ?? ""
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.startTime, forKey: "startTime")
        aCoder.encode(self.endTime, forKey: "endTime")
        aCoder.encode(self.teacher, forKey: "teacher")
        aCoder.encode(self.place, forKey: "place")
        aCoder.encode(self.descript, forKey: "descript")
        aCoder.encode(self.color, forKey: "color")
    }
}
