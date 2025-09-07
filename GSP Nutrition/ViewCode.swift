//
//  ViewCode.swift
//  GSP Nutrition
//
//  Created by gabriel subutzki portes on 07/09/25.
//

protocol ViewCode {
    func addSubviews()
    func setupConstraints()
    func setupStyles()
}


extension ViewCode {
    func setup() {
        addSubviews()
        setupConstraints()
        setupStyles()
    }
}
