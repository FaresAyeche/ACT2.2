1- Afficher le contenu du devis ayant l'id 10



SELECT offerName ,unitPriceTTC, quantity,totalTTC FROM quotationContent,offer, quotation
WHERE quotaionContent.id_quotationContent=quotation.id_quotation AND quotaionContent.id_offer=offer.id_offer AND quotation.id_quotation = 10;



2-Afficher la liste des devis créés par les utilisateurs ayant une adresse Email sous GMAIL.COM



SELECT id_user, firstname , lastname , email FROM quotation , user
WHERE quotation.id_user= user.id_user AND (user.email LIKE '%gmail.com' OR user.email LIKE '%GMAIL.COM');