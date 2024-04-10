//
//  CompanyViewModel.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI
import CoreData

final class CompanyViewModel: ObservableObject {
    
    @Published var isEditCompany: Bool = false
    @Published var isEditInfo: Bool = false
    
    @AppStorage("company_name") var company_name: String = ""
    @AppStorage("company_quantity") var company_quantity: String = ""
    
    @AppStorage("income") var income: String = ""
    @AppStorage("general_expenses") var general_expenses: String = ""
    @AppStorage("expenses_for_events") var expenses_for_events: String = ""
    @AppStorage("corporate_needs") var corporate_needs: String = ""
    @AppStorage("employee_benefits") var employee_benefits: String = ""
    @AppStorage("employee_benefits2") var employee_benefits2: String = ""
    
    
}
