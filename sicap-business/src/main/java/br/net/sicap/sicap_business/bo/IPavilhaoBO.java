package br.net.sicap.sicap_business.bo;

import java.util.List;

import br.net.sicap.sicap_business.vo.PavilhaoVO;


public interface IPavilhaoBO
{

    public boolean insert (PavilhaoVO vo);
    public boolean update (PavilhaoVO vo);
    public List<PavilhaoVO> lista();
    public boolean delete (int id);
}