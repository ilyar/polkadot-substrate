use crate::flipper::*;
use ink_lang as ink;

/// We test if the default constructor does its job.
#[ink::test]
fn default_works() {
    let flipper = Flipper::default();
    assert!(!flipper.get());
}

/// We test a simple use case of our contract.
#[ink::test]
fn it_works() {
    let mut flipper = Flipper::new(false);
    assert!(!flipper.get());
    flipper.flip();
    assert!(flipper.get());
}
