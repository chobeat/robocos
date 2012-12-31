package es2;

public class A {
	// public B b=new B();
	public void a() {
		System.out.println("we");
	}

	public static void main(String[] args) {
		C c = new C();
		A a=new A();
		B b=new B();
		b.b();
		//c.c();
	}
}

class B {
	
	public void b() {
		A a=new A();
		C c=new C();
		D d=new D();
		//d.d();
		//a.a();
		c.c();
	}

}

class C {
	// B b=new B();
	

	public void c() {
		A a=new A();
		B b=new B();
		//System.out.println("C");
		a.a();
	}
}

class D{
	public void d(){
		A a=new A();
		a.a();
	}
}