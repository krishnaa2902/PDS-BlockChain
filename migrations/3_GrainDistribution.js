const GrainDistribution = artifacts.require("GrainDistribution");

module.exports = function(deployer) {
  deployer.deploy(GrainDistribution);
};
