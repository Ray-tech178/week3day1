import UIKit

func main(){
    let jacketPrice = 200.00
    //clearance
    let clearancePrice = clearance(price: jacketPrice)
    print("The discounted price is $\(clearancePrice)")
    //sale
    let salePrice = sale(clearancePrice: clearancePrice)
    print("The jacket on sale costs $\(salePrice)")
    //tax
    let taxAmount = salesTax(percent: 6, price: salePrice)
    print("Tax is $\(taxAmount)")
    let totalPrice = purchasePrice(price: salePrice, tax: taxAmount)
    print("The total price for the jacket is $\(totalPrice)")
}

func clearance(price: Double) -> Double{
    let newPrice = 0.50 * price
    return newPrice
}
//This function returns a new price that would be used later on
func sale(clearancePrice: Double) -> Double{
    let newPrice = clearancePrice - (clearancePrice * 0.30)
    return newPrice
}
//This function returns the tax
func salesTax(percent: Double, price: Double) -> Double{
    let convertPercent = percent / 100
    let tax = price * convertPercent
    return tax
}

//This functions calculates the final price
func purchasePrice(price: Double, tax: Double) -> Double{
    let sumOfPrice = price + tax
    return sumOfPrice
}

main()
