
public aspect Mirror {
	pointcut mirror():
		within(EveryPointCut);
	
	after(): mirror(){
		System.out.println(thisJoinPoint.getSignature()+" "+this);
	}
}
