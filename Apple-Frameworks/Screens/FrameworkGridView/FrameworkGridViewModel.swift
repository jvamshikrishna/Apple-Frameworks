//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Vamshi krishna Jillapally on 12/4/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    @Published var isShowingDetailView = false
    var selectedFramework: Framework?{
        didSet
        {
            isShowingDetailView = true
        }
    }
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
