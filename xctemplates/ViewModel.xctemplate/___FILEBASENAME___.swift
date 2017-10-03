//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import IOViewModel

class ___FILEBASENAMEASIDENTIFIER___: IOViewModel {
    
    typealias In = Input
    typealias Out = Output
    
    private (set) lazy var `in`: In = In(vm: self)
    private (set) lazy var out: Out = Out(vm: self)
    
    class Input: IOViewModelIn<___FILEBASENAMEASIDENTIFIER___> {
        
    }
    
    class Output: IOViewModelOut<___FILEBASENAMEASIDENTIFIER___> {
        
    }
}
