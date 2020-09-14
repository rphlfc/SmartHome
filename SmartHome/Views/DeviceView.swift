//
//  DeviceView.swift
//  SmartHome
//
//  Created by Raphael Cerqueira on 12/09/20.
//

import SwiftUI

struct DeviceView: View {
    @State var isOn: Bool = false
    var device: DeviceItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image(systemName: device.image)
                    .font(.system(size: 28))
                    .padding(.top)
                
                Text(self.device.name)
                    .padding(.top)
                
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(self.isOn ? Color.white.opacity(0.3) : Color.black)
                        .frame(width: 40, height: 22)
                        .animation(.spring())
                    
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 18, height: 18)
                        .offset(x: self.isOn ? 2 : 20)
                }
                .padding(.top, 32)
                .onTapGesture {
                    self.isOn.toggle()
                }
            }
            
            Spacer()
        }
        .padding()
        .foregroundColor(self.isOn ? .white : .black)
        .background(RoundedRectangle(cornerRadius: 20).stroke(self.isOn ? self.device.backgroundColor : Color.gray.opacity(0.3), lineWidth: 1) .background(self.isOn ? self.device.backgroundColor : Color.white))
        .cornerRadius(20)
        .animation(.spring())
    }
}

struct DeviceView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceView(device: deviceData[0])
    }
}
