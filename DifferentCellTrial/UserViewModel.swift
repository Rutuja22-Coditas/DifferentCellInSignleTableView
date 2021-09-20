//
//  UserViewModel.swift
//  DifferentCellTrial
//
//  Created by Coditas on 17/09/21.
//

import Foundation

class ViewModelUser {
    
    var empData = [Emp]() 
    
    func fetchJson(completion : @escaping([Emp])->())
    {
        let urlString = "https://reqres.in/api/users"
        if let url = URL(string: urlString){
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    do{
                        let sharedUrlSession = try JSONDecoder().decode(Users.self, from: data!)
                        self.empData = sharedUrlSession.data
                        completion(sharedUrlSession.data)
                    }
                    catch{
                        print("error:",error)
                    }
                }
            }.resume()
        }
        
        
    }
    
}
