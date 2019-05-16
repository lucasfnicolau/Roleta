//
//  HomeVC.swift
//  Roleta
//
//  Created by Lucas Fernandez Nicolau on 04/05/19.
//  Copyright © 2019 {lfn}. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class HomeVC: UIViewController, UITextFieldDelegate, CLLocationManagerDelegate {
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var locationManager = CLLocationManager()
    var region: MKCoordinateRegion?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner.hidesWhenStopped = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tap)
        searchTextField.delegate = self
        
        if CLLocationManager.locationServicesEnabled() == true {
            
            if CLLocationManager.authorizationStatus() == .restricted || CLLocationManager.authorizationStatus() == .denied ||  CLLocationManager.authorizationStatus() == .notDetermined {
                locationManager.requestWhenInUseAuthorization()
            }
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.delegate = self
            locationManager.startUpdatingLocation()
        } else {
            print("Please turn on location services or GPS")
        }
    }
    
    //MARK:- CLLocationManager Delegates
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.locationManager.stopUpdatingLocation()
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.0001, longitudeDelta: 0.0001))
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Unable to access your current location")
    }
    
    @objc func dismissKeyboard() {
        searchTextField.resignFirstResponder()
    }
    
    @IBAction func go(_ sender: Any) {
        guard let search = searchTextField.text else { return }
        spinner.isHidden = false
        spinner.startAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        if let region = region {
            let searchRequest = MKLocalSearch.Request()
            searchRequest.naturalLanguageQuery = search
            searchRequest.region = region
            
            let localSearch = MKLocalSearch(request: searchRequest)
            localSearch.start { (response, error) in
                guard error == nil else {
                    print(error!)
                    self.spinner.stopAnimating()
                    return
                }
                
                let mapItems = response!.mapItems
                let random = Int(arc4random_uniform(UInt32(mapItems.count - 1)))
                
                self.spinner.stopAnimating()
                
                mapItems[random].openInMaps(launchOptions: nil)
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
            }
        }
        
        searchTextField.resignFirstResponder()
    }
 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
