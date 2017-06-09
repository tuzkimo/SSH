package cn.jbit.ssh.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.jbit.ssh.entities.Project;
import cn.jbit.ssh.entities.Workorder;
import cn.jbit.ssh.service.IProjectService;
import cn.jbit.ssh.service.IWorkorderService;

/**
 * 工单系统控制器
 *
 */
@Controller
public class WorkorderAction extends ActionSupport{

	@Resource
	private IProjectService projectService;
	
	@Resource
	private IWorkorderService workorderService;
	
	private Long projectId;
	private List<Project> projects;
	private Workorder workorder;
	private List<Workorder> workorders;
	private String msg;

	/**
	 * 主页:列出所有项目
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		projects = projectService.getProjects();
		return SUCCESS;
	}
	
	/**
	 * 添加工单页：检验项目编号是否成功获取
	 */
	public String addOrder() throws Exception {
		if (projectId != null) {
			return SUCCESS;
		}
		return INPUT;
	}
	
	/**
	 * 添加确认
	 */
	public String addSave() throws Exception {
		try {
			Project project = projectService.getProjectById(projectId);
			workorder.setProject(project);
			workorder.setOrderdate(new Date());
			workorderService.addWorkorder(workorder);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg = "保存失败";
			return INPUT;
		}
		return SUCCESS;
	}
	
	/**
	 * 添加工单页：检验项目编号是否成功获取
	 */
	public String list() throws Exception {
		workorders = workorderService.getWorkorders();
		msg = "保存成功";
		return SUCCESS;
	}
	

	public List<Project> getProjects() {
		return projects;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public Workorder getWorkorder() {
		return workorder;
	}

	public void setWorkorder(Workorder workorder) {
		this.workorder = workorder;
	}

	public List<Workorder> getWorkorders() {
		return workorders;
	}

	public String getMsg() {
		return msg;
	}
	
	
	
}
