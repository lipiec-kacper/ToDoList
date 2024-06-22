//
//  ContentView.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 20/06/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentuserId.isEmpty{
            //Signed in
            ToDoListView()
        }else{
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
