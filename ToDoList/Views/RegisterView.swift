//
//  RegisterView.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 20/06/2024.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start oganizing todos", angle: -15, background: .orange)
            
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())

                TLButton(text: "Register"){
                    //attempt to register
                }
            }
            .offset(y:-50)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
