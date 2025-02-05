package com.dao;

import com.entity.RemenmeishiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.RemenmeishiVO;
import com.entity.view.RemenmeishiView;


/**
 * 热门美食
 * 
 * @author 
 * @email 
 * @date 2023-04-13 11:55:33
 */
public interface RemenmeishiDao extends BaseMapper<RemenmeishiEntity> {
	
	List<RemenmeishiVO> selectListVO(@Param("ew") Wrapper<RemenmeishiEntity> wrapper);
	
	RemenmeishiVO selectVO(@Param("ew") Wrapper<RemenmeishiEntity> wrapper);
	
	List<RemenmeishiView> selectListView(@Param("ew") Wrapper<RemenmeishiEntity> wrapper);

	List<RemenmeishiView> selectListView(Pagination page,@Param("ew") Wrapper<RemenmeishiEntity> wrapper);
	
	RemenmeishiView selectView(@Param("ew") Wrapper<RemenmeishiEntity> wrapper);
	

}
