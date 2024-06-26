//
//  ContentView.swift
//  Confirmation
//
//  Created by Emmanuelle  Dennemont on 26/06/2024.
//
import SwiftUI

struct ConfirmationView: View {
    @State private var showConfirmation = false

    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    showConfirmation.toggle()
                }) {
                    Text("Show Confirmation")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .zIndex(1)
            
            if showConfirmation {
                CustomAlertView(show: $showConfirmation)
                    .zIndex(2)
            }
        }
        .background(Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all))
    }
}

struct CustomAlertView: View {
    @Binding var show: Bool
    
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
                    show = false
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
        .background(Color.black.opacity(0.4).edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    ConfirmationView()
}
