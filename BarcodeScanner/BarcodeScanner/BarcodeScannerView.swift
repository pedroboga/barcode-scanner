//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Pedro Boga on 26/08/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode: String = ""
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer()
                    .frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                .font(.title2)
                Text(scannedCode.isEmpty ? "Noy Yet Scanned" : scannedCode)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
