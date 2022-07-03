//
//  ShowModel.swift
//  PruebaTest1
//
//  Created by catalina lozano on 02/07/22.
//

import Foundation

struct ShowModel: Decodable{
    let name : String?
    let image: Image?
    let genres:[String]?
}

struct Image: Decodable{
    let medium : String?
}
