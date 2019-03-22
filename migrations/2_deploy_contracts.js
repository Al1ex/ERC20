const BWToken = artifacts.require('./src/BWToken.sol')

module.exports = function(deployer) {
    deployer.deploy(BWToken, "Blue Whale Token", "BWX", 18, "100000000000000000000000000")
}