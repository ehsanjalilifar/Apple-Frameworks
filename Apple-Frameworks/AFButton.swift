//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Ehsan Jalilifar on 10/10/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "my title")
}
