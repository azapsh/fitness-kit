//
//  NetworkService.swift
//  fitness-kit
//
//  Created by Ахмед Фокичев on 28.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

final class NetworkService {
    static let shared = NetworkService()
    
    func request(url: String, method: HTTPMethod, _headers: HTTPHeaders, parameters: Parameters,
                    encoding: ParameterEncoding, completion: @escaping (JSON, _ status:Int, _ text:String) -> Void) {
        
        AF.request(url, method: method, parameters: parameters, encoding: encoding, headers: _headers) .responseJSON { response in
            let statusCode = response.response?.statusCode ?? 0
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                completion(json, statusCode, "")
            case .failure(let error):
                print("error>", error)
                completion(JSON(), statusCode, "")
            }
        }
    }
}
