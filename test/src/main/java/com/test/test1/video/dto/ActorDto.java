package com.test.test1.video.dto;

public class ActorDto {
	
	private int actor_id;
	private String kor_name, eng_name;
	
	public int getActor_id() {
		return actor_id;
	}
	
	public void setActor_id(int actor_id) {
		this.actor_id = actor_id;
	}
	
	public String getKor_name() {
		return kor_name;
	}
	
	public void setKor_name(String kor_name) {
		this.kor_name = kor_name;
	}
	
	public String getEng_name() {
		return eng_name;
	}
	
	public void setEng_name(String eng_name) {
		this.eng_name = eng_name;
	}
	
	@Override
	public String toString() {
	return "ActorDto [actor_id = " + actor_id
			+ ", kor_name = " + kor_name
			+ ", eng_name = " + eng_name + "]";
	}
	
	


}
