//
//  ProspectsView.swift
//  VoiceOver
//
//  Created by naseem on 16/02/2022.
//

import SwiftUI

struct ProspectsView: View {
    enum filterType {
        case none, contacted, uncontacted
    }
    
    let filter: filterType
    
    var title: String {
        switch filter {
            case .none:
                return "Everyone"
            case .contacted:
                return "Contacted People"
            case .uncontacted:
                return "Uncontacted People"
        }
    }
    
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .navigationBarTitle(title)
        }
    }
}

struct ProspectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectsView(filter: .none)
    }
}
