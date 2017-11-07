package md.amsoft.onboard.model;

import java.time.LocalDate;

public class Person {

    private String firstname;

    private String lastname;

    private LocalDate dob;

    private Character gender;

    private Adress address;

    private Phone phones;

    private byte picture;

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public Character getGender() {
        return gender;
    }

    public void setGender(Character gender) {
        this.gender = gender;
    }

    public Adress getAddress() {
        return address;
    }

    public void setAddress(Adress address) {
        this.address = address;
    }

    public Phone getPhones() {
        return phones;
    }

    public void setPhones(Phone phones) {
        this.phones = phones;
    }

    public byte getPicture() {
        return picture;
    }

    public void setPicture(byte picture) {
        this.picture = picture;
    }
}
