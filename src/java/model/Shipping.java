
package model;




public class Shipping {

    private int id;
    private String name;
    private String phone;
    private String address;
    private String status;
    public Shipping() {
    }

    public Shipping( String name, String phone, String address) {
        this.name = name;
        this.phone = phone;
        this.address = address;
    }

    public Shipping(int id, String name, String phone, String address, String status) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.status = status;
    }
    

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Shipping{" + "id=" + id + ", name=" + name + ", phone=" + phone + ", address=" + address + '}';
    }
    
}
