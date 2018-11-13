//
//  ViewController.swift
//  CribCheckMVVM
//
//  Created by Lisa J on 11/6/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import UIKit
import RxSwift
import SnapKit

/// `FormController` is primarily for entering an address to check for building violations
class FormController: UIViewController {
    // MARK: - properties -
    private let stackview = UIStackView()
    private let houseNumberField = UITextField()
    private let streetNameField = UITextField()
    private let apartmentField = UITextField()
    private let zipcodeField = UITextField()
    private let boroughField = UITextField()
    private let submitButton = UIButton()
    
    // MARK: - lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        styleView()
        
        setupViews()
        setupBindings()
    }
}
// MARK: - viewCustomizer -
extension FormController {
    private func styleView() {
        view.backgroundColor = .white
    }
    
    private func setupViews() {
        addStackView()
        addHouseNumberField()
        addStreetNameField()
        addApartmentField()
        addZipcodeField()
        addBoroughField()
        addSubmitButton()
    }
    
    private func addStackView() {
        view.addSubview(stackview)
        stackview.axis = .vertical
        stackview.distribution = .fillEqually
        stackview.spacing = 10.0
        
        stackview.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16.0)
            make.centerY.equalToSuperview()
            make.height.equalTo(400.0)
        }
    }
    
    private func addHouseNumberField() {
        stackview.addArrangedSubview(houseNumberField)
        houseNumberField.borderStyle = .line
        houseNumberField.placeholder = "House Number"
    }
    
    private func addStreetNameField() {
        stackview.addArrangedSubview(streetNameField)
        streetNameField.borderStyle = .bezel
        streetNameField.placeholder = "Street Name"
    }
    
    private func addApartmentField() {
        stackview.addArrangedSubview(apartmentField)
        apartmentField.borderStyle = .bezel
        apartmentField.placeholder = "Apartment"
        
    }
    
    private func addZipcodeField() {
        stackview.addArrangedSubview(zipcodeField)
        zipcodeField.borderStyle = .bezel
        zipcodeField.placeholder = "ZipCode"
    }
    
    private func addBoroughField() {
        stackview.addArrangedSubview(boroughField)
        boroughField.borderStyle = .bezel
        boroughField.placeholder = "Borough"
    }
    
    private func addSubmitButton() {
        view.addSubview(submitButton)
        submitButton.setTitle("Submit", for: .normal)
        
        submitButton.snp.makeConstraints { make in
            make.top.equalTo(stackview.snp.bottom)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20.0)
        }
    }
}

// MARK: - RxBinder -
extension FormController {
    private func setupBindings() {
        setupFormfieldBindings()
    }
    
    private func setupFormfieldBindings() {
        
    }
}
