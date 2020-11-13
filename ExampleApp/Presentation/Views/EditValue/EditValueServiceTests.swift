//
//  EditValueServiceTests.swift
//  ExampleAppTests
//
//  Created by Mikael Weiss on 11/9/20.
//

import XCTest
@testable import ExampleApp

class EditValueServiceTests: XCTestCase {
    private var service: EditValueService!
    
    // MARK: - Setup
    
    override func setUp() {
        super.setUp()
        service = EditValue.Service()
    }
}
