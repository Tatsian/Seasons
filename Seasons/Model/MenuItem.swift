//
//  Menu.swift
//  Seasons
//
//  Created by Tatsiana on 30.03.2020.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import Foundation

struct MenuItem {
    let name: String
    let iconImageName: String
    let headerImageName: String
    let backgroundColor: String
}

struct Menu {
    let items: [MenuItem]
    
    static let seasons = Menu(items: [
        MenuItem(name: "Winter".localized,
                 iconImageName: "winter",
                 headerImageName: "winter_header",
                 backgroundColor: "#BDBDBD"),
    
        MenuItem(name: "Spring".localized,
                 iconImageName: "spring",
                 headerImageName: "spring_header",
                 backgroundColor: "#9CCC65"),
        
        MenuItem(name: "Autumn".localized,
                 iconImageName: "autumn",
                 headerImageName: "autumn_header",
                 backgroundColor: "#7E57C2"),
        
        MenuItem(name: "Summer".localized,
                 iconImageName: "summer",
                 headerImageName: "summer_header",
                 backgroundColor: "#FFA726")
    ])
}
