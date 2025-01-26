package com.szk.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.szk.szkapicommon.model.entity.InterfaceInfo;

/**
* @author 孙枝坤
* @description 针对表【interface_info(接口信息表)】的数据库操作Service
* @createDate 2025-01-10 19:04:06
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);

}
