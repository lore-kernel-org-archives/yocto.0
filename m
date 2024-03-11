Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1999C5475B
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:12 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.67363.1710174307926306124
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IasBIOnx;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33e82c720f8so3339670f8f.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174306; x=1710779106; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gRLRHcuzHP3LptD3MsLnJ2OQQh0qnMzVzB5EnA/PE+0=;
        b=IasBIOnxgKKGvUuVtE2en5lsRK21Z5O+UXDIRI/BBBYqrTTsBruB9XagSWDuJpyC+X
         z8exgrn7TQzmitZB/6vBnamp3Ckr3Fh5xvAsWls9h3QhlM5OmBM6ynIaWN2y0+GZfRe9
         RoLChNK/HOPnf7YHFptV6X0SVj7nlygK7/dkq+cCueUfc6x05hPEq4xEk0+30r7X80wS
         AiWbXqRlGOtzfEjVRA0fCQW0Z1iJw71Yv9l4yQlpzCBd7rFl3d006/eEPr9gfrOB51zf
         7JlcZTJX/WSfQQwDHX954Auh1AUWf1jsLAIiKzPcIrYlw7lg62CHqREjJP+DbB3lwsPi
         1JoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174306; x=1710779106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gRLRHcuzHP3LptD3MsLnJ2OQQh0qnMzVzB5EnA/PE+0=;
        b=AhocBlRAIM7rchoWBiwvr7f4WNzshPkk9tUHpLdaUn5pPgGTIqInIMoF0cASA4nxBb
         RWFni5IBcicTUu606tDUx6ai859xN5TezLfJvOV9AJGTs+bVNdqZ2LUuiHNU1hp7vXmq
         qZ7fSfH4kCUOEvQZias9Wjkw7/XStJN9wODZpf/KK6eZSHlLJV2kaHZoC4iaGUrQZB2z
         bRRezEL8vOoJoneQno9S574iAmYOsUvDECbwq7gDvQVM1vj66LafL+Znjhds98EpUnG3
         rhJgsa0NApXIPulhMrwHv2BrGKxAxSPF9KMt+2xxdP2abJeCGTAk3z6TFcrwU3uUr84U
         m4tg==
X-Gm-Message-State: AOJu0YxjC/v48h55S7szYCI05orV3xAOi5BPPYfOQjouqJceh7XiHG++
	WYJ0kcy1HhH+aB+C62LEkkFSfhyFDXPT8UHfJt9FJlx+dhESxDchNof8Shcw
X-Google-Smtp-Source: AGHT+IGrVHrgzwUp1GBfvxiK2PnvgqVaADQXWhVMqpNGyPFgm8RCAHsfPwOwqVtFlUOOv1+CZ8ObEw==
X-Received: by 2002:adf:e6cf:0:b0:33d:29c1:c28c with SMTP id y15-20020adfe6cf000000b0033d29c1c28cmr5236617wrm.66.1710174305781;
        Mon, 11 Mar 2024 09:25:05 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:05 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Yash Shinde <Yash.Shinde@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 01/11] rust: Fetch cargo from rust-snapshot dir.
Date: Mon, 11 Mar 2024 16:24:00 +0000
Message-ID: <20240311162419.1138625-1-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62726

From: Yash Shinde <Yash.Shinde@windriver.com>

Fixes: Exception: no cargo executable found at
       `${B}/rustc-1.74.1-src/build/x86_64-unknown-linux-gnu/stage0/bin/cargo`

Fix the cargo binary path error on oe-selftest and path set to rust-snapshot dir.

Patch sent to upstream- https://github.com/rust-lang/rust/pull/120125

Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/rust/files/cargo-path.patch | 37 ++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 recipes-devtools/rust/files/cargo-path.patch

diff --git a/recipes-devtools/rust/files/cargo-path.patch b/recipes-devtools/rust/files/cargo-path.patch
new file mode 100644
index 0000000..84bd580
--- /dev/null
+++ b/recipes-devtools/rust/files/cargo-path.patch
@@ -0,0 +1,37 @@
+Fix the cargo binary path error and ensure that it is fetched
+during rustc bootstrap in rust oe-selftest.
+
+======================================================================
+ERROR: test_cargoflags (bootstrap_test.BuildBootstrap)
+----------------------------------------------------------------------
+Traceback (most recent call last):
+  File "/home/build-st/tmp/work/cortexa57-poky-linux/rust/1.74.1/rustc-1.74.1-src/src/bootstrap/bootstrap_test.py", line 157, in test_cargoflags
+    args, _ = self.build_args(env={"CARGOFLAGS": "--timings"})
+  File "/home/build-st/tmp/work/cortexa57-poky-linux/rust/1.74.1/rustc-1.74.1-src/src/bootstrap/bootstrap_test.py", line 154, in build_args
+    return build.build_bootstrap_cmd(env), env
+  File "/home/build-st/tmp/work/cortexa57-poky-linux/rust/1.74.1/rustc-1.74.1-src/src/bootstrap/bootstrap.py", line 960, in build_bootstrap_cmd
+    raise Exception("no cargo executable found at `{}`".format(
+Exception: no cargo executable found at `/home/build-st/tmp/work/cortexa57-poky-linux/rust/1.74.1/rustc-1.74.1-src/build/x86_64-unknown-linux-gnu/stage0/bin/cargo`
+
+Upstream-Status: Submitted [https://github.com/rust-lang/rust/pull/120125]
+
+Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
+---
+diff --git a/src/bootstrap/bootstrap.py b/src/bootstrap/bootstrap.py
+--- a/src/bootstrap/bootstrap.py
++++ b/src/bootstrap/bootstrap.py
+@@ -954,9 +954,11 @@
+         if deny_warnings:
+             env["RUSTFLAGS"] += " -Dwarnings"
+
+-        env["PATH"] = os.path.join(self.bin_root(), "bin") + \
+-            os.pathsep + env["PATH"]
+-        if not os.path.isfile(self.cargo()):
++        cargo_bin_path = os.path.join(self.bin_root(), "bin", "cargo")
++        if not os.path.isfile(cargo_bin_path):
++            cargo_bin_path = os.getenv("RUST_TARGET_PATH") + "rust-snapshot/bin/cargo"
++            env["PATH"] = os.path.dirname(cargo_bin_path) + os.pathsep + env["PATH"]
++        else:
+             raise Exception("no cargo executable found at `{}`".format(
+                 self.cargo()))
+         args = [self.cargo(), "build", "--manifest-path",
-- 
2.44.0


