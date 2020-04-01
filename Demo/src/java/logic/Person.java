package logic;

public class Person {
    int id;
    String name;
    String email;
    String nationality;

    public Person() {
    }

    public Person(int id, String name, String email, String nationality) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.nationality = nationality;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
    
    
}
