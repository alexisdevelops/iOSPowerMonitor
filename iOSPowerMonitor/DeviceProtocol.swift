//
//  DeviceProtocol.swift
//  iOSPowerMonitor
//
//  Created by alexis on 11/04/21.
//

import Foundation
import UIKit

protocol DeviceProtocol {
   var batteryState: UIDevice.BatteryState { get }
}

extension UIDevice: DeviceProtocol { }
