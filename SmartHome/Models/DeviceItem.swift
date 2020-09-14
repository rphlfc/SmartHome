//
//  DeviceItem.swift
//  SmartHome
//
//  Created by Raphael Cerqueira on 13/09/20.
//

import Foundation
import SwiftUI

struct DeviceItem: Identifiable {
    let id = UUID().uuidString
    let image: String
    let name: String
    let backgroundColor: Color
}

let deviceData = [
    DeviceItem(image: "lightbulb", name: "Smart\nSpotlight", backgroundColor: Color(#colorLiteral(red: 1, green: 0.3601307273, blue: 0.351044476, alpha: 1))),
    DeviceItem(image: "wind", name: "Smart\nAC", backgroundColor: Color(#colorLiteral(red: 0.46088624, green: 0.2218752205, blue: 0.9983002543, alpha: 1))),
    DeviceItem(image: "tv", name: "Smart\nTV", backgroundColor: Color(#colorLiteral(red: 1, green: 0.3601307273, blue: 0.351044476, alpha: 1))),
    DeviceItem(image: "hifispeaker", name: "Smart\nSound", backgroundColor: Color(#colorLiteral(red: 0.46088624, green: 0.2218752205, blue: 0.9983002543, alpha: 1)))
]
