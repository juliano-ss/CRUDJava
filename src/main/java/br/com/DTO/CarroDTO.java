package br.com.DTO;

public class CarroDTO {

    private int id;
    private String modelo;
    private String placa;

    public CarroDTO() {
    }

    public CarroDTO(String modelo, String placa) {
        this.modelo = modelo;
        this.placa = placa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }
}
