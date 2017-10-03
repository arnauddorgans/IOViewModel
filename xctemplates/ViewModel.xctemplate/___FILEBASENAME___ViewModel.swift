//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//
import Foundation
import IOViewModel

class ___FILEBASENAMEASIDENTIFIER___ViewModel: IOViewModel {

    typealias In = Input
    typealias Out = Output
    
    private (set) lazy var `in`: In = In(vm: self)
    private (set) lazy var out: Out = Out(vm: self)
    
    class Input: ViewModelIn<TestViewModel> {
        
    }
    
    class Output: ViewModelOut<TestViewModel> {
        
    }
}
