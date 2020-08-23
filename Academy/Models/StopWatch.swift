//
//  StopWatch.swift
//  Academy
//
//  Created by Kristoffer Kortbaek on 30/06/2020.
//  Copyright © 2020 Kristoffer Kortbaek. All rights reserved.
//

import Foundation

public class Stopwatch: ObservableObject {
    @Published private var sec = -1 {
        didSet {
            if sec == 60 {
                sec = 0
                mins += 1
            }
        }
    }
    private var mins = 0
    private var timer: Timer!
    
    
    private var getSecString: String {
        get {
            if sec < 0 {
                return "00"
            }
            else if sec < 10 {
                return "0\(sec)"
            } else {
                return "\(sec)"
            }
        }
    }
    
    private var getMinString: String {
        get {
            if mins < 10 {
                return "0\(mins)"
            } else {
                return "\(mins)"
            }
        }
    }
    
    public var readTime: String {
        return getMinString + "." + getSecString
    }
    public var readTimeInt: Int {
        return Int(getMinString)!*60 + Int(getSecString)!
    }
    
    @objc private func update() {
        sec += 1
    }
    
    public func start() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Stopwatch.update), userInfo: nil, repeats: true)
        timer.fire()
        
    }
    
    public func stop() {
        timer.invalidate()
    }
    
}
