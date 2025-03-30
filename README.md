# SC1

#Blockchain-Based Land Registry  

#Overview  
This smart contract provides a secure and transparent system for managing land ownership records on the blockchain. It eliminates fraudulent claims by ensuring immutability and secure ownership transfers.  

#Features  
    -Users can register a property with a unique ID and details.  
    -Anyone can check the owner and details of a registered property.  
    -Only the current owner can transfer the property to another address.  
    -All transactions are stored permanently on the blockchain, preventing fraud.  

#How It Works  

1.Registering a Land Property  
    -A user provides a unique land ID and property details.  
    -The contract assigns ownership to the sender and records the property on the blockchain.  
    -Once registered, the land cannot be deleted or altered.  

2.Checking Land Ownership and Details  
    -Anyone can retrieve details of a registered property using its unique ID.  
    -The contract returns the owner's address and the property details.  

3.Transferring Ownership  
    -Only the current owner can transfer ownership to a new address.  
    -The new owner is recorded on the blockchain, ensuring a transparent transaction.  

#Deployment and Usage  
    -Deploy the contract using Remix IDE or any Ethereum-compatible environment.  
    -Ensure the Solidity compiler version is 0.8.24.  
    -Call the registerLand function to register a property.  
    -Use getLandDetails to check ownership and details.  
    -Call transferOwnership to transfer a property to another address.  

#Dummy Inputs  

Registering a Property  
    -Land ID 101  
    -Details Plot No. 45, Block A, Green Valley, 500 sq. meters  

Checking Ownership  
    -Land ID 101 returns owner address and property details.  

Transferring Ownership  
    -Land ID 101  
    -New Owner Address 0xDEF456789 transfers ownership.  

#Notes  
    -Each property must have a unique ID.  
    -Only the owner can transfer ownership.  
    -All transactions are permanently recorded on the blockchain.  








#Creating a Ticket system Smart Contract and running it on remix ide.

# Ticket System Smart Contract  

# Overview  
The Ticket System smart contract allows users to issue, validate, and transfer event tickets. It supports two types of tickets: Regular and VIP.  

# Features  
- Users can issue tickets for specific event IDs.  
- Ticket validity can be checked using the owner's address and event ID.  
- Ticket ownership can be transferred to another user.  

# How It Works  

1. Issuing a Ticket: 
   - Users provide an event ID and ticket type (Regular or VIP) to generate a new ticket.  
   - The issued ticket is linked to the user's address and stored in the contract.  

2. Checking Ticket Validity: 
   - Anyone can verify if a ticket is valid by providing the ticket owner's address and event ID.  
   - The contract maintains a record of issued tickets and their validity status.  

3. Transferring Ticket Ownership: 
   - The ticket owner can transfer ownership to another address.  
   - The contract updates the ticket records to reflect the new owner.  

# Deployment and Usage  
- The contract can be compiled and deployed using Remix IDE.  
- Once deployed, users can interact with the contract through function calls.  
- The contract is designed for use on Ethereum-compatible networks.  

# Notes  
- Only the original owner of a ticket can transfer it.  
- Ticket validity is stored in a mapping structure within the contract.  
- Each ticket is associated with a unique event ID.  

# Contact  
For any inquiries or issues, please refer to the repository or reach out via email.