//
//  CompanyView.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI

struct CompanyView: View {
    
    @StateObject var viewModel = CompanyViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Button(action: {
                    
                    viewModel.isEditCompany = true
                    
                }, label: {
                    
                    VStack(alignment: .leading, spacing: 15, content: {
                        
                        Text(viewModel.company_name.isEmpty ? "Company Name" : viewModel.company_name)
                            .foregroundColor(viewModel.company_name.isEmpty ? .gray : .black)
                            .font(.system(size: 21, weight: .semibold))
                        
                        Rectangle()
                            .fill(.black)
                            .frame(height: 1)
                        
                        HStack {
                            
                            Image(systemName: "person.3.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 15, weight: .regular))
                            
                            Text(viewModel.company_quantity.isEmpty ? "0" : viewModel.company_quantity)
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        }
                    })
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    .padding([.horizontal, .top])
                })
                
                VStack(alignment: .leading, spacing: 15, content: {
                    
                    HStack {
                        
                        Image(systemName: "banknote.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 15, weight: .regular))
                        
                        Text("Income")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                    }
                    
                    Text("$\(viewModel.income.isEmpty ? "0" : viewModel.income)")
                        .foregroundColor(viewModel.company_name.isEmpty ? .gray : .black)
                        .font(.system(size: 25, weight: .semibold))
                })
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                .padding([.horizontal])
                
                VStack(alignment: .leading, spacing: 15, content: {
                    
                    HStack {
                        
                        Image(systemName: "bag.fill.badge.minus")
                            .foregroundColor(.blue)
                            .font(.system(size: 15, weight: .regular))
                        
                        Text("General Expenses")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                    }
                    
                    Text("$\(viewModel.general_expenses.isEmpty ? "0" : viewModel.income)")
                        .foregroundColor(viewModel.general_expenses.isEmpty ? .gray : .black)
                        .font(.system(size: 25, weight: .semibold))
                })
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                .padding([.horizontal])
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 15, content: {
                        
                        HStack {
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 15, weight: .regular))
                            
                            Text("Expenses for Events")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                        }
                        
                        Text("$\(viewModel.expenses_for_events.isEmpty ? "0" : viewModel.income)")
                            .foregroundColor(viewModel.expenses_for_events.isEmpty ? .gray : .black)
                            .font(.system(size: 25, weight: .semibold))
                    })
                    .padding()
                    .frame(height: 120)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    
                    VStack(alignment: .leading, spacing: 15, content: {
                        
                        HStack {
                            
                            Image(systemName: "bag.fill.badge.plus")
                                .foregroundColor(.blue)
                                .font(.system(size: 15, weight: .regular))
                            
                            Text("Corporate Needs")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                        }
                        
                        Text("$\(viewModel.corporate_needs.isEmpty ? "0" : viewModel.income)")
                            .foregroundColor(viewModel.corporate_needs.isEmpty ? .gray : .black)
                            .font(.system(size: 25, weight: .semibold))
                    })
                    .padding()
                    .frame(height: 120)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                }
                .padding([.horizontal])
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 15, content: {
                        
                        HStack {
                            
                            Image(systemName: "person.2.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 15, weight: .regular))
                            
                            Text("Employee Benefits")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                        }
                        
                        Text("$\(viewModel.employee_benefits.isEmpty ? "0" : viewModel.income)")
                            .foregroundColor(viewModel.employee_benefits.isEmpty ? .gray : .black)
                            .font(.system(size: 25, weight: .semibold))
                    })
                    .padding()
                    .frame(height: 120)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    
                    VStack(alignment: .leading, spacing: 15, content: {
                        
                        HStack {
                            
                            Image(systemName: "building.2.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 15, weight: .regular))
                            
                            Text("Employee Benefits")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                        }
                        
                        Text("$\(viewModel.employee_benefits2.isEmpty ? "0" : viewModel.income)")
                            .foregroundColor(viewModel.employee_benefits2.isEmpty ? .gray : .black)
                            .font(.system(size: 25, weight: .semibold))
                    })
                    .padding()
                    .frame(height: 120)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                }
                .padding([.horizontal])
                
                Button(action: {
                    
                    viewModel.isEditInfo = true
                    
                }, label: {
                    
                    Text("Edit Budget")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .regular))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
                
                Spacer()
            }
        }
        .sheet(isPresented: $viewModel.isEditInfo, content: {
            
            EditInfo()
        })
        .sheet(isPresented: $viewModel.isEditCompany, content: {
            
            EditCompany()
        })
    }
}

#Preview {
    CompanyView()
}
