//
//  BambooData.swift
//  bamboo-watchOS WatchKit Extension
//
//  Created by gsm10 on 2021/11/02.
//

import Foundation
import Alamofire

struct API {
    //MARK : - 싱글턴 패턴
    static let shared = API()
    
    func getTest() {
        let url = "https://server.joog-lim.info/"

        let token : HTTPHeaders = [
            "Token" : "baselink/apiV2/post/AlgorithemList?count=10&cursor=60b8407473d81a1b4cc591a5&status=PENDING"
        ]
        AF.request(url, method: .get ,headers: token)
            .validate(statusCode: 200..<300)
            .responseJSON { (json) in
                print(json)
            }
        
    }
    
}
