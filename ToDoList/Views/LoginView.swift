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
            HeaderView()
            //Login Form
            Form{
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                Button {
                    //Attempt log in
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
            }
            
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
