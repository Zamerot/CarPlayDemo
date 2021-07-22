//
//  CarPlaySceneDelegate.swift
//  CarPlayDemo
//
//  Created by Jason Crowley on 20/6/21.
//

import Foundation
import CarPlay



@available(iOS 14, *)
class CarplaySceneDelegate : UIResponder, CPTemplateApplicationSceneDelegate{
    
    
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
                                  didConnect interfaceController: CPInterfaceController) {
        
        let template = createCarPlayPOISCreen( cpInterface: interfaceController)
        
        interfaceController.setRootTemplate( template, animated: false)
        
    }
}

