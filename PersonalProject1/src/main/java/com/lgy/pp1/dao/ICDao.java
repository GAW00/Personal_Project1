package com.lgy.pp1.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.pp1.dto.CDto;

public interface ICDao {
	public ArrayList<CDto> clublist();
	public void clubwrite(HashMap<String, String> param);
	public CDto clubview(HashMap<String, String> param);
	public void modify_clubname (HashMap<String, String> param);
	public void modify_chairman (HashMap<String, String> param);
	public void modify_dues (HashMap<String, String> param);
	public void modify_account (HashMap<String, String> param);
	public void modify_accountbank (HashMap<String, String> param);
	public void modify_leftover (HashMap<String, String> param);
	public void modify_regulation (HashMap<String, String> param);
}
