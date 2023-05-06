const FarmerDetails = artifacts.require("FarmerDetails");

module.exports = function(deployer) {
  deployer.deploy(FarmerDetails);
};
