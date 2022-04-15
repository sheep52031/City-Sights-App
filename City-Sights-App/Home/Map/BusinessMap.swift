//
//  BusinessMap.swift
//  City-Sights-App
//
//  Created by 林家任 on 2022/4/14.
//

import SwiftUI
import MapKit

struct BusinessMap:UIViewRepresentable{
    
    @EnvironmentObject var model: ContentModel
    
    var locations:[MKPointAnnotation]{
        
        var annotations = [MKPointAnnotation]()

        //Create a set of annotations from our list of business
        for business in model.restaurants + model.sights{
            
            //If the business  has a lat/long, create an MKPointAnnotation for it.
            if let lat = business.coordinates?.latitude,let long = business.coordinates?.longitude{
                
              //Create a new annotation
                let a = MKPointAnnotation()
                
                a.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)

                a.title = business.name ?? ""
                
                annotations.append(a)
            }
        }
        return annotations
    }
    
    
    
    func makeUIView(context: Context) -> MKMapView {
        
        
        let mapView = MKMapView()
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .followWithHeading
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        //Remove all annotations
        uiView.removeAnnotations(uiView.annotations)
        
        //Add the ones based on the business
        uiView.showAnnotations(self.locations, animated: true)
    }
    
    static func dismantleUIView(_ uiView: MKMapView, coordinator: ()) {
        
        uiView.removeAnnotations(uiView.annotations)
    }
    
}
