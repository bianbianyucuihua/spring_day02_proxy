package com.hongyi.sys.service.impl;

import com.hongyi.sys.entity.Orders;
import com.hongyi.sys.mapper.OrdersMapper;
import com.hongyi.sys.service.IOrdersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhou
 * @since 2020-12-01
 */
@Service
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, Orders> implements IOrdersService {

}
