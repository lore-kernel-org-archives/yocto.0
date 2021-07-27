Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web09.3700.1627403098627059721
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 09:24:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YaY455Gx;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id pf12-20020a17090b1d8cb0290175c085e7a5so5179997pjb.0
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 09:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dsL9c8eCfeP4jjo6wAX9Se4ULH061m2gQ9Wj3MznYPo=;
        b=YaY455GxXQkMIKh1vLcnHFKyQ2yl3Cu7oOCTO3NEkbZLjm4M0RiP/wjdNVKWrRE5ge
         c51e9xfRiemnOUOWs0+DSunnvWCgSyVm5ZTLPz9xwjeb2WC/1pFcKxlgjWYD6a1k5vt8
         szjN5eJck5hhc/IfkZWOyY5KwevFlf2LXza8+gcYv8JZVXEUpdMMBRQgnY5d4zMUp7AP
         EdqBn6VfFJcgiM9FiputCpQoEflT84AXbHiFEjqhRXF+Q/S3qrbhcH45HVcSXlryL1dB
         eZ/JdueNZ8XKlyEJwJpdxkso9r/imNd4LzVMo1DdQgGnv+A/7cH8JFA4EiNFQNY3dSz0
         RsMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dsL9c8eCfeP4jjo6wAX9Se4ULH061m2gQ9Wj3MznYPo=;
        b=V5UIOkB32qJtiJpcval2sJUY3QNZpT0rmbTEX6vS6CHkOJj0a6k4/3s2S6U5xDoY1r
         UQrp9nN+qMxyUcMnCQFjXDnprICbbsN4N3cmdN3LAIJBMZyZxk6yHn9pwa0WRCM5U7pf
         ncnRh5qI2VPM95AY7frY3GCajG8XJ3fnfFGglDyP0cU6uVRivc4P0owXo5JBo1AQLDIo
         zP0BsK3Tfiv293suyfuHvvf4pX9htzeRj5m2m8yTCZCmrem75KaeiHbTk28NoS2dmtVr
         ZhBnaXpfqmT/v7h89w2t7mXRbKed8iNPEZxj52OM7DuSb5rNo/a+4UozX0IraxTn4fK8
         KjoQ==
X-Gm-Message-State: AOAM532PVU4swun1caQ7gGYNX8jWbdmmJlvb94K1aZCvu3izhg7wD3ZJ
	LGKasHwzbRHUEPonBM2mde5xvCQdIHSabg==
X-Google-Smtp-Source: ABdhPJzh1mN1lS1QVRt259TRTq9t07u5lfqdVg3gZrs59+s2iN0mVjGvdh5psels/mbNilmHYHAKwg==
X-Received: by 2002:a17:90a:fa1:: with SMTP id 30mr4997633pjz.42.1627403097786;
        Tue, 27 Jul 2021 09:24:57 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:cbf5:d7b8:4de2:e344])
        by smtp.gmail.com with ESMTPSA id 201sm4581335pgd.37.2021.07.27.09.24.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 09:24:57 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] krill: Add new pkg
Date: Tue, 27 Jul 2021 09:24:54 -0700
Message-Id: <20210727162455.2497379-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../krill/files/panic_workaround.patch        |  16 +
 .../recipes-security/krill/krill.inc          | 325 ++++++++++++++++++
 .../recipes-security/krill/krill_0.9.1.bb     |  39 +++
 3 files changed, 380 insertions(+)
 create mode 100644 dynamic-layers/meta-rust/recipes-security/krill/files/panic_workaround.patch
 create mode 100644 dynamic-layers/meta-rust/recipes-security/krill/krill.inc
 create mode 100644 dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb

diff --git a/dynamic-layers/meta-rust/recipes-security/krill/files/panic_workaround.patch b/dynamic-layers/meta-rust/recipes-security/krill/files/panic_workaround.patch
new file mode 100644
index 0000000..9b08cb5
--- /dev/null
+++ b/dynamic-layers/meta-rust/recipes-security/krill/files/panic_workaround.patch
@@ -0,0 +1,16 @@
+Upstream-Status: OE specific
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/Cargo.toml
+===================================================================
+--- git.orig/Cargo.toml
++++ git/Cargo.toml
+@@ -71,7 +71,7 @@ static-openssl = [ "openssl/vendored" ]
+ # Make sure that Krill crashes on panics, rather than losing threads and
+ # limping on in a bad state.
+ [profile.release]
+-panic = "abort"
++#panic = "abort"
+ 
+ [dev-dependencies]
+ # for user management
diff --git a/dynamic-layers/meta-rust/recipes-security/krill/krill.inc b/dynamic-layers/meta-rust/recipes-security/krill/krill.inc
new file mode 100644
index 0000000..f86468b
--- /dev/null
+++ b/dynamic-layers/meta-rust/recipes-security/krill/krill.inc
@@ -0,0 +1,325 @@
+# please note if you have entries that do not begin with crate://
+# you must change them to how that package can be fetched
+SRC_URI += " \
+    crate://crates.io/addr2line/0.14.1 \
+    crate://crates.io/adler/1.0.2 \
+    crate://crates.io/adler32/1.2.0 \
+    crate://crates.io/aho-corasick/0.7.15 \
+    crate://crates.io/ansi_term/0.11.0 \
+    crate://crates.io/ansi_term/0.12.1 \
+    crate://crates.io/arrayref/0.3.6 \
+    crate://crates.io/arrayvec/0.5.2 \
+    crate://crates.io/ascii-canvas/2.0.0 \
+    crate://crates.io/ascii/1.0.0 \
+    crate://crates.io/atty/0.2.14 \
+    crate://crates.io/autocfg/0.1.7 \
+    crate://crates.io/autocfg/1.0.1 \
+    crate://crates.io/backtrace/0.3.56 \
+    crate://crates.io/base64/0.10.1 \
+    crate://crates.io/base64/0.12.3 \
+    crate://crates.io/base64/0.13.0 \
+    crate://crates.io/basic-cookies/0.1.4 \
+    crate://crates.io/bcder/0.5.1 \
+    crate://crates.io/bit-set/0.5.2 \
+    crate://crates.io/bit-vec/0.6.3 \
+    crate://crates.io/bitflags/1.2.1 \
+    crate://crates.io/blake2b_simd/0.5.11 \
+    crate://crates.io/block-buffer/0.9.0 \
+    crate://crates.io/bumpalo/3.6.1 \
+    crate://crates.io/byteorder/1.4.3 \
+    crate://crates.io/bytes/0.4.12 \
+    crate://crates.io/bytes/0.5.6 \
+    crate://crates.io/bytes/1.0.1 \
+    crate://crates.io/cc/1.0.67 \
+    crate://crates.io/cfg-if/0.1.10 \
+    crate://crates.io/cfg-if/1.0.0 \
+    crate://crates.io/chrono/0.4.19 \
+    crate://crates.io/chunked_transfer/1.4.0 \
+    crate://crates.io/cipher/0.2.5 \
+    crate://crates.io/clap/2.33.3 \
+    crate://crates.io/clokwerk/0.3.4 \
+    crate://crates.io/cloudabi/0.0.3 \
+    crate://crates.io/constant_time_eq/0.1.5 \
+    crate://crates.io/cookie/0.12.0 \
+    crate://crates.io/cookie_store/0.7.0 \
+    crate://crates.io/core-foundation-sys/0.8.2 \
+    crate://crates.io/core-foundation/0.9.1 \
+    crate://crates.io/cpuid-bool/0.1.2 \
+    crate://crates.io/crc32fast/1.2.1 \
+    crate://crates.io/crossbeam-deque/0.7.3 \
+    crate://crates.io/crossbeam-epoch/0.8.2 \
+    crate://crates.io/crossbeam-queue/0.2.3 \
+    crate://crates.io/crossbeam-utils/0.7.2 \
+    crate://crates.io/crossbeam-utils/0.8.3 \
+    crate://crates.io/crunchy/0.2.2 \
+    crate://crates.io/crypto-mac/0.10.0 \
+    crate://crates.io/ctrlc/3.1.9 \
+    crate://crates.io/deunicode/0.4.3 \
+    crate://crates.io/diff/0.1.12 \
+    crate://crates.io/digest/0.9.0 \
+    crate://crates.io/dirs/1.0.5 \
+    crate://crates.io/dtoa/0.4.8 \
+    crate://crates.io/either/1.6.1 \
+    crate://crates.io/ena/0.14.0 \
+    crate://crates.io/encoding_rs/0.8.28 \
+    crate://crates.io/error-chain/0.11.0 \
+    crate://crates.io/failure/0.1.8 \
+    crate://crates.io/failure_derive/0.1.8 \
+    crate://crates.io/fern/0.5.9 \
+    crate://crates.io/fixedbitset/0.2.0 \
+    crate://crates.io/flate2/1.0.20 \
+    crate://crates.io/fnv/1.0.7 \
+    crate://crates.io/foreign-types-shared/0.1.1 \
+    crate://crates.io/foreign-types/0.3.2 \
+    crate://crates.io/form_urlencoded/1.0.1 \
+    crate://crates.io/fuchsia-cprng/0.1.1 \
+    crate://crates.io/fuchsia-zircon-sys/0.3.3 \
+    crate://crates.io/fuchsia-zircon/0.3.3 \
+    crate://crates.io/futures-channel/0.3.14 \
+    crate://crates.io/futures-core/0.3.14 \
+    crate://crates.io/futures-cpupool/0.1.8 \
+    crate://crates.io/futures-executor/0.3.14 \
+    crate://crates.io/futures-io/0.3.14 \
+    crate://crates.io/futures-macro/0.3.14 \
+    crate://crates.io/futures-sink/0.3.14 \
+    crate://crates.io/futures-task/0.3.14 \
+    crate://crates.io/futures-util/0.3.14 \
+    crate://crates.io/futures/0.1.31 \
+    crate://crates.io/futures/0.3.14 \
+    crate://crates.io/generic-array/0.14.4 \
+    crate://crates.io/getrandom/0.1.16 \
+    crate://crates.io/getrandom/0.2.2 \
+    crate://crates.io/gimli/0.23.0 \
+    crate://crates.io/h2/0.1.26 \
+    crate://crates.io/h2/0.2.7 \
+    crate://crates.io/hashbrown/0.9.1 \
+    crate://crates.io/hermit-abi/0.1.18 \
+    crate://crates.io/hex/0.4.3 \
+    crate://crates.io/hmac/0.10.1 \
+    crate://crates.io/http-body/0.1.0 \
+    crate://crates.io/http-body/0.3.1 \
+    crate://crates.io/http/0.1.21 \
+    crate://crates.io/http/0.2.4 \
+    crate://crates.io/httparse/1.3.6 \
+    crate://crates.io/httpdate/0.3.2 \
+    crate://crates.io/hyper-tls/0.3.2 \
+    crate://crates.io/hyper-tls/0.4.3 \
+    crate://crates.io/hyper/0.12.36 \
+    crate://crates.io/hyper/0.13.10 \
+    crate://crates.io/idna/0.1.5 \
+    crate://crates.io/idna/0.2.2 \
+    crate://crates.io/impl-trait-for-tuples/0.2.1 \
+    crate://crates.io/indexmap/1.6.2 \
+    crate://crates.io/intervaltree/0.2.6 \
+    crate://crates.io/iovec/0.1.4 \
+    crate://crates.io/ipnet/2.3.0 \
+    crate://crates.io/itertools/0.10.0 \
+    crate://crates.io/itertools/0.9.0 \
+    crate://crates.io/itoa/0.4.7 \
+    crate://crates.io/jmespatch/0.3.0 \
+    crate://crates.io/js-sys/0.3.50 \
+    crate://crates.io/kernel32-sys/0.2.2 \
+    crate://crates.io/lalrpop-util/0.19.5 \
+    crate://crates.io/lalrpop/0.19.5 \
+    crate://crates.io/lazy_static/1.4.0 \
+    crate://crates.io/libc/0.2.93 \
+    crate://crates.io/libflate/1.0.4 \
+    crate://crates.io/libflate_lz77/1.0.0 \
+    crate://crates.io/lock_api/0.3.4 \
+    crate://crates.io/log/0.4.14 \
+    crate://crates.io/maplit/1.0.2 \
+    crate://crates.io/matchers/0.0.1 \
+    crate://crates.io/matches/0.1.8 \
+    crate://crates.io/maybe-uninit/2.0.0 \
+    crate://crates.io/memchr/2.3.4 \
+    crate://crates.io/memoffset/0.5.6 \
+    crate://crates.io/mime/0.3.16 \
+    crate://crates.io/mime_guess/2.0.3 \
+    crate://crates.io/miniz_oxide/0.4.4 \
+    crate://crates.io/mio/0.6.23 \
+    crate://crates.io/miow/0.2.2 \
+    crate://crates.io/native-tls/0.2.7 \
+    crate://crates.io/net2/0.2.37 \
+    crate://crates.io/new_debug_unreachable/1.0.4 \
+    crate://crates.io/nix/0.20.0 \
+    crate://crates.io/num-integer/0.1.44 \
+    crate://crates.io/num-traits/0.2.14 \
+    crate://crates.io/num_cpus/1.13.0 \
+    crate://crates.io/oauth2/4.0.0 \
+    crate://crates.io/object/0.23.0 \
+    crate://crates.io/once_cell/1.7.2 \
+    crate://crates.io/opaque-debug/0.3.0 \
+    crate://crates.io/openidconnect/2.0.0 \
+    crate://crates.io/openssl-probe/0.1.2 \
+    crate://crates.io/openssl-src/111.15.0+1.1.1k \
+    crate://crates.io/openssl-sys/0.9.61 \
+    crate://crates.io/openssl/0.10.33 \
+    crate://crates.io/ordered-float/1.1.1 \
+    crate://crates.io/oso/0.12.0 \
+    crate://crates.io/parking_lot/0.9.0 \
+    crate://crates.io/parking_lot_core/0.6.2 \
+    crate://crates.io/pbkdf2/0.7.5 \
+    crate://crates.io/percent-encoding/1.0.1 \
+    crate://crates.io/percent-encoding/2.1.0 \
+    crate://crates.io/petgraph/0.5.1 \
+    crate://crates.io/phf_shared/0.8.0 \
+    crate://crates.io/pico-args/0.4.0 \
+    crate://crates.io/pin-project-internal/1.0.6 \
+    crate://crates.io/pin-project-lite/0.1.12 \
+    crate://crates.io/pin-project-lite/0.2.6 \
+    crate://crates.io/pin-project/1.0.6 \
+    crate://crates.io/pin-utils/0.1.0 \
+    crate://crates.io/pkg-config/0.3.19 \
+    crate://crates.io/polar-core/0.12.0 \
+    crate://crates.io/ppv-lite86/0.2.10 \
+    crate://crates.io/precomputed-hash/0.1.1 \
+    crate://crates.io/proc-macro-hack/0.5.19 \
+    crate://crates.io/proc-macro-nested/0.1.7 \
+    crate://crates.io/proc-macro2/1.0.26 \
+    crate://crates.io/publicsuffix/1.5.6 \
+    crate://crates.io/quick-xml/0.19.0 \
+    crate://crates.io/quote/1.0.9 \
+    crate://crates.io/rand/0.6.5 \
+    crate://crates.io/rand/0.7.3 \
+    crate://crates.io/rand/0.8.3 \
+    crate://crates.io/rand_chacha/0.1.1 \
+    crate://crates.io/rand_chacha/0.2.2 \
+    crate://crates.io/rand_chacha/0.3.0 \
+    crate://crates.io/rand_core/0.3.1 \
+    crate://crates.io/rand_core/0.4.2 \
+    crate://crates.io/rand_core/0.5.1 \
+    crate://crates.io/rand_core/0.6.2 \
+    crate://crates.io/rand_hc/0.1.0 \
+    crate://crates.io/rand_hc/0.2.0 \
+    crate://crates.io/rand_hc/0.3.0 \
+    crate://crates.io/rand_isaac/0.1.1 \
+    crate://crates.io/rand_jitter/0.1.4 \
+    crate://crates.io/rand_os/0.1.3 \
+    crate://crates.io/rand_pcg/0.1.2 \
+    crate://crates.io/rand_xorshift/0.1.1 \
+    crate://crates.io/rdrand/0.4.0 \
+    crate://crates.io/redox_syscall/0.1.57 \
+    crate://crates.io/redox_syscall/0.2.5 \
+    crate://crates.io/redox_users/0.3.5 \
+    crate://crates.io/regex-automata/0.1.9 \
+    crate://crates.io/regex-syntax/0.6.23 \
+    crate://crates.io/regex/1.4.5 \
+    crate://crates.io/remove_dir_all/0.5.3 \
+    crate://crates.io/reqwest/0.10.10 \
+    crate://crates.io/reqwest/0.9.24 \
+    crate://crates.io/ring/0.16.20 \
+    crate://crates.io/rle-decode-fast/1.0.1 \
+    crate://crates.io/rpassword/5.0.1 \
+    crate://crates.io/rpki/0.10.1 \
+    crate://crates.io/rust-argon2/0.8.3 \
+    crate://crates.io/rustc-demangle/0.1.18 \
+    crate://crates.io/rustc_version/0.2.3 \
+    crate://crates.io/rustls/0.18.1 \
+    crate://crates.io/ryu/1.0.5 \
+    crate://crates.io/salsa20/0.7.2 \
+    crate://crates.io/schannel/0.1.19 \
+    crate://crates.io/scopeguard/1.1.0 \
+    crate://crates.io/scrypt/0.6.5 \
+    crate://crates.io/sct/0.6.1 \
+    crate://crates.io/security-framework-sys/2.2.0 \
+    crate://crates.io/security-framework/2.2.0 \
+    crate://crates.io/semver-parser/0.7.0 \
+    crate://crates.io/semver/0.9.0 \
+    crate://crates.io/serde-value/0.6.0 \
+    crate://crates.io/serde/1.0.125 \
+    crate://crates.io/serde_derive/1.0.125 \
+    crate://crates.io/serde_json/1.0.64 \
+    crate://crates.io/serde_path_to_error/0.1.4 \
+    crate://crates.io/serde_urlencoded/0.5.5 \
+    crate://crates.io/serde_urlencoded/0.7.0 \
+    crate://crates.io/sha2/0.9.3 \
+    crate://crates.io/sharded-slab/0.1.1 \
+    crate://crates.io/siphasher/0.3.5 \
+    crate://crates.io/slab/0.4.2 \
+    crate://crates.io/slug/0.1.4 \
+    crate://crates.io/smallvec/0.6.14 \
+    crate://crates.io/smallvec/1.6.1 \
+    crate://crates.io/socket2/0.3.19 \
+    crate://crates.io/spin/0.5.2 \
+    crate://crates.io/string/0.2.1 \
+    crate://crates.io/string_cache/0.8.1 \
+    crate://crates.io/strsim/0.8.0 \
+    crate://crates.io/subtle/2.4.0 \
+    crate://crates.io/syn/1.0.69 \
+    crate://crates.io/synstructure/0.12.4 \
+    crate://crates.io/syslog/4.0.1 \
+    crate://crates.io/tempfile/3.2.0 \
+    crate://crates.io/term/0.5.2 \
+    crate://crates.io/textwrap/0.11.0 \
+    crate://crates.io/thiserror-impl/1.0.24 \
+    crate://crates.io/thiserror/1.0.24 \
+    crate://crates.io/thread_local/1.1.3 \
+    crate://crates.io/time/0.1.44 \
+    crate://crates.io/tiny-keccak/2.0.2 \
+    crate://crates.io/tiny_http/0.8.0 \
+    crate://crates.io/tinyvec/1.2.0 \
+    crate://crates.io/tinyvec_macros/0.1.0 \
+    crate://crates.io/tokio-buf/0.1.1 \
+    crate://crates.io/tokio-current-thread/0.1.7 \
+    crate://crates.io/tokio-executor/0.1.10 \
+    crate://crates.io/tokio-io/0.1.13 \
+    crate://crates.io/tokio-macros/0.2.6 \
+    crate://crates.io/tokio-reactor/0.1.12 \
+    crate://crates.io/tokio-rustls/0.14.1 \
+    crate://crates.io/tokio-sync/0.1.8 \
+    crate://crates.io/tokio-tcp/0.1.4 \
+    crate://crates.io/tokio-threadpool/0.1.18 \
+    crate://crates.io/tokio-timer/0.2.13 \
+    crate://crates.io/tokio-tls/0.3.1 \
+    crate://crates.io/tokio-util/0.3.1 \
+    crate://crates.io/tokio/0.1.22 \
+    crate://crates.io/tokio/0.2.25 \
+    crate://crates.io/toml/0.5.8 \
+    crate://crates.io/tower-service/0.3.1 \
+    crate://crates.io/tracing-attributes/0.1.15 \
+    crate://crates.io/tracing-core/0.1.17 \
+    crate://crates.io/tracing-futures/0.2.5 \
+    crate://crates.io/tracing-log/0.1.2 \
+    crate://crates.io/tracing-serde/0.1.2 \
+    crate://crates.io/tracing-subscriber/0.2.17 \
+    crate://crates.io/tracing/0.1.25 \
+    crate://crates.io/try-lock/0.2.3 \
+    crate://crates.io/try_from/0.3.2 \
+    crate://crates.io/typenum/1.13.0 \
+    crate://crates.io/unicase/2.6.0 \
+    crate://crates.io/unicode-bidi/0.3.5 \
+    crate://crates.io/unicode-normalization/0.1.17 \
+    crate://crates.io/unicode-width/0.1.8 \
+    crate://crates.io/unicode-xid/0.2.1 \
+    crate://crates.io/untrusted/0.7.1 \
+    crate://crates.io/unwrap/1.2.1 \
+    crate://crates.io/url/1.7.2 \
+    crate://crates.io/url/2.2.1 \
+    crate://crates.io/urlparse/0.7.3 \
+    crate://crates.io/uuid/0.7.4 \
+    crate://crates.io/uuid/0.8.2 \
+    crate://crates.io/vcpkg/0.2.11 \
+    crate://crates.io/vec_map/0.8.2 \
+    crate://crates.io/version_check/0.9.3 \
+    crate://crates.io/want/0.2.0 \
+    crate://crates.io/want/0.3.0 \
+    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
+    crate://crates.io/wasi/0.9.0+wasi-snapshot-preview1 \
+    crate://crates.io/wasm-bindgen-backend/0.2.73 \
+    crate://crates.io/wasm-bindgen-futures/0.4.23 \
+    crate://crates.io/wasm-bindgen-macro-support/0.2.73 \
+    crate://crates.io/wasm-bindgen-macro/0.2.73 \
+    crate://crates.io/wasm-bindgen-shared/0.2.73 \
+    crate://crates.io/wasm-bindgen/0.2.73 \
+    crate://crates.io/web-sys/0.3.50 \
+    crate://crates.io/webpki/0.21.4 \
+    crate://crates.io/winapi-build/0.1.1 \
+    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
+    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
+    crate://crates.io/winapi/0.2.8 \
+    crate://crates.io/winapi/0.3.9 \
+    crate://crates.io/winreg/0.6.2 \
+    crate://crates.io/winreg/0.7.0 \
+    crate://crates.io/ws2_32-sys/0.2.1 \
+    crate://crates.io/xml-rs/0.8.3 \
+"
diff --git a/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb b/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb
new file mode 100644
index 0000000..2671ae8
--- /dev/null
+++ b/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb
@@ -0,0 +1,39 @@
+SUMMARY = "Resource Public Key Infrastructure (RPKI) daemon"
+HOMEPAGE = "https://www.nlnetlabs.nl/projects/rpki/krill/"
+LICENSE = "MPL-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=9741c346eef56131163e13b9db1241b3"
+
+DEPENDS = "openssl"
+
+include krill.inc
+
+# SRC_URI += "crate://crates.io/krill/0.9.1"
+SRC_URI += "git://github.com/NLnetLabs/krill.git;protocol=https;nobranch=1;branch=main"
+SRCREV = "d6c03b6f0199b1d10d252750a19a92b84576eb30"
+
+SRC_URI += "file://panic_workaround.patch"
+
+S = "${WORKDIR}/git"
+CARGO_SRC_DIR = ""
+
+inherit pkgconfig useradd systemd cargo
+
+
+do_install_append () {
+    install -d ${D}${sysconfdir}
+    install -d ${D}${datadir}/krill
+
+    install -m 664 ${S}/defaults/krill.conf ${D}${sysconfdir}/.
+    install ${S}/defaults/* ${D}${datadir}/krill/.
+}
+
+KRILL_UID ?= "krill"
+KRILL_GID ?= "krill"
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "--system ${KRILL_UID}"
+USERADD_PARAM_${PN} = "--system -g ${KRILL_GID} --home-dir  \
+                       /var/lib/krill/ --no-create-home  \
+                       --shell /sbin/nologin ${BPN}"
+
+FILES_${PN} += "{sysconfdir}/defaults ${datadir}"
-- 
2.25.1

