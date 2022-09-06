//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Pedro Boga on 28/08/22.
//

import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"), message: Text("Something is wrong with the camera."), dismissButton: .default(Text("OK")))
    static let invalidScannedType = AlertItem(title: Text("Invalid Scan Type"), message: Text("The value is not valid."), dismissButton: .default(Text("OK")))
}
