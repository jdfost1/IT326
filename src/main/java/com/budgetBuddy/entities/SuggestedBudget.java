package com.budgetBuddy.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "suggested_budget")
public class SuggestedBudget {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "housing")
	private double housing;

	@Column(name = "utilities")
	private double utilities;

	@Column(name = "transportation")
	private double transportation;

	@Column(name = "insurance")
	private double insurance;

	@Column(name = "spending")
	private double spending;

	@Column(name = "food")
	private double food;

	@Column(name = "savings")
	private double savings;

	@Column(name = "miscellaneous")
	private double miscellaneous;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public double getHousing() {
		return housing;
	}

	public void setHousing(double housing) {
		this.housing = housing;
	}

	public double getUtilities() {
		return utilities;
	}

	public void setUtilities(double utilities) {
		this.utilities = utilities;
	}

	public double getTransportation() {
		return transportation;
	}

	public void setTransportation(double transportation) {
		this.transportation = transportation;
	}

	public double getInsurance() {
		return insurance;
	}

	public void setInsurance(double insurance) {
		this.insurance = insurance;
	}

	public double getSpending() {
		return spending;
	}

	public void setSpending(double spending) {
		this.spending = spending;
	}

	public double getFood() {
		return food;
	}

	public void setFood(double food) {
		this.food = food;
	}

	public double getSavings() {
		return savings;
	}

	public void setSavings(double savings) {
		this.savings = savings;
	}

	public double getMiscellaneous() {
		return miscellaneous;
	}

	public void setMiscellaneous(double miscellaneous) {
		this.miscellaneous = miscellaneous;
	}

	public void calculateSuggestedBudget(double income) {
		// calculate suggested monthly budget
        income = income/12;
		this.setHousing(income * .25);
		this.setUtilities(income * .1);
		this.setTransportation(income * .1);
		this.setInsurance(income * .15);
		this.setSpending(income * .1);
		this.setFood(income * .15);
		this.setSavings(income * .1);
		this.setMiscellaneous(income * .05);

	}

}
