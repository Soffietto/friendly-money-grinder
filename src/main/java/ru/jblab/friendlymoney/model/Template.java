package ru.jblab.friendlymoney.model;

import javax.persistence.Entity;

@Entity
public class Template extends AbstractEntity {

    private int maketNumber;

    public int getMaketNumber() {
        return maketNumber;
    }

    public void setMaketNumber(int maketNumber) {
        this.maketNumber = maketNumber;
    }
}
