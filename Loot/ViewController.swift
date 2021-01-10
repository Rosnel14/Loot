//
//  ViewController.swift
//  Loot
//
//  Created by Rosnel Leyva-Cortés on 1/5/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var Map: MKMapView!
    fileprivate let locationManager:CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        Map.showsUserLocation = true
        Map.userTrackingMode = .follow
    
    }
    
    //@IBAction func Profile(_ sender: Any) {
//        let alertController = UIAlertController.init(title: "Your Profile", message: "Check your profile", preferredStyle: .alert)
//                let cancel = UIAlertAction.init(title: "Cancel", style: .cancel, handler: { action in
//                    print(action)
//                })
//                let ok = UIAlertAction.init(title: "OK", style: .default, handler: { action in
//                    print(action)
//                })
//                alertController.addAction(cancel)
//                alertController.addAction(ok)
//                self.present(alertController, animated: true, completion: nil)
    }
    
private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}

    
//    @IBAction func btnClick(_ sender: UIButton) {
//
//        switch sender.tag{
//
//        case 1:
//            msgLabel.text = "Check profile"
//        case 2:
//            msgLabel.text = "Check Inventory"
//        case 3:
//            msgLabel.text = "New Listing"
//        default:
//            msgLabel.text = ""
//        }
//    }
    
    



