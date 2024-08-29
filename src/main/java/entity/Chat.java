package entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Chat {
    private int idChat;
    private String nom;
    private String race;
    private String repasFavoris;
    private LocalDate dateDeNaissance;



}
