pragma solidity ^0.4.4;



contract ProofOfExistence {

    

    event ProofCreated(

        uint256 indexed id,

        bytes32 documentHash

    );



    address public owner;

  

    mapping (uint256 => bytes32) hashesById;



    modifier onlyOwner() {

        require(msg.sender == owner);

        _;

    }



    modifier noHashExistsYet(uint256 id) {

        require(hashesById[id] == "");

        _;

    }



    function ProofOfExistence() public {

        owner = msg.sender;

    }



    function notarizeHash(uint256 id, bytes32 documentHash) onlyOwner noHashExistsYet(id) public {

        hashesById[id] = documentHash;



        ProofCreated(id, documentHash);

    }



    function doesProofExist(uint256 id, bytes32 documentHash) public view returns (bool) {

        return hashesById[id] == documentHash;

    }

}
