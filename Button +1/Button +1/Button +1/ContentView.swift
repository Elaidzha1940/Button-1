//
//  ContentView.swift
//  Button +1
//
//  Created by Elaidzha Shchukin on 16.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counterValue = 0
    
    var body: some View {
        
        VStack {
            Text("\(counterValue)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .frame(width: 80, height: 80)
                .background(
                    Circle()
                        .foregroundColor(.gray)
                    
                )
            Spacer()
                .frame(height: 40)
            
            HStack {
                
                Button {
                    // Clear
                    clearValue()
                } label: {
                    ActionButton(btnTitle: "+AC", btnColor: .red)
                }
                
                Button {
                    // Add one
                    inrementValue()
                } label: {
                    ActionButton(btnTitle: "+ 1", btnColor: .blue)
                }
            }
            
        }
        
    }
    
    fileprivate func inrementValue() {
        counterValue += 1
    }
    fileprivate func clearValue() {
        counterValue = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ActionButton: View {
    let btnTitle: String
    let btnColor: Color
    var body: some View {
        Text(btnTitle)
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 80, height: 40)
            .background(
                
                Capsule()
                    .foregroundColor(btnColor)
                
            )
    }
}
