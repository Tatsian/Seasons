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
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._-]{2,64}+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,127}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with:self)
    }
    
}
