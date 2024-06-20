//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 20/06/2024.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
