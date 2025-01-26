package com.szk.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.szk.szkapicommon.model.entity.UserInterfaceInfo;

import java.util.List;

/**
* @author 孙枝坤
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Mapper
* @createDate 2025-01-12 20:19:28
* @Entity generator.domain.UserInterfaceInfo
*/
public interface UserInterfaceInfoMapper extends BaseMapper<UserInterfaceInfo> {
    List<UserInterfaceInfo> listTopInvokeInterfaceInfo(int limit);
}




