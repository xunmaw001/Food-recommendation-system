package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.MeishidianpuEntity;
import com.entity.view.MeishidianpuView;

import com.service.MeishidianpuService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 美食店铺
 * 后端接口
 * @author 
 * @email 
 * @date 2023-04-13 11:55:33
 */
@RestController
@RequestMapping("/meishidianpu")
public class MeishidianpuController {
    @Autowired
    private MeishidianpuService meishidianpuService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MeishidianpuEntity meishidianpu, 
		HttpServletRequest request){

        EntityWrapper<MeishidianpuEntity> ew = new EntityWrapper<MeishidianpuEntity>();

    	PageUtils page = meishidianpuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meishidianpu), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MeishidianpuEntity meishidianpu, 
		HttpServletRequest request){
        EntityWrapper<MeishidianpuEntity> ew = new EntityWrapper<MeishidianpuEntity>();

    	PageUtils page = meishidianpuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meishidianpu), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MeishidianpuEntity meishidianpu){
       	EntityWrapper<MeishidianpuEntity> ew = new EntityWrapper<MeishidianpuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( meishidianpu, "meishidianpu")); 
        return R.ok().put("data", meishidianpuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MeishidianpuEntity meishidianpu){
        EntityWrapper< MeishidianpuEntity> ew = new EntityWrapper< MeishidianpuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( meishidianpu, "meishidianpu")); 
		MeishidianpuView meishidianpuView =  meishidianpuService.selectView(ew);
		return R.ok("查询美食店铺成功").put("data", meishidianpuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MeishidianpuEntity meishidianpu = meishidianpuService.selectById(id);
		meishidianpu.setClicknum(meishidianpu.getClicknum()+1);
		meishidianpu.setClicktime(new Date());
		meishidianpuService.updateById(meishidianpu);
        return R.ok().put("data", meishidianpu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MeishidianpuEntity meishidianpu = meishidianpuService.selectById(id);
		meishidianpu.setClicknum(meishidianpu.getClicknum()+1);
		meishidianpu.setClicktime(new Date());
		meishidianpuService.updateById(meishidianpu);
        return R.ok().put("data", meishidianpu);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        MeishidianpuEntity meishidianpu = meishidianpuService.selectById(id);
        if(type.equals("1")) {
        	meishidianpu.setThumbsupnum(meishidianpu.getThumbsupnum()+1);
        } else {
        	meishidianpu.setCrazilynum(meishidianpu.getCrazilynum()+1);
        }
        meishidianpuService.updateById(meishidianpu);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MeishidianpuEntity meishidianpu, HttpServletRequest request){
    	meishidianpu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(meishidianpu);

        meishidianpuService.insert(meishidianpu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MeishidianpuEntity meishidianpu, HttpServletRequest request){
    	meishidianpu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(meishidianpu);

        meishidianpuService.insert(meishidianpu);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody MeishidianpuEntity meishidianpu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(meishidianpu);
        meishidianpuService.updateById(meishidianpu);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        meishidianpuService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<MeishidianpuEntity> wrapper = new EntityWrapper<MeishidianpuEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = meishidianpuService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,MeishidianpuEntity meishidianpu, HttpServletRequest request,String pre){
        EntityWrapper<MeishidianpuEntity> ew = new EntityWrapper<MeishidianpuEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        params.put("order", "desc");
		PageUtils page = meishidianpuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meishidianpu), params), params));
        return R.ok().put("data", page);
    }








}
