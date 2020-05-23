//
//  StepperDispatcher.swift
//  BowStepperSample
//
//  Created by nanashiki on 2020/05/23.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import Foundation
import Bow
import BowArch

typealias StepperDispatcher = StateDispatcher<Any, StepperState, StepperInput>

let stepperDispatcher = StepperDispatcher.pure { input in
    switch input {
    case .tapDecrement:
        return .modify { state in
            StepperState(count: state.count - 1)
        }^
    
    case .tapIncrement:
        return .modify { state in
            StepperState(count: state.count + 1)
        }^
    }
}
