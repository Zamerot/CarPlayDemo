//
//  CarParkDetailScreen.swift
//  CarPlayDemo
//
//  Created by Jason Crowley on 20/6/21.
//

import Foundation
import CarPlay

func createCarParkDetailScreen(cpInterface: CPInterfaceController, carParkName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    
    lines.append(CPInformationItem(title: "Address", detail: "Somewhere in the city"))
    lines.append(CPInformationItem(title: "Description", detail: "This is a car park"))
    
    
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "Done", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: true)
    }))
    
    let template = CPInformationTemplate(title: carParkName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}
