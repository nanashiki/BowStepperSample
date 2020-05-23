//
//  StepperView.swift
//  BowStepperSample
//
//  Created by nanashiki on 2020/05/23.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    let state: StepperState
    let handle: (StepperInput) -> Void
    
    init(state: StepperState, handle: @escaping (StepperInput) -> Void) {
        self.state = state
        self.handle = handle
        print("StepperView init")
    }
    
    var body: some View {
        HStack {
            Button("-") {
                self.handle(.tapDecrement)
            }
            
            Text("\(state.count)")
            
            Button("+") {
                self.handle(.tapIncrement)
            }
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperComponent(
            initialState: StepperState(count: 0),
            dispatcher: stepperDispatcher,
            render: StepperView.init
        )
    }
}
