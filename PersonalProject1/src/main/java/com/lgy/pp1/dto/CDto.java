package com.lgy.pp1.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
// CLUB Å×ÀÌºí Dto
public class CDto {
	private int clubno;
	private String chairman;
	private String clubname;
	private int dues;
	private String account;
	private String accountbank;
	private int leftover;
	private String regulation;
}
