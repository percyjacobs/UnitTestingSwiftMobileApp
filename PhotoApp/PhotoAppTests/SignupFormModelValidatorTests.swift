//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Percy Jacobs on 20/06/23.
//

import XCTest
@testable import PhotoApp

final class SignupFormModelValidatorTests: XCTestCase {
    var sut: SignupFormModelValidator!

    override func setUp() {
        sut = SignupFormModelValidator()
    }
    
    override func tearDown() {
        sut = nil
    }

    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        // Arrange
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Percy")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "El método debería haber arrojado TRUE, pero resultó FALSO.")
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        // Arrange
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "P")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "El método isFirstNameValid() debería haber retornado FALSO para primer nombre menor a \(SignupConstants.firstNameMinLength) letras.")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "PercyPercyPercy")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "El método isFirstNameValid() debería haber retornado FALSO para primer nombre mayor a \(SignupConstants.firstNameMaxLength) caracteres.")
    }
    
    func testSignupFormModelValidator_WhenValidLastNameProvided_ShouldReturnTrue() {
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "Jacobs")
        
        // Assert
        XCTAssertTrue(isLastNameValid, "El método isLastNameValid() debería haber arrojado TRUE, pero resultó FALSO.")
        
    }
    
    func testSignupFormModelValidator_WhenTooShortLastNameProvided_ShouldReturnFalse() {
        // Arrange
        
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "J")
        
        // Assert
        XCTAssertFalse(isLastNameValid, "El método isLastNameValid() debería haber retornado FALSO para apellido menor a \(SignupConstants.lastNameMinLength) letras.")
    }
    
    func testSignupFormModelValidator_WhenTooLongLastNameProvided_ShouldReturnFalse() {
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "JacobsJacobsJacobs")
        
        // Assert
        XCTAssertFalse(isLastNameValid, "El método isLastNameValid() debería haber retornado FALSO para apellido mayor a \(SignupConstants.lastNameMaxLength) caracteres.")
    }
    
    func testSignupFormModelValidator_WhenValidEmailProvided_ShouldReturnTrue() {
        // Act
        let isEmailValid = sut.isEmailValid(email: "percyjacobs@email.com")
        
        // Assert
        XCTAssertTrue(isEmailValid, "El método isEmailValid() debería haber arrojado TRUE, pero resultó FALSO.")
    }
    
    func testSignupFormModelValidator_WhenTooShortEmailEndingProvided_ShouldReturnFalse() {
        // Act
        let isEmailValid = sut.isEmailValid(email: "percyjacobs@email.c")
        
        // Assert
        XCTAssertFalse(isEmailValid, "El método isEmailValid() debería haber arrojado FALSO para un correo con terminación de 1 o menos caracteres (.c).")
    }
    
    func testSignupFormModelValidator_WhenValidPasswordProvided_ShouldReturnTrue() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "H0l4kTa1!")
        
        // Assert
        XCTAssertTrue(isPasswordValid, "El método isPasswordValid() debería haber arrojado TRUE, pero resultó FALSO.")
    }
    
    func testSignupFormModelValidator_WhenTooShortPasswordProvided_ShouldReturnFalse() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "H0l4")
        
        // Assert
        XCTAssertFalse(isPasswordValid, "El método isPasswordValid() debería haber arrojado FALSO para una constraseña de menos de \(SignupConstants.passwordMinLength) caracteres.")
    }
    
    func testSignupFormModelValidator_WhenTooLongPasswordProvided_ShouldReturnFalse() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "H0l4kTa1!muchogusto")
        
        // Assert
        XCTAssertFalse(isPasswordValid, "El método isPasswordValid() debería haber arrojado FALSO para una constraseña de más de \(SignupConstants.passwordMaxLength) caracteres.")
    }
    
    func testSignupFormModelValidator_WhenPasswordWithoutSpecialCharacterProvided_ShouldReturnFalse() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "H0l4kTa11")
        
        // Assert
        XCTAssertFalse(isPasswordValid, "El método isPasswordValid() debería haber arrojado FALSO para una constraseña sin caracter especial.")
    }
    
    func testSignupFormModelValidator_WhenPasswordWithoutNumberProvided_ShouldReturnFalse() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "HolAkTal!")
        
        // Assert
        XCTAssertFalse(isPasswordValid, "El método isPasswordValid() debería haber arrojado FALSO para una constraseña sin digitos.")
    }
    
    func testSignupFormModelValidator_WhenPasswordWithoutUppercaseProvided_ShouldReturnFalse() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "h0laktal!")
        
        // Assert
        XCTAssertFalse(isPasswordValid, "El método isPasswordValid() debería haber arrojado FALSO para una constraseña sin mayúsculas")
    }
    
    func testSignupFormModelValidator_WhenPasswordWithoutLowercaseProvided_ShouldReturnFalse() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "H0LAQT4L!")
        
        // Assert
        XCTAssertFalse(isPasswordValid, "El método isPasswordValid() debería haber arrojado FALSO para una constraseña sin minúsculas")
    }

}
