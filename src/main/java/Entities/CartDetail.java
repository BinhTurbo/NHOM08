package Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;
import java.util.Date;

@Data
@Entity(name = "orderdetail")
@Table(name = "orderdetail")
public class CartDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer stt;
    @Column
    private Integer OrderID;
    @Column
    private Integer VegetableID;
    @Column
    private Integer Quantity;
    @Column
    private Float Price;
    @Column
    private Date Date;
}
