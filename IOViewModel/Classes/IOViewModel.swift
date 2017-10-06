//
//  IOViewModel.swift
//  IOViewModel
//
//  Created by Arnaud Dorgans on 03/10/2017.
//

public protocol IOViewModel: class {
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
    
    private weak var _vm: VM!
    public var vm: VM {
        return _vm
    }
    
    public required init(vm: VM) {
        self._vm = vm
    }
}

open class IOViewModelIn<T: IOViewModel>: _IOViewModelInOut<T> {
    public var out: T.Out {
        return vm.out
    }
}

open class IOViewModelOut<T: IOViewModel>: _IOViewModelInOut<T> {
    public var `in`: T.In {
        return vm.in
    }
}

