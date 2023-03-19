Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3FEC7618A
	for <webhook@archiver.kernel.org>; Sun, 19 Mar 2023 00:40:58 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.9190.1679186449849127081
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 17:40:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b5IKVANb;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id n2so9572196qtp.0
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 17:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679186449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/QbeEHDbdLoyp7809x6iLEkWT0PpBlbj9vU/f0tLJw=;
        b=b5IKVANbT9V5fJGbJG9UoBxRafexAP+zdFnMqU81fC5uqnMMEK8/je1Za4lfyoM1hS
         mqzffqJXaKMMozriRsoayKuEYgiPruH3TIXEekk1i9W4kAMVnMMC6fc3wrk0tQMUCBe6
         DJWyEee13gsp9wRNXerpVe08OiOeU0XJI9fZoZJ4fV7y+Fskpg7WGpXKaH15lZdGuHUm
         VbGR2Vy1EgMOVqh2vlv8TlDr/65tJExouyIZ/UheWeg3LYgOs36/R66KdfvhSD4QB5p+
         SWr44ff7G5y4LdwwkhJIN6Fbg6uWjADhd4asRjiQ2q0tpjH39XMAVtYhW+k6XOIBpYez
         fsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679186449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/QbeEHDbdLoyp7809x6iLEkWT0PpBlbj9vU/f0tLJw=;
        b=oVw9adLf5yans7lQGDkyt6ObrKlQ5gB1oAR3axDB96yXCwQxH7LRKVMd29X/U7re6X
         HCJexvlTNLCbC1NEktouyq4Jg4bkZHu2CRvQwL6TfmTqkTxEjD/f+B0+So5Sc22s7R3f
         n712wMpPifR0zP4LR5K/eIBO+nmhdIGhDm/968vN86CprPsQElkLGX5GrDiIy0IwdstV
         tbAcYaHg/9L7B+Vd9MSFB4E5LXrcCLZf6r7NCNzKdEGurz7pKYZAfv4HIol5gwhkaJTt
         A9pmtpCk0uzoC/VN5SPiuOyuPTZytsXUQHc0QvB0nFnLj0GSE654Lo7FPjVapG9EF8Mx
         EgjQ==
X-Gm-Message-State: AO0yUKUyEXP+AbA57dKchTf+1QOpYEjSA5jeftnt2j0aHr682WzK9pMx
	a6FCB4CKxZVJpzG2P+eMVmAR6M6C/Po=
X-Google-Smtp-Source: AK7set8PxMSg3USLQOX8oHCB1MtYh4a+AHB5elQe+vZSe+gmYVo7xftI+6TBWvsGNWejhHjDx4v6cQ==
X-Received: by 2002:ac8:5e4b:0:b0:3bf:ca4f:9c5d with SMTP id i11-20020ac85e4b000000b003bfca4f9c5dmr19808292qtx.49.1679186448514;
        Sat, 18 Mar 2023 17:40:48 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id s10-20020a05620a16aa00b0074341cb30d0sm4454600qkj.62.2023.03.18.17.40.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 17:40:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] krill: update 0.12.3
Date: Sat, 18 Mar 2023 20:40:45 -0400
Message-Id: <20230319004046.620053-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230319004046.620053-1-akuster808@gmail.com>
References: <20230319004046.620053-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 00:40:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59466

refresh patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../krill/files/panic_workaround.patch        |   4 +-
 recipes-security/krill/krill.inc              | 247 ++++++++++--------
 .../krill/{krill_0.9.6.bb => krill_0.12.3.bb} |   2 +-
 3 files changed, 146 insertions(+), 107 deletions(-)
 rename recipes-security/krill/{krill_0.9.6.bb => krill_0.12.3.bb} (95%)

diff --git a/recipes-security/krill/files/panic_workaround.patch b/recipes-security/krill/files/panic_workaround.patch
index 9b08cb5..dc26416 100644
--- a/recipes-security/krill/files/panic_workaround.patch
+++ b/recipes-security/krill/files/panic_workaround.patch
@@ -5,7 +5,7 @@ Index: git/Cargo.toml
 ===================================================================
 --- git.orig/Cargo.toml
 +++ git/Cargo.toml
-@@ -71,7 +71,7 @@ static-openssl = [ "openssl/vendored" ]
+@@ -91,7 +91,7 @@ hsm-tests-pkcs11 = [ "hsm" ]
  # Make sure that Krill crashes on panics, rather than losing threads and
  # limping on in a bad state.
  [profile.release]
@@ -13,4 +13,4 @@ Index: git/Cargo.toml
 +#panic = "abort"
  
  [dev-dependencies]
- # for user management
+ regex     = "1.5.5"
diff --git a/recipes-security/krill/krill.inc b/recipes-security/krill/krill.inc
index bb40f57..22fe269 100644
--- a/recipes-security/krill/krill.inc
+++ b/recipes-security/krill/krill.inc
@@ -1,3 +1,6 @@
+# Auto-Generated by cargo-bitbake 0.3.16
+#
+
 # please note if you have entries that do not begin with crate://
 # you must change them to how that package can be fetched
 SRC_URI += " \
@@ -5,46 +8,61 @@ SRC_URI += " \
     crate://crates.io/adler/1.0.2 \
     crate://crates.io/adler32/1.2.0 \
     crate://crates.io/aho-corasick/0.7.18 \
+    crate://crates.io/android_system_properties/0.1.5 \
     crate://crates.io/ansi_term/0.12.1 \
     crate://crates.io/ascii-canvas/3.0.0 \
     crate://crates.io/ascii/1.0.0 \
     crate://crates.io/atty/0.2.14 \
     crate://crates.io/autocfg/1.1.0 \
-    crate://crates.io/backtrace/0.3.64 \
+    crate://crates.io/backoff/0.3.0 \
+    crate://crates.io/backtrace/0.3.66 \
     crate://crates.io/base64/0.13.0 \
     crate://crates.io/basic-cookies/0.1.4 \
-    crate://crates.io/bcder/0.6.1 \
+    crate://crates.io/bcder/0.7.0 \
     crate://crates.io/bit-set/0.5.2 \
     crate://crates.io/bit-vec/0.6.3 \
     crate://crates.io/bitflags/1.3.2 \
+    crate://crates.io/block-buffer/0.10.2 \
     crate://crates.io/block-buffer/0.9.0 \
-    crate://crates.io/bumpalo/3.9.1 \
+    crate://crates.io/bumpalo/3.10.0 \
     crate://crates.io/bytes/1.1.0 \
     crate://crates.io/cc/1.0.73 \
     crate://crates.io/cfg-if/1.0.0 \
-    crate://crates.io/chrono/0.4.19 \
+    crate://crates.io/chrono/0.4.22 \
     crate://crates.io/chunked_transfer/1.4.0 \
     crate://crates.io/cipher/0.2.5 \
     crate://crates.io/clap/2.34.0 \
+    crate://crates.io/codespan-reporting/0.11.1 \
     crate://crates.io/core-foundation-sys/0.8.3 \
     crate://crates.io/core-foundation/0.9.3 \
-    crate://crates.io/cpufeatures/0.2.1 \
+    crate://crates.io/cpufeatures/0.2.2 \
     crate://crates.io/crc32fast/1.3.2 \
     crate://crates.io/crunchy/0.2.2 \
+    crate://crates.io/crypto-common/0.1.6 \
     crate://crates.io/crypto-mac/0.10.1 \
-    crate://crates.io/ctrlc/3.2.1 \
+    crate://crates.io/cryptoki-sys/0.1.4 \
+    crate://crates.io/cryptoki/0.3.0 \
+    crate://crates.io/ctrlc/3.2.2 \
+    crate://crates.io/cxx-build/1.0.79 \
+    crate://crates.io/cxx/1.0.79 \
+    crate://crates.io/cxxbridge-flags/1.0.79 \
+    crate://crates.io/cxxbridge-macro/1.0.79 \
+    crate://crates.io/derivative/2.2.0 \
     crate://crates.io/deunicode/0.4.3 \
-    crate://crates.io/diff/0.1.12 \
+    crate://crates.io/diff/0.1.13 \
+    crate://crates.io/digest/0.10.3 \
     crate://crates.io/digest/0.9.0 \
     crate://crates.io/dirs-next/2.0.0 \
     crate://crates.io/dirs-sys-next/0.1.2 \
-    crate://crates.io/either/1.6.1 \
+    crate://crates.io/either/1.7.0 \
     crate://crates.io/ena/0.14.0 \
-    crate://crates.io/encoding_rs/0.8.30 \
+    crate://crates.io/encoding_rs/0.8.31 \
+    crate://crates.io/enum-display-derive/0.1.1 \
+    crate://crates.io/enum-flags/0.1.8 \
     crate://crates.io/error-chain/0.11.0 \
     crate://crates.io/fastrand/1.7.0 \
     crate://crates.io/fern/0.5.9 \
-    crate://crates.io/fixedbitset/0.2.0 \
+    crate://crates.io/fixedbitset/0.4.2 \
     crate://crates.io/fnv/1.0.7 \
     crate://crates.io/foreign-types-shared/0.1.1 \
     crate://crates.io/foreign-types/0.3.2 \
@@ -60,181 +78,202 @@ SRC_URI += " \
     crate://crates.io/futures-util/0.3.21 \
     crate://crates.io/futures/0.3.21 \
     crate://crates.io/generic-array/0.14.5 \
-    crate://crates.io/getrandom/0.2.4 \
-    crate://crates.io/gimli/0.26.1 \
-    crate://crates.io/h2/0.3.11 \
-    crate://crates.io/hashbrown/0.11.2 \
+    crate://crates.io/getrandom/0.2.7 \
+    crate://crates.io/gimli/0.26.2 \
+    crate://crates.io/h2/0.3.13 \
+    crate://crates.io/hashbrown/0.12.3 \
     crate://crates.io/hermit-abi/0.1.19 \
     crate://crates.io/hex/0.4.3 \
     crate://crates.io/hmac/0.10.1 \
-    crate://crates.io/http-body/0.4.4 \
-    crate://crates.io/http/0.2.6 \
-    crate://crates.io/httparse/1.6.0 \
+    crate://crates.io/http-body/0.4.5 \
+    crate://crates.io/http/0.2.8 \
+    crate://crates.io/httparse/1.7.1 \
     crate://crates.io/httpdate/1.0.2 \
     crate://crates.io/hyper-tls/0.5.0 \
-    crate://crates.io/hyper/0.14.17 \
+    crate://crates.io/hyper/0.14.20 \
+    crate://crates.io/iana-time-zone-haiku/0.1.1 \
+    crate://crates.io/iana-time-zone/0.1.51 \
     crate://crates.io/idna/0.2.3 \
     crate://crates.io/impl-trait-for-tuples/0.2.2 \
-    crate://crates.io/indexmap/1.8.0 \
+    crate://crates.io/indexmap/1.9.1 \
     crate://crates.io/instant/0.1.12 \
     crate://crates.io/intervaltree/0.2.7 \
-    crate://crates.io/ipnet/2.3.1 \
+    crate://crates.io/ipnet/2.5.0 \
     crate://crates.io/itertools/0.10.3 \
-    crate://crates.io/itertools/0.9.0 \
-    crate://crates.io/itoa/1.0.1 \
+    crate://crates.io/itoa/1.0.2 \
     crate://crates.io/jmespatch/0.3.0 \
-    crate://crates.io/js-sys/0.3.56 \
-    crate://crates.io/lalrpop-util/0.19.7 \
-    crate://crates.io/lalrpop/0.19.7 \
+    crate://crates.io/js-sys/0.3.58 \
+    crate://crates.io/kmip-protocol/0.4.2 \
+    crate://crates.io/kmip-ttlv/0.3.3 \
+    crate://crates.io/lalrpop-util/0.19.8 \
+    crate://crates.io/lalrpop/0.19.8 \
     crate://crates.io/lazy_static/1.4.0 \
-    crate://crates.io/libc/0.2.119 \
-    crate://crates.io/libflate/1.1.2 \
+    crate://crates.io/libc/0.2.126 \
+    crate://crates.io/libflate/1.2.0 \
     crate://crates.io/libflate_lz77/1.1.0 \
-    crate://crates.io/lock_api/0.4.6 \
-    crate://crates.io/log/0.4.14 \
+    crate://crates.io/libloading/0.7.3 \
+    crate://crates.io/link-cplusplus/1.0.7 \
+    crate://crates.io/lock_api/0.4.7 \
+    crate://crates.io/log/0.4.17 \
     crate://crates.io/maplit/1.0.2 \
     crate://crates.io/matchers/0.0.1 \
     crate://crates.io/matches/0.1.9 \
-    crate://crates.io/memchr/2.4.1 \
-    crate://crates.io/memoffset/0.6.5 \
+    crate://crates.io/maybe-async/0.2.6 \
+    crate://crates.io/memchr/2.5.0 \
     crate://crates.io/mime/0.3.16 \
-    crate://crates.io/miniz_oxide/0.4.4 \
-    crate://crates.io/mio/0.8.0 \
-    crate://crates.io/miow/0.3.7 \
-    crate://crates.io/native-tls/0.2.8 \
+    crate://crates.io/miniz_oxide/0.5.3 \
+    crate://crates.io/mio/0.8.4 \
+    crate://crates.io/native-tls/0.2.10 \
     crate://crates.io/new_debug_unreachable/1.0.4 \
-    crate://crates.io/nix/0.23.1 \
-    crate://crates.io/ntapi/0.3.7 \
+    crate://crates.io/nix/0.24.2 \
     crate://crates.io/num-bigint/0.4.3 \
-    crate://crates.io/num-integer/0.1.44 \
-    crate://crates.io/num-traits/0.2.14 \
+    crate://crates.io/num-integer/0.1.45 \
+    crate://crates.io/num-traits/0.2.15 \
     crate://crates.io/num_cpus/1.13.1 \
-    crate://crates.io/oauth2/4.1.0 \
-    crate://crates.io/object/0.27.1 \
-    crate://crates.io/once_cell/1.9.0 \
+    crate://crates.io/oauth2/4.2.3 \
+    crate://crates.io/object/0.29.0 \
+    crate://crates.io/once_cell/1.13.0 \
     crate://crates.io/opaque-debug/0.3.0 \
-    crate://crates.io/openidconnect/2.2.0 \
+    crate://crates.io/openidconnect/2.3.2 \
+    crate://crates.io/openssl-macros/0.1.0 \
     crate://crates.io/openssl-probe/0.1.5 \
-    crate://crates.io/openssl-src/111.17.0+1.1.1m \
-    crate://crates.io/openssl-sys/0.9.72 \
-    crate://crates.io/openssl/0.10.38 \
-    crate://crates.io/ordered-float/1.1.1 \
+    crate://crates.io/openssl-src/111.25.0+1.1.1t \
+    crate://crates.io/openssl-sys/0.9.75 \
+    crate://crates.io/openssl/0.10.41 \
+    crate://crates.io/ordered-float/2.10.0 \
     crate://crates.io/oso/0.12.4 \
-    crate://crates.io/parking_lot/0.11.2 \
-    crate://crates.io/parking_lot_core/0.8.5 \
+    crate://crates.io/parking_lot/0.12.1 \
+    crate://crates.io/parking_lot_core/0.9.3 \
     crate://crates.io/pbkdf2/0.7.5 \
     crate://crates.io/percent-encoding/2.1.0 \
-    crate://crates.io/petgraph/0.5.1 \
+    crate://crates.io/petgraph/0.6.2 \
     crate://crates.io/phf_shared/0.10.0 \
     crate://crates.io/pico-args/0.4.2 \
-    crate://crates.io/pin-project-lite/0.2.8 \
+    crate://crates.io/pin-project-lite/0.2.9 \
     crate://crates.io/pin-utils/0.1.0 \
-    crate://crates.io/pkg-config/0.3.24 \
+    crate://crates.io/pkg-config/0.3.25 \
     crate://crates.io/polar-core/0.12.4 \
     crate://crates.io/ppv-lite86/0.2.16 \
     crate://crates.io/precomputed-hash/0.1.1 \
-    crate://crates.io/priority-queue/1.2.1 \
-    crate://crates.io/proc-macro2/1.0.36 \
-    crate://crates.io/quick-xml/0.22.0 \
-    crate://crates.io/quote/1.0.15 \
+    crate://crates.io/priority-queue/1.2.2 \
+    crate://crates.io/proc-macro2/1.0.40 \
+    crate://crates.io/quick-xml/0.23.0 \
+    crate://crates.io/quote/1.0.20 \
+    crate://crates.io/r2d2/0.8.10 \
     crate://crates.io/rand/0.8.5 \
     crate://crates.io/rand_chacha/0.3.1 \
     crate://crates.io/rand_core/0.6.3 \
-    crate://crates.io/redox_syscall/0.2.10 \
-    crate://crates.io/redox_users/0.4.0 \
+    crate://crates.io/redox_syscall/0.2.13 \
+    crate://crates.io/redox_users/0.4.3 \
     crate://crates.io/regex-automata/0.1.10 \
-    crate://crates.io/regex-syntax/0.6.25 \
-    crate://crates.io/regex/1.5.5 \
+    crate://crates.io/regex-syntax/0.6.27 \
+    crate://crates.io/regex/1.6.0 \
     crate://crates.io/remove_dir_all/0.5.3 \
-    crate://crates.io/reqwest/0.11.9 \
+    crate://crates.io/reqwest/0.11.11 \
     crate://crates.io/ring/0.16.20 \
     crate://crates.io/rle-decode-fast/1.0.3 \
+    crate://crates.io/routecore/0.2.0 \
     crate://crates.io/rpassword/5.0.1 \
-    crate://crates.io/rpki/0.13.2 \
+    crate://crates.io/rpki/0.15.8 \
     crate://crates.io/rustc-demangle/0.1.21 \
-    crate://crates.io/rustc_version/0.2.3 \
+    crate://crates.io/rustc_version/0.4.0 \
     crate://crates.io/rustls/0.19.1 \
-    crate://crates.io/rustversion/1.0.6 \
-    crate://crates.io/ryu/1.0.9 \
+    crate://crates.io/rustversion/1.0.8 \
+    crate://crates.io/ryu/1.0.10 \
     crate://crates.io/salsa20/0.7.2 \
-    crate://crates.io/schannel/0.1.19 \
+    crate://crates.io/schannel/0.1.20 \
+    crate://crates.io/scheduled-thread-pool/0.2.6 \
     crate://crates.io/scopeguard/1.1.0 \
+    crate://crates.io/scratch/1.0.2 \
     crate://crates.io/scrypt/0.6.5 \
     crate://crates.io/sct/0.6.1 \
     crate://crates.io/security-framework-sys/2.6.1 \
     crate://crates.io/security-framework/2.6.1 \
-    crate://crates.io/semver-parser/0.7.0 \
-    crate://crates.io/semver/0.9.0 \
-    crate://crates.io/serde-value/0.6.0 \
-    crate://crates.io/serde/1.0.136 \
-    crate://crates.io/serde_derive/1.0.136 \
-    crate://crates.io/serde_json/1.0.79 \
+    crate://crates.io/semver/1.0.12 \
+    crate://crates.io/serde-value/0.7.0 \
+    crate://crates.io/serde/1.0.139 \
+    crate://crates.io/serde_bytes/0.11.6 \
+    crate://crates.io/serde_derive/1.0.139 \
+    crate://crates.io/serde_json/1.0.82 \
     crate://crates.io/serde_path_to_error/0.1.7 \
     crate://crates.io/serde_urlencoded/0.7.1 \
+    crate://crates.io/sha2/0.10.2 \
     crate://crates.io/sha2/0.9.9 \
     crate://crates.io/sharded-slab/0.1.4 \
-    crate://crates.io/siphasher/0.3.9 \
-    crate://crates.io/slab/0.4.5 \
+    crate://crates.io/signal-hook-registry/1.4.0 \
+    crate://crates.io/siphasher/0.3.10 \
+    crate://crates.io/slab/0.4.6 \
     crate://crates.io/slug/0.1.4 \
-    crate://crates.io/smallvec/1.8.0 \
+    crate://crates.io/smallvec/1.9.0 \
     crate://crates.io/socket2/0.4.4 \
     crate://crates.io/spin/0.5.2 \
-    crate://crates.io/string_cache/0.8.3 \
+    crate://crates.io/string_cache/0.8.4 \
     crate://crates.io/strsim/0.8.0 \
     crate://crates.io/subtle/2.4.1 \
-    crate://crates.io/syn/1.0.86 \
+    crate://crates.io/syn/1.0.98 \
     crate://crates.io/syslog/4.0.1 \
+    crate://crates.io/target-lexicon/0.12.4 \
     crate://crates.io/tempfile/3.3.0 \
     crate://crates.io/term/0.7.0 \
+    crate://crates.io/termcolor/1.1.3 \
     crate://crates.io/textwrap/0.11.0 \
-    crate://crates.io/thiserror-impl/1.0.30 \
-    crate://crates.io/thiserror/1.0.30 \
+    crate://crates.io/thiserror-impl/1.0.31 \
+    crate://crates.io/thiserror/1.0.31 \
     crate://crates.io/thread_local/1.1.4 \
-    crate://crates.io/time/0.1.43 \
+    crate://crates.io/time/0.1.44 \
     crate://crates.io/tiny-keccak/2.0.2 \
     crate://crates.io/tiny_http/0.8.2 \
-    crate://crates.io/tinyvec/1.5.1 \
+    crate://crates.io/tinyvec/1.6.0 \
     crate://crates.io/tinyvec_macros/0.1.0 \
-    crate://crates.io/tokio-macros/1.7.0 \
+    crate://crates.io/tokio-macros/1.8.0 \
     crate://crates.io/tokio-native-tls/0.3.0 \
     crate://crates.io/tokio-rustls/0.22.0 \
-    crate://crates.io/tokio-util/0.6.9 \
-    crate://crates.io/tokio/1.17.0 \
-    crate://crates.io/toml/0.5.8 \
-    crate://crates.io/tower-service/0.3.1 \
-    crate://crates.io/tracing-attributes/0.1.19 \
-    crate://crates.io/tracing-core/0.1.22 \
-    crate://crates.io/tracing-log/0.1.2 \
+    crate://crates.io/tokio-util/0.7.3 \
+    crate://crates.io/tokio/1.20.4 \
+    crate://crates.io/toml/0.5.9 \
+    crate://crates.io/tower-service/0.3.2 \
+    crate://crates.io/tracing-attributes/0.1.22 \
+    crate://crates.io/tracing-core/0.1.28 \
+    crate://crates.io/tracing-log/0.1.3 \
     crate://crates.io/tracing-serde/0.1.3 \
     crate://crates.io/tracing-subscriber/0.2.25 \
-    crate://crates.io/tracing/0.1.31 \
+    crate://crates.io/tracing/0.1.35 \
+    crate://crates.io/trait-set/0.2.0 \
     crate://crates.io/try-lock/0.2.3 \
     crate://crates.io/typenum/1.15.0 \
-    crate://crates.io/unicode-bidi/0.3.7 \
-    crate://crates.io/unicode-normalization/0.1.19 \
+    crate://crates.io/unicode-bidi/0.3.8 \
+    crate://crates.io/unicode-ident/1.0.2 \
+    crate://crates.io/unicode-normalization/0.1.21 \
     crate://crates.io/unicode-width/0.1.9 \
-    crate://crates.io/unicode-xid/0.2.2 \
+    crate://crates.io/unicode-xid/0.2.3 \
     crate://crates.io/untrusted/0.7.1 \
     crate://crates.io/url/2.2.2 \
     crate://crates.io/urlparse/0.7.3 \
-    crate://crates.io/uuid/0.8.2 \
+    crate://crates.io/uuid/1.1.2 \
     crate://crates.io/valuable/0.1.0 \
     crate://crates.io/vcpkg/0.2.15 \
     crate://crates.io/vec_map/0.8.2 \
     crate://crates.io/version_check/0.9.4 \
     crate://crates.io/want/0.3.0 \
-    crate://crates.io/wasi/0.10.2+wasi-snapshot-preview1 \
-    crate://crates.io/wasm-bindgen-backend/0.2.79 \
-    crate://crates.io/wasm-bindgen-futures/0.4.29 \
-    crate://crates.io/wasm-bindgen-macro-support/0.2.79 \
-    crate://crates.io/wasm-bindgen-macro/0.2.79 \
-    crate://crates.io/wasm-bindgen-shared/0.2.79 \
-    crate://crates.io/wasm-bindgen/0.2.79 \
-    crate://crates.io/web-sys/0.3.56 \
+    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
+    crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \
+    crate://crates.io/wasm-bindgen-backend/0.2.81 \
+    crate://crates.io/wasm-bindgen-futures/0.4.31 \
+    crate://crates.io/wasm-bindgen-macro-support/0.2.81 \
+    crate://crates.io/wasm-bindgen-macro/0.2.81 \
+    crate://crates.io/wasm-bindgen-shared/0.2.81 \
+    crate://crates.io/wasm-bindgen/0.2.81 \
+    crate://crates.io/web-sys/0.3.58 \
     crate://crates.io/webpki/0.21.4 \
     crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
+    crate://crates.io/winapi-util/0.1.5 \
     crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
     crate://crates.io/winapi/0.3.9 \
-    crate://crates.io/winreg/0.7.0 \
-    crate://crates.io/xml-rs/0.8.4 \
+    crate://crates.io/windows-sys/0.36.1 \
+    crate://crates.io/windows_aarch64_msvc/0.36.1 \
+    crate://crates.io/windows_i686_gnu/0.36.1 \
+    crate://crates.io/windows_i686_msvc/0.36.1 \
+    crate://crates.io/windows_x86_64_gnu/0.36.1 \
+    crate://crates.io/windows_x86_64_msvc/0.36.1 \
+    crate://crates.io/winreg/0.10.1 \
 "
diff --git a/recipes-security/krill/krill_0.9.6.bb b/recipes-security/krill/krill_0.12.3.bb
similarity index 95%
rename from recipes-security/krill/krill_0.9.6.bb
rename to recipes-security/krill/krill_0.12.3.bb
index fd86c4b..a943c52 100644
--- a/recipes-security/krill/krill_0.9.6.bb
+++ b/recipes-security/krill/krill_0.12.3.bb
@@ -7,7 +7,7 @@ DEPENDS = "openssl"
 
 # SRC_URI += "crate://crates.io/krill/0.9.1"
 SRC_URI = "git://github.com/NLnetLabs/krill.git;protocol=https;branch=main"
-SRCREV = "95e6681d5b4024cac7a1892d47fb76abc68f34fb"
+SRCREV = "e92098419c7ad82939e0483bc76df21eff705b80"
 SRC_URI += "file://panic_workaround.patch"
 
 include krill.inc
-- 
2.25.1


