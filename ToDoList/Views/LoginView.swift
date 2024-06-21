//
//  LoginView.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 20/06/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
            //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
            //Login Form
            Form{
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(text: "Login In"){
                    //Attempt to login 
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
