//
//  CustomTabView.swift
//  SmartHome
//
//  Created by Raphael Cerqueira on 12/09/20.
//

import SwiftUI

struct CustomTabView: View {
    @State var selectedIndex = 0
    
    var body: some View {
        HStack {
            Button(action: {
                self.selectedIndex = 0
            }, label: {
                Image(systemName: "house")
                    .font(.system(size: 24))
                    .foregroundColor(self.selectedIndex == 0 ? .black : .gray)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                self.selectedIndex = 1
            }, label: {
                Image(systemName: "bolt")
                    .font(.system(size: 24))
                    .foregroundColor(self.selectedIndex == 1 ? .black : .gray)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                self.selectedIndex = 2
            }, label: {
                Image(systemName: "chart.bar")
                    .font(.system(size: 24))
                    .foregroundColor(self.selectedIndex == 2 ? .black : .gray)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                self.selectedIndex = 3
            }, label: {
                Image(systemName: "person")
                    .font(.system(size: 24))
                    .foregroundColor(self.selectedIndex == 3 ? .black : .gray)
            })
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
