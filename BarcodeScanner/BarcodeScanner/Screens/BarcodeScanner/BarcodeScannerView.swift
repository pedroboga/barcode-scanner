//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Pedro Boga on 26/08/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                Spacer()
                    .frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                .font(.title2)
                Text(viewModel.statusText)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()

            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
