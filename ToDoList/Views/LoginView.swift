//
//  LoginView.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 20/06/2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            //Header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)

                VStack {
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()

                    Text("Get things done")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            //Login Form
            
            
            //Create Account
        }
    }
}

#Preview {
    LoginView()
}
