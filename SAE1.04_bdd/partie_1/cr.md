### nom asso

description
Associe **classe** 1 et **classe 2**.

#### attributs


#### Multiplicité

- `1..0` par **classe1** car...
- `1..0` par **classe2** car...

---------------------------------------------------
***************************************************
---------------------------------------------------


### EnseigneRessource

Association qui représente  l'enseignement d'une ressource par un enseignant, elle permet de connaitre la répartition des heures de cours entre TP, TD et CM.
Associe **Ressource**  et **Enseignant**.

#### attributs
- *nb_heure_tp : int* c'est le nombre d'heure enseigné par l'enseignant dans une ressources en TP
- *nb_heure_td : int* c'est le nombre d'heure enseigné par l'enseignant dans une ressources en TD
- *nb_heure_cm : int*c'est le nombre d'heure enseigné par l'enseignant dans une ressources en CM

#### Multiplicité

- `0..1` par **Enseignant** car un enseignant ensigne ou non une ressource.
- `1..*` par **Ressource** car une ressource doit etre enseigné par au minimum un enseignant .




### EnseigneSAE

Association qui représente  l'enseignement d'une SAE par un enseignant, elle permet de connaitre la répartition des heures de cours entre TP, TD et CM.
Associe **SAE**  et **Enseignant**.

#### attributs
- *nb_heure_tp : int* c'est le nombre d'heure enseigné par l'enseignant dans une SAE en TP
- *nb_heure_td : int* c'est le nombre d'heure enseigné par l'enseignant dans une SAE en TD
- *nb_heure_cm : int*c'est le nombre d'heure enseigné par l'enseignant dans une SAE en CM

#### Multiplicité

- `0..1` par **Enseignant** car un enseignant ensigne ou non une ressource.
- `1..*` par **SAE** car une SAE doit etre enseigné par au minimum un enseignant .





### NotationRessource

Association qui représente la notation d'une Ressource dans une avec un coefficient.
Associe **ressource** et **UE**.

#### attributs
- *coefRx : float* c'est le coeficient de la ressource dans la note de l'UE.

#### Multiplicité

- `1..*` par **Ressource** car une ressource peut etre évalué dans plusieurs UE et est évalué dans au moins une
- `1..*` par **UE** car une UE évalue au moins une ressource



### NotationSAE

Association qui représente la notation d'une SAE dans une avec un coefficient.
Associe **SAE** et **UE**.

#### attributs
- *coefRx : float* c'est le coeficient de la ressource dans la note de l'UE.

#### Multiplicité

- `1..*` par **SAE** car une ressource peut etre évalué dans plusieurs UE et est évalué dans au moins une
- `1..*` par **UE** car une UE évalue au moins une ressource
