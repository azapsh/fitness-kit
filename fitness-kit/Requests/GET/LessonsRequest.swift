//
//  LessonsRequest.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import Alamofire
import MadUtils

final class LessonsRequest: RequestProtocol {
    var baseURLString: String
    var parameters: Parameters?
    var headers: HTTPHeaders?
    
    init() {
        baseURLString = URLs.lessonsUrl.rawValue
    }
    func path() -> String {
        return baseURL().appending("schedule/get_group_lessons_v2/1/")
    }
    func method() -> HTTPMethod {
        return .get
    }
}
