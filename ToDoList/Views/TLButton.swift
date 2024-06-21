//
//  TLButton.swift
//  ToDoList
//
//  Created by Kacper Lipiec on 22/06/2024.
//

import SwiftUI

struct TLButton: View {
    let text : String
    let action: () -> Void
    var body: some View {
        VStack{
            Button {
                action()
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text(text)
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
        }
    }
}

#Preview {
    TLButton(text: "text"){
        //action
    }
}
