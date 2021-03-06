//
//  AccountViewControllerTest.swift
//  POL
//
//  Created by Chanintorn Asavavichairoj on 4/9/2558 BE.
//  Copyright (c) 2558 SCB. All rights reserved.
//

import UIKit
import XCTest

class AccountViewControllerTest: XCTestCase {

    var vc: AccountViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        var storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        vc = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as? AccountViewController
        vc.loadView()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testDisplayAccountDetailFromModel() {
        var account = AccountBuilder().build()
        vc.setupAccountData(account!)
        
        XCTAssertEqual(vc.accountNameLabel!.text!, account!.accountName!, "account name is equal")
        XCTAssertEqual(vc.accountNumberLabel!.text!, account!.accountNumber!, "account number is equal")
        XCTAssertEqual(vc.accountTypeLabel!.text!, account!.getAccountTypeString()!, "account type is equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
