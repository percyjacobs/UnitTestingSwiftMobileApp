//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Percy Jacobs on 20/06/23.
//

import XCTest
@testable import PhotoApp

final class SignupFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        // Arrange
        let sut = SignupFormModelValidator()
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "El método debería haber arrojado TRUE, pero resultó FALSO.")
    }

}
