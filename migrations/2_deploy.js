const Ozicoin = artifacts.require("Ozicoin");

module.exports = async function (deployer){
    await deployer.deploy(Ozicoin);
}
