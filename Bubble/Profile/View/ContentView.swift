//
//  ContentView.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/21/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                MapView()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .center) {
                    Text("Ali Wong")
                        .font(.title)
                        .padding()
                    
                    Text("Hometown: San Francisco, CA")
                        .font(.subheadline)
                    Text("Loves fried chicken skin")
                        .font(.subheadline)
                }
                .padding()
                .navigationBarTitle(Text("Profile"), displayMode: .inline)
            }
            
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
