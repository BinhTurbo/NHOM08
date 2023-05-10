package Entities;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity(name = "orders")
@Table(name = "orders")
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer OrderID;
    @Column
    private Integer CustomerID;
    @Column
    private Date Date;
    @Column
    private Float Total;
    @Column
    private String Name;
    @Column
    private String Address;
    @Column
    private String Phone;
}
