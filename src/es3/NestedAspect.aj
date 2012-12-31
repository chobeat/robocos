package es3;

import java.util.HashMap;
import java.util.Map;

public aspect NestedAspect {
	
	private Map<String,Object> singletons;
	
	
	public NestedAspect(){
		singletons=new HashMap<>();
	}
	
	pointcut intToInt(int param): call(int *.*(int)) && args(param);
	pointcut intToVoid(): call(int *.*(..));
	
	pointcut nuovo(): call(*.new(..)) && @within(Singleton);
	
	pointcut newInterfaccia(): call(Interfaccia+.new(..));
	
	before(): newInterfaccia(){
		System.out.println("LOL");
	}
	
	int around(): intToVoid(){
		System.out.println(thisJoinPoint.getArgs()[0]);
		thisJoinPoint.getArgs()[0]=0;
		return proceed();
	}
	
	
	int around(int param): intToInt(param){
		return proceed(proceed(param));
	}
	Object around(): nuovo(){
		Object ret;
		String key=thisJoinPoint.getSignature().getDeclaringType().getName();
		ret=singletons.get(key);
		if(ret==null) {
			System.out.println("Miss!");
			ret=proceed();
			singletons.put(key, ret);
		}
		return ret;
	}
}
