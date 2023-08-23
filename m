Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE31C3DA6F
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 18:25:40 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web10.497.1692815138217363180
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 11:25:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=sFO6h16B;
 spf=pass (domain: konsulko.com, ip: 209.85.222.172, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-76df3d8fb4eso64337985a.1
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 11:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1692815137; x=1693419937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LZo4vO352x/bL4R5LS+DLy/ijWWZfHOvXAOtn8oy2f8=;
        b=sFO6h16B2nkuwsvHztJ79WAcV6MbfZYY1LLhtZ2+GcE68/zM0x2N4EnO0xWTIeR//4
         D31wBfbSSaHf/GH8vVMUOvJ+G/2B3zFqKRjWhc3/6C6woZZbcypDgBW7lDYPWTHxHbNQ
         2wVWl2lQ0l4UhU/luMwL3v3hMrUxqaB5JogkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692815137; x=1693419937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LZo4vO352x/bL4R5LS+DLy/ijWWZfHOvXAOtn8oy2f8=;
        b=BP/oYDkzPAxGuncyYI7641f3DtHcexFjm9B9xGaKKrXc0Lqrgn+HsyzoJSY6v0FwQU
         nuvP9YJh1ttCK3flhBUXq2mvedw3UTo6dzgCkCn3ML/kKX8IKCH8o6zw1sylAyb73CGg
         J/rdiZiU/juKFEAXcY62OtAFEC1DHSgIcBsefCtgVQhuYy6ihztYCTWqMJaunqu6mQh9
         mGhgLTaKVNea8JZoL/nQA9eB177MnKXvcW20ODbZWCz9M0W7m33InLDqEWTEs7xVkhPn
         5lAgsbsJWa8GvJhUMgxE447d9mi7DndYvZ3MFSG/oMJyIns+T/BQNi1cExEZfJk3eWDf
         J5Sw==
X-Gm-Message-State: AOJu0Yx2EQ4taP61i69pbIATg8PjLuZ6P+TQMFE+jpqOIgdCEax2y2mX
	JB5SqYYVYiDMVBgUD2xpaQxrU3CS7Ve2nNKhspA=
X-Google-Smtp-Source: AGHT+IGu/I6Q5e+Dx/9rNM9V5FvbMtYdoezbpkW+p/DOeiMt/E6xJ3eMi4OuWbCxv3FUO6ZxLNEMeA==
X-Received: by 2002:a05:620a:2224:b0:76c:ad46:2680 with SMTP id n4-20020a05620a222400b0076cad462680mr13529208qkh.44.1692815136773;
        Wed, 23 Aug 2023 11:25:36 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a16b600b0076cf49bcb50sm4107431qkj.37.2023.08.23.11.25.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 11:25:35 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][PATCH 4/4] Fix RISC-V support
Date: Wed, 23 Aug 2023 14:25:12 -0400
Message-ID: <20230823182512.1073623-5-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230823182512.1073623-1-scott.murray@konsulko.com>
References: <20230823182512.1073623-1-scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 18:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60867

Building Rust projects for RISC-V platforms was failing due to the
layer not including a copy of lib/oe/rust.py to get all the changes
from oe-core commit 1cfb9c8a ("rust-target-config: match riscv target
names with what rust expects").  Reverting the changes from that
commit seems likely to make things less robust, so instead add a
copy of the updated lib/oe/rust.py in lib/mixin and update callers
of arch_to_rust_arch to use it.  This is not ideal from an ease
of further maintenance perspective, but seems more inline with the
intent of matching the behavior of the Rust toolchain as it stands
in Mickledore branch.

Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 classes/rust-common.bbclass        |  4 ++--
 classes/rust-target-config.bbclass |  2 +-
 conf/layer.conf                    |  4 ++++
 lib/mixin/rust.py                  | 13 +++++++++++++
 4 files changed, 20 insertions(+), 3 deletions(-)
 create mode 100644 lib/mixin/rust.py

diff --git a/classes/rust-common.bbclass b/classes/rust-common.bbclass
index 8782727..a8971cd 100644
--- a/classes/rust-common.bbclass
+++ b/classes/rust-common.bbclass
@@ -51,7 +51,7 @@ def rust_base_triple(d, thing):
     if d.getVar('{}_ARCH'.format(thing)) == d.getVar('TARGET_ARCH') and target_is_armv7(d):
         arch = "armv7"
     else:
-        arch = oe.rust.arch_to_rust_arch(d.getVar('{}_ARCH'.format(thing)))
+        arch = mixin.rust.arch_to_rust_arch(d.getVar('{}_ARCH'.format(thing)))
 
     # Substituting "unknown" when vendor is empty will match rust's standard
     # targets when building native recipes (including rust-native itself)
@@ -77,7 +77,7 @@ def rust_base_triple(d, thing):
 
 
 # In some cases uname and the toolchain differ on their idea of the arch name
-RUST_BUILD_ARCH = "${@oe.rust.arch_to_rust_arch(d.getVar('BUILD_ARCH'))}"
+RUST_BUILD_ARCH = "${@mixin.rust.arch_to_rust_arch(d.getVar('BUILD_ARCH'))}"
 
 # Naming explanation
 # Yocto
diff --git a/classes/rust-target-config.bbclass b/classes/rust-target-config.bbclass
index 21a56ed..663b02c 100644
--- a/classes/rust-target-config.bbclass
+++ b/classes/rust-target-config.bbclass
@@ -343,7 +343,7 @@ def rust_gen_target(d, thing, wd, arch):
         if arch == "arm" and target_is_armv7(d):
             arch = 'armv7'
 
-    rust_arch = oe.rust.arch_to_rust_arch(arch)
+    rust_arch = mixin.rust.arch_to_rust_arch(arch)
 
     if abi:
         arch_abi = "{}-{}".format(rust_arch, abi)
diff --git a/conf/layer.conf b/conf/layer.conf
index b057c77..fa0cbd6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -23,3 +23,7 @@ BBMASK:append = " meta/recipes-devtools/cargo/ meta/recipes-devtools/rust/ meta/
 # These are in bitbake.conf in langdale and up, adding them here to make
 # using the layer more turn-key seems reasonable.
 BB_BASEHASH_IGNORE_VARS:append = " RUST_BUILD_SYS RUST_HOST_SYS RUST_TARGET_SYS"
+
+# Since we cannot overlay the lib/oe version easily, make sure our backport
+# of rust.py in lib/mixin is picked up.
+OE_EXTRA_IMPORTS:append = " mixin.rust"
diff --git a/lib/mixin/rust.py b/lib/mixin/rust.py
new file mode 100644
index 0000000..185553e
--- /dev/null
+++ b/lib/mixin/rust.py
@@ -0,0 +1,13 @@
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+
+# Handle mismatches between `uname -m`-style output and Rust's arch names
+def arch_to_rust_arch(arch):
+    if arch == "ppc64le":
+        return "powerpc64le"
+    if arch in ('riscv32', 'riscv64'):
+        return arch + 'gc'
+    return arch
-- 
2.41.0


