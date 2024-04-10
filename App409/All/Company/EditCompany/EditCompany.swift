//
//  EditCompany.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI

struct EditCompany: View {
    
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
                        
                        Text("Edit Company")
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
                            
                            Text("Company Name")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.company_name.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.company_name)
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .regular))
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                        
                        HStack {
                            
                            Text("Quantity Employees")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                    .opacity(viewModel.company_quantity.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.company_quantity)
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
    EditCompany()
}
