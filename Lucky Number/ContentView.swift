//
//  ContentView.swift
//  Lucky Number
//
//  Created by Mohale on 2022/07/04.
//

import SwiftUI

struct ContentView: View {
    @State private var runCount = generateNumber()
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Lucky Number")
                .font(.title)
            
            Text(String(runCount))
                .font(.title)
            
            Button("Generate", action: {
                runCount = generateNumber()
                print("Some Number")
            }).background(Color(UIColor.systemIndigo))
                .foregroundColor(Color.white)
                .cornerRadius(8)
                .buttonStyle(.bordered)
                
        }
        .padding(10)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

func generateNumber() -> Int {
    return Int(arc4random_uniform(100)) + 1
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
