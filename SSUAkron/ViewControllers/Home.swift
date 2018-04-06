//
//  ViewController.swift
//  SSUAkron
//
//  Created by Muhannad Mousa on 3/15/18.
//  Copyright © 2018 Muhannad Mousa. All rights reserved.
//

import UIKit
import MapKit



class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locationManager = CLLocationManager()
        locationManager.requestAlwaysAuthorization()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .default
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}





