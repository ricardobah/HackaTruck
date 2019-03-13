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
    
    var userLocation = CLLocation()
    @IBOutlet weak var mapViewMapKit: MKMapView!
    
   
    var locationManage = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapViewMapKit.showsUserLocation = true
        setupLocationManager()
        addGesture()
    }
    
    
    func addAnnotationToMap(gestureRecognizer: UIGestureRecognizer){
        let touchPoint = gestureRecognizer.location(in: mapViewMapKit)
        let newCoordinate: CLLocationCoordinate2D = mapViewMapKit.convert(touchPoint, toCoordinateFrom: mapViewMapKit)
        
        let newAnnotation = MKPointAnnotation()
         newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Hackatruck"
        newAnnotation.subtitle = String(describing: "Latitude \(newCoordinate.latitude), Longitude \(newCoordinate.longitude)")
    
        mapViewMapKit.addAnnotation(newAnnotation)
        
    
    }
    
    
    func setupLocationManager(){
        
        locationManage.delegate = self
        locationManage.desiredAccuracy = kCLLocationAccuracyBest
        locationManage.requestWhenInUseAuthorization()
        locationManage.startUpdatingLocation()
        
    }
    
    func addGesture(){
        let longPress = UILongPressGestureRecognizer (target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        longPress.minimumPressDuration = 1.0
        mapViewMapKit.addGestureRecognizer(longPress)
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count > 0 {
            if let location = locations.last{
                userLocation = location
                print("A localizacao é \(userLocation.coordinate)")
            
            }
        }
    }
    
    
}

