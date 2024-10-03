package com.cy.project.common;

import lombok.Data;

import java.io.Serializable;

/**
 * 发布上线接口请求
 *
 * @author SatanCY
 */
@Data
public class IdRequest implements Serializable {
    /**
     * id
     */
    private Long id;

    private static final long serialVersionUID = 1L;
}