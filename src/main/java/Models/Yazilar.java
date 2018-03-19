package Models;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the yazilar database table.
 * 
 */
@Entity
@NamedQuery(name="Yazilar.findAll", query="SELECT y FROM Yazilar y")
public class Yazilar implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int yid;

	private String ybaslik;

	@Lob
	private String yicerik;

	private String yozet;
	
	private String yyazar;

	@Temporal(TemporalType.DATE)
	private Date ytarih;

	public Yazilar() {
	}

	public int getYid() {
		return this.yid;
	}

	public void setYid(int yid) {
		this.yid = yid;
	}

	public String getYbaslik() {
		return this.ybaslik;
	}

	public void setYbaslik(String ybaslik) {
		this.ybaslik = ybaslik;
	}

	public String getYicerik() {
		return this.yicerik;
	}

	public void setYicerik(String yicerik) {
		this.yicerik = yicerik;
	}

	public String getYyazar() {
		return this.yyazar;
	}

	public void setYyazar(String yyazar) {
		this.yyazar = yyazar;
	}
	
	public String getYozet() {
		return this.yozet;
	}

	public void setYozet(String yozet) {
		this.yozet = yozet;
	}

	public Date getYtarih() {
		return this.ytarih;
	}

	public void setYtarih(Date ytarih) {
		this.ytarih = ytarih;
	}

}