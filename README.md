[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Colin Brunson

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?

42 users.
* How many salts did you create?

50 salts.
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)

`50^1303` total combinations.
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?

1303 x 1303 = `1,697,809` combinations.
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

It would be stored in a database for quiz data. The reason for it being hashed and salted would to be for access to only the student and possibly the professor/adminitation staff.

```bash
#!/bin/bash

# Prints the first column.            # While loop for each line.
awk -F ',' '{print $1}' quiz_data.csv | while read -r line; do
        # Generates a random number for a salt for 50 different numbers.
        salt=$((RANDOM % (10049 - 10000 + 1) + 10000))
        # Prints the hashed names.
        printf "${salt}${line}" | sha256sum | awk '{print $1, salt}'
done
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
73mosque - 0009549cd1d622aa41b72d607b44f4acd5ce5e8785ae5621c5fc171e87469c84
129say - 000aecbcc10d9bac7d7624716def961640acbb2084e8ffeb1fe352e501b0ec99
425tree - 0002429c1591bd550356400da94148182e8465496e6f13bc9ed3b521bd9f58bd
902alive - 0004a5344d92a6dc8983caa43a57c3579e5500bac2e52e95eaeef5f26128cdb9
425dictionary - 000fa2f4ba119690bc6949098dc190d75a6aadb15737277b88e5ac80b9f1b88d
213commonly - 00085b7acd4d28fa1453a185c8d3bfb700b1ddc8f971a34c44cd50bc851f2b40
```

* How many words were in your dictionary?

63 words.
* How many nonces did your code iterate over?

10000
* What was the maximum number of hashes your code *could* compute given the above?

Unknown due to the code being an infinate while loop.
* What did you think about Task 2?

It is interesting to have an idea on how crypto is mined, even though my computer cannot do as much as machines that are built for mining crypto.
* Is there a better way than brute force to attempt to get higher valued coins?

I don't believe so.
* Why or why not?

There is not another effective way (or at least an easier way) to get higher valued coins other than brute forcing as of now. It all depends on computing power and patiance.

```bash
while true; do
```

