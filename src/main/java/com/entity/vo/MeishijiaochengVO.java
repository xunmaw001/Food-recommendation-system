package com.entity.vo;

import com.entity.MeishijiaochengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 美食教程
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-04-13 11:55:33
 */
public class MeishijiaochengVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 美食类型
	 */
	
	private String meishileixing;
		
	/**
	 * 教程视频
	 */
	
	private String jiaochengshipin;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
		
	/**
	 * 美食做法
	 */
	
	private String meishizuofa;
		
	/**
	 * 美食图片
	 */
	
	private String meishitupian;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
				
	
	/**
	 * 设置：美食类型
	 */
	 
	public void setMeishileixing(String meishileixing) {
		this.meishileixing = meishileixing;
	}
	
	/**
	 * 获取：美食类型
	 */
	public String getMeishileixing() {
		return meishileixing;
	}
				
	
	/**
	 * 设置：教程视频
	 */
	 
	public void setJiaochengshipin(String jiaochengshipin) {
		this.jiaochengshipin = jiaochengshipin;
	}
	
	/**
	 * 获取：教程视频
	 */
	public String getJiaochengshipin() {
		return jiaochengshipin;
	}
				
	
	/**
	 * 设置：发布日期
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
				
	
	/**
	 * 设置：美食做法
	 */
	 
	public void setMeishizuofa(String meishizuofa) {
		this.meishizuofa = meishizuofa;
	}
	
	/**
	 * 获取：美食做法
	 */
	public String getMeishizuofa() {
		return meishizuofa;
	}
				
	
	/**
	 * 设置：美食图片
	 */
	 
	public void setMeishitupian(String meishitupian) {
		this.meishitupian = meishitupian;
	}
	
	/**
	 * 获取：美食图片
	 */
	public String getMeishitupian() {
		return meishitupian;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
			
}
