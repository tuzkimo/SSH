package cn.jbit.ssh.entities;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Workorder entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "WORKORDER", schema = "SYSTEM")
public class Workorder implements java.io.Serializable {

	// Fields

	private Long id;
	private Project project;
	private String ordername;
	private String executor;
	private String description;
	private Long orderlevel;
	private Date orderdate;

	// Constructors

	/** default constructor */
	public Workorder() {
	}

	/** full constructor */
	public Workorder(Project project, String ordername, String executor,
			String description, Long orderlevel, Date orderdate) {
		this.project = project;
		this.ordername = ordername;
		this.executor = executor;
		this.description = description;
		this.orderlevel = orderlevel;
		this.orderdate = orderdate;
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

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "PROJECTID", nullable = false)
	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	@Column(name = "ORDERNAME", nullable = false, length = 60)
	public String getOrdername() {
		return this.ordername;
	}

	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}

	@Column(name = "EXECUTOR", nullable = false, length = 60)
	public String getExecutor() {
		return this.executor;
	}

	public void setExecutor(String executor) {
		this.executor = executor;
	}

	@Column(name = "DESCRIPTION", nullable = false, length = 420)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "ORDERLEVEL", nullable = false, precision = 18, scale = 0)
	public Long getOrderlevel() {
		return this.orderlevel;
	}

	public void setOrderlevel(Long orderlevel) {
		this.orderlevel = orderlevel;
	}

	@Column(name = "ORDERDATE", nullable = false, length = 7)
	public Date getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

}