const Tradable = artifacts.require("Tradable");

module.exports = function(deployer) {
  deployer.deploy(Tradable);
};
