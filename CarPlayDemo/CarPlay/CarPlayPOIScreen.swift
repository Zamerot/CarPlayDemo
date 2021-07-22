//
//  CarPlayPOIScreen.swift
//  CarPlayDemo
//
//  Created by Jason Crowley on 20/6/21.
//

import Foundation
import CarPlay


func createCarPlayPOISCreen(cpInterface: CPInterfaceController) -> CPTemplate {
    var pois: [CPPointOfInterest] = []
    
    
    pois.append(createPOI(cpInterface: cpInterface, name: "Car Park 1", lat: -31.943314, long: 115.861524))
    
    pois.append(createPOI(cpInterface: cpInterface, name: "Car Park 2", lat: -31.944789, long: 115.860591))
    
    pois.append(createPOI(cpInterface: cpInterface, name: "Car Park 3", lat: -31.944834, long: 115.863016))
    
    let template = CPPointOfInterestTemplate(title: "Car Parks", pointsOfInterest: pois, selectedIndex: NSNotFound)
    
    
    return template
}

func createPOI(cpInterface: CPInterfaceController, name: String, lat: Double, long: Double) -> CPPointOfInterest {
    
    let location = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: lat, longitude: long)))
    
    //  image sourced from https://www.flaticon.com/free-icon/placeholder_727606
    let image = #imageLiteral(resourceName: "MapMarker")
    let pinImage = UIImage(cgImage: image.cgImage!, scale:1, orientation: image.imageOrientation)
    
        
    let poi = CPPointOfInterest(location: location, title: name, subtitle: "Car Park", summary: " Car Park Summary", detailTitle: name, detailSubtitle: "Car Park Details", detailSummary: "Car Park Detail Summary", pinImage: pinImage)
    
    poi.primaryButton = CPTextButton(title: "More Details", textStyle: .normal, handler: { _ in
        cpInterface.pushTemplate(createCarParkDetailScreen(cpInterface: cpInterface, carParkName: name), animated: true)
    })
    
    return poi
}

