//
//  DetailView.swift
//  Coin Prices
//
//  Created by Ethan MacDonald on 10/14/22.
//

import SwiftUI
import Charts

struct DetailView: View {
    var passedValue: Coin
    
    var body: some View {
        VStack {
            let chartData = passedValue.sparklineIn7D.price
            let maxY = chartData.max() ?? 0
            let minY = chartData.min() ?? 0
            let priceChange = (chartData.last ?? 0) - (chartData.first ?? 0)
            let lineColor = priceChange > 0 ? Color("Green") : Color("Pink")
            
            HStack {
                Text( passedValue.currentPrice, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(Color.primary)
                Spacer()
            }.padding(16)
            
            GeometryReader {geometry in
                Path {path in
                    for index in chartData.indices {
                        
                        let xPosition = geometry.size.width / CGFloat(chartData.count) * CGFloat(index + 1)
                        
                        let yAxis = maxY - minY
                        
                        let yPosition = (1 - CGFloat((chartData[index] - minY) / yAxis)) * geometry.size.height
                        
                        if index == 0 {
                            path.move(to: CGPoint(x: xPosition, y: yPosition))
                        }
                        path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                    }
                }.stroke(lineColor, style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
            }.frame(height: 200)
        }
//        .navigationTitle("\(passedValue.name)")
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    AsyncImage(url: URL(string: passedValue.image)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24, alignment: .center)
                    Text(passedValue.name)
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(Color.primary)
                }
            }
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(passedValue: Coin)
//    }
//}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
