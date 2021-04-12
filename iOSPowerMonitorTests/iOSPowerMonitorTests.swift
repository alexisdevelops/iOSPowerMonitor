//
//  iOSPowerMonitorTests.swift
//  iOSPowerMonitorTests
//
//  Created by alexis on 11/04/21.
//

import XCTest
@testable import iOSPowerMonitor

class iOSPowerMonitorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUnpluggedDeviceShowsDown() {
       // given
       let sut = PowerMonitor(device: UnpluggedDeviceMock())
       // when
       let message = sut.getStatus()
       // then
        XCTAssertEqual(message, "Power is down")
    }


//    func testUnpluggedDeviceShowsDown() {
//        // given
//        let sut = PowerMonitor(device:
//                                DeviceMock(testBatteryState: .unplugged))
//        // when
//        let message = sut.getStatus()
//        // then
//        XCTAssertEqual(message, "Power is down")
//    }
}
