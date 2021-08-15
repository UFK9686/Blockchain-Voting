# Blockchain-Voting
## Undisputable Election Results via Blockchain?

  On November 4, 2020, history was made live in front of millions of viewers. One of, if not the most, polarizing political figures in US history was defeated in the presidential election by an opponent widely considered to be quite unspectacular. Shortly following his determined loss, he took to twitter to declare that his loss was not valid and that the election results had in fact been rigged. What followed this erroneous claim by former President Donald Trump was a months-long debacle that included vote recounts, widespread debate, massive protests, and even a capitol insurrection. All because of a single initial tweet questioning the legitimacy of the presidential voting process.

  Imagine, however, if this process’ results were indisputable – if the process were so transparent, yet still secure, that no rational person could dispute the results of the election. What we are proposing today is that there is a way to achieve both goals, while simultaneously solving other problems associated with our current traditional voting system. By adopting a blockchain-based voting system that utilizes Smart Contracts and Decentralized Apps, voting systems worldwide will be much, much better off. A voting system ran on Blockchain would allow for immutable voting, meaning indisputable votes that cannot be retroactively altered in any way, shape or form; privacy and transparency, due to the blockchain’s public nodes and public addresses; and reduced time to disclose the winners of an election because of the real-time updates provided by the public nodes.
  
  ![donald-trump-melania-trump-election-day](https://user-images.githubusercontent.com/78872373/129480814-823d5281-0fe2-462c-8600-de328d850f23.jpg)

In this project, we created a Solidity voting contract called `PresidentialElection` allowing the voter to anonomously vote for their choice in a theoretical presidential election. The contract is controlled and deployed by one account, known as the ballot administrator. We've created functions that allow the voter to only vote once for their choice of candidate, and vote anonomously. The vote is then recorded anonymously on the Ethereum blockchain via `event OnVote`. Our contract only allows the anon voter to vote once. 

![Screenshot (32)](https://user-images.githubusercontent.com/78872373/129481213-e09c1d1a-058d-4809-b66a-f6cb7d4bf393.png)

`Event OnStatusChange` keeps track of the election and who has the most votes. The ballot administrator then closes the election and tallies up the votes via `function WinningCandidate`. 

![Screenshot (33)](https://user-images.githubusercontent.com/78872373/129481372-b9b8ad37-ec54-454c-99b7-311bff5d2d6d.png)

Despite the security concerns of using blockchain technology for something as powerful as a presidential election, a developer must first act as the first line of defense. As evident by the infamous Ethereum DAO hack in 2016, an error or vulnerability in code can lead to catastrophic loss. As a result, we tested our smart contract ballot using MythX smart contract scanner for vulnerabilities. We were pleased with the results, just four minor warnings three of which were related to variable declaration/ structure and one relating to compiler version of solidity. None of warnings would compromise the integrity of the election results, so we are confident in the functionality and security of our smart contract ballot. Please see MythX.pdf for detailed scan results.

![mythX](https://user-images.githubusercontent.com/78872373/129481712-c22635c3-8826-427b-96ab-22856cca018a.jpg)


Our contract assumes software independence and operates in a theoretical world. However, we know there are some issues in the real world that need addressing. Voting via blockchain has its pitfalls. While theoretically large-scale voting via blockchain could revolutionize the way our world works, there are too many weak spots within this system to fully implement blockchain voting safely. Elections, specifically national elections like the one we experienced last year, are huge targets for corruption and foul play.

Security questions abound concerning blockchain voting. A technologically unsophisticated voter, of which there are many, could easily be manipulated by a savvy hacker. The same security protocols that protect online banking and shopping can’t and won’t easily translate to blockchain voting. These security systems fail, and fail often. However, banking systems and online shopping are used to absorbing this risk and loss because it is in their best interest. Who absorbs the failure and loss if there is election fraud? The people. The stakes are much larger. 
	
Tampering with paper mail-in ballots is a one at a time attack. With blockchain voting, any attack will be at a much larger scale, causing much more catastrophic results. While this voting method may seem ‘old fashioned’, it is more secure than blockchain voting due to the ‘slow’ aspect of paper ballots. 

![twitterati-began-following-longstanding-anonymous-posters-and-retweeting-them-](https://user-images.githubusercontent.com/78872373/129481527-343e0267-dbdb-4155-8cd5-6b7d9edb3f78.jpg)

	
Electronic voting will require software independence. Software independence is the property that an undetected change or error in a system’s software cannot cause an undetectable change in the election outcome. This means that the software used in casting, collecting and tallying ballots must be able to be analyzed by a non-software outside source, and any error found won’t affect the outcome of the election. Software independence asks another question: when an error is detected, can the one who detected it convince others that an error indeed occurred? Some types of errors may be publicly detectable, rendering this question moot because anyone can run the verification procedure for themselves. However, certain verification procedures may be nonpublic: e.g., certain errors related to a given voter’s vote might be detectable only by that specific voter. A contestable voting system is one that provides publicly verifiable evidence that the election outcome is untrustworthy, whenever an error is detected. By making this process contestable, is it that much different than the contestability of paper ballots? Internet voting startup Voatz provided the blockchain based voting system used in West Virginia, Utah and Denver for absentee military ballots[^1]. However, Voatz never disclosed how their blockchain voting measures are kept secure. They wouldn’t disclose their source code or allow third parties to analyze their code or system. Voatz also used a third party vendor for voter identification using machine learning. This is an obvious potential security risk. Many of these risks are outlined in a paper by MIT’s Michael Specter and James Koppel[^2]. Other MIT professors and students reverse engineered the Voatz application and made a model of the Voatz server. The MIT researchers security analysis pinpoints multiple weaknesses here.  Someone with remote access to a voters device could discover and alter users votes. The server, if hacked, could easily change these votes. It appeared the apps protocol doesn’t attempt to verify genuine votes with back end blockchain. Some hackers could access your unencrypted wifi and see how you vote, or even more aggressively, see how you vote and stop your connection. This obviously leaves many voters vulnerable, and if there is not transparency in voting, which is what the blockchain is inherently known for, then what is the purpose of the blockchain voting system? This is just one example of how transparency and security are the primary issues with this system. Overall, while blockchain voting could work for boardrooms or very minor elections, it simply isn’t feasible to implement this system on a national scale. The risks are too great. 

[^1]: https://www.coindesk.com/snake-oil-and-overpriced-junk-why-blockchain-doesnt-fix-online-voting

[^2]: https://people.csail.mit.edu/rivest/pubs/PSNR20.pdf






  
  


