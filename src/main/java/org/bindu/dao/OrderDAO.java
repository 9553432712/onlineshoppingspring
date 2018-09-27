package org.bindu.dao;
 
import java.util.List;
 
import org.bindu.model.CartInfo;
import org.bindu.model.OrderDetailInfo;
import org.bindu.model.OrderInfo;
import org.bindu.model.PaginationResult;
 
public interface OrderDAO {
 
    public void saveOrder(CartInfo cartInfo);
 
    public PaginationResult<OrderInfo> listOrderInfo(int page,
            int maxResult, int maxNavigationPage);
    
    public OrderInfo getOrderInfo(String orderId);
    
    public List<OrderDetailInfo> listOrderDetailInfos(String orderId);
 
}