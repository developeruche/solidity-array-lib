// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

library ArrayLib {
    /**
     * @dev this function would remove a given element of a specified array index
     * @param list: This is the array of strings
     * @param index: this is the index of the element you want to get rid of
     */

    function remove(string[] storage list, uint index) internal {
        for (uint i = index; i < list.length - 1; i++) {
            list[i] = list[i + 1];
        }

        list.pop();
    }

}



contract TestLib {
    string[] devs;

    function setDevs(string[] memory developers) public {
        devs = developers;
    }

    function imp(string calldata text) public {
        ArrayLib.append(devs, text);
    }

    function drop() public view returns(string[] memory) {
        return devs;
    }
}