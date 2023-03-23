use ff::PrimeField;
use neptune::Poseidon;
use serde::{Deserialize, Serialize};

use merkletree::{
    merkle::{Element, MerkleTree},
    store::VecStore,
};

/// The element
type E = [u8; 32];

#[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
pub struct Input {
    pub tree: MerkleTree<E, Poseidon<'_, Bls381K12Scalar>, VecStore<E>>,
}

/// The BLS12-381 scalar field.
#[derive(PrimeField)]
#[PrimeFieldModulus = "52435875175126190479447740508185965837690552500527637822603658699938581184513"]
#[PrimeFieldGenerator = "7"]
#[PrimeFieldReprEndianness = "little"]
struct Bls381K12Scalar([u64; 4]);

// #[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
// pub struct MerkleTree<T> {
//     pub node: Node<T>,
//     pub children: Option<(Node<T>, Node<T>)>,
// }

// #[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
// pub struct Node<T> {
//     pub digest: T,
// }

// #[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
// pub enum NodeContents<T> {
//     Value(T),
//     Hash(String),
// }

// impl Args {
//     pub fn merkle(&self) -> u64 {
//         self.left
//             .iter()
//             .zip(&self.right)
//             .map(|(a, b)| a.checked_mul(*b).unwrap())
//             .sum()
//     }
// }
