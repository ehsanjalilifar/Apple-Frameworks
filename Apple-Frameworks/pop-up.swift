//
//  pop-up.swift
//  Apple-Frameworks
//
//  Created by Ehsan Jalilifar on 10/10/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack() {
            Image("swiftui")
            Text("SwiftUI")
            Text()
            MyButton()
        }
    }
}

struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
