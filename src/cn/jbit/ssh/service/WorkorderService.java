package cn.jbit.ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jbit.ssh.dao.IWorkorderDAO;
import cn.jbit.ssh.entities.Workorder;

/**
 * 工单服务实现类
 *
 */
@Service
public class WorkorderService implements IWorkorderService {

	@Resource
	private IWorkorderDAO workorderDAO;
	
	/**
	 * 获取所有工单
	 */
	@Override
	public List<Workorder> getWorkorders() {
		// TODO Auto-generated method stub
		return workorderDAO.getWorkorders();
	}

	/**
	 * 根据工单编号获取指定工单
	 */
	@Override
	public Workorder getWorkorderById(Long id) {
		// TODO Auto-generated method stub
		return workorderDAO.getWorkorderById(id);
	}

	/**
	 * 添加工单
	 */
	@Override
	public void addWorkorder(Workorder workorder) {
		// TODO Auto-generated method stub
		workorderDAO.addWorkorder(workorder);
	}

}
