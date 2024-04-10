//
//  CalculatorView.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI

extension UIApplication {
    
    public func endEditing() {
        
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct CalculatorView: View {
    
    @StateObject var viewModel = CalculatorViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        UIApplication.shared.endEditing()
                        
                        viewModel.isChart = true
                        
                    }, label: {
                        
                        HStack {
                            
                            Text("EUR/USD")
                                .foregroundColor(.blue)
                                .font(.system(size: 15, weight: .regular))
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .font(.system(size: 10, weight: .regular))
                                .frame(width: 18, height: 18)
                                .background(Circle().fill(.blue))
                        }
                    })
                }
                .padding()
                .background(Color.white.ignoresSafeArea())
                
                Text("Business Loan Calculator")
                    .foregroundColor(.black)
                    .font(.system(size: 19, weight: .semibold))
                    .padding(.vertical)
                
                HStack {
                    
                    Text("Loan Amount")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                    
                    ZStack(alignment: .leading, content: {
                        
                        Text("Enter")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .opacity(viewModel.loan_amount.isEmpty ? 1 : 0)
                        
                        TextField("", text: $viewModel.loan_amount)
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .regular))
                            .keyboardType(.decimalPad)
                    })
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                .padding(.horizontal)
                
                HStack {
                    
                    Text("Interest Rate")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .regular))
                    
                    Spacer()
                    
                    Text("\(viewModel.interest_rate)")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .regular))
                    
                    Stepper("", value: $viewModel.interest_rate, step: 1, onEditingChanged: {_ in })
                        .labelsHidden()
                }
                .padding(.horizontal)
                
                HStack {
                    
                    Text("Quantity of Months")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .regular))
                    
                    Spacer()
                    
                    Text("\(viewModel.quantity_months)")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .regular))
                    
                    Stepper("", value: $viewModel.quantity_months, step: 1, onEditingChanged: {_ in })
                        .labelsHidden()
                }
                .padding(.horizontal)
                
                Button(action: {
                    
                    UIApplication.shared.endEditing()
                    
                    viewModel.isResult = true
                    
                    viewModel.loan_amount = ""
                    viewModel.interest_rate = 0
                    viewModel.quantity_months = 0
                    
                }, label: {
                    
                    Text("Calculate")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .regular))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
                .opacity(viewModel.loan_amount.isEmpty || viewModel.interest_rate == 0 || viewModel.quantity_months == 0 ? 0.5 : 1)
                .disabled(viewModel.loan_amount.isEmpty || viewModel.interest_rate == 0 || viewModel.quantity_months == 0 ? true : false)
                
                Spacer()
            }
        }
        .sheet(isPresented: $viewModel.isChart, content: {
            
            CalculatorChart()
        })
        .sheet(isPresented: $viewModel.isResult, content: {
            
            CalculatorResult()
        })
    }
}

#Preview {
    CalculatorView()
}
