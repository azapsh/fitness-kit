//
//  LessonsService.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import ObjectMapper

final class LessonsService {
    static let shared = LessonsService()
    var lessons = [Lesson]()
    
    func loadCacheLessons() {
        print("loadList")
        if let object = UserDefaults.standard.object(forKey: "Lessons") {
            let data = object as! Data
            let list = NSKeyedUnarchiver.unarchiveObject(with: data) as! [Lesson]
            lessons =  list
        }
    }

    func saveCacheLessons() {
        print("saveList")
        let encodedData = NSKeyedArchiver.archivedData(withRootObject: lessons)
        UserDefaults.standard.set(encodedData, forKey: "Lessons")
        UserDefaults.standard.synchronize()
    }
    
    func getLessons (completion: @escaping ( _ status:Int) -> Void) {
        let request = LessonsRequest()
        request.parameters = ["": ""]
        let httpHeaders = HTTPHeaders()
        NetworkService.shared.request(url: request.path(), method: request.method(), _headers: httpHeaders, parameters: request.parameters!, encoding: URLEncoding.default) { (json, status, text) in
            if status == 200 {
                print("getLessons>json>", json)
                if let list = Mapper<Lesson>().mapArray(JSONObject: json.object) {
                    self.lessons = list
                }
            }
            completion(status)
        }
    }
}
