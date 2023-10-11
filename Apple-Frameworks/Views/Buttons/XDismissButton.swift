//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Ehsan Jalilifar on 10/11/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        Spacer()
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label)) // Makes it white in the dark mode and black in the light mode
                    .imageScale(.large)
                    .frame(width: 44, height: 44) // The standard size for easy tap. Users won't miss the X button even they don't hit it perfectly.
                
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
