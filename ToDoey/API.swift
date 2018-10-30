////
////  API.swift
////  ToDoey
////
////  Created by Asem Qaffaf on 10/29/18.
////  Copyright © 2018 Asem Qaffaf. All rights reserved.
////
//
//import UIKit
//
//struct info: Decodable {
//    let data : [data]
//    struct data: Decodable {
//        let timings: timings
//        struct timings: Decodable {
//            let Fajr: String?
//        }
//    }
//}
//
//class test {
//    
//    
//    func fitchAPI() -> String {
//    
//    var str = ""
//    let apiUrl = "https://api.aladhan.com/v1/calendar?&method=2&month=4&year=2017"
//   
//  
//        var url = URLComponents(string: apiUrl)
//        
//        url?.queryItems = [
//        URLQueryItem(name: "latitude", value: "51.508515"),
//            URLQueryItem(name: "longitude", value: "-0.1254872")
//        ]
//        
//let urlfinal = url?.url
//        
//        URLSession.shared.dataTask(with: urlfinal!){
//            (data,response,err) in
//            do {
//               let p = try JSONDecoder().decode(info.self, from: data!)
//                print(p.data[1].timings.Fajr!)
//          
//                str = p.data[1].timings.Fajr!
//            }
//            catch let err {
//                print("3333333" , err)
//            }
//        }.resume()
//        
//return str
//        }
//    
//
//}
