//
//  ContentView.swift
//  IPTester
//
//  Created by Christopher Alford on 14.01.21.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var interfaces: [Interface]

    init() {
        interfaces = Interface.allInterfaces()
    }

    var body: some View {
        List {
            ForEach(interfaces, id: \.self) { interface in
                Text(interface.debugDescription)
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
