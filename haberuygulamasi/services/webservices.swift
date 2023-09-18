//
//  webservices.swift
//  haberuygulamasi
//
//  Created by Emir Seçer on 17.09.2023.
//

import Foundation

class webservises {
    
    func haberleriindir(url : URL, completion : @escaping ([News]?) ->()) {
        
        URLSession.shared.dataTask(with: url) { Data, URLResponse, Error in
            
            if let Error  = Error {
                
                print(Error.localizedDescription)
                completion(nil)
                
            } else if let data  = Data {
                
                let haberdizisi = try? JSONDecoder().decode([News].self, from: data)
                
                if let haberdizisi  = haberdizisi {
                    
                    completion(haberdizisi)
                }
            }
            
        }.resume()
        
        
        
    }
}
