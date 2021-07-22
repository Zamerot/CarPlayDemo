//
//  CarPlayListScreen.swift
//  CarPlayDemo
//
//  Created by Jason Crowley on 20/6/21.
//

import Foundation
import CarPlay

func createCarPlayListScreen(cpInterface: CPInterfaceController) -> CPTemplate {
    var listItems: [CPListItem] = []
    
    listItems.append(createListItem(cpInterface: cpInterface, title: "Car Park 1", detailText: "Some Details"))
   
    listItems.append(createListItem(cpInterface: cpInterface, title: "Car Park 2", detailText: "Some Details"))

    let template = CPListTemplate(title: "List Screen", sections: [CPListSection(items: listItems)])

    template.tabTitle = "List Screen"
    template.tabImage = #imageLiteral(resourceName: "ListIcon")
    
    return template
}

func createListItem(cpInterface: CPInterfaceController, title: String, detailText: String) -> CPListItem {
    
    let listItem = CPListItem(text: title, detailText: detailText)
    
    listItem.handler = {_, _ in
        cpInterface.pushTemplate(createCarParkDetailScreen(cpInterface: cpInterface, carParkName: title), animated: true)
    }
    
    return listItem
}




