package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="issue_table")
public class Issue {
	@Id
	@Column(name="username", length=50)
	private String username;
	@Column(name="user_issue", length=50, nullable=false)
	private String issue;
	@Column(name="user_priority", length=50, nullable=false)
	private String priority;
	@Column(name="user_category", length=50, nullable=false)
	private String category;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority=priority;
	}

	public void setCategory(String category) {
		this.category=category;
	}
	
	public String getCategory() {
		return category;
	}
	
}
