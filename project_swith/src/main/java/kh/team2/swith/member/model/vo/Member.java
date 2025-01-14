package kh.team2.swith.member.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
public class Member {
	
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String email;
	private String hnd_no;
	private String post_no;
	private String add1;
	private String add2;
	private String agree1;
	private String agree2;
	private String agree3;
	private String member_auth;
	private int enabled;
	private Date status_date;
	private int failure_cnt;
	
	public Member() {
		super();
	}

	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_pwd=" + member_pwd + ", member_name=" + member_name
				+ ", email=" + email + ", hnd_no=" + hnd_no + ", post_no=" + post_no + ", add1=" + add1 + ", add2="
				+ add2 + ", agree1=" + agree1 + ", agree2=" + agree2 + ", agree3=" + agree3 + ", member_auth="
				+ member_auth + ", enabled=" + enabled + ", status_date=" + status_date + ", failure_cnt=" + failure_cnt
				+ "]";
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHnd_no() {
		return hnd_no;
	}

	public void setHnd_no(String hnd_no) {
		this.hnd_no = hnd_no;
	}

	public String getPost_no() {
		return post_no;
	}

	public void setPost_no(String post_no) {
		this.post_no = post_no;
	}

	public String getAdd1() {
		return add1;
	}

	public void setAdd1(String add1) {
		this.add1 = add1;
	}

	public String getAdd2() {
		return add2;
	}

	public void setAdd2(String add2) {
		this.add2 = add2;
	}

	public String getAgree1() {
		return agree1;
	}

	public void setAgree1(String agree1) {
		this.agree1 = agree1;
	}

	public String getAgree2() {
		return agree2;
	}

	public void setAgree2(String agree2) {
		this.agree2 = agree2;
	}

	public String getAgree3() {
		return agree3;
	}

	public void setAgree3(String agree3) {
		this.agree3 = agree3;
	}

	public String getMember_auth() {
		return member_auth;
	}

	public void setMember_auth(String member_auth) {
		this.member_auth = member_auth;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public Date getStatus_date() {
		return status_date;
	}

	public void setStatus_date(Date status_date) {
		this.status_date = status_date;
	}

	public int getFailure_cnt() {
		return failure_cnt;
	}

	public void setFailure_cnt(int failure_cnt) {
		this.failure_cnt = failure_cnt;
	}
	
	
}
