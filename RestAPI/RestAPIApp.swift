//
//  RestAPIApp.swift
//  RestAPI
//
//  Created by JoHsun Chao on 2021/8/6.
//

import SwiftUI

@main
struct RestAPIApp: App {
    private let connect = Connection()
    var body: some Scene {
        WindowGroup {
            ContentView(connect: connect )
        }
    }
}
