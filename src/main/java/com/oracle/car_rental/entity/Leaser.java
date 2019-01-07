package com.oracle.car_rental.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

/**
 * 出租人
 *
 * @author wys
 * created in 21:30 2019/1/7
 */
@Data
@Entity
public class Leaser {

    @Id
    private Long id;

    @Column(columnDefinition = "integer(255) COMMENT '账号id'")
    private Long aid;

    @NotNull
    @Column(columnDefinition = "integer(255) COMMENT '身份证号码'")
    private Integer idNumber;

    @Column(columnDefinition = "varchar(255) COMMENT '姓名'")
    private String name;

    @NotNull
    @Column(columnDefinition = "varchar(255) COMMENT '电话'")
    private String phoneNumber;

    @NotNull
    @Column(columnDefinition = "varchar(255) COMMENT '性别'")
    private String gender;

}