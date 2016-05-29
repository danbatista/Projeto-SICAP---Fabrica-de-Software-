// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IClassificacaoPorCor.java

package br.net.sicap.sicap_business.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.net.sicap.sicap_business.bo.IClassificacaoPorCorBO;
import br.net.sicap.sicap_business.dao.IClassificacaoPorCorDAO;
import br.net.sicap.sicap_business.vo.ClassificacaoCorVO;

public class ClassificacaoPorCorBOImpl implements IClassificacaoPorCorBO
{    
	@Autowired
	IClassificacaoPorCorDAO dao;

    public  boolean inserirClassCor(ClassificacaoCorVO classificacaocorvo){
    	return dao.inserirClassCor(classificacaocorvo);
    }

    public  boolean alteraClassCor(ClassificacaoCorVO classificacaocorvo){
    	return dao.alteraClassCor(classificacaocorvo);
    }

    public  boolean inativarClassCor(int i){
    	return dao.inativarClassCor(i);
    }

    public  List<ClassificacaoCorVO> listaTodos(){
    	return dao.listaTodos();
    }
}