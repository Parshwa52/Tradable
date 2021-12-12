// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;
contract Tradable
{
    event gold_exported(string id,string filecoinipfshash);
    event gold_verified(string id,string importinglicense);
    mapping(string=>string) hashes;
    mapping(string=>string) verificationstatus;
    
    
    function gold_exporter(string memory id,string memory filecoinipfshash) public
    {
        hashes[id] = filecoinipfshash;
        emit gold_exported(id,filecoinipfshash);
    }
    
    function gold_importer(string memory id)public view returns(string memory)
    {
        return hashes[id];
    }
    
    function verify(string memory id,string memory importinglicense) public
    {
        verificationstatus[id]="true";
        emit gold_verified(id,importinglicense);
    }
    
    function checkverification(string memory id)public view returns(string memory)
    {
        return verificationstatus[id];
    }

    function consumer_verify(string memory id) public view returns(string memory)
    {
        return verificationstatus[id];
    }
}