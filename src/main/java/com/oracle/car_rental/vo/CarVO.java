package com.oracle.car_rental.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CarVO {

    private String carNumber;

    private String brand;

    private String describe;

    private Date buyTime;

    private Integer dailyRent;

    private Date rentStartTime;

    private Date rentDeadLine;

    private Integer profit;

    /**
     * true正常  false维修
     */
    private String isNormal;

    private String isRent;
}
