//
//  User.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 20/06/2024.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}


