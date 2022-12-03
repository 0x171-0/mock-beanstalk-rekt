import '@nomicfoundation/hardhat-toolbox';
import '@nomiclabs/hardhat-ethers';
import '@nomiclabs/hardhat-etherscan';

require('dotenv').config();

const { API_KEY } = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
	solidity: { compilers: [{ version: '0.8.10' }, { version: '0.8.13' }] },
	defaultNetwork: 'hardhat',
	networks: {
		hardhat: {
			forking: {
				url: `https://eth-mainnet.g.alchemy.com/v2/${API_KEY}`,
				enabled: true,
				blockNumber: 14595905,
			},
			allowUnlimitedContractSize: true,
		},
	},
};