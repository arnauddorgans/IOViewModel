//
//  IOViewModel.swift
//  IOViewModel
//
//  Created by Arnaud Dorgans on 03/10/2017.
//

public protocol IOViewModel {
    associatedtype In: _IOViewModelInOutProtocol
    associatedtype Out: _IOViewModelInOutProtocol
    
    var `in`: In { get }
    var out: Out { get }
}

public protocol _IOViewModelInOutProtocol {
    associatedtype VM: IOViewModel
    
    var vm: VM { get }
    
    init(vm: VM)
}

open class _IOViewModelInOut<T: IOViewModel>: _IOViewModelInOutProtocol {
    public typealias VM = T
    
    public let vm: VM
    
    public required init(vm: VM) {
        self.vm = vm
    }
}

open class IOViewModelIn<T: IOViewModel>: _IOViewModelInOut<T> {
    var out: T.Out {
        return vm.out
    }
}

open class IOViewModelOut<T: IOViewModel>: _IOViewModelInOut<T> {
    var `in`: T.In {
        return vm.in
    }
}
