// Ref: https://noir-lang.org/getting_started/merkle-proof.html
// Example of a Merkle Proof in Noir.
// Merkle tree inclusion checks are included in the standard library for Noir. 
use dep::std;

// Message: the message to prove inclusion of
// Index: the index of the message in the Merkle tree
// HashPath: the path from the leaf to the root
// Root: the root of the Merkle tree
// See https://github.com/noir-lang/noir/blob/master/noir_stdlib/src/merkle.nr for std implementation.
fn main(root : Field, index : Field, hash_path : [Field; 3], secret: Field, priv_key: Field) {
    let pubkey = std::scalar_mul::fixed_base(priv_key);
    let pubkey_x = pubkey[0];
    let pubkey_y = pubkey[1];
    let note_commitment = std::hash::pedersen([pubkey_x, pubkey_y, secret]);

    let root = std::merkle::check_membership(root, note_commitment[0], index, hash_path);
    constrain root == root;
    std::println(root);
}