//
//  HomeView.swift
//  SmartHome
//
//  Created by Raphael Cerqueira on 12/09/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hi, Dimest")
                    .font(.system(size: 32, weight: .bold))
                
                Spacer()
                
                Image("dimest")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            }
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("A total of 4 devices")
                            .foregroundColor(.gray)
                        
                        Text("Living Room")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .semibold))
                    }
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis")
                            .font(.system(size: 24))
                            .foregroundColor(.gray)
                    })
                }
                .padding(.top, 20)
                
                LazyVGrid(columns: [
                    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 15),
                    GridItem(.flexible(minimum: 100, maximum: 200))
                ], spacing: 15, content: {
                    ForEach(deviceData) { device in
                        DeviceView(device: device)
                    }
                })
            }
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
            .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
