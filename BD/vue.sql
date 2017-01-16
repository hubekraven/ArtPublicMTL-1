select  nomCollectif, nom, prenom from artiste a left outer join oeuvre o on o.idArtiste = a.id where o.valide = 1;

create view artisteAvecOeuvre as
select distinct nomCollectif, nom, prenom, id from artiste a left outer join oeuvre o on o.idArtiste = a.id where o.valide = 1;