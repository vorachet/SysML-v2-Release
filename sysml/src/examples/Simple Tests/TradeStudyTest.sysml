package TradeStudyTest {
	import TradeStudies::*;
	
	part def Engine;
	part engine1: Engine;
	part engine2: Engine;
	
	analysis engineTradeStudy : TradeStudy {
		subject : Engine[1..*] = {engine1, engine2};
		objective : MaximizeObjective;

		calc :>> objectiveFunction {
			in part : Engine;
			return : Real;
		}
		
		return part : Engine;
	}
	
}