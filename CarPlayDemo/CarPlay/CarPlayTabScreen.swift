//
//  CarPlayTabScreen.swift
//  CarPlayDemo
//
//  Created by Jason Crowley on 20/6/21.
//

import Foundation
import CarPlay


func createCarPlayTabScreen(cpInterface: CPInterfaceController) -> CPTemplate {
    
    let template = CPTabBarTemplate(templates: [createCarPlayPOISCreen(cpInterface: cpInterface), createCarPlayListScreen(cpInterface: cpInterface)])
    
//    let template = CPTabBarTemplate(templates: [createCarPlayPOISCreen(cpInterface: cpInterface), createCarPlayListScreen2(cpInterface: cpInterface)])
    
    return template
    
}



