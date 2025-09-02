[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Colin Brunson

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?

42 users.
* How many salts did you create?

1303 salts starting with 10000 and incrementing by 1 per line.
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

```

* How many words were in your dictionary?
* How many nonces did your code iterate over?
* What was the maximum number of hashes your code *could* compute given the above?
* What did you think about Task 2?
* Is there a better way than brute force to attempt to get higher valued coins?
* Why or why not?


```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

