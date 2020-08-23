//
//  StopwatchVM.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 03/08/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

class StopwatchVM: ObservableObject {
    private let stopwatch: Stopwatch
    
    @Published var getTime: String
    
    init() {
        stopwatch = Stopwatch()
        getTime = stopwatch.readTime
    }
        
    public func stop() {
        stopwatch.stop()        
    }
    
    public func start() {
        stopwatch.start()
    }
    
}
