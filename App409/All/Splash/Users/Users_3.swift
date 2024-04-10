//
//  Users_3.swift
//  App409
//
//  Created by Вячеслав on 4/10/24.
//

import SwiftUI

struct Users_3: View {
    
    let telegram: URL
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("users_3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(Color("primary").ignoresSafeArea().aspectRatio(contentMode: .fill))
            
            VStack(alignment: .center, spacing: 55, content: {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Join and earn")
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Join our Telegram group trade with our team")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    
                    UIApplication.shared.open(telegram)
                    
                }, label: {
                    
                    Text("Join")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .regular))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color(red: 0/255, green: 163/255, blue: 255/255)))
                })
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white.ignoresSafeArea())
            .frame(maxHeight: .infinity, alignment: .bottom)
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        Users_4()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                    })
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Users_3(telegram: URL(string: "f")!)
}
