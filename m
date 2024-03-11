Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51B3C54E68
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:12 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.67626.1710174308605464195
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kMxjrP3X;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33e99915809so771153f8f.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174307; x=1710779107; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GPpxqyLuzw3Yi0gAqlr9xR6RLx2qMq3iUP8DI8ZN0+Y=;
        b=kMxjrP3XPsI5QKlTdsWADodpPHx9UseHCsuKMpvZdGUYawh8taTadiIj43NXmjL6ol
         3/2/C5q7fxuL2SIUXP7vWzhulVs8P5uFGbYQVL9hvvmoQdD+ldK8RH92r35G/hNqUdwr
         +ajn/pgTphgUk3HhNO9RznwcKpU5OFm9xgbtVGXRYLDm4599VnyLDWxSeU12V7XN8OWe
         r9xYW7Dblemir+JDGrhsjtNzGI9vqRrGxejfM2b4g043CPc2VH9YofHfe83MqNaEkH8t
         +gRSQYDDFc9D8ZiUKx7CS7GZeu1+Xq/wLiUVi5haomquH8FnSnHUmQ4xBGi0MADgEiSk
         pv1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174307; x=1710779107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GPpxqyLuzw3Yi0gAqlr9xR6RLx2qMq3iUP8DI8ZN0+Y=;
        b=h1uI4gWyCwsjtD4IBXKww27CjjBOFcoTbyowh+Ac7WdQRVXlYCwPUZGaR+dYMnW/yT
         OXyD8stQbTGXR0hIX0xd/s+ccM0qbmhjDuFoQivM5gmHtCroLppDOEgaopA9D3Ag4z9u
         RpXHGM4mg0S7kGZxfw8pxin+1E9/lYeV1QxToEwrShTRN44HivzelMJztB2nMci9yiI5
         OqzNbMuqsLmSqrE8iaa1pAyX89mGaV9G994VMuLlu4QS3It+YD9BsyYj0I0jnftRQDFA
         +DCqV3Fy1ZTT5y7JM9tQLfjDaokkMkOZMLcWTWyBAwdFiFxFD+DNamRXeLgu1KwQ93A4
         HeuQ==
X-Gm-Message-State: AOJu0YyXX3GjkAt6EteHnH1zhVMzLhuSfrCAxr+HxQqe0r3wbxv/W2k1
	3O3ECEZUGhhnBKRy+VdW4Wzuck61YM0NvIasivR7Laqz3fbEmpg+yy5d5+0t
X-Google-Smtp-Source: AGHT+IFWRQWTb5Hchu6TVshSGdr06XXIQNEbLr5jMLX9ns6PF7kMV873bMUrI9xHv1c86g6GGioCvQ==
X-Received: by 2002:a5d:6582:0:b0:33e:74ce:6123 with SMTP id q2-20020a5d6582000000b0033e74ce6123mr5157134wru.60.1710174306593;
        Mon, 11 Mar 2024 09:25:06 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:06 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Yash Shinde <Yash.Shinde@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 02/11] rust: detect user-specified custom targets in compiletest
Date: Mon, 11 Mar 2024 16:24:01 +0000
Message-ID: <20240311162419.1138625-2-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311162419.1138625-1-jose.quaresma@foundries.io>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62727

From: Yash Shinde <Yash.Shinde@windriver.com>

Fixes: thread 'main' panicked at 'failed to gather the target spec
       for '<arch>-unknown-linux-gnu', synthetic_targets.rs:66:9

Detect and fetch custom target configurations when rustc is
bootstrapped in rust oe-selftest.

Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 .../rust/files/custom-target-cfg.patch        | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 recipes-devtools/rust/files/custom-target-cfg.patch

diff --git a/recipes-devtools/rust/files/custom-target-cfg.patch b/recipes-devtools/rust/files/custom-target-cfg.patch
new file mode 100644
index 0000000..15a7f25
--- /dev/null
+++ b/recipes-devtools/rust/files/custom-target-cfg.patch
@@ -0,0 +1,90 @@
+Detect and fetch custom target configurations when rustc is
+bootstrapped in rust oe-selftest.
+
+Upstream-Status: Backport [https://github.com/rust-lang/rust/pull/119619/commits/26c71cbcf1a9bce6ceb962d753c467d098f63cf6]
+
+Signed-off-by: onur-ozkan <work@onurozkan.dev>
+Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
+---
+diff --git a/src/tools/compiletest/src/common.rs b/src/tools/compiletest/src/common.rs
+index e85f6319936..c45c0b3c652 100644
+--- a/src/tools/compiletest/src/common.rs
++++ b/src/tools/compiletest/src/common.rs
+@@ -479,6 +479,7 @@ fn new(config: &Config) -> TargetCfgs {
+         let mut targets: HashMap<String, TargetCfg> = serde_json::from_str(&rustc_output(
+             config,
+             &["--print=all-target-specs-json", "-Zunstable-options"],
++            Default::default(),
+         ))
+         .unwrap();
+
+@@ -491,16 +492,33 @@ fn new(config: &Config) -> TargetCfgs {
+         let mut all_families = HashSet::new();
+         let mut all_pointer_widths = HashSet::new();
+
+-        // Handle custom target specs, which are not included in `--print=all-target-specs-json`.
+-        if config.target.ends_with(".json") {
+-            targets.insert(
+-                config.target.clone(),
+-                serde_json::from_str(&rustc_output(
+-                    config,
+-                    &["--print=target-spec-json", "-Zunstable-options", "--target", &config.target],
+-                ))
+-                .unwrap(),
+-            );
++        // If current target is not included in the `--print=all-target-specs-json` output,
++        // we check whether it is a custom target from the user or a synthetic target from bootstrap.
++        if !targets.contains_key(&config.target) {
++            let mut envs: HashMap<String, String> = HashMap::new();
++
++            if let Ok(t) = std::env::var("RUST_TARGET_PATH") {
++                envs.insert("RUST_TARGET_PATH".into(), t);
++            }
++
++            // This returns false only when the target is neither a synthetic target
++            // nor a custom target from the user, indicating it is most likely invalid.
++            if config.target.ends_with(".json") || !envs.is_empty() {
++                targets.insert(
++                    config.target.clone(),
++                    serde_json::from_str(&rustc_output(
++                        config,
++                        &[
++                            "--print=target-spec-json",
++                            "-Zunstable-options",
++                            "--target",
++                            &config.target,
++                        ],
++                        envs,
++                    ))
++                    .unwrap(),
++                );
++            }
+         }
+
+         for (target, cfg) in targets.iter() {
+@@ -545,7 +563,9 @@ fn get_current_target_config(
+         // code below extracts them from `--print=cfg`: make sure to only override fields that can
+         // actually be changed with `-C` flags.
+         for config in
+-            rustc_output(config, &["--print=cfg", "--target", &config.target]).trim().lines()
++            rustc_output(config, &["--print=cfg", "--target", &config.target], Default::default())
++                .trim()
++                .lines()
+         {
+             let (name, value) = config
+                 .split_once("=\"")
+@@ -624,11 +644,12 @@ pub enum Endian {
+     Big,
+ }
+
+-fn rustc_output(config: &Config, args: &[&str]) -> String {
++fn rustc_output(config: &Config, args: &[&str], envs: HashMap<String, String>) -> String {
+     let mut command = Command::new(&config.rustc_path);
+     add_dylib_path(&mut command, iter::once(&config.compile_lib_path));
+     command.args(&config.target_rustcflags).args(args);
+     command.env("RUSTC_BOOTSTRAP", "1");
++    command.envs(envs);
+
+     let output = match command.output() {
+         Ok(output) => output,
+
-- 
2.44.0


