# Create a wallet

## Objective-

You have to create a wallet. With the help of which a user can deposit ether to his wallet ,send ether to another account and check his own ether account balance.

### Task-

Create the following variables and functions -

1. Create a public payable state variable by the name of owner to store the address of the owner.

2. constructor ( ) - It will take one argument to initialise the owner of the contract.

3. deposit ( ) - To deposit ether to contract balance.

4. sendEther ( ) - It will take two arguments. First the address of the receiver to whom we want to send the amount to. Second the amount(uint) that we want to send.

   <ol type = "i">

   <li> This function must be called by the owner of the contract. Otherwise, it should print "sender is not allowed". [Hint - Use require] </li>

   <li> If the owner of the contract has called this function then transfer the ether to the receiver's address. </li>
   </ol>

5. balanceOf ( ) - To return the balance of the contract.

You can do this :-)
