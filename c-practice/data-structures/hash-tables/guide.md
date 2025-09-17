# What is involved in a hash table implementation?
1. An array (buckets)
2. A hash function that turns a key (string) into a big number
3. Collision handling (linked list or open addressing)
4. Optional resizing

- Lookup/insert/delete are all: hash -> index = hash % capacity -> walk that bucket's tiny list
