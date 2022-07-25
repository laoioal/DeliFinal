package com.githrd.deli.scheduler;

import org.quartz.*;
import org.springframework.scheduling.quartz.*;

public class SendMail1 extends QuartzJobBean {
	private SelectCoupon upSal;
	
	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		System.out.println("1");
		upSal.upSal();
	}
	
	public void setUpSal(SelectCoupon upSal) {
		System.out.println("2");
		this.upSal = upSal;
	}
	
}
