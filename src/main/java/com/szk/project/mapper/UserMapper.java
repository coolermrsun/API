package com.szk.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.szk.project.model.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
* @author 孙枝坤
* @description 针对表【user(用户)】的数据库操作Mapper
* @createDate 2025-01-11 13:57:55
* @Entity generator.domain.User
*/
@Mapper
public interface UserMapper extends BaseMapper<User> {

}




