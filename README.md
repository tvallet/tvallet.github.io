# tvallet.github.io

#TP1_Vote
1.L'organisateur désigné est l'Etat.
2.Les votants sont les citoyens(+ de 18 ans)
3.Les propositions sont les noms de candidats à une élection.
4.Seul l'organisateur peut ajouter des propositions
5.Pour ce type de vote la durée est en général de 12h (8h à 20h)
6.Les résultats sont calculés suivant le candidat qui a obtenu le plus de vote. chaque votant ne peut voter qu'une seule fois.
7.Délégation plus utiles car les votants pourront voter d'ou ils veulent.
8.Le votant doit avoir un identifiant unique lorsque celui ci devient citoyen


#TP2_Fidelite
Caussanel Vallet Charge à vous, de définir le jeton/token que vous souhaitez implémenter.
Quelle sera sa valeur ?
Qui l'émettra ? En quelle quantité ? Sera-t-il possible d'un créer de nouveaux ? D'en détruire ?
Les token modélisent des points de fidélité, un facteur est donc renseigné par le magasin dans un sens pour donner le nombre de points à attribuer en fonction du prix(fonction AddPoints),dans un autre pour calculer la remise obtenue en fonction du nombre de Points que le client souhaite utiliser (fonction UsePoints). C'est le commerçant qui génère les token et peut les detruire, dans une quantité adaptée aux nombres de clients évidemment et de leurs achats,ainsi que du facteur choisi pour l'attribution.Lorsque les points sont utilisés ils retournent dans le wallet du magasin et le cycle recommence.
Faudra-t-il être authentifié pour en posséder ? pour en transmettre ? Si oui, par qui ?
Les fonctions transfer et transferfrom du standard erc20 qui permettent l'échange de points entre clients si l'opération est validée par le magasin et qui sont utilisées dans les fonctions add et use points qui ne sont accessibles que par le commerçant.
