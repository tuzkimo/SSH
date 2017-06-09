package cn.jbit.ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jbit.ssh.dao.IProjectDAO;
import cn.jbit.ssh.entities.Project;

/**
 * 项目服务实现类
 *
 */
@Service
public class ProjectService implements IProjectService {

	@Resource
	private IProjectDAO projectDAO;
	
	/**
	 * 获取项目列表
	 */
	@Override
	public List<Project> getProjects() {
		// TODO Auto-generated method stub
		return projectDAO.getProjects();
	}

	/**
	 * 根据项目编号获取指定项目
	 */
	@Override
	public Project getProjectById(Long id) {
		// TODO Auto-generated method stub
		return projectDAO.getProjectById(id);
	}
	
}
