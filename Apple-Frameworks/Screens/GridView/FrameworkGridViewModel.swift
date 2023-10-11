//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Ehsan Jalilifar on 10/10/23.
//

import SwiftUI

// We are not making any subclass. So, it should be final.
// Broadcast information -> Observable Objrct
final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {// At the begining we don't have any selected framework. So, it should be optional or nullable.
        didSet {
            isShowingDetailView = true // whenever the selectedFramework variable is set, it will update the isShowingDetailView to true.
        }
    }
    @Published var isShowingDetailView = false // We want this variable to be broadcasted and other views update accordingly.
    
}

