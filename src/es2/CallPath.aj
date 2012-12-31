package es2;

public aspect CallPath {
	pointcut onlyCall(): (call(* *.*(..))) && (target(A)|| target(B) ||target(C));

	pointcut callA(): call(* A.*(..));

	pointcut callC(): call(* C.*(..));

	pointcut callB(): call(* B.*(..));

	/*
	 *  !cflow(callC()) -> tutti i join point che non siano contenuti nel cflow di pointC()
	 *  cflow(!callC()) -> tutti i join point che sono contenuti in tutti i cflow tranne quello di pointC()
	 */
	pointcut check():
		onlyCall() && callA() && !cflow(callC() && cflow(callB()));
	
	Object around(): check(){
		return null;
	}

}
