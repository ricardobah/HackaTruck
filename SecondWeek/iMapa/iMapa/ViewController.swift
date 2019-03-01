//
//  ViewController.swift
//  iMapa
//
//  Created by student on 28/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController,CLLocationManagerDelegate {

    
  
    @IBOutlet weak var mapViewMapKit: MKMapView!
    
    var locationManage = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapViewMapKit.showsUserLocation = true
        setupLocationManager()
    }

    func setupLocationManager(){
        
        locationManage.delegate = self
        locationManage.desiredAccuracy = kCLLocationAccuracyBest
        locationManage.requestWhenInUseAuthorization()
        locationManage.startUpdatingLocation()
        
    }
    
    

}

