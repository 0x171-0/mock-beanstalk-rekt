pragma solidity ^0.8.10;

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    function totalSupply() external view returns (uint);

    function balanceOf(address owner) external view returns (uint);

    function transferFrom(
        address from,
        address to,
        uint value
    ) external returns (bool);

    function transfer(address, uint256) external;

    function approve(address, uint256) external;

    function allowance(
        address owner,
        address spender
    ) external view returns (uint);
}
