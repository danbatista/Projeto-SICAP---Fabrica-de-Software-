// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IParentescoDAO.java

package br.net.sicap.sicap_business.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.net.sicap.sicap_business.bo.IParentescoBO;
import br.net.sicap.sicap_business.dao.IParentescoDAO;
import br.net.sicap.sicap_business.vo.ParentescoVO;

public class ParentescoBOImpl implements IParentescoBO
{
	
	@Autowired
	IParentescoDAO dao;

    public  boolean inserirParentesco(ParentescoVO parentescovo){
    	 if(dao.inserirParentesco(parentescovo));
    	 return false;
    }

    public  boolean alterarParentesco(ParentescoVO parentescovo){
    	if(dao.alterarParentesco(parentescovo));
    	return false;
    }

    public  boolean DeletarParentesco(int i){
    	return true;
    }

    public  List<ParentescoVO> listaTodos(){
    	return dao.listaTodos();
    }
}
