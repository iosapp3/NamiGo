# NamiGo
NamiGo
Easy Safe and Secure Payment gatway

This repository implements pod for NamiPay’s iOS Framework.

Usage
To run the example project, clone the repo, and run pod install from the Example directory first. Or you can simply download the project and install pods and run project.

Installation | Docs
Through Cocoa pods

pod 'NamiGo', :git => 'https://github.com/iosapp3/NamiGo.git'

# Manual
Drag n Drop the ‘Framework’ folder into your project.

Note: If you will face any error , you can simply go to Build Settings set Enable Bitcode to NO
![Screenshot 2023-04-21 at 5 42 54 PM](https://user-images.githubusercontent.com/75315763/234268769-03fcc396-2d2f-4c20-8b38-d3fa19a24924.png)

How to Use
View controller where you want to set payment import NamiGo library like below:

import NamiGo  

Create NamiGo Object

let obj = NamiGo.initWith(key: “Your NamiGo's Account key”)

Set Delegate to view controller

obj.delegate = self

Call CheckoutMethod

 obj.checkOutRequestWith(param)
 
Note: param is the variable in which you set your card details:

# Parameter Sample Formate

let param = [
    "name" : "John",
    "email" : "johndoe@mailinator.com",
    "amount" : "100.0",
    "currency" : "SAR",
    "order_id" : "123",
    "card_number" : "5151515151515151",
    "exp_month" : "12",
    "exp_year" : "26",
    "cvv" : "123",
    "card_type" : "C"
]

# Add Delegate methods to ViewControlelr
 func paymentDoneWith(success: Bool, data: [String : Any]?)
# Example

extension ViewController : NamiGoResponseDelegate {
    func paymentDoneWith(success: Bool, data: [String : Any]?) {
        if success {
               //Success Block
        }else{
		//Failure
        }
    }
