package com.entity.vo;

import com.entity.RemenmeishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 热门美食
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-04-13 11:55:33
 */
public class RemenmeishiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 美食类型
	 */
	
	private String meishileixing;
		
	/**
	 * 美食地点
	 */
	
	private String meishididian;
		
	/**
	 * 主要食材
	 */
	
	private String zhuyaoshicai;
		
	/**
	 * 口味特点
	 */
	
	private String kouweitedian;
		
	/**
	 * 美食介绍
	 */
	
	private String meishijieshao;
		
	/**
	 * 美食图片
	 */
	
	private String meishitupian;
		
	/**
	 * 单限
	 */
	
	private Integer onelimittimes;
		
	/**
	 * 库存
	 */
	
	private Integer alllimittimes;
		
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
	 * 价格
	 */
	
	private Float price;
				
	
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
	 * 设置：美食地点
	 */
	 
	public void setMeishididian(String meishididian) {
		this.meishididian = meishididian;
	}
	
	/**
	 * 获取：美食地点
	 */
	public String getMeishididian() {
		return meishididian;
	}
				
	
	/**
	 * 设置：主要食材
	 */
	 
	public void setZhuyaoshicai(String zhuyaoshicai) {
		this.zhuyaoshicai = zhuyaoshicai;
	}
	
	/**
	 * 获取：主要食材
	 */
	public String getZhuyaoshicai() {
		return zhuyaoshicai;
	}
				
	
	/**
	 * 设置：口味特点
	 */
	 
	public void setKouweitedian(String kouweitedian) {
		this.kouweitedian = kouweitedian;
	}
	
	/**
	 * 获取：口味特点
	 */
	public String getKouweitedian() {
		return kouweitedian;
	}
				
	
	/**
	 * 设置：美食介绍
	 */
	 
	public void setMeishijieshao(String meishijieshao) {
		this.meishijieshao = meishijieshao;
	}
	
	/**
	 * 获取：美食介绍
	 */
	public String getMeishijieshao() {
		return meishijieshao;
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
	 * 设置：单限
	 */
	 
	public void setOnelimittimes(Integer onelimittimes) {
		this.onelimittimes = onelimittimes;
	}
	
	/**
	 * 获取：单限
	 */
	public Integer getOnelimittimes() {
		return onelimittimes;
	}
				
	
	/**
	 * 设置：库存
	 */
	 
	public void setAlllimittimes(Integer alllimittimes) {
		this.alllimittimes = alllimittimes;
	}
	
	/**
	 * 获取：库存
	 */
	public Integer getAlllimittimes() {
		return alllimittimes;
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
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setPrice(Float price) {
		this.price = price;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
			
}
