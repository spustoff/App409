//
//  CalculatorResult.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI

struct CalculatorResult: View {
    
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
                        
                        Text("Result")
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
                .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 15, content: {
                    
                    HStack {
                        
                        Image(systemName: "banknote.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 15, weight: .regular))
                        
                        Text("Amount of monthly payment")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                    }
                    
                    Text("$\(Int.random(in: 1...2438578))")
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .semibold))
                })
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                .padding([.horizontal])
                
                VStack(alignment: .leading, spacing: 15, content: {
                    
                    HStack {
                        
                        Image(systemName: "building.columns.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 15, weight: .regular))
                        
                        Text("Final payment to bank")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                    }
                    
                    Text("$\(Int.random(in: 1...2438578))")
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .semibold))
                })
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                .padding([.horizontal])
                
                VStack(alignment: .leading, spacing: 15, content: {
                    
                    HStack {
                        
                        Image(systemName: "creditcard.trianglebadge.exclamationmark.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 15, weight: .regular))
                        
                        Text("Total overpayment")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                    }
                    
                    Text("$\(Int.random(in: 1...2438578))")
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .semibold))
                })
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                .padding([.horizontal])
                
                Spacer()
            }
        }
    }
}

#Preview {
    CalculatorResult()
}
