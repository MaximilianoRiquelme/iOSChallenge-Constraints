//
//  NetworkManager.swift
//  exercise3
//
//  Created by Maximiliano Riquelme Vera on 29/07/2021.
//

import Foundation

protocol Manager {
    func parseJsonToArray(completion: @escaping ([Message]?) -> Void)
}

class NetworkManager : Manager {
    
    func parseJsonToArray(completion: @escaping ([Message]?) -> Void)
    {
        DispatchQueue.global().async
        {
            guard let path = Bundle.main.path(forResource: "messages", ofType: "json") else{
                return
            }
        
            guard let jsonData = try? Data(contentsOf: URL(fileURLWithPath: "Message")) else{
                return
            }
            
            guard let jsonMessages = try? JSONDecoder().decode([Message].self, from: jsonData) else {
                return
            }
            completion(jsonMessages)
        }
        
        
    }
}
