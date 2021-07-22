//
//  CarPlayListScreen2.swift
//  CarPlayDemo
//
//  Created by Jason Crowley on 20/6/21.
//

import Foundation
import CarPlay

func createCarPlayListScreen2(cpInterface: CPInterfaceController) -> CPTemplate {
    
    let template = CPListTemplate(title: "List Screen", sections: [])
    
    var listItems: [CPListItem] = []
    
    let listItemPressedHandler: () -> () = {
        // When a list item is selected we call updateSections, this triggers a redraw
        // of the List view hiding the spinner triggered on selction
        template.updateSections([CPListSection(items: listItems)])
    }

    listItems.append(createListItem(cpInterface: cpInterface, title: "Item 1", detailText: "Some Details", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "Item 2", detailText: "Some Details", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "Item 3", detailText: "Some Details", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "Item 4", detailText: "Some Details", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "Item 5", detailText: "Some Details", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "Item 6", detailText: "Some Details", onPress: listItemPressedHandler))
    
    template.updateSections([CPListSection(items: listItems)])
    
    template.tabTitle = "List Screen"
    template.tabImage = #imageLiteral(resourceName: "ListIcon")
    
    
    return template
}

func createListItem(cpInterface: CPInterfaceController, title: String, detailText: String, onPress: (()->())?) -> CPListItem {
    
    let listItem = CPListItem(text: title, detailText: detailText)
    
    listItem.handler = {_, _ in
        cpInterface.pushTemplate(createCarParkDetailScreen(cpInterface: cpInterface, carParkName: title), animated: true, completion: {_,_  in
            if(onPress != nil) {
                onPress!()
            }
        })
    }
    return listItem
}




