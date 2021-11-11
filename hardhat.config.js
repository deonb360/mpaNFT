require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    rinkeby: {
      url: 'https://eth-rinkeby.alchemyapi.io/v2/yd-QM2nGlP9hSfQmXRo65xm-ixH14gri',
      accounts: ['e9b52c259f171c7c10deac2899f07694671f1db8738d86f32a3380045a47a5e0'],
    },
  },
};