package chainAspect;

public aspect ChainAspect {
	private Chain Chain.successor;
	private String Chain.toHandle;

	public void Chain.init(String toHandle, Chain successor) {
		this.toHandle = toHandle;
		this.successor = successor;
	}

	public void Chain.init(String toHandle) {
		this.toHandle = toHandle;
		successor=new Chain(){
			public void handle(String request){
				System.out.println("End of Chain for request : "+request);
			}
		};
	}

	pointcut handle(String request, Chain obj): call(void Chain.handle(..)) && args(request) && target(obj) && !within(ChainAspect);


	void around(String request, Chain obj) throws NullPointerException: handle(request,obj) {
		if (request.equalsIgnoreCase(obj.toHandle))
			proceed(request, obj);
		else if (obj.successor != null)
			obj.successor.handle(request);
	}
}
