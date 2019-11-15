//
//  ContentView.swift
//  TestMe
//
//  Created by Raven Weitzel on 11/15/19.
//  Copyright © 2019 Raven Weitzel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State var phrase = "Hello, World!"
    
    var body: some View {
        VStack {
            Spacer()
            Text(phrase)
            Spacer()
            Button(action: {
                self.phrase = Randomizer.randomString()
            }, label: {
                Text("Scramble")
            })
                .padding(.all)
            Button(action: {
                self.phrase = "Hello, World!"
            }, label: {
                Text("Reset")
            })
                .padding(.all)
                .foregroundColor(.red)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
