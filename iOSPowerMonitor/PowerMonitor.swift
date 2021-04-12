//
//  PowerMonitor.swift
//  iOSPowerMonitor
//
//  Created by alexis on 11/04/21.
//

import Foundation
import UIKit

struct PowerMonitor {
    var device: DeviceProtocol
    func getStatus() -> String {
        if device.batteryState == .unplugged {
            return "Power is down"
        } else if device.batteryState == .unknown {
            return "Error"
        } else {
            return "Power is up"
        }
    } }


