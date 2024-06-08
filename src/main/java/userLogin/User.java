package userLogin;

public class User {
	int id;
    String nom;
    String prenom;
    String tel;
    String adress;
    String email;
    String password;

    public User() {
    }

    public User(int id, String prenom, String nom, String tel, String adress, String email, String password) {
        this.id = id;
        this.prenom = prenom;
        this.nom = nom;
        this.tel = tel;
        this.adress = adress;
        this.email = email;
        this.password = password;
    }

    public User(String prenom, String nom, String tel, String adress, String email, String password) {
    	this.prenom = prenom;
        this.nom = nom;
        this.tel = tel;
        this.adress = adress;
        this.email = email;
        this.password = password;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}

