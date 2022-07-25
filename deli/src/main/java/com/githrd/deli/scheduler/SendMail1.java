package com.githrd.deli.scheduler;

import org.quartz.*;
import org.springframework.scheduling.quartz.*;

public class SendMail1 extends QuartzJobBean {
	private SelectCoupon upSal;
	
	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		upSal.upSal();
	}
	
	public void setUpSal(SelectCoupon upSal) {
		this.upSal = upSal;
	}
	
}
