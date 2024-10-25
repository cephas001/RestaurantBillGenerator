actor {
  // Quantites :
  // Per spoon for Jollof and Fried Rice
  // Per piece for Meat, Fish and Plantain
  type Order = {
    Jollof_Rice_Quantity : Nat;
    Fried_Rice_Quantity : Nat;
    Meat_Quantity : Nat;
    Fish_Quantity: Nat;
    Plantain_Quantity : Nat
  };

  public query func BillGenerator(order : Order) : async Nat {
    let quantities = [order.Jollof_Rice_Quantity, order.Fried_Rice_Quantity, order.Meat_Quantity, order.Fish_Quantity, order.Plantain_Quantity];
    // Prices : 
    // Per spoon for Jollof Rice and Fried Rice 
    // Per piece for Meat and Fish, Plantain
    let prices = [300, 300, 100, 500, 50];
    var i = 0;
    var total = 0;

    while (i < quantities.size()){
      total := total + (quantities[i] * prices[i]);
      i += 1;
    };

    return total;
  }
}