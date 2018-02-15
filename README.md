# IOViewModel

[![CI Status](http://img.shields.io/travis/Arnoymous/IOViewModel.svg?style=flat)](https://travis-ci.org/Arnoymous/IOViewModel)
[![Version](https://img.shields.io/cocoapods/v/IOViewModel.svg?style=flat)](http://cocoapods.org/pods/IOViewModel)
[![License](https://img.shields.io/cocoapods/l/IOViewModel.svg?style=flat)](http://cocoapods.org/pods/IOViewModel)
[![Platform](https://img.shields.io/cocoapods/p/IOViewModel.svg?style=flat)](http://cocoapods.org/pods/IOViewModel)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

IOViewModel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'IOViewModel'
```

## Usage

Install XCTemplate and generate instantly beautiful viewmodels 
#### ViewModel
```swift
import IOViewModel
import RxSwift
import RxSwiftExt

class UserViewModel: IOViewModel {

    private (set) lazy var `in` = Input(vm: self)
    private (set) lazy var out = Output(vm: self)

    class Input: IOViewModelIn<UserViewModel> {

        let user = BehaviorSubject<User?>(value: nil)
    }

    class Output: IOViewModelOut<UserViewModel> {

        lazy var user: Observable<User> = {
            return self.in.user.unwrap().share(replay: 1)
        }()

        lazy var name: Observable<String> = {
            return user.map { $0.firstName + " " + $0.lastName }.share(replay: 1)
        }()
    }
    
    func update(user: User) {
        self.in.user.onNext(user)
    }
}
```

#### ViewController
```swift

let vm = UserViewModel()

userView.rx.user
    .bind(to: vm.in.user)
    .disposed(by: disposeBag)

vm.out.name
    .bind(to: nameLabel.rx.text)
    .disposed(by: disposeBag)

```

## XCTemplate

IOViewModel is published with xctemplate.

To install it, just go in xctemplates directory and run this command in a terminal:
```shell
sh install.sh
```

## Author

Arnoymous, arnaud.dorgans@gmail.com

## License

IOViewModel is available under the MIT license. See the LICENSE file for more info.
