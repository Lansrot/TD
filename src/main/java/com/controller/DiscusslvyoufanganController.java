package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.DiscusslvyoufanganEntity;
import com.entity.view.DiscusslvyoufanganView;

import com.service.DiscusslvyoufanganService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 旅游方案评论表
 * 后端接口
 * @author 
 * @email 
 * @date 2021-02-24 18:10:35
 */
@RestController
@RequestMapping("/discusslvyoufangan")
public class DiscusslvyoufanganController {
    @Autowired
    private DiscusslvyoufanganService discusslvyoufanganService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DiscusslvyoufanganEntity discusslvyoufangan, HttpServletRequest request){
        EntityWrapper<DiscusslvyoufanganEntity> ew = new EntityWrapper<DiscusslvyoufanganEntity>();
		PageUtils page = discusslvyoufanganService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusslvyoufangan), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DiscusslvyoufanganEntity discusslvyoufangan, HttpServletRequest request){
        EntityWrapper<DiscusslvyoufanganEntity> ew = new EntityWrapper<DiscusslvyoufanganEntity>();
		PageUtils page = discusslvyoufanganService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusslvyoufangan), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DiscusslvyoufanganEntity discusslvyoufangan){
       	EntityWrapper<DiscusslvyoufanganEntity> ew = new EntityWrapper<DiscusslvyoufanganEntity>();
      	ew.allEq(MPUtil.allEQMapPre( discusslvyoufangan, "discusslvyoufangan")); 
        return R.ok().put("data", discusslvyoufanganService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DiscusslvyoufanganEntity discusslvyoufangan){
        EntityWrapper< DiscusslvyoufanganEntity> ew = new EntityWrapper< DiscusslvyoufanganEntity>();
 		ew.allEq(MPUtil.allEQMapPre( discusslvyoufangan, "discusslvyoufangan")); 
		DiscusslvyoufanganView discusslvyoufanganView =  discusslvyoufanganService.selectView(ew);
		return R.ok("查询旅游方案评论表成功").put("data", discusslvyoufanganView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DiscusslvyoufanganEntity discusslvyoufangan = discusslvyoufanganService.selectById(id);
        return R.ok().put("data", discusslvyoufangan);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DiscusslvyoufanganEntity discusslvyoufangan = discusslvyoufanganService.selectById(id);
        return R.ok().put("data", discusslvyoufangan);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DiscusslvyoufanganEntity discusslvyoufangan, HttpServletRequest request){
    	discusslvyoufangan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusslvyoufangan);
        discusslvyoufanganService.insert(discusslvyoufangan);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DiscusslvyoufanganEntity discusslvyoufangan, HttpServletRequest request){
    	discusslvyoufangan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusslvyoufangan);
        discusslvyoufanganService.insert(discusslvyoufangan);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody DiscusslvyoufanganEntity discusslvyoufangan, HttpServletRequest request){
        //ValidatorUtils.validateEntity(discusslvyoufangan);
        discusslvyoufanganService.updateById(discusslvyoufangan);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        discusslvyoufanganService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<DiscusslvyoufanganEntity> wrapper = new EntityWrapper<DiscusslvyoufanganEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = discusslvyoufanganService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
