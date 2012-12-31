public aspect EveryPointCut {
	pointcut methods():
		within(Test) && execution(* *.*(..));

	after(): methods(){
		System.out.println(thisJoinPoint.getSignature());
	}
	
	pointcut nuovo():
		within(Test) && call(new(..));
	
	after(): nuovo(){
		System.out.println(thisJoinPoint);
	}
	
}
