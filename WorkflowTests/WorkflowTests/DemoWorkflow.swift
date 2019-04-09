//
//  DemoWorkflow.swift
//  WorkflowTests
//
//  Created by Eric Harmon on 4/9/19.
//  Copyright © 2019 testy. All rights reserved.
//

import Workflow
import WorkflowUI
import ReactiveSwift
import Result

struct DemoWorkflow : Workflow
{
    var name: String

    init (name: String) {
        self.name = name
    }
}

extension DemoWorkflow {
    struct State {}
    func makeInitialState() -> State {
        return State()
    }

    func workflowDidChange(from previousWorkflow: DemoWorkflow, state: inout State) {

    }

    func compose (state: State, context: WorkflowContext<DemoWorkflow>) -> String {
        return "Hello, \(name)"
    }
}

