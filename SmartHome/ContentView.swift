//
//  ContentView.swift
//  SmartHome
//
//  Created by Raphael Cerqueira on 12/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all)
            
            HomeView()
            
            VStack {
                Spacer()

                CustomTabView()
            }
            .padding(.horizontal, 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
