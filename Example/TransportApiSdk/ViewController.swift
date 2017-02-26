//
//  ViewController.swift
//  TransportApiSdk
//
//  Created by Chris on 01/24/2017.
//  Copyright (c) 2017 Chris. All rights reserved.
//

import UIKit
import TransportApiSdk
import CoreLocation

class ViewController: UIViewController {

    // To get access credentials go to https://developer.whereismytransport.com
    let clientId = "84aaffba-6fe9-4f09-a603-f761f4643980"
    let clientSecret = "lwD6Etbz7D1NpjMc/0DWGr0PiJ3owLkoqlfVogj/LK8="
    
    var transportApiClient: TransportApiClient!
    
    @IBOutlet weak var resultTextView: UITextView!
    
    @IBAction func requestButton(_ sender: UIButton) {
        //let exclude = "geometry,directions,distance"
        //let startLocation = CLLocationCoordinate2D(latitude: -25.760938159763594, longitude: 28.23760986328125)
        //let endLocation = CLLocationCoordinate2D(latitude: -26.02655312878948, longitude: 28.124313354492184)
        //let onlyMode = [TransportMode.Rail]
        //let onlyAgencies = [""]
        
        self.resultTextView.text = "Something amazing is about to happen..."
        
        /*self.transportApiClient.PostJourney(startLocation: startLocation, endLocation: endLocation)
        {
            (result: TransportApiResult<Journey>) in
                DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
                }
        }*/
        
        /*self.transportApiClient.GetJourney(id: "rHfzAvs4Rki3jKccAUoGYA")
        {
            (result: TransportApiResult<Journey>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
        }*/
        
        self.transportApiClient.GetItinerary(journeyId: "rHfzAvs4Rki3jKccAUoGYA",
                                             itineraryId: "QIuuBAmdhU-mxaccAUoNRw")
         {
            (result: TransportApiResult<Itinerary>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
         }
        
        /*self.transportApiClient.GetAgencies()
        {
            (result: TransportApiResult<[Agency]>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
        }*/
        
        /*self.transportApiClient.GetAgency(id: "A1JHSPIg_kWV5XRHIepCLw")
            {
                (result: TransportApiResult<Agency>) in
                DispatchQueue.main.async
                    {
                        self.resultTextView.text = result.rawJson
                }
        }*/
        
        /*self.transportApiClient.GetStops()
        {
            (result: TransportApiResult<[Stop]>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
        }*/
        
        /*self.transportApiClient.GetStop(id: "S1twiBqUm0ul6ZMtCnfOcg")
        {
            (result: TransportApiResult<Stop>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
        }*/
        
        /*self.transportApiClient.GetStopTimetable(id: "S1twiBqUm0ul6ZMtCnfOcg")
        {
            (result: TransportApiResult<[StopTimetable]>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
        }*/
        
        /*self.transportApiClient.GetLines()
         {
            (result: TransportApiResult<[Line]>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
         }
        
        self.transportApiClient.GetLine(id: "giwBPOBfeE-C4acZAI_7uQ")
         {
            (result: TransportApiResult<Line>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
         }*/
        
        /*self.transportApiClient.GetLineTimetable(id: "giwBPOBfeE-C4acZAI_7uQ")
        {
            (result: TransportApiResult<[LineTimetable]>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
        }*/
        
        /*self.transportApiClient.GetFareProducts()
            {
                (result: TransportApiResult<[FareProduct]>) in
                DispatchQueue.main.async
                    {
                        self.resultTextView.text = result.rawJson
                }
        }*/
        
        /*self.transportApiClient.GetFareProduct(id: "BQWEZcffgUGF52ah5E9kJQ")
        {
            (result: TransportApiResult<FareProduct>) in
            DispatchQueue.main.async
                {
                    self.resultTextView.text = result.rawJson
            }
        }*/
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let transportApiClientSettings = TransportApiClientSettings(clientId: clientId, clientSecret: clientSecret)
        
        transportApiClient = TransportApiClient(transportApiClientSettings: transportApiClientSettings)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

