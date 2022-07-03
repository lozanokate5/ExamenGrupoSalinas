//
//  Shows.swift
//  PruebaTest1
//
//  Created by catalina lozano on 02/07/22.
//

import Foundation

class Shows {
    
    
    func apicall(){
        guard let url = URL(string: "https://api.tvmaze.com/singlesearch/shows?q=girls") else { return }
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            do{
                let us = try JSONDecoder().decode(ShowModel.self, from: data)
                print(us)    
            } catch {}
            
        }
        task.resume()
    }
    
  
}
