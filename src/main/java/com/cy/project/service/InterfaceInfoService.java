package com.cy.project.service;

import com.cy.project.model.entity.InterfaceInfo;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author SatanCY
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2024-09-28 17:17:26
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean b);
}
