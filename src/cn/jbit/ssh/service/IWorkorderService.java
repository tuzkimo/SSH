package cn.jbit.ssh.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.jbit.ssh.dao.IWorkorderDAO;
import cn.jbit.ssh.entities.Workorder;

/**
 * 工单服务接口
 *
 */
public interface IWorkorderService {
	
	/**
	 * 获取所有工单
	 * @return 工单列表
	 */
	List<Workorder> getWorkorders();
	
	/**
	 * 根据工单编号获取指定工单
	 * @param id 工单编号
	 * @return 工单
	 */
	Workorder getWorkorderById(Long id);
	
	/**
	 * 添加工单
	 * @param workorder 工单
	 */
	void addWorkorder(Workorder workorder);
	
}
