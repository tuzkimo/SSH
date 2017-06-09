package cn.jbit.ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.jbit.ssh.entities.Workorder;

/**
 * 工单数据访问实现类
 *
 */
@Repository
public class WorkorderDAO implements IWorkorderDAO {
	
	@Resource
	private HibernateTemplate hibernateTemplate;

	/**
	 * 获取所有工单
	 */
	@Override
	public List<Workorder> getWorkorders() {
		// TODO Auto-generated method stub
		return hibernateTemplate.find("FROM Workorder");
	}

	/**
	 * 根据工单编号获取指定工单
	 */
	@Override
	public Workorder getWorkorderById(Long id) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(Workorder.class, id);
	}

	/**
	 * 添加工单
	 */
	@Override
	public void addWorkorder(Workorder workorder) {
		// TODO Auto-generated method stub
		hibernateTemplate.save(workorder);
	}

}
