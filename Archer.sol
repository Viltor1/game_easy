pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;
import "Units.sol";
contract  Archer  is Units {
    constructor (uint Armor,uint Damage,uint Health) public{
        getHealth(Health);   
        getArmor(Armor);
        getDamage(Damage);
    }

    function getArmor(uint value) virtual public override returns(uint) { 
        Armor = value;
        tvm.accept();
        return(Armor);
    }
    
    function getDamage(uint value) virtual public override returns(uint){
        Damage = value;
        tvm.accept();
        return(Damage);
    }

}