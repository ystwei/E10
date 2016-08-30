package com.weikun.dao;

import com.weikun.model.Cart;
import com.weikun.model.CartExample;
import com.weikun.model.CartKey;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface CartMapper {
    int countByExample(CartExample example);

    int deleteByExample(CartExample example);

    int deleteByPrimaryKey(CartKey key);

    int insert(Cart record);

    int insertSelective(Cart record);

    List<Cart> selectByExample(CartExample example);

    Cart selectByPrimaryKey(CartKey key);
    //存储过程
    
    List<Cart>  addCart(Map map);
    
    List<Cart>  queryCart(Map map);
    
    List<Cart>  delCart(Map map);
    List<Cart>  updateCartB(Map map);
    
    void  updateOrders(Map map);
    //批量修改
    int updateCart(Map map);
    
    int updateByExampleSelective(@Param("record") Cart record, @Param("example") CartExample example);

    int updateByExample(@Param("record") Cart record, @Param("example") CartExample example);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);
}