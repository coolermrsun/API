package com.szk.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.szk.project.common.ErrorCode;
import com.szk.project.exception.BusinessException;
import com.szk.project.exception.ThrowUtils;
import com.szk.project.model.entity.InterfaceInfo;
import com.szk.project.model.entity.Post;
import org.apache.commons.lang3.StringUtils;

/**
* @author 孙枝坤
* @description 针对表【interface_info(接口信息表)】的数据库操作Service
* @createDate 2025-01-10 19:04:06
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);

}
