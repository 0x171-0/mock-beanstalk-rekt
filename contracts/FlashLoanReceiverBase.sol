// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.8.10;

// @dev refs: https://docs.aave.com/developers/v/2.0/guides/flash-loans
import {IFlashLoanReceiver} from "./interfaces/IFlashLoanReceiver.sol";
import {ILendingPoolAddressesProvider} from "./interfaces/ILendingPoolAddressesProvider.sol";
import {ILendingPool} from "./interfaces/ILendingPool.sol";

abstract contract FlashLoanReceiverBase is IFlashLoanReceiver {
    ILendingPoolAddressesProvider public immutable override ADDRESSES_PROVIDER;
    ILendingPool public immutable override LENDING_POOL;

    constructor(ILendingPoolAddressesProvider provider) {
        ADDRESSES_PROVIDER = provider;
        LENDING_POOL = ILendingPool(provider.getLendingPool());
    }
}
