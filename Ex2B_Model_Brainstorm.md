# Requirements and Conceptual Model
1.
a) Cesar Alcantar and Joshua Lopez
b) The end user is Lana and Lana will need to be able to figure out what data she will need to keep track of. Some important categories that she will need to keep track of are payments, customers, dogs, and appointment times. 
c) customer_id, dog_id, customer phone number, customer email, customers address if you are picking or dropping off their dogs, dog walking time, dog walking date,
2. 
a) Customers, Dogs, Walks, and Payments
b) for customers I would have: custommer_id, address, phone number, email, first_name, and last_name
for for dogs I would have: dog_id, breed, customer_id
for payments I would have payment_id, amount, paymentdate
for walks i would have: walk_id, walkdate, walktime, dog_id
c) customers to dogs and payments. There would only be 1 customer for multiple dogs. Then Dogs to walks. Also depending on how long the walk is walks could be connected to payments because of the walk is longer then the payment would be more.
d) multiple dogs and multiple walks.
4. 
a) similarities are that we both have a walks and a dogs table. We also both have a customers table, except Joshuas table is names "clients" and Cesars is names "Customers". We also have the same FK and PK.
b) A difference is that Cesar has a Payments table and Joshua just has a clients, dogs, and walks table. The pros of having a 4th table for payments is that you can keep track of receipts from your clients. A con of not having a payments table is that you can forget how much you previously charged a client for future references. 
