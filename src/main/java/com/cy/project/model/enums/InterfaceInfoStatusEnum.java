package com.cy.project.model.enums;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 接口信息状态枚举值
 *
 * @Author：SatanCY
 * @Date：2024/10/2 10:18
 */
public enum InterfaceInfoStatusEnum {
    ONLINE("上线",1),
    OFFLINE("关闭",0);

    private final String text;
    private final int value;

    InterfaceInfoStatusEnum(String text, int value) {
        this.text = text;
        this.value = value;
    }

    /**
     * 获取值列表
     */
    public static List<Integer> getValues() {
        return Arrays.stream(values()).map(item -> item.value).collect(Collectors.toList());
    }

    public String getText() {
        return text;
    }

    public int getValue() {
        return value;
    }
}
