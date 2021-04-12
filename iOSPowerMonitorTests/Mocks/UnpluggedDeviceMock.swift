//
//  UnpluggedDeviceMock.swift
//  iOSPowerMonitorTests
//
//  Created by alexis on 11/04/21.
//

import Foundation
import UIKit

class UnpluggedDeviceMock: UIDevice {
    override var batteryState: BatteryState {
        return .unplugged
    }
}

class UnknownDeviceMock: UIDevice {
    override var batteryState: BatteryState {
        return .unknown
    }
}

class ChargingDeviceMock: UIDevice {
    override var batteryState: BatteryState {
        return .charging
    }
}

//class DeviceMock: UIDevice {
//    var testBatteryState: BatteryState
//    init(testBatteryState: BatteryState) {
//        self.testBatteryState = testBatteryState
//        super.init()
//    }
//    override var batteryState: BatteryState {
//        return testBatteryState
//    }
//}

struct DeviceMock {
    var testBatteryState: UIDevice.BatteryState
    
    var batteryState: UIDevice.BatteryState {
        return testBatteryState
    }
}
