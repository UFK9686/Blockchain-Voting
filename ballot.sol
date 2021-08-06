pragma solidity ^0.6.0;


// contract is designed from EIP-1202 voting standard at https://eips.ethereum.org/EIPS/eip-1202

import "@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol";


contract PresidentialElection { 
    using SafeMath for uint256;
    uint[] candidates = [1, 2, 3, 4];                   // designing an array to represent four elements one for each candidate
    mapping(uint => string) internal candidateDescMap;          // preparing the constructor that assigns a string candidate value to its corresponding uint key 1-4
    mapping (uint => uint)  private voteCounts;              // using uint key per candidate to assign a uint value value to record votes casted
    mapping (address => uint) private ballotOf_;                // assigning an address key to uint value of candidate to show who the address interacting with the contract voted for (candidate 1-4)
  

    constructor() public {
        candidateDescMap[1] = "Donald Trump";
        candidateDescMap[2] = "Joe Biden";                  // assigning uint key to its corresponding string candidate name value
        candidateDescMap[3] = "Howie Hawkins";
        candidateDescMap[4] = "Jo Jorgensen";
    }

    function vote(uint candidate) public returns (bool success) {
        require(candidate == 1 || candidate == 2 || candidate == 3 || candidate == 4, "Vote option has to be either 1, 2, 3 or 4.");
        require(ballotOf_[msg.sender] == 0, "The sender has casted ballots."); // no re-vote
        ballotOf_[msg.sender] = candidate;      // show who the address interacting with the contract voted for (candidate 1-4)
        voteCounts[candidate] = voteCounts[candidate].add(1);      // adding the vote of message sender to election total
        emit OnVote(msg.sender, candidate); // send message to voter
        return true;
    }

     function setStatus(bool /* isOpen */) public pure returns (bool success) {
        require(false); // always public status change in this implementation               // open/close election
        return false;
    }

    function ballotOf(address addr) public view returns (uint candidate) {              ////insert address to see who owner of address voted for (candidate 1-4)  
        return ballotOf_[addr];
    }

   
    function getStatus() public pure returns (bool isOpen) {
        return true; // always open                                                     // shows election is open
    }

   


    function winningCandidate() public view returns ( string memory candidate) {
  
        
        if (voteCounts[1] > voteCounts[2] && voteCounts[1] > voteCounts[3] && voteCounts[1] > voteCounts[4]) {
            return "Donald Trump";}
        else if (voteCounts[2] > voteCounts[1] && voteCounts[2] > voteCounts[3] && voteCounts[2] > voteCounts[4]) {
            return "Joe Biden";}
        else if (voteCounts[3] > voteCounts[1] && voteCounts[3] > voteCounts[2] && voteCounts[3] > voteCounts[4]) {             //shows which candidate is winning, or if there is a tie
            return "Howie Hawkins";}
       else if (voteCounts[4] > voteCounts[1] && voteCounts[4] > voteCounts[2] && voteCounts[4] > voteCounts[3]) {
            return "Jo Jorgensen";}
         else {
            return "There is a tie.";
        }
    }


   
 
    function electionDescription() public pure returns (string memory desc) {                               // description of election
        return "Please vote for one Presidential Candidate";
    }

    function availableCandidates() public view returns (uint[] memory candidates_) {                    //shows array of candidates [1,2,3,4]
        return candidates;
    }

    function candidateDescription(uint candidate) public view returns (string memory desc) {            //shows available candidate name by calling the candidate key number 
        return candidateDescMap[candidate];
    }

    event OnVote(address indexed _from, uint _value);
    event OnStatusChange(bool newIsOpen);
}