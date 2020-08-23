//
//  StopWatchView.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 30/06/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import SwiftUI

struct StopwatchView: View {
    @ObservedObject public var stopwatch = Stopwatch()
    //Temporary solution. Stopwatch should know itself whether it is validated
    @State var stopwatchInvalidated = true
    @Binding var showStopwatch: Bool
    @Binding var time: Int
    @Binding var finishedPresenting: Bool
    
    var body: some View {
        VStack {
            Text(stopwatch.readTime)
                .font(.system(size: 100))
            HStack {
                Button(action:
                    {
                        self.stopwatch.stop()
                        self.stopwatchInvalidated.toggle()
                        
                }) {
                    Text("Stop")
                        .frame(width: 100, height: 100)
                        .background(stopwatchInvalidated ? Color.gray : Color.red)
                        .clipShape(Circle())
                }.disabled(stopwatchInvalidated)
                Button(action:
                    {
                        self.stopwatch.start()
                        self.stopwatchInvalidated.toggle()
                })
                {
                    Text("Start")
                        .frame(width: 100, height: 100)
                        .background(!stopwatchInvalidated ? Color.gray : Color.green)
                        .clipShape(Circle())
                }.disabled(!stopwatchInvalidated)
            }
        .padding()
            Button(action: {
                self.showStopwatch = false
                self.finishedPresenting = true
                self.time = self.stopwatch.readTimeInt
                
            }) {
                Text("Continue")
            }
        }
        .offset(y: -25)
        
    }
}

//struct StopWatchView_Previews: PreviewProvider {
//    static var previews: some View {
//        StopWatchView(showStopwatch: true)
//    }
//}
