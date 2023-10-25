//
//  ContentView.swift
//  Start
//
//  Created by Альберт Хайдаров on 22.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetails = false
    @State var alpha = 0.0
    
    var body: some View {
        VStack {
            Text("Hello, world new!")
                .padding()
                .opacity(alpha)
                        .onAppear {
                            let baseAnimation = Animation.easeInOut(duration: 3)
            
                            withAnimation(baseAnimation) {
                                alpha = 1
                            }
                        }
            Button("Button title") {
                showDetails.toggle()
            }
//
            if showDetails {
                Text("New text")
                    .font(.largeTitle)
                    .opacity(alpha)
                    .onDisappear {
                        let baseAnimation = Animation.easeInOut(duration: 3)
                        
                        withAnimation(baseAnimation) {
                            alpha = 0
                        }
                    }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
         ContentView()
            .environment(\.locale, .init(identifier: "ru"))
           
    }
}
