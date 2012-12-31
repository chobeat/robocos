package resourceManager;

public aspect ResourcePool pertypewithin(@resource *){
	
	private Object cached;
	
	Object around(): execution(*.new(..))&&within(@resource *){
		
		if(this.cached==null){
			this.cached=proceed();
		System.out.println("Mannaggia al cristo: "+this.cached);
		}
		
		return this.cached;
	}
	
	

}
