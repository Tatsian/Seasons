//
//  String.swift
//  Seasons
//
//  Created by Tatsiana on 01.04.2020.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return localized()
    }
    
    func localized(withComment comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    func localized(withArguments arguments: CVarArg..., comment: String = "") -> String {
        return String(format: self.localized(withComment: comment), arguments: arguments)
    }
}
