package com.szk.szkapicommon.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.szk.szkapicommon.model.entity.InterfaceInfo;
import com.szk.szkapicommon.model.entity.User;
import com.szk.szkapicommon.model.entity.UserInterfaceInfo;

public interface UserInterfaceInfoService extends IService<UserInterfaceInfo> {
    void vaildUserInterfaceinfo(UserInterfaceInfo userInterfaceInfo,boolean add);

    User getUserByUsername(String accessKey,String secretKey);

    InterfaceInfo getInterfaceInfo(String path,String method);

    boolean invokeCount(long interfaceInfoId,long userId);
}
