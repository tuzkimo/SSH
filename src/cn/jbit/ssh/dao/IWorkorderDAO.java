package cn.jbit.ssh.dao;

import java.util.List;

import cn.jbit.ssh.entities.Workorder;

/**
 * 工单数据访问接口
 * 
 */
public interface IWorkorderDAO {

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
