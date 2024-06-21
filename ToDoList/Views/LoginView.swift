//
//  LoginView.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 20/06/2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
            //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
            //Login Form
                
            Form{
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(Color.red)
                }
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(text: "Login In"){
                    //Attempt to login 
                    viewModel.login()
                }
            }
            .offset(y:-50)
            
            //Create Account
            VStack{
                Text("New around here ?")
                
                NavigationLink("Create An Account", destination: RegisterView())
            }
            Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
