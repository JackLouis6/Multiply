//
//  ContentView.swift
//  Multiply
//
//  Created by Jack Louis on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var answer = 0
    @State private var textField1 = ""
    @State private var textField2 = ""
    @State private var image = ""
    
    var body: some View {
        
        VStack {
            Text("Mutliply")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()
            TextField("Enter Value", text: $textField1)
                .multilineTextAlignment(.center)
                .font(.title)
            TextField("Enter Second Value", text: $textField2)
                .multilineTextAlignment(.center)
                .font(.title)
            
            Button ("Multiply") {
                if let numberOne = Int(textField1) {
                    if let numberTwo = Int(textField2) {
                        answer = numberOne * numberTwo
                        if answer == 64 {
                            image = "Kong3"
                        }
                        else if answer % 2 == 0 {
                            image = "Monkey2"
                        }
                        else {
                            image = "Monkey1"
                        }
                    }
                }
            }
            
            Text("\(answer)")
                .font(.body)
            Image(image)
            
            
            
            
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
