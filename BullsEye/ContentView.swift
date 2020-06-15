//
//  ContentView.swift
//  BullsEye
//
//  Created by mohamed  habib on 15/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
         
            Text("Welcome to my tutoriel!")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
                Button(action: {
                    print("Button pressed!")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible) { () -> Alert in
                    return Alert(title: Text("Hello There"), message: Text("This is may first pop-up"), dismissButton: .default(Text("Awsome!")))
            }
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
