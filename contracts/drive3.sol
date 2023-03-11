//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;
contract drive3{

    struct permit{
        address _add;
        bool access;
    }
    struct store{
        string name;
        string _hash;

    }

    mapping(address => store[])public data;

    mapping(address =>mapping(address => bool))public access;
    mapping(address=>permit[])public access_permit;
    
    function add_data(string memory name,string memory _data) public{
        data[msg.sender].push(store(name,_data));
    }

    function giveaccess(address _add) public{
        if(!access[msg.sender][_add]){
            access_permit[msg.sender].push(permit(_add,true));
            access[msg.sender][_add]=true;
        }
    } 
    function removeaccess(address _add) public{
        if(access[msg.sender][_add]){
            for(uint i=0;i<access_permit[msg.sender].length;i++){
                if(access_permit[msg.sender][i]._add==_add)
                delete access_permit[msg.sender][i];
            }
            access[msg.sender][_add]=false;
            
        }
    }
    function display(address _add) public view returns(store[] memory){
        require(_add==msg.sender||access[_add][msg.sender]);
            return data[_add];
    }
    function delete_data(uint _id) public {
        require(_id< data[msg.sender].length);
        delete data[msg.sender][_id];
        for(uint i=_id;i<data[msg.sender].length-1;i++){
            data[msg.sender][i]=data[msg.sender][i+1];
        }
        data[msg.sender].pop();

    }


}