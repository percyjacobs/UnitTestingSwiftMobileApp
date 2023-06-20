//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Percy Jacobs on 20/06/23.
//  Copyright © 2023 Percy Jacobs. All rights reserved.
//

import Foundation

class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.isEmpty {
            returnValue = false
        }
        
        return returnValue
    }
}
