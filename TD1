
pragma solidity ^0.4.0;



/// @title Vote System - Solidity Smart-contract

/// @author Thibault Vallet et Théo Caussanel



contract Ballot {



    struct Voter {

        bool voted;

        address id;

        uint vote;

    }

    

    struct Proposal {

        bytes32 name;

        address author;

        uint VCount;

    }

    

    address public person;

    mapping(address => Voter) voters;

    Proposal[]  proposals;

    uint currentTime = block.number;

    uint endTime;



    

    // @notice: voter

    function giveVote(uint proposal)

    {

        if(currentTime<endTime){

            if(voters[msg.sender].id != proposals[proposal].author && voters[msg.sender].voted !=true){

                voters[msg.sender].voted = true;

                proposals[proposal].VCount++;

                voters[msg.sender].vote = proposal;

            }

        }

    }



    // @notice: ajouter un votant

    function AddVoter(address id) {

        Voter newVoter;

        if(msg.sender!= id){

            newVoter.voted = false;

            newVoter.id = msg.sender;

            newVoter.vote = 0;

        }

    }

    

    // @notice: compter les votes et donner le gagnant

    function WinProposal() constant returns (uint,bytes32){

        if(currentTime >= endTime){

            uint WinVote = 0;

            for (uint i = 0; i < proposals.length; i++) {

                if (proposals[i].VCount > WinVote) {

                    WinVote = proposals[i].VCount;

                    return (i,proposals[i].name);

                }

            }

        }

    }

    

}
