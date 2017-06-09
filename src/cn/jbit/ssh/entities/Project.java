package cn.jbit.ssh.entities;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Project entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "PROJECT", schema = "SYSTEM")
public class Project implements java.io.Serializable {

	// Fields

	private Long id;
	private String projectname;
	private Set<Workorder> workorders = new HashSet<Workorder>(0);

	// Constructors

	/** default constructor */
	public Project() {
	}

	/** minimal constructor */
	public Project(String projectname) {
		this.projectname = projectname;
	}

	/** full constructor */
	public Project(String projectname, Set<Workorder> workorders) {
		this.projectname = projectname;
		this.workorders = workorders;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "ID", unique = true, nullable = false, precision = 18, scale = 0)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "PROJECTNAME", nullable = false, length = 60)
	public String getProjectname() {
		return this.projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "project")
	public Set<Workorder> getWorkorders() {
		return this.workorders;
	}

	public void setWorkorders(Set<Workorder> workorders) {
		this.workorders = workorders;
	}

}