//
//  SheetView.swift
//  Coin Prices
//
//  Created by Ethan MacDonald on 7/22/22.
//

import SwiftUI

struct SheetView: View {
    @Binding var showSheetView: Bool

    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack(alignment: .leading, spacing: 40) {
                    VStack(alignment: .leading, spacing: 16) {
                        Image("Coingecko Logo")
                            .resizable()
                        .frame(width: 64, height: 64, alignment: .center)
                        HStack(spacing: 4) {
                            Text("Powered by")
                            Link("CoinGecko", destination: URL(string: "https://www.coingecko.com/en/api/documentation")!)
                        }
                    }
                    .padding([.all], 24)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(16)
                    VStack(alignment: .leading, spacing: 16) {
                        AsyncImage(url: URL(string: "https://pbs.twimg.com/profile_images/1541970127981203456/vlhm3pgf_400x400.png")) { image in
                            image.resizable().clipShape(Circle())
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 64, height: 64, alignment: .center)
                        HStack(spacing: 4) {
                            Text("Built by")
                            Link("ghanbak", destination: URL(string: "https://twitter.com/ghanbak")!)
                        }
                    }
                    .padding([.all], 24)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(16)
                }
                .padding([.all], 24)
                .navigationBarTitle(Text("Colophon"), displayMode: .inline)
                .navigationBarItems(trailing:
                    Button(action: {
                        self.showSheetView = false
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(Font.system(.body))
                            .foregroundColor(Color(.systemGray4))
                    }
                )
            }
        }
    }
}
