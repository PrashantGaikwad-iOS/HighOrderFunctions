//
//  ViewController.swift
//  HighOrderFunctions
//
//  Created by Prashant G on 1/15/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myDevices = [Device]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myiMacPro       = Device(type: "iMac Pro", price: 4999.00, color: "Space Grey")
        let myiPhone6Plus   = Device(type: "iPhone", price: 799.00, color: "White")
        let myiPhone7       = Device(type: "iPhone", price: 699.00, color: "Black")
        let myiPad          = Device(type: "iPad", price: 599.00, color: "Space Grey")
        let myAppleWatch    = Device(type: "Apple Watch", price: 349.00, color: "Space Grey")
        let myAppleTV       = Device(type: "Apple TV", price: 199.00, color: "Black")
        
        myDevices = [myiMacPro, myiPhone6Plus, myiPhone7, myiPad, myAppleWatch, myAppleTV]
        
        
        
        // FILTER
        let iPhones = myDevices.filter({ $0.type == "iPhone"})
        print(iPhones)
        //var myPhones: [Device] = []
        //
        //for device in myDevices {
        //    if device.type == "iPhone" {
        //        myPhones.append(device)
        //    }
        //}
        
        
        // MAP
        let canadianPrices: [Float] = myDevices.map({ $0.price * 1.2})
        print(canadianPrices)
        
        
        // REDUCE
        let totalCanadianPrice: Float = canadianPrices.reduce(0.0, +)
        print(totalCanadianPrice)
        //var totalPrice: Float = 0.0
        //
        //for price in canadianPrices {
        //    totalPrice += price
        //}
        //
        //print(totalPrice)
        
    }


}

