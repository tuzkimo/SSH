package cn.jbit.ssh.dao;

import java.util.List;

import cn.jbit.ssh.entities.Project;

/**
 * 项目数据访问接口
 *
 */
public interface IProjectDAO {

	/**
	 * 获取所有项目
	 * @return 项目列表
	 */
	List<Project> getProjects();
	
	/**
	 * 根据项目编号获取指定项目
	 * @param id 项目编号
	 * @return 项目
	 */
	Project getProjectById(Long id);
	
}
