pragma solidity >=0.4.2;

contract Election {

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(address => bool) public voters;
    mapping(uint => Candidate) public candidates;
    // This is required to keep track of the number of candidates because there is no map.length()
    uint public candidatesCount;

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    event votedEvent(uint indexed candidateId);

    function addCandidate(string memory name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, name, 0);
    }

    function vote(uint candidateId) public {
        require(!voters[msg.sender], "Cannot have already voted");
        require((candidateId > 0) && (candidateId <= candidatesCount),
            "Must vote for valid candidate");

        voters[msg.sender] = true;
        candidates[candidateId].voteCount++;
        emit votedEvent(candidateId);
    }
}