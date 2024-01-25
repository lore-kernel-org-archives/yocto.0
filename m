Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CDC0C46CD2
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 00:20:21 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web11.4341.1706142011260830020
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 16:20:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=rcv96Wdm;
 spf=pass (domain: konsulko.com, ip: 209.85.222.172, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7810827e54eso431998285a.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 16:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1706142010; x=1706746810; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=fNAAN9mvApUS2+JkdVtv7x4Bh+yo4jbViNXupPNzNOE=;
        b=rcv96WdmVXjcRut3uy0l5X6XPBMBApJ0yFOBiUKJVO4I2qUI1PbrbyAIc2Tb2ax7Ll
         bMfUpRFNmufmgKTcXYZQNxt2OL0IBa4uTcfTxZJKfocX/Cx/6F35/Z0BLDwTU28Lsj2N
         EUbeXJlKh0xYk3LTYPrNF8Dt9Ah1LMTtBS/DM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706142010; x=1706746810;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fNAAN9mvApUS2+JkdVtv7x4Bh+yo4jbViNXupPNzNOE=;
        b=nJVDmjhmlMlAal/8EmC5+nDflszlNNrC3QE92HoxGy4Tc3vxvYjJfc4hn8viGfn5s9
         7bQKZie6/pIOQrDIQhMSPTRzCjOXnGV/4UajQzedd3FAkiKwZUIGVsDzf82VU4f8X2QN
         f0qjypoT8OOluyKQDzf2p8YOUaUYAziDTvkYm1PS+n1FMvApvJzOD07ifAHpqx8U1iaJ
         CFl0W/Wo+q2ChYDFT7DMC5vJh8Hg5hj7c4o6hBW841b8h0BTDfgTyFTp130MvZvo71Bx
         0KQ+RnGgv8beCFxD9b8Z7pJCDqf1DVB1jL4JwRYp3CM3JLUVE2KAzKArH5sTJ+PNspuB
         eJFA==
X-Gm-Message-State: AOJu0YwwARRe/4u2gboaTV7knEjqNaW0SFmGw5cIp156xbPPlctFq5Iw
	HTzUj4Lnz9pUTTOcHBjhXujB/fYF1NO9z7llyfH/ImjV9N8c59f5RXr3pd+48U9JSjTmltr1ytB
	F
X-Google-Smtp-Source: AGHT+IGIkO/ugPNVaqFd0KmD3W7RApYHGMyzn5l0heEogJmbLmqj835SI91Iho8WEyhDTofzD+l03A==
X-Received: by 2002:a05:620a:1722:b0:783:a948:5782 with SMTP id az34-20020a05620a172200b00783a9485782mr273736qkb.134.1706142007708;
        Wed, 24 Jan 2024 16:20:07 -0800 (PST)
Received: from ghidorah.spiteful.org (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id c21-20020a05620a201500b007831ffa4234sm4536565qka.42.2024.01.24.16.20.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 16:20:07 -0800 (PST)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][PATCH 00/29] Populate kirkstone/rust branch (cover letter only)
Date: Wed, 24 Jan 2024 19:19:54 -0500
Message-ID: <20240125001954.2197496-1-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 00:20:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62278

As discussed on the last couple of YP technical calls, I have created
a kirkstone/rust branch in meta-lts-mixins.  It backports the state of
Rust support in master to kirkstone (so currently 1.74.1) the same way
that the previous kirkstone/rust-1.68 and kirkstone/rust-1.70 branches
did against mickledore and nanbield.  The aim with kirkstone/rust is to
keep it up to date with the level of Rust support in master until the
Kirkstone EOL in April 2026.

The majority of the patches listed below were manually picked from
master and adapted on top of the kirkstone/rust-1.70 branch to create
this new branch.  If you would like to look at the changes in detail,
they are browsable at:

https://git.yoctoproject.org/meta-lts-mixins/log/?h=kirkstone/rust

Changes:

Alex Kiernan (14):
  rust: Delete python2 configparser code path
  rust: Drop TARGET_VENDOR export
  rust: Drop targets and hosts override magic
  cargo: Rename MANIFEST_PATH -> CARGO_MANIFEST_PATH
  cargo: Move CARGO_MANIFEST_PATH/CARGO_SRC_DIR to cargo_common
  rust: cargo: Convert single-valued variables to weak defaults
  cargo: Add CARGO_LOCK_PATH for path to Cargo.lock
  rust: Upgrade 1.70.0 -> 1.71.0
  rust: Upgrade 1.71.0 -> 1.71.1
  rust: Upgrade 1.71.1 -> 1.72.0
  rust: Upgrade 1.72.0 -> 1.72.1
  rust: Upgrade 1.72.1 -> 1.73.0
  rust: Upgrade 1.73.0 -> 1.74.0
  rust: Upgrade 1.74.0 -> 1.74.1

Khem Raj (4):
  rust-cross-canadian: Add riscv64 to cross-canadian hosts
  librsvg: Fix build for riscv32
  librsvg: Enable 64bit atomics in crossbeam again for riscv32
  rust-common.bbclass: Define rust arch for x32 platforms

Martin Jansa (1):
  rust: drop PE, PR from /usr/src/debug paths

Niko Mauno (1):
  rust-llvm: Allow overriding LLVM target archs

Ross Burton (1):
  rust-llvm: remove python3native dependency

Scott Murray (1):
  Update README

Sean Nyekjaer (2):
  rust-cross-canadian: set CARGO_TARGET_<triple>_RUSTFLAGS
  rust-cross-canadian: set CARGO_TARGET_<triple>_RUNNER for nativesdk

Sundeep KOKKONDA (2):
  rust: Split rustdoc into a separate package
  rust: rustdoc reproducibility issue fix - disable PGO

Yash Shinde (3):
  oeqa/selftest: Add rust selftests
  rust: Fix BOOTSTRAP_CARGO failure during Rust Oe-selftest
  oeqa/selftest/rust: Add failed test cases to exclude list for Rust
    Oe-selftest

 README                                        |   30 +-
 classes/cargo.bbclass                         |    9 +-
 classes/cargo_common.bbclass                  |   19 +-
 classes/rust-common.bbclass                   |    8 +-
 conf/layer.conf                               |    2 +-
 meta/lib/oeqa/selftest/cases/rust.py          |   85 +
 .../rust/{cargo_1.70.0.bb => cargo_1.74.1.bb} |    2 +-
 ...-Do-not-use-LFS64-on-linux-with-musl.patch |  164 --
 ...0001-Don-t-use-LFS64-symbols-on-musl.patch |  163 ++
 ...e-absolute-paths-to-OUT_DIR-as-relat.patch |   67 +
 ...Define-SOCK_NONBLOCK-with-O_NONBLOCK.patch |  122 ++
 ...efine-SOCK_SEQPACKET-in-common-place.patch |  114 --
 ...ine-F_SETLK-F_SETLKW-and-fix-F_GETLK.patch |   41 +
 ...GETLK-F_OFD_SETLK-and-F_OFD_SETLKW-t.patch |  205 +++
 ...-musl-Define-O_LARGEFILE-for-riscv32.patch |   32 +
 ...efine-SOCK_SEQPACKET-in-common-place.patch |  115 ++
 .../rust/files/getrandom-open64.patch         |   46 -
 .../rust/files/hardcodepaths.patch            |   14 +-
 .../rust/files/zlib-off64_t.patch             |   17 +-
 ...ibstd-rs_1.70.0.bb => libstd-rs_1.74.1.bb} |    9 +-
 recipes-devtools/rust/rust-cross-canadian.inc |    7 +-
 ....70.0.bb => rust-cross-canadian_1.74.1.bb} |    0
 ...ust-llvm_1.70.0.bb => rust-llvm_1.74.1.bb} |   15 +-
 recipes-devtools/rust/rust-snapshot.inc       |   64 +-
 recipes-devtools/rust/rust-source.inc         |   15 +-
 .../rust/{rust_1.70.0.bb => rust_1.74.1.bb}   |   27 +-
 .../librsvg/0001-Add-riscv32-support.patch    | 1511 +++++++++++++++++
 recipes-gnome/librsvg/librsvg_2.56.3.bb       |    2 +-
 28 files changed, 2480 insertions(+), 425 deletions(-)
 create mode 100644 meta/lib/oeqa/selftest/cases/rust.py
 rename recipes-devtools/rust/{cargo_1.70.0.bb => cargo_1.74.1.bb} (96%)
 delete mode 100644 recipes-devtools/rust/files/0001-Do-not-use-LFS64-on-linux-with-musl.patch
 create mode 100644 recipes-devtools/rust/files/0001-Don-t-use-LFS64-symbols-on-musl.patch
 create mode 100644 recipes-devtools/rust/files/0001-Revert-Map-source-absolute-paths-to-OUT_DIR-as-relat.patch
 create mode 100644 recipes-devtools/rust/files/0001-musl-Define-SOCK_NONBLOCK-with-O_NONBLOCK.patch
 delete mode 100644 recipes-devtools/rust/files/0001-musl-Define-SOCK_SEQPACKET-in-common-place.patch
 create mode 100644 recipes-devtools/rust/files/0002-musl-riscv32-Define-F_SETLK-F_SETLKW-and-fix-F_GETLK.patch
 create mode 100644 recipes-devtools/rust/files/0003-musl-Move-F_OFD_GETLK-F_OFD_SETLK-and-F_OFD_SETLKW-t.patch
 create mode 100644 recipes-devtools/rust/files/0004-musl-Define-O_LARGEFILE-for-riscv32.patch
 create mode 100644 recipes-devtools/rust/files/0005-musl-Define-SOCK_SEQPACKET-in-common-place.patch
 delete mode 100644 recipes-devtools/rust/files/getrandom-open64.patch
 rename recipes-devtools/rust/{libstd-rs_1.70.0.bb => libstd-rs_1.74.1.bb} (87%)
 rename recipes-devtools/rust/{rust-cross-canadian_1.70.0.bb => rust-cross-canadian_1.74.1.bb} (100%)
 rename recipes-devtools/rust/{rust-llvm_1.70.0.bb => rust-llvm_1.74.1.bb} (89%)
 rename recipes-devtools/rust/{rust_1.70.0.bb => rust_1.74.1.bb} (94%)
 create mode 100644 recipes-gnome/librsvg/librsvg/0001-Add-riscv32-support.patch

-- 
2.43.0


