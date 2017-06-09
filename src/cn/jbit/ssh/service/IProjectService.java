package cn.jbit.ssh.service;

import java.util.List;

import cn.jbit.ssh.entities.Project;

/**
 * 项目服务接口
 *
 */
public interface IProjectService {

	/**
	 * 获取项目列表
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
