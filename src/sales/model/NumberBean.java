package sales.model;

import javax.servlet.ServletConfig;

public class NumberBean {
	private String name;
	private String code;
	private double sales;
	
	private double commission;
	private double gross;
	private double takehome;
	
	
	public NumberBean(){
		
	}
	
	public NumberBean(String name, String code, double sales) {
		this.name = name;
		this.code = code;
		this.sales = sales;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public double getSales() {
		return sales;
	}

	public void setSales(double sales) {
		this.sales = sales;
	}
	
	public double getComm() {
		return commission;
	}

	public void setComm(double commission) {
		this.commission = commission;
	}
	
	public double getGross() {
		return gross;
	}

	public void setGross(double gross) {
		this.gross = gross;
	}
	
	public double getTakeHome(){
		return takehome;
	}
	
	public void setTakeHome(double takehome){
		this.takehome = takehome;
	}
	
	public void ComputeGross(){
		if(this.code.equals("A")){
			this.gross = ((this.sales * 0.50) + 175);
		}
		else if(this.code.equals("B")){
			this.gross = ((this.sales * 0.20) + 100);
		}
		else{
			this.gross = ((this.sales * 0.25)+ 50);
		}
	}
	
	public void ComputeComm(){
		if(this.sales > 2500){
			this.commission = this.sales * 0.075;
		}
	}
	
	public void ComputeTakeHome(){
		this.takehome = this.commission + this.gross;
	}
}
