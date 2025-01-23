package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 美食店铺
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-04-13 11:55:33
 */
@TableName("meishidianpu")
public class MeishidianpuEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public MeishidianpuEntity() {
		
	}
	
	public MeishidianpuEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 店铺编号
	 */
					
	private String dianpubianhao;
	
	/**
	 * 店铺名称
	 */
					
	private String dianpumingcheng;
	
	/**
	 * 店铺地址
	 */
					
	private String dianpudizhi;
	
	/**
	 * 营业时间
	 */
					
	private String yingyeshijian;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 店铺介绍
	 */
					
	private String dianpujieshao;
	
	/**
	 * 店铺图片
	 */
					
	private String dianputupian;
	
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
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：店铺编号
	 */
	public void setDianpubianhao(String dianpubianhao) {
		this.dianpubianhao = dianpubianhao;
	}
	/**
	 * 获取：店铺编号
	 */
	public String getDianpubianhao() {
		return dianpubianhao;
	}
	/**
	 * 设置：店铺名称
	 */
	public void setDianpumingcheng(String dianpumingcheng) {
		this.dianpumingcheng = dianpumingcheng;
	}
	/**
	 * 获取：店铺名称
	 */
	public String getDianpumingcheng() {
		return dianpumingcheng;
	}
	/**
	 * 设置：店铺地址
	 */
	public void setDianpudizhi(String dianpudizhi) {
		this.dianpudizhi = dianpudizhi;
	}
	/**
	 * 获取：店铺地址
	 */
	public String getDianpudizhi() {
		return dianpudizhi;
	}
	/**
	 * 设置：营业时间
	 */
	public void setYingyeshijian(String yingyeshijian) {
		this.yingyeshijian = yingyeshijian;
	}
	/**
	 * 获取：营业时间
	 */
	public String getYingyeshijian() {
		return yingyeshijian;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：店铺介绍
	 */
	public void setDianpujieshao(String dianpujieshao) {
		this.dianpujieshao = dianpujieshao;
	}
	/**
	 * 获取：店铺介绍
	 */
	public String getDianpujieshao() {
		return dianpujieshao;
	}
	/**
	 * 设置：店铺图片
	 */
	public void setDianputupian(String dianputupian) {
		this.dianputupian = dianputupian;
	}
	/**
	 * 获取：店铺图片
	 */
	public String getDianputupian() {
		return dianputupian;
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
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}

}
