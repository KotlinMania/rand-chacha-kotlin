# rand-chacha-kotlin in Kotlin

[![GitHub link](https://img.shields.io/badge/GitHub-KotlinMania%2Frand-chacha-kotlin-blue.svg)](https://github.com/KotlinMania/rand-chacha-kotlin)
[![Maven Central](https://img.shields.io/maven-central/v/io.github.kotlinmania/rand-chacha-kotlin)](https://central.sonatype.com/artifact/io.github.kotlinmania/rand-chacha-kotlin)
[![Build status](https://img.shields.io/github/actions/workflow/status/KotlinMania/rand-chacha-kotlin/ci.yml?branch=main)](https://github.com/KotlinMania/rand-chacha-kotlin/actions)

This is a Kotlin Multiplatform line-by-line transliteration port of [`rust-random/rngs`](https://github.com/rust-random/rngs) (crate `rand_chacha`).

**Original Project:** This port is based on [`rust-random/rngs`](https://github.com/rust-random/rngs). All design credit and project intent belong to the upstream authors; this repository is a faithful port to Kotlin Multiplatform with no behavioural changes intended.

### Porting status

This is an **in-progress port**. The goal is feature parity with the upstream Rust crate while providing a native Kotlin Multiplatform API. Every Kotlin file carries a `// port-lint: source <path>` header naming its upstream Rust counterpart so the AST-distance tool can track provenance.

---

## Upstream README — `rust-random/rngs`

> The text below is reproduced from [`https://github.com/rust-random/rngs`](https://github.com/rust-random/rngs). It is the upstream project's own description and remains under the upstream authors' authorship; links have been rewritten to absolute upstream URLs where appropriate so they continue to resolve from this repository.

# rand_chacha

[![Test Status](https://github.com/rust-random/rngs/actions/workflows/test.yml/badge.svg?event=push)](https://github.com/rust-random/rngs/actions)
[![Latest version](https://img.shields.io/crates/v/rand_chacha.svg)](https://crates.io/crates/rand_chacha)
[![Book](https://img.shields.io/badge/book-master-yellow.svg)](https://rust-random.github.io/book/)
[![API](https://docs.rs/rand_chacha/badge.svg)](https://docs.rs/rand_chacha)

A cryptographically secure random number generator that uses the ChaCha
algorithm.

This implementation of ChaCha RNGs is built over `ppv-lite86` by Kaz Wesley,
and was formerly the implementation behind `rand::rngs::StdRng`.

ChaCha is a stream cipher designed by Daniel J. Bernstein[^1], that we use
as an RNG. It is an improved variant of the Salsa20 cipher family, which was
selected as one of the "stream ciphers suitable for widespread adoption" by
eSTREAM[^2].

The RNGs provided by this crate are implemented via the fast stream ciphers of
the [`c2-chacha`](https://crates.io/crates/c2-chacha) crate.

Links:

-   [API documentation (docs.rs)](https://docs.rs/rand_chacha)
-   [Changelog](https://github.com/rust-random/rngs/blob/master/rand_chacha/CHANGELOG.md)

[rand]: https://crates.io/crates/rand
[^1]: D. J. Bernstein, [*ChaCha, a variant of Salsa20*](
      https://cr.yp.to/chacha.html)

[^2]: [eSTREAM: the ECRYPT Stream Cipher Project](
      http://www.ecrypt.eu.org/stream/)


## Crate Features

`rand_chacha` is `no_std` compatible when disabling default features; the `std`
feature can be explicitly required to re-enable `std` support. Using `std`
allows detection of CPU features and thus better optimisation.


# License

`rand_chacha` is distributed under the terms of both the MIT license and the
Apache License (Version 2.0).

See [LICENSE-APACHE](LICENSE-APACHE) and [LICENSE-MIT](LICENSE-MIT), and
[COPYRIGHT](COPYRIGHT) for details.

---

## About this Kotlin port

### Installation

```kotlin
dependencies {
    implementation("io.github.kotlinmania:rand-chacha-kotlin:0.1.0")
}
```

### Building

```bash
./gradlew build
./gradlew test
```

### Targets

- macOS arm64
- Linux x64
- Windows mingw-x64
- iOS arm64 / simulator-arm64 (Swift export + XCFramework)
- JS (browser + Node.js)
- Wasm-JS (browser + Node.js)
- Android (API 24+)

### Porting guidelines

See [AGENTS.md](AGENTS.md) and [CLAUDE.md](CLAUDE.md) for translator discipline, port-lint header convention, and Rust → Kotlin idiom mapping.

### License

This Kotlin port is distributed under the same license terms as the upstream [`rust-random/rngs`](https://github.com/rust-random/rngs). See [LICENSE](LICENSE) (and any sibling `LICENSE-*` / `NOTICE` files mirrored from upstream) for the full text.

Original work copyrighted by the rand_chacha authors.  
Kotlin port: Copyright (c) 2026 Sydney Renee and The Solace Project.

### Acknowledgments

Thanks to the [`rust-random/rngs`](https://github.com/rust-random/rngs) maintainers and contributors for the original Rust implementation. This port reproduces their work in Kotlin Multiplatform; bug reports about upstream design or behavior should go to the upstream repository.
