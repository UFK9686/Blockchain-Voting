# Blockchain-Voting
Undisputable Election Results via Blockchain

  On November 4, 2020, history was made live in front of millions of viewers. One of, if not the most, polarizing political figures in US history was defeated in the presidential election by an opponent widely considered to be quite unspectacular. Shortly following his determined loss, he took to twitter to declare that his loss was not valid and that the election results had in fact been rigged. What followed this erroneous claim by former President Donald Trump was a months-long debacle that included vote recounts, widespread debate, massive protests, and even a capitol insurrection. All because of a single initial tweet questioning the legitimacy of the presidential voting process.

  Imagine, however, if this process’ results were indisputable – if the process were so transparent, yet still secure, that no rational person could dispute the results of the election. What we are proposing today is that there is a way to achieve both goals, while simultaneously solving other problems associated with our current traditional voting system. By adopting a blockchain-based voting system that utilizes Smart Contracts and Decentralized Apps, voting systems worldwide will be much, much better off. A voting system ran on Blockchain would allow for immutable voting, meaning indisputable votes that cannot be retroactively altered in any way, shape or form; privacy and transparency, due to the blockchain’s public nodes and public addresses; and reduced time to disclose the winners of an election because of the real-time updates provided by the public nodes.
  
  ![donald-trump-melania-trump-election-day](https://user-images.githubusercontent.com/78872373/129480814-823d5281-0fe2-462c-8600-de328d850f23.jpg)

In this project, we created a Solidity voting contract called `PresidentialElection` allowing the voter to anonomously vote for their choice in a theoretical presidential election. The contract is controlled and deployed by one account, known as the ballot administrator. We've created functions that allow the voter to only vote once for their choice of candidate, and vote anonomously. The vote is then recorded anonymously on the Ethereum blockchain via `event OnVote`.
  
  


