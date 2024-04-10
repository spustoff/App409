//
//  EditInfo.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI

struct EditInfo: View {
    
    @StateObject var viewModel = CompanyViewModel()
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(spacing: 25) {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.black)
                        .frame(width: 40, height: 4)
                        .padding(.top, 4)
                    
                    ZStack {
                        
                        Text("Edit Budget")
                            .foregroundColor(.black)
                            .font(.system(size: 17, weight: .semibold))
                        
                        HStack {
                            
                            Button(action: {
                                
                                router.wrappedValue.dismiss()
                                
                            }, label: {
                                
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                                    .font(.system(size: 10, weight: .medium))
                                    .frame(width: 23, height: 23)
                                    .background(Circle().fill(.gray.opacity(0.2)))
                            })
                            
                            Spacer()
                        }
                    }
                    .padding([.horizontal, .top])
                    
                    Rectangle()
                        .fill(.gray.opacity(0.5))
                        .frame(height: 1)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        HStack {
                            
                            Text("Income")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.income.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.income)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("General Expenses")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.general_expenses.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.general_expenses)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Expenses for Events")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.expenses_for_events.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.expenses_for_events)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Corporate Needs")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.corporate_needs.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.corporate_needs)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Employee Benefits")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.employee_benefits.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.employee_benefits)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Employee Benefits")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.employee_benefits2.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.employee_benefits2)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    EditInfo()
}
