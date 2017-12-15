//
//  main.swift
//  NutriCalc
//
//  Created by Petro Korienev on 12/15/17.
//  Copyright © 2017 Sigma Software. All rights reserved.
//

import UIKit

var appDelegateClassName =
    (nil != Bundle.allBundles.first { $0.bundlePath.contains(".xctest") }) ?
        NSStringFromClass(TestAppDelegate.self) :
        NSStringFromClass(AppDelegate.self)
let argv = UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self,
                                                                      capacity: Int(CommandLine.argc))
UIApplicationMain(CommandLine.argc, argv, nil, appDelegateClassName)
