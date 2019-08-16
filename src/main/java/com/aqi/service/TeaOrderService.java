package com.aqi.service;

import com.aqi.domain.TeaOrder;
import com.aqi.mapper.TeaOrderMapper;
import com.aqi.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;

public class TeaOrderService {

    private TeaOrderMapper teaOrderMapper;
    private SqlSession sqlSession;

    public TeaOrderService(){
        //初始化数据库操作对象，映射接口
        sqlSession= SqlSessionUtil.getSqlSession();
        teaOrderMapper=sqlSession.getMapper(TeaOrderMapper.class);
    }

    public int addOrder(TeaOrder teaOrder){
        //添加订单业务操作
        int rows=teaOrderMapper.addOrder(teaOrder);
        sqlSession.commit();
        return rows;
    }

    public void close(){
        if(sqlSession!=null){
            SqlSessionUtil.closeSqlSession(sqlSession);
        }
    }
}
