//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Pedro Boga on 26/08/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        VStack {
            Text("Barcode Scanner")
                .font(.title)
                .bold()
            .padding()
            Spacer()
            Rectangle()
                .frame(height: 200)
            HStack {
                Image(systemName: "barcode.viewfinder")
                Text("Scanned Barcode")
            }
            .font(.title2)
            .padding(.all, 40)
            Text("Not Yet Scanned")
                .font(.title)
                .bold()
            Spacer()
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
