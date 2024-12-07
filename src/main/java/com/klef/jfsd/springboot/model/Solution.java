package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="solution_table")
public class Solution {

    @Id
    @Column(name="username", length=50)
    private String studentname;

    @Column(name="student_problem", length=50, nullable=false)
    private String problem;

    @Column(name="student_cure", length=1000, nullable=false)
    private String cure;

    @Column(name = "reference_link", length = 2083) // 2083 is a common max URL length
    private String referenceLink;

    public String getStudentname() {
        return studentname;
    }

    // Fixed parameter name here
    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getCure() {
        return cure;
    }

    public void setCure(String cure) {
        this.cure = cure;
    }

    public String getReferenceLink() {
        return referenceLink;
    }

    public void setReferenceLink(String referenceLink) {
        this.referenceLink = referenceLink;
    }
}
