//
//  MapaViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by PDI on 17/02/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//


import UIKit
import MapKit
import CoreLocation

class MapaViewController:  UIViewController, CLLocationManagerDelegate {
        
    
    @IBOutlet weak var mapVIew: MKMapView!
        
        let locationManager = CLLocationManager()
        var userLocation = CLLocation()
        
        let locais = LocaisDAO.locaisGetList()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view, typically from a nib.
            
            mapVIew.showsUserLocation = true
            
            setupLocationManager()
            
            addLocationsToMap()
            
        }
        
        
        func setupLocationManager() {
            locationManager.delegate = self
            
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
            
            
            
        }
        
        func zoomIn() {
            
            let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
            let region: MKCoordinateRegion = MKCoordinateRegionMake(userLocation.coordinate, span)
            mapVIew.setRegion(region, animated: true)
            
        }
        
        func addLocationsToMap() {
            
            for local in self.locais {
                let newCoordinate = CLLocationCoordinate2D(latitude: CLLocationDegrees(local.latitude),
                                                           longitude: CLLocationDegrees(local.longitude))
                
                // criando a nova annotation
                let newAnnotation = MKPointAnnotation()
                newAnnotation.coordinate = newCoordinate
                newAnnotation.title = local.nomeDoLocal
                newAnnotation.subtitle = local.Info
                // newAnnotation.subtitle = String(local.tel)
                
                mapVIew.addAnnotation(newAnnotation)
            }
            
        }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
