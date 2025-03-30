# SC1
Creating a Ticket system Smart Contract and running it on remix ide.

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

3. ransferring Ticket Ownership: 
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