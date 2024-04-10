//
//  CalculatorViewModel.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI

final class CalculatorViewModel: ObservableObject {
    
    @Published var isChart: Bool = false
    @Published var isResult: Bool = false
    
    @Published var loan_amount: String = ""
    @Published var interest_rate: Int = 0
    @Published var quantity_months: Int = 0
}
