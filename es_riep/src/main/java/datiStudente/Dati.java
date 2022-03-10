package datiStudente;

public class Dati implements Comparable{
	
	private String Nome; 
	private String Cognome; 
	private String dataN; 
	private String indirizzo; 
	private String citta; 
	private String codiceF;
	
	public Dati() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Dati(String nome, String cognome, String dataN, String indirizzo, String citta, String codiceF) {
		super();
		this.Nome = nome;
		this.Cognome = cognome;
		this.dataN = dataN;
		this.indirizzo = indirizzo;
		this.citta = citta;
		this.codiceF = codiceF;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getCognome() {
		return Cognome;
	}

	public void setCognome(String cognome) {
		Cognome = cognome;
	}

	public String getDataN() {
		return dataN;
	}

	public void setDataN(String dataN) {
		this.dataN = dataN;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getCodiceF() {
		return codiceF;
	}

	public void setCodiceF(String codiceF) {
		this.codiceF = codiceF;
	}

	@Override
	public int compareTo(Object obj) {
		// TODO Auto-generated method stub
		Dati studente = (Dati)obj;
		return (this.Nome).compareTo(studente.Nome);
	} 
	
	
	
}
