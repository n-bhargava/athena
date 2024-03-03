//
//  ViewController.swift
//  athenahacks
//
//  Created by Naysa Bhargava on 3/2/24.
//

import UIKit
import CoreLocation
//import MessageUI

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var emergencyButton: UIButton!
    
    @IBOutlet weak var bellButton: UIButton!
    
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var heartButton: UIButton!
    
    var manager = CLLocationManager()
    
    var text = ""
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let first = locations.first else {
            return
        }
        
        text = "Please help me at this location: \(first.coordinate.longitude) | \(first.coordinate.latitude)"
    }
    
    
    
    @IBAction func sendMessage(_ sender: Any) {
        let phoneNumber = "9169450540"
        
        
        guard let messageURL = NSURL(string: "sms:\(phoneNumber)&body=\(text)")
        else {return}
        
        if UIApplication.shared.canOpenURL(messageURL as URL) {
            UIApplication.shared.openURL(messageURL as URL)
        }
        
    }
    
    @IBAction func sendMessageBell(_ sender: Any) {
        let phoneNumber = "9169450540"
        
        
        guard let messageURL = NSURL(string: "sms:\(phoneNumber)&body=\(text)")
        else {return}
        
        if UIApplication.shared.canOpenURL(messageURL as URL) {
            UIApplication.shared.openURL(messageURL as URL)
        }
    }
    
    @IBAction func sendMessageStar(_ sender: Any) {
        let phoneNumber = "9169450540"
        
        
        guard let messageURL = NSURL(string: "sms:\(phoneNumber)&body=\(text)")
        else {return}
        
        if UIApplication.shared.canOpenURL(messageURL as URL) {
            UIApplication.shared.openURL(messageURL as URL)
        }
    }
    
    @IBAction func sendMessageHeart(_ sender: Any) {
        let phoneNumber = "9169450540"
        
        guard let messageURL = NSURL(string: "sms:\(phoneNumber)&body=\(text)")
        else {return}
        
        if UIApplication.shared.canOpenURL(messageURL as URL) {
            UIApplication.shared.openURL(messageURL as URL)
        }
    }
    
}
