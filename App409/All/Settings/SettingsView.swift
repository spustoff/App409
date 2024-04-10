//
//  SettingsView.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text("Settings")
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .semibold))
                    
                    Spacer()
                }
                .padding()
                .background(Color.white.ignoresSafeArea())
                .padding(.bottom)
                
                Button(action: {
                    
                    guard let url = URL(string: DataManager().usagePolicy) else { return }
                    
                    UIApplication.shared.open(url)
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Image(systemName: "doc.fill")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                        
                        Text("Usage Policy")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                    })
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    .padding(.horizontal)
                })
                
                Button(action: {
                    
                    SKStoreReviewController.requestReview()
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                        
                        Text("Rate Us")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                    })
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    .padding(.horizontal)
                })
                
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsView()
}
