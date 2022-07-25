package com.githrd.deli.scheduler;

import org.quartz.*;
import org.springframework.scheduling.quartz.QuartzJobBean;

public class sendMail extends QuartzJobBean {
	private SelectCoupon selCp;
	
	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		selCp.upSal();
	}
	
	public void setUpSal(SelectCoupon upSal) {
		this.selCp = upSal;
	}
	
}
