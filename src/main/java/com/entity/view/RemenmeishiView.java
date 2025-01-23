package com.entity.view;

import com.entity.RemenmeishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热门美食
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-13 11:55:33
 */
@TableName("remenmeishi")
public class RemenmeishiView  extends RemenmeishiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public RemenmeishiView(){
	}
 
 	public RemenmeishiView(RemenmeishiEntity remenmeishiEntity){
 	try {
			BeanUtils.copyProperties(this, remenmeishiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
