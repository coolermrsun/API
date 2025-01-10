package com.szk.project.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.szk.project.common.ErrorCode;
import com.szk.project.exception.BusinessException;
import com.szk.project.service.InterfaceInfoService;
import com.szk.project.model.entity.InterfaceInfo;
import com.szk.project.mapper.InterfaceInfoMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
* @author 孙枝坤
* @description 针对表【interface_info(接口信息表)】的数据库操作Service实现
* @createDate 2025-01-10 19:04:06
*/
@Service
public class InterfaceInfoServiceImpl extends ServiceImpl<InterfaceInfoMapper, InterfaceInfo>
    implements InterfaceInfoService {

    @Override
    public void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add) {
        if (interfaceInfo == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        String name = interfaceInfo.getName();
        // 创建时，所有参数必须非空
        if (add) {
            if (StringUtils.isAnyBlank(name)) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR);
            }
        }
        if (StringUtils.isNotBlank(name) && name.length() > 50) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "名称过长");
        }
    }
}




