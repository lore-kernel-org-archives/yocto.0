Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 258ECC46CD2
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 00:01:41 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web10.3911.1706140890947464614
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 16:01:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=fcJEDr9P;
 spf=pass (domain: konsulko.com, ip: 209.85.217.47, mailfrom: scott.murray@konsulko.com)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-46afeb936afso721570137.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 16:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1706140889; x=1706745689; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=NTCvGvkojMwcifuBFjKOUvFIq+1ITfATrMd6v9AMT8w=;
        b=fcJEDr9PksxCLQrqM+Un75nNbYjkYMtbxfYpyC7JkYqCWSml1KQRi0K7RogvCEEvmc
         RfG7ZhjRH2shKgzJCuim3ulnxmM3ae+KTqfpff387wUQkDSLaPDdjeXk6njNv0L1UE6K
         w1DFy9UCieTC0mQBFnWVFAs7F+ZZBOKDRsb9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706140889; x=1706745689;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NTCvGvkojMwcifuBFjKOUvFIq+1ITfATrMd6v9AMT8w=;
        b=YuSlL4Zg+arvHQ6XAwFsee+tXBf77cdXdDl7QxdJtuao8ECzPb+bDnhuPeCM9IB3wT
         2CFb73G5rmic74mQZBrABf+0q2Y5LyqohSCGlGS7RMDwZ8R/d0Qu39OnVVJRFTdhMXhe
         BnIdHS+/HRrd3VVgdvQu0+uRV5RW5mKvBYawJqf9CSUCe2+889A9on49XPtPuM9f7Z6I
         nRb3oo3GJtwJnSSKXl4HAAbYFVYV6jxhdOW1ndqbIepjlUxA9Y/3eFpjFhwI/ujhDhRn
         ftiHmBeT2hzUo3ZMNd9THCD2TCjCjvffSG3D8Bg9ZVpyKJ7+Si5YkF8HWC6c4WumEii4
         GWtw==
X-Gm-Message-State: AOJu0YzfsySfDkesxtpmUELZWvj4qYvVmB1gKI3k7V/aoULaXKiWkA6p
	hy7c1u5GdkOUP7Bu58sdqcx84veKr/hiZL/hS2jsePONBpeEzH/5GzcaxRvRPjNOIV3nTJvTiDP
	G
X-Google-Smtp-Source: AGHT+IHAlM8sBHr31OJxQ3TiH4eH2irK/KeiOx03TnNYe5594jeFeLGJt6IDfDBH7LrCyBLvixWk2g==
X-Received: by 2002:a05:6102:181a:b0:46b:666:2f26 with SMTP id jg26-20020a056102181a00b0046b06662f26mr109466vsb.57.1706140889040;
        Wed, 24 Jan 2024 16:01:29 -0800 (PST)
Received: from ghidorah.spiteful.org (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id o18-20020a05620a111200b007815c55cdf9sm4489923qkk.105.2024.01.24.16.01.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 16:01:28 -0800 (PST)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][PATCH 00/15] Populate kirkstone/rust-1.70 branch (cover letter only)
Date: Wed, 24 Jan 2024 19:01:21 -0500
Message-ID: <20240125000121.2197206-1-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 00:01:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62277

As discussed on the last couple of YP technical calls, I have created
a kirkstone/rust-1.70 branch in meta-lts-mixins.  It backports the
state of Rust support in nanbield to kirkstone the same way that the
kirkstone/rust-1.68 branch did with mickledore.  The majority of the
patches listed below were manually picked from nanbield and adapted
on top of the kirkstone/rust-1.68 branch to create this new branch.
The bbappend to fix building rust-hello-world, and the addition of a
backport of cargo-update-recipe-crates.bbclass are changes I worked
up in addition to the other adaptations.  If you would like to look
at the changes in detail, they are browsable at:

https://git.yoctoproject.org/meta-lts-mixins/log/?h=kirkstone/rust-1.70

Changes:

Alex Kiernan (2):
  rust: Upgrade 1.68.2 -> 1.69.0
  rust: Upgrade 1.69.0 -> 1.70.0

Alexander Kanavin (3):
  meta/recipes: ensure all recipes have a SUMMARY
  librsvg: update 2.56.0 -> 2.56.1
  librsvg: fix upstream version check

Benjamin Bara (1):
  rust-target-config: fix target_features for vfpv3d16

Frederic Martinsons (2):
  cargo.bbclass: Use --frozen flag for cargo operations
  cargo_common.bbclass: Handle Cargo.lock modifications for git
    dependencies

Khem Raj (1):
  rust-target-config: Map rust target to OE target

Martin Jansa (1):
  libstd-rs, rust: use bfd linker instead of gold

Ross Burton (1):
  librsvg: upgrade to 2.56.3

Scott Murray (3):
  librsvg: update 2.54.6 -> 2.56.0
  rust-hello-world: Fix building
  Add cargo-update-recipe-crates.bbclass backport

Sundeep KOKKONDA (1):
  rust: reproducibility issue fix

 README                                        |  30 +-
 classes/cargo-update-recipe-crates.bbclass    |  79 +++
 classes/cargo.bbclass                         |   7 +-
 classes/cargo_common.bbclass                  |  41 ++
 classes/rust-target-config.bbclass            |  14 +-
 conf/layer.conf                               |   2 +-
 .../rust/{cargo_1.68.2.bb => cargo_1.70.0.bb} |   2 +-
 ...-Do-not-use-LFS64-on-linux-with-musl.patch |  54 +-
 ...efine-SOCK_SEQPACKET-in-common-place.patch |  56 +-
 .../rust/files/crossbeam_atomic.patch         |  50 --
 .../rust/files/hardcodepaths.patch            |  11 +-
 ...ibstd-rs_1.68.2.bb => libstd-rs_1.70.0.bb} |   5 +
 recipes-devtools/rust/rust-cross-canadian.inc |   1 +
 ....68.2.bb => rust-cross-canadian_1.70.0.bb} |   0
 ...e-64bit-off_t-on-32bit-glibc-systems.patch |  79 ---
 ...ust-llvm_1.68.2.bb => rust-llvm_1.70.0.bb} |   5 +-
 recipes-devtools/rust/rust-snapshot.inc       |  66 +-
 recipes-devtools/rust/rust-source.inc         |   3 +-
 .../rust/{rust_1.68.2.bb => rust_1.70.0.bb}   |   6 +
 .../0001-Add-Cargo.lock.patch                 |  30 +
 .../rust-hello-world_%.bbappend               |   3 +
 recipes-gnome/librsvg/librsvg-crates.inc      | 606 ++++++++++++++++++
 ...lib.rs-do-not-probe-into-harcoded-li.patch |  51 --
 .../{librsvg_2.54.6.bb => librsvg_2.56.3.bb}  |  10 +-
 24 files changed, 910 insertions(+), 301 deletions(-)
 create mode 100644 classes/cargo-update-recipe-crates.bbclass
 rename recipes-devtools/rust/{cargo_1.68.2.bb => cargo_1.70.0.bb} (98%)
 delete mode 100644 recipes-devtools/rust/files/crossbeam_atomic.patch
 rename recipes-devtools/rust/{libstd-rs_1.68.2.bb => libstd-rs_1.70.0.bb} (83%)
 rename recipes-devtools/rust/{rust-cross-canadian_1.68.2.bb => rust-cross-canadian_1.70.0.bb} (100%)
 delete mode 100644 recipes-devtools/rust/rust-llvm/0035-cmake-Enable-64bit-off_t-on-32bit-glibc-systems.patch
 rename recipes-devtools/rust/{rust-llvm_1.68.2.bb => rust-llvm_1.70.0.bb} (94%)
 rename recipes-devtools/rust/{rust_1.68.2.bb => rust_1.70.0.bb} (97%)
 create mode 100644 recipes-example/rust-hello-world/rust-hello-world/0001-Add-Cargo.lock.patch
 create mode 100644 recipes-example/rust-hello-world/rust-hello-world_%.bbappend
 create mode 100644 recipes-gnome/librsvg/librsvg-crates.inc
 delete mode 100644 recipes-gnome/librsvg/librsvg/0001-system-deps-src-lib.rs-do-not-probe-into-harcoded-li.patch
 rename recipes-gnome/librsvg/{librsvg_2.54.6.bb => librsvg_2.56.3.bb} (89%)

-- 
2.43.0


