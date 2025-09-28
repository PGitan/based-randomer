/**
 *Submitted for verification at basescan.org on 2025-01-17
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RandomNumberGenerator {
    uint public lastGeneratedNumber;

    // Événement pour signaler la génération d'un nouveau nombre
    event RandomNumberGenerated(uint randomNumber);

    // Fonction pour générer un nombre aléatoire
    function generateRandomNumber() public {
        uint randomNumber = uint(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, msg.sender))) % 1000; // Nombre entre 0 et 999
        lastGeneratedNumber = randomNumber;
        emit RandomNumberGenerated(randomNumber);
    }

    // Fonction pour obtenir le dernier nombre généré
    function getLastGeneratedNumber() public view returns (uint) {
        return lastGeneratedNumber;
    }
}
