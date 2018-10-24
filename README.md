# Création de THE HACKING PINTEREST
Contributeurs SAMTHP & HERVELEE

**Après téléchargement du repo, lancer**

```bundle install```  
```rails db:migrate```  
```rails db:seed```  

Accès à la console pour vérifier la structure de la BDD
```rails console```


## Résumé du projet
- Création d'un message board où les utilisateurs peuvent poster des liens
- Les autres utilisateurs peuvent commenter les liens soumis, ou commenter les commentaires
- Afin de hierarchiser les commentaires de commentaires, il suffit de créer une autre table de commentaires de commentaires, et il faudra ajouter les clés étrangères d'utilisateur et de la première table de commentaire. 

## Structure de la BDD

### Models 
- User
- Lien
- Commentary
- CommentToCommentary

### Colonnes de chaque table
> ```timestamps``` est présent dans chaque table sous la forme  
> ```t.datetime "created_at", null: false```  
> ```t.datetime "updated_at", null: false```   

* **table** ```users```
    * "name" (string)

* **table** ```liens```
    * "url" (string)
    * "user_id" **(foreign key)**

* **table** ```commentaries```
    * "content" (text)
    * "user_id" **(foreign key)**
    * "lien_id" **(foreign key)**

* **table** ```comment_to_commentaries```
    * "content" (text)
    * "user_id" **(foreign key)**
    * "commentary_id" **(foreign key)**
