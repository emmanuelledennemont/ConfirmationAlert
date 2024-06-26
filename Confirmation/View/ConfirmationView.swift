//
//  ContentView.swift
//  Confirmation
//
//  Created by Emmanuelle  Dennemont on 26/06/2024.
//
import SwiftUI


struct ConfirmationView: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 20) {
                Text(ConfirmationText.title.rawValue)
                    .font(.headline)
                    .bold()
                    .padding(.top, 20)

                Text(ConfirmationText.message.rawValue)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Divider()
                    .padding(.horizontal, 20)
                
                Button(action: {
                    // Action à exécuter lorsque le bouton est pressé
                }) {
                    Text(ConfirmationText.buttonTitle.rawValue)
                        .foregroundColor(.orange)
                        .bold()
                }
                .padding(.bottom, 20)
            }
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 1)
            .padding(.horizontal, 20)
            
            Spacer()
        }
        .background(Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    ConfirmationView()
}
