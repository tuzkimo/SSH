package cn.jbit.ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.jbit.ssh.entities.Project;

/**
 * 项目数据访问实现类
 *
 */
@Repository
public class ProjectDAO implements IProjectDAO {
	
	@Resource
	private HibernateTemplate hibernateTemplate;

	/**
	 * 获取项目列表
	 */
	@Override
	public List<Project> getProjects() {
		// TODO Auto-generated method stub
		return hibernateTemplate.find("FROM Project");
	}

	/**
	 * 根据项目编号获取指定项目
	 */
	@Override
	public Project getProjectById(Long id) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(Project.class, id);
	}
	
}
