Return-Path: <antonio.oliveira@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D5AAC47073
	for <webhook@archiver.kernel.org>; Mon,  8 Jan 2024 15:58:48 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.360.1704729525381705325
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jan 2024 07:58:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Q3gaR90h;
 spf=pass (domain: konsulko.com, ip: 209.85.128.50, mailfrom: antonio.oliveira@konsulko.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e47d74824so8723495e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 07:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1704729523; x=1705334323; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RDgX7gxglURh08mpiG+ooqGyFDV4lpFyNCTT715GA5Q=;
        b=Q3gaR90hp+KVaiNu2q+xR8HCDvdaaxhYmMSf9g5m59lOJ1uQiuvdQXQP/fTAY50sw1
         Kv8I7Wq3R8wSuzZEMubUX/izQmX7CaevVshly3lW+ItY4p7xhfGbtVOCJPIKXE3/eUpP
         Ay0H6wemVkpdR6JfY5/YpuEAqYtKbpfwgqmUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704729523; x=1705334323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RDgX7gxglURh08mpiG+ooqGyFDV4lpFyNCTT715GA5Q=;
        b=hEIXoasVvIbr78XiyNAqjlZ9He3/Ur5ZyxXQvfYk+sBuJwPFPH7uRg+a9y+3/OMXEH
         CzCmLc5Y009gPTDjCNZMRZXj2cKHI+JCDJQQUJpxu3Lkdwn7/sBds1hNlBIsIAC6ztEz
         CsurPkk1x4kVVrGYRcJJWjkUjp3o7Wqv0w5MjKUk31rui9E5mZQ9U18UEDNlctexRiOJ
         OEf33BYUKO9UGA2yH2o2tVrDvYcnjDP13dzAZy22wTk/QixPfFvNX22OSPIrAG5iiNUw
         oFw4u2S932T7cnh5gT0UyhpQamlwxkVItfVyNWH77QihFd1tZNbdxaWkpLLZf6vC/wRW
         dtKA==
X-Gm-Message-State: AOJu0YzGn12RYzXNXVdpas0fmnLMFHk4rpsDZiVnI1T/15SFJ/t2U6q0
	QWnziJBWcUDHjgv2QD91J5FUymwpCUplsji00HjaplDec9Q=
X-Google-Smtp-Source: AGHT+IGxoJP9XnmdgX82SRqWzorFe5ggKhrYiI+BcMPslJgnK72DxcQty5qRmLCO2r48fZcf3sewMA==
X-Received: by 2002:a05:600c:5185:b0:40e:4551:8c3f with SMTP id fa5-20020a05600c518500b0040e45518c3fmr581520wmb.374.1704729523370;
        Mon, 08 Jan 2024 07:58:43 -0800 (PST)
Received: from acme-iron-carrot.home ([2a01:14:112:2860:d63:ebd1:2caf:4862])
        by smtp.gmail.com with ESMTPSA id u3-20020a5d4343000000b003376d4248a9sm1930710wrr.71.2024.01.08.07.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 07:58:42 -0800 (PST)
From: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
Subject: [RFC PATCH v2 2/3] add nodejs-18 from mickledore
Date: Mon,  8 Jan 2024 15:58:37 +0000
Message-Id: <f41ee8508e1100a76eba5853f49757582e65537f.1704728801.git.antonio.oliveira@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1704728801.git.antonio.oliveira@konsulko.com>
References: <cover.1704728801.git.antonio.oliveira@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 15:58:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62104

Signed-off-by: António Oliveira <antonio.oliveira@konsulko.com>
---
 .../nodejs/nodejs-oe-cache-18.18/oe-npm-cache |  77 ++++++++
 .../nodejs/nodejs-oe-cache-native_18.18.bb    |  21 ++
 ...e-running-gyp-files-for-bundled-deps.patch |  51 +++++
 .../nodejs/0001-Using-native-binaries.patch   |  77 ++++++++
 ...-liftoff-Correct-function-signatures.patch |  85 ++++++++
 ...Use-32bit-cast-for-operand-on-mips32.patch |  34 ++++
 ...4-Do-not-use-mminimal-toc-with-clang.patch |  23 +++
 .../0004-v8-don-t-override-ARM-CFLAGS.patch   | 102 ++++++++++
 .../nodejs/nodejs/big-endian.patch            |  18 ++
 .../nodejs/nodejs/libatomic.patch             |  21 ++
 .../nodejs/nodejs/mips-less-memory.patch      |  37 ++++
 recipes-devtools/nodejs/nodejs/run-ptest      |   3 +
 .../nodejs/nodejs/system-c-ares.patch         |  24 +++
 recipes-devtools/nodejs/nodejs_18.18.2.bb     | 185 ++++++++++++++++++
 14 files changed, 758 insertions(+)
 create mode 100755 recipes-devtools/nodejs/nodejs-oe-cache-18.18/oe-npm-cache
 create mode 100644 recipes-devtools/nodejs/nodejs-oe-cache-native_18.18.bb
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-Disable-running-gyp-files-for-bundled-deps.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-Using-native-binaries.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-liftoff-Correct-function-signatures.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-mips-Use-32bit-cast-for-operand-on-mips32.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/0004-v8-don-t-override-ARM-CFLAGS.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/big-endian.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/libatomic.patch
 create mode 100644 recipes-devtools/nodejs/nodejs/mips-less-memory.patch
 create mode 100755 recipes-devtools/nodejs/nodejs/run-ptest
 create mode 100644 recipes-devtools/nodejs/nodejs/system-c-ares.patch
 create mode 100644 recipes-devtools/nodejs/nodejs_18.18.2.bb

diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-18.18/oe-npm-cache b/recipes-devtools/nodejs/nodejs-oe-cache-18.18/oe-npm-cache
new file mode 100755
index 0000000..f596207
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs-oe-cache-18.18/oe-npm-cache
@@ -0,0 +1,77 @@
+#!/usr/bin/env node
+
+/// Usage: oe-npm-cache <cache-dir> <type> <key> <file-name>
+///    <type> ... meta - metainformation about package
+///               tgz  - tarball
+
+const process = require("node:process");
+
+module.paths.unshift("@@libdir@@/node_modules/npm/node_modules");
+
+const cacache = require('cacache')
+const fs = require('fs')
+
+// argv[0] is 'node', argv[1] is this script
+const cache_dir = process.argv[2]
+const type      = process.argv[3]
+const key       = process.argv[4]
+const file      = process.argv[5]
+
+const data = fs.readFileSync(file)
+
+// metadata content is highly nodejs dependent; when cache entries are not
+// found, place debug statements in 'make-fetch-happen/lib/cache/policy.js'
+// (CachePolicy::satisfies())
+const xlate = {
+    'meta': {
+	'key_prefix': 'make-fetch-happen:request-cache:',
+	'metadata': function() {
+	    return {
+		time: Date.now(),
+		url:  key,
+		reqHeaders: {
+		    'accept': 'application/vnd.npm.install-v1+json; q=1.0, application/json; q=0.8, */*',
+		},
+		resHeaders: {
+		    "content-type": "application/json",
+		    "status": 200,
+		},
+		options: {
+		    compress: true,
+		}
+	    };
+	},
+    },
+
+    'tgz': {
+	'key_prefix': 'make-fetch-happen:request-cache:',
+	'metadata': function() {
+	    return {
+		time: Date.now(),
+		url:  key,
+		reqHeaders: {
+		    'accept': '*/*',
+		},
+		resHeaders: {
+		    "content-type": "application/octet-stream",
+		    "status": 200,
+		},
+		options: {
+		    compress: true,
+		},
+	    };
+	},
+    },
+};
+
+const info = xlate[type];
+let opts = {}
+
+if (info.metadata) {
+    opts['metadata'] = info.metadata();
+}
+
+cacache.put(cache_dir, info.key_prefix + key, data, opts)
+    .then(integrity => {
+	console.log(`Saved content of ${key} (${file}).`);
+})
diff --git a/recipes-devtools/nodejs/nodejs-oe-cache-native_18.18.bb b/recipes-devtools/nodejs/nodejs-oe-cache-native_18.18.bb
new file mode 100644
index 0000000..a61dd50
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs-oe-cache-native_18.18.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "OE helper for manipulating npm cache"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"
+
+SRC_URI = "\
+    file://oe-npm-cache \
+"
+
+inherit native
+
+B = "${WORKDIR}/build"
+
+do_configure() {
+    sed -e 's!@@libdir@@!${libdir}!g' < '${WORKDIR}/oe-npm-cache' > '${B}/oe-npm-cache'
+}
+
+do_install() {
+    install -D -p -m 0755 ${B}/oe-npm-cache ${D}${bindir}/oe-npm-cache
+}
+
+RDEPENDS:${PN} = "nodejs-native"
diff --git a/recipes-devtools/nodejs/nodejs/0001-Disable-running-gyp-files-for-bundled-deps.patch b/recipes-devtools/nodejs/nodejs/0001-Disable-running-gyp-files-for-bundled-deps.patch
new file mode 100644
index 0000000..059b5cc
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/0001-Disable-running-gyp-files-for-bundled-deps.patch
@@ -0,0 +1,51 @@
+From 7d94bfe53beeb2d25eb5f2ff6b1d509df7e6ab80 Mon Sep 17 00:00:00 2001
+From: Zuzana Svetlikova <zsvetlik@redhat.com>
+Date: Thu, 27 Apr 2017 14:25:42 +0200
+Subject: [PATCH] Disable running gyp on shared deps
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Probably imported from:
+https://src.fedoraproject.org/rpms/nodejs/c/41af04f2a3c050fb44628e91ac65fd225b927acb?branch=22609d8c1bfeaa21fe0057645af20b3a2ccc7f53
+which is probably based on dont-run-gyp-files-for-bundled-deps.patch added in:
+https://github.com/alpinelinux/aports/commit/6662eb3199902e8451fb20dce82554ad96f796bb
+
+We also explicitly prune some dependencies from source in the bitbake recipe:
+
+python prune_sources() {
+    import shutil
+
+    shutil.rmtree(d.getVar('S') + '/deps/openssl')
+    if 'ares' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/cares')
+    if 'brotli' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/brotli')
+    if 'libuv' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/uv')
+    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
+    if 'zlib' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/zlib')
+}
+do_unpack[postfuncs] += "prune_sources"
+
+Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
+---
+ Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile b/Makefile
+index 0be0659d..3c442014 100644
+--- a/Makefile
++++ b/Makefile
+@@ -169,7 +169,7 @@ with-code-cache test-code-cache:
+ 	$(warning '$@' target is a noop)
+ 
+ out/Makefile: config.gypi common.gypi node.gyp \
+-	deps/uv/uv.gyp deps/llhttp/llhttp.gyp deps/zlib/zlib.gyp \
++	deps/llhttp/llhttp.gyp \
+	deps/simdutf/simdutf.gyp deps/ada/ada.gyp \
+ 	tools/v8_gypfiles/toolchain.gypi tools/v8_gypfiles/features.gypi \
+ 	tools/v8_gypfiles/inspector.gypi tools/v8_gypfiles/v8.gyp
+--
+2.40.0
diff --git a/recipes-devtools/nodejs/nodejs/0001-Using-native-binaries.patch b/recipes-devtools/nodejs/nodejs/0001-Using-native-binaries.patch
new file mode 100644
index 0000000..66e10a0
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/0001-Using-native-binaries.patch
@@ -0,0 +1,77 @@
+From 6c3ac20477a4bac643088f24df3c042e627fafa9 Mon Sep 17 00:00:00 2001
+From: Guillaume Burel <guillaume.burel@stormshield.eu>
+Date: Fri, 3 Jan 2020 11:25:54 +0100
+Subject: [PATCH] Using native binaries
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Originally added in:
+https://git.openembedded.org/meta-openembedded/commit/?id=1c8e4a679ae382f953b2e5c7a4966a4646314f3e
+later extended and renamed in:
+https://git.openembedded.org/meta-openembedded/commit/?id=feeb172d1a8bf010490d22b8df9448b20d9d2aed
+
+Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
+---
+ node.gyp                 | 1 +
+ tools/v8_gypfiles/v8.gyp | 5 +++++
+ 2 files changed, 6 insertions(+)
+
+diff --git a/node.gyp b/node.gyp
+index e8e1d9f9..e60ccc10 100644
+--- a/node.gyp
++++ b/node.gyp
+@@ -320,6 +320,7 @@
+                   'action_name': 'node_mksnapshot',
+                   'process_outputs_as_sources': 1,
+                   'inputs': [
++                    '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
+                     '<(node_mksnapshot_exec)',
+                     '<(node_snapshot_main)',
+                   ],
+diff --git a/tools/v8_gypfiles/v8.gyp b/tools/v8_gypfiles/v8.gyp
+index 42e26cd9..bc721991 100644
+--- a/tools/v8_gypfiles/v8.gyp
++++ b/tools/v8_gypfiles/v8.gyp
+@@ -68,6 +68,7 @@
+         {
+           'action_name': 'run_torque_action',
+           'inputs': [  # Order matters.
++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
+             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUFFIX)',
+             '<@(torque_files)',
+           ],
+@@ -99,6 +100,7 @@
+             '<@(torque_outputs_inc)',
+           ],
+           'action': [
++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
+             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)torque<(EXECUTABLE_SUFFIX)',
+             '-o', '<(SHARED_INTERMEDIATE_DIR)/torque-generated',
+             '-v8-root', '<(V8_ROOT)',
+@@ -211,6 +213,7 @@
+         {
+           'action_name': 'generate_bytecode_builtins_list_action',
+           'inputs': [
++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
+             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)bytecode_builtins_list_generator<(EXECUTABLE_SUFFIX)',
+           ],
+           'outputs': [
+@@ -400,6 +403,7 @@
+             ],
+           },
+           'inputs': [
++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
+             '<(mksnapshot_exec)',
+           ],
+           'outputs': [
+@@ -1539,6 +1543,7 @@
+         {
+           'action_name': 'run_gen-regexp-special-case_action',
+           'inputs': [
++            '<(PRODUCT_DIR)/v8-qemu-wrapper.sh',
+             '<(PRODUCT_DIR)/<(EXECUTABLE_PREFIX)gen-regexp-special-case<(EXECUTABLE_SUFFIX)',
+           ],
+           'outputs': [
+-- 
+2.34.1
+
diff --git a/recipes-devtools/nodejs/nodejs/0001-liftoff-Correct-function-signatures.patch b/recipes-devtools/nodejs/nodejs/0001-liftoff-Correct-function-signatures.patch
new file mode 100644
index 0000000..c9a522d
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/0001-liftoff-Correct-function-signatures.patch
@@ -0,0 +1,85 @@
+From dc3652c0abcdf8573fd044907b19d8eda7ca1124 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Wed, 20 Oct 2021 12:49:58 -0700
+Subject: [PATCH] [liftoff] Correct function signatures
+
+Fixes builds on mips where clang reports an error
+../deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h:661:5: error: no matching member function for call to 'Move'
+    Move(tmp, src, type.value_type());
+    ^~~~
+
+Upstream-Status: Submitted [https://chromium-review.googlesource.com/c/v8/v8/+/3235674]
+
+Signed-off-by: Archana Polampalli <archana.polampalli@windriver.com>
+---
+ deps/v8/src/wasm/baseline/liftoff-assembler.h               | 6 +++---
+ deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h     | 2 +-
+ deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h | 2 +-
+ .../src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h   | 2 +-
+ 4 files changed, 6 insertions(+), 6 deletions(-)
+
+diff --git a/deps/v8/src/wasm/baseline/liftoff-assembler.h b/deps/v8/src/wasm/baseline/liftoff-assembler.h
+index 22c7f73a..db4cb168 100644
+--- a/deps/v8/src/wasm/baseline/liftoff-assembler.h
++++ b/deps/v8/src/wasm/baseline/liftoff-assembler.h
+@@ -646,7 +646,7 @@ class LiftoffAssembler : public TurboAssembler {
+   void FinishCall(const ValueKindSig*, compiler::CallDescriptor*);
+ 
+   // Move {src} into {dst}. {src} and {dst} must be different.
+-  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind);
++  void Move(LiftoffRegister dst, LiftoffRegister src, ValueKind kind);
+ 
+   // Parallel register move: For a list of tuples <dst, src, kind>, move the
+   // {src} register of kind {kind} into {dst}. If {src} equals {dst}, ignore
+@@ -795,8 +795,8 @@ class LiftoffAssembler : public TurboAssembler {
+   inline void MoveStackValue(uint32_t dst_offset, uint32_t src_offset,
+                              ValueKind);
+ 
+-  inline void Move(Register dst, Register src, ValueKind);
+-  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind);
++  inline void Move(Register dst, Register src, ValueKind kind);
++  inline void Move(DoubleRegister dst, DoubleRegister src, ValueKind kind);
+ 
+   inline void Spill(int offset, LiftoffRegister, ValueKind);
+   inline void Spill(int offset, WasmValue);
+diff --git a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h b/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
+index c76fd2f4..0fffe231 100644
+--- a/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
++++ b/deps/v8/src/wasm/baseline/mips/liftoff-assembler-mips.h
+@@ -661,7 +661,7 @@ void LiftoffAssembler::Store(Register dst_addr, Register offset_reg,
+     pinned = pinned | LiftoffRegList{dst_op.rm(), src};
+     LiftoffRegister tmp = GetUnusedRegister(src.reg_class(), pinned);
+     // Save original value.
+-    Move(tmp, src, type.value_type());
++    Move(tmp, src, type.value_type().kind());
+ 
+     src = tmp;
+     pinned.set(tmp);
+diff --git a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
+index 36413545..48207337 100644
+--- a/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
++++ b/deps/v8/src/wasm/baseline/mips64/liftoff-assembler-mips64.h
+@@ -593,7 +593,7 @@ void LiftoffAssembler::Store(Register dst_addr, Register offset_reg,
+     pinned.set(dst_op.rm());
+     LiftoffRegister tmp = GetUnusedRegister(src.reg_class(), pinned);
+     // Save original value.
+-    Move(tmp, src, type.value_type());
++    Move(tmp, src, type.value_type().kind());
+ 
+     src = tmp;
+     pinned.set(tmp);
+diff --git a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
+index 642a7d2a..56ffcc2a 100644
+--- a/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
++++ b/deps/v8/src/wasm/baseline/riscv64/liftoff-assembler-riscv64.h
+@@ -589,7 +589,7 @@ void LiftoffAssembler::Store(Register dst_addr, Register offset_reg,
+     pinned.set(dst_op.rm());
+     LiftoffRegister tmp = GetUnusedRegister(src.reg_class(), pinned);
+     // Save original value.
+-    Move(tmp, src, type.value_type());
++    Move(tmp, src, type.value_type().kind());
+ 
+     src = tmp;
+     pinned.set(tmp);
+--
+2.34.1
diff --git a/recipes-devtools/nodejs/nodejs/0001-mips-Use-32bit-cast-for-operand-on-mips32.patch b/recipes-devtools/nodejs/nodejs/0001-mips-Use-32bit-cast-for-operand-on-mips32.patch
new file mode 100644
index 0000000..a0242d8
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/0001-mips-Use-32bit-cast-for-operand-on-mips32.patch
@@ -0,0 +1,34 @@
+From e65dde8db17da5acddeef7eb9316199c4e5e0811 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 19 Apr 2022 12:40:25 -0700
+Subject: [PATCH] mips: Use 32bit cast for operand on mips32
+
+Fixes
+deps/v8/src/compiler/backend/mips/code-generator-mips.cc: In member function 'void v8::internal::compiler::CodeGenerator::AssembleReturn(v8::internal::compiler::InstructionOperand*)':
+../deps/v8/src/compiler/backend/mips/code-generator-mips.cc:4233:48: error: call of overloaded 'Operand(int64_t)' is ambiguous
+ 4233 |                 Operand(static_cast<int64_t>(0)));
+      |                                                ^
+
+Upstream-Status: Pending
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ deps/v8/src/compiler/backend/mips/code-generator-mips.cc | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc b/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
+index 2b8197e..b226140 100644
+--- a/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
++++ b/deps/v8/src/compiler/backend/mips/code-generator-mips.cc
+@@ -4230,7 +4230,7 @@ void CodeGenerator::AssembleReturn(InstructionOperand* additional_pop_count) {
+     } else if (FLAG_debug_code) {
+       __ Assert(eq, AbortReason::kUnexpectedAdditionalPopValue,
+                 g.ToRegister(additional_pop_count),
+-                Operand(static_cast<int64_t>(0)));
++                Operand(static_cast<int32_t>(0)));
+     }
+   }
+   // Functions with JS linkage have at least one parameter (the receiver).
+-- 
+2.36.0
+
diff --git a/recipes-devtools/nodejs/nodejs/0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch b/recipes-devtools/nodejs/nodejs/0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch
new file mode 100644
index 0000000..4773f05
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch
@@ -0,0 +1,23 @@
+From 0976af0f3b328436ea44a74a406f311adb2ab211 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 15 Jun 2021 19:01:31 -0700
+Subject: [PATCH] ppc64: Do not use -mminimal-toc with clang
+
+clang does not support this option
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ common.gypi | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- a/common.gypi
++++ b/common.gypi
+@@ -417,7 +417,7 @@
+             'ldflags': [ '-m32' ],
+           }],
+           [ 'target_arch=="ppc64" and OS!="aix"', {
+-            'cflags': [ '-m64', '-mminimal-toc' ],
++            'cflags': [ '-m64' ],
+             'ldflags': [ '-m64' ],
+           }],
+           [ 'target_arch=="s390x"', {
diff --git a/recipes-devtools/nodejs/nodejs/0004-v8-don-t-override-ARM-CFLAGS.patch b/recipes-devtools/nodejs/nodejs/0004-v8-don-t-override-ARM-CFLAGS.patch
new file mode 100644
index 0000000..97ed972
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/0004-v8-don-t-override-ARM-CFLAGS.patch
@@ -0,0 +1,102 @@
+From 47ee5cc5501289205d3e8e9f27ea9daf18cebac1 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
+Date: Sat, 9 Nov 2019 14:45:30 +0000
+Subject: [PATCH] v8: don't override ARM CFLAGS
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+This overrides yocto-provided build flags with its own, e.g we get
+    arm-poky-linux-musleabi-g++  -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a7 \
+                                 ... \
+                                  -march=armv7-a -mfpu=neon -mfloat-abi=hard -marm
+
+Causing the latter to override the former, and compiler warnings:
+    cc1plus: warning: switch '-mcpu=cortex-a7' conflicts with '-march=armv7-a' switch
+
+Patch this out, so that yocto-provided flags take precedence.
+Note that in reality the same should probably be done for all the other
+supported architectures, too.
+
+Note that this also switches to Thumb(2) mode (in my case). No obvious
+problems have been noted during compilation or runtime.
+
+Upstream-Status: Inappropriate [oe-specific]
+Signed-off-by: André Draszik <git@andred.net>
+---
+ tools/v8_gypfiles/toolchain.gypi | 52 ++------------------------------
+ 1 file changed, 2 insertions(+), 50 deletions(-)
+
+diff --git a/tools/v8_gypfiles/toolchain.gypi b/tools/v8_gypfiles/toolchain.gypi
+index 264b3e478e..0b41848145 100644
+--- a/tools/v8_gypfiles/toolchain.gypi
++++ b/tools/v8_gypfiles/toolchain.gypi
+@@ -211,31 +211,7 @@
+         'target_conditions': [
+           ['_toolset=="host"', {
+             'conditions': [
+-              ['v8_target_arch==host_arch', {
+-                # Host built with an Arm CXX compiler.
+-                'conditions': [
+-                  [ 'arm_version==7', {
+-                    'cflags': ['-march=armv7-a',],
+-                  }],
+-                  [ 'arm_version==7 or arm_version=="default"', {
+-                    'conditions': [
+-                      [ 'arm_fpu!="default"', {
+-                        'cflags': ['-mfpu=<(arm_fpu)',],
+-                      }],
+-                    ],
+-                  }],
+-                  [ 'arm_float_abi!="default"', {
+-                    'cflags': ['-mfloat-abi=<(arm_float_abi)',],
+-                  }],
+-                  [ 'arm_thumb==1', {
+-                    'cflags': ['-mthumb',],
+-                  }],
+-                  [ 'arm_thumb==0', {
+-                    'cflags': ['-marm',],
+-                  }],
+-                ],
+-              }, {
+-                # 'v8_target_arch!=host_arch'
++              ['v8_target_arch!=host_arch', {
+                 # Host not built with an Arm CXX compiler (simulator build).
+                 'conditions': [
+                   [ 'arm_float_abi=="hard"', {
+@@ -254,31 +230,7 @@
+           }],  # _toolset=="host"
+           ['_toolset=="target"', {
+             'conditions': [
+-              ['v8_target_arch==target_arch', {
+-                # Target built with an Arm CXX compiler.
+-                'conditions': [
+-                  [ 'arm_version==7', {
+-                    'cflags': ['-march=armv7-a',],
+-                  }],
+-                  [ 'arm_version==7 or arm_version=="default"', {
+-                    'conditions': [
+-                      [ 'arm_fpu!="default"', {
+-                        'cflags': ['-mfpu=<(arm_fpu)',],
+-                      }],
+-                    ],
+-                  }],
+-                  [ 'arm_float_abi!="default"', {
+-                    'cflags': ['-mfloat-abi=<(arm_float_abi)',],
+-                  }],
+-                  [ 'arm_thumb==1', {
+-                    'cflags': ['-mthumb',],
+-                  }],
+-                  [ 'arm_thumb==0', {
+-                    'cflags': ['-marm',],
+-                  }],
+-                ],
+-              }, {
+-                # 'v8_target_arch!=target_arch'
++              ['v8_target_arch!=target_arch', {
+                 # Target not built with an Arm CXX compiler (simulator build).
+                 'conditions': [
+                   [ 'arm_float_abi=="hard"', {
+-- 
+2.20.1
+
diff --git a/recipes-devtools/nodejs/nodejs/big-endian.patch b/recipes-devtools/nodejs/nodejs/big-endian.patch
new file mode 100644
index 0000000..5293818
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/big-endian.patch
@@ -0,0 +1,18 @@
+
+https://github.com/v8/v8/commit/878ccb33bd3cf0e6dc018ff8d15843f585ac07be
+
+did some automated cleanups but it missed big-endian code.
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+--- a/deps/v8/src/runtime/runtime-utils.h
++++ b/deps/v8/src/runtime/runtime-utils.h
+@@ -126,7 +126,7 @@ static inline ObjectPair MakePair(Object
+ #if defined(V8_TARGET_LITTLE_ENDIAN)
+   return x.ptr() | (static_cast<ObjectPair>(y.ptr()) << 32);
+ #elif defined(V8_TARGET_BIG_ENDIAN)
+-  return y->ptr() | (static_cast<ObjectPair>(x->ptr()) << 32);
++  return y.ptr() | (static_cast<ObjectPair>(x.ptr()) << 32);
+ #else
+ #error Unknown endianness
+ #endif
diff --git a/recipes-devtools/nodejs/nodejs/libatomic.patch b/recipes-devtools/nodejs/nodejs/libatomic.patch
new file mode 100644
index 0000000..cb02373
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/libatomic.patch
@@ -0,0 +1,21 @@
+Link mksnapshot with libatomic on x86
+
+Clang-12 on x86 emits atomic builtins
+
+Fixes
+| module-compiler.cc:(.text._ZN2v88internal4wasm12_GLOBAL__N_123ExecuteCompilationUnitsERKSt10shared_ptrINS2_22BackgroundCompileTokenEEPNS0_8CountersEiNS2_19CompileBaselineOnlyE+0x558): un
+defined reference to `__atomic_load'
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+--- a/tools/v8_gypfiles/v8.gyp
++++ b/tools/v8_gypfiles/v8.gyp
+@@ -1436,6 +1436,7 @@
+     {
+       'target_name': 'mksnapshot',
+       'type': 'executable',
++      'libraries': [ '-latomic' ],
+       'dependencies': [
+         'v8_base_without_compiler',
+         'v8_compiler_for_mksnapshot',
diff --git a/recipes-devtools/nodejs/nodejs/mips-less-memory.patch b/recipes-devtools/nodejs/nodejs/mips-less-memory.patch
new file mode 100644
index 0000000..16776cb
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/mips-less-memory.patch
@@ -0,0 +1,37 @@
+Description: mksnapshot uses too much memory on 32-bit mipsel
+Author: Jérémy Lal <kapouer@melix.org>
+Last-Update: 2020-06-03
+Forwarded: https://bugs.chromium.org/p/v8/issues/detail?id=10586
+
+This ensures that we reserve 500M instead of 2G range for codegen
+ensures that qemu-mips can allocate such large ranges
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Imported from debian https://salsa.debian.org/js-team/nodejs/-/blob/master-12.x/debian/patches/mips-less-memory.patch
+https://buildd.debian.org/status/fetch.php?pkg=nodejs&arch=mipsel&ver=12.17.0~dfsg-2&stamp=1591050388&raw=0
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+--- a/deps/v8/src/common/globals.h
++++ b/deps/v8/src/common/globals.h
+@@ -224,7 +224,7 @@ constexpr size_t kMinimumCodeRangeSize =
+ constexpr size_t kMinExpectedOSPageSize = 64 * KB;  // OS page on PPC Linux
+ #elif V8_TARGET_ARCH_MIPS
+ constexpr bool kPlatformRequiresCodeRange = false;
+-constexpr size_t kMaximalCodeRangeSize = 2048LL * MB;
++constexpr size_t kMaximalCodeRangeSize = 512 * MB;
+ constexpr size_t kMinimumCodeRangeSize = 0 * MB;
+ constexpr size_t kMinExpectedOSPageSize = 4 * KB;  // OS page.
+ #else
+--- a/deps/v8/src/codegen/mips/constants-mips.h
++++ b/deps/v8/src/codegen/mips/constants-mips.h
+@@ -140,7 +140,7 @@ const uint32_t kLeastSignificantByteInIn
+ namespace v8 {
+ namespace internal {
+ 
+-constexpr size_t kMaxPCRelativeCodeRangeInMB = 4096;
++constexpr size_t kMaxPCRelativeCodeRangeInMB = 1024;
+ 
+ // -----------------------------------------------------------------------------
+ // Registers and FPURegisters.
diff --git a/recipes-devtools/nodejs/nodejs/run-ptest b/recipes-devtools/nodejs/nodejs/run-ptest
new file mode 100755
index 0000000..07a8f2a
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+./cctest
diff --git a/recipes-devtools/nodejs/nodejs/system-c-ares.patch b/recipes-devtools/nodejs/nodejs/system-c-ares.patch
new file mode 100644
index 0000000..141889a
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs/system-c-ares.patch
@@ -0,0 +1,24 @@
+keep nodejs compatible with c-ares 1.17.1
+
+Upstream-Status: Inappropriate [c-ares specific]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+--- a/src/cares_wrap.h
++++ b/src/cares_wrap.h
+@@ -22,7 +22,15 @@
+ # include <netdb.h>
+ #endif  // __POSIX__
+ 
+-# include <ares_nameser.h>
++#if defined(__ANDROID__) || \
++    defined(__MINGW32__) || \
++    defined(__OpenBSD__) || \
++    defined(_MSC_VER)
++
++# include <nameser.h>
++#else
++# include <arpa/nameser.h>
++#endif
+ 
+ namespace node {
+ namespace cares_wrap {
diff --git a/recipes-devtools/nodejs/nodejs_18.18.2.bb b/recipes-devtools/nodejs/nodejs_18.18.2.bb
new file mode 100644
index 0000000..512e66a
--- /dev/null
+++ b/recipes-devtools/nodejs/nodejs_18.18.2.bb
@@ -0,0 +1,185 @@
+DESCRIPTION = "nodeJS Evented I/O for V8 JavaScript"
+HOMEPAGE = "http://nodejs.org"
+LICENSE = "MIT & ISC & BSD-2-Clause & BSD-3-Clause & Artistic-2.0 & Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=059ecf3a6f87111685e51b611b9563e5"
+
+CVE_PRODUCT = "nodejs node.js"
+
+DEPENDS = "openssl file-replacement-native"
+DEPENDS:append:class-target = " qemu-native"
+DEPENDS:append:class-native = " c-ares-native"
+
+inherit pkgconfig python3native qemu ptest
+
+COMPATIBLE_MACHINE:armv4 = "(!.*armv4).*"
+COMPATIBLE_MACHINE:armv5 = "(!.*armv5).*"
+COMPATIBLE_MACHINE:mips64 = "(!.*mips64).*"
+
+COMPATIBLE_HOST:riscv64 = "null"
+COMPATIBLE_HOST:riscv32 = "null"
+COMPATIBLE_HOST:powerpc = "null"
+
+SRC_URI = "http://nodejs.org/dist/v${PV}/node-v${PV}.tar.xz \
+           file://0001-Disable-running-gyp-files-for-bundled-deps.patch \
+           file://0004-v8-don-t-override-ARM-CFLAGS.patch \
+           file://big-endian.patch \
+           file://mips-less-memory.patch \
+           file://system-c-ares.patch \
+           file://0001-liftoff-Correct-function-signatures.patch \
+           file://0001-mips-Use-32bit-cast-for-operand-on-mips32.patch \
+           file://run-ptest \
+           "
+
+SRC_URI:append:class-target = " \
+           file://0001-Using-native-binaries.patch \
+           "
+SRC_URI:append:toolchain-clang:x86 = " \
+           file://libatomic.patch \
+           "
+SRC_URI:append:toolchain-clang:powerpc64le = " \
+           file://0001-ppc64-Do-not-use-mminimal-toc-with-clang.patch \
+           "
+SRC_URI[sha256sum] = "7249e2f0af943ec38599504f4b2a2bd31fb938787291b6ccca6c8badf01e3b56"
+
+S = "${WORKDIR}/node-v${PV}"
+
+# v8 errors out if you have set CCACHE
+CCACHE = ""
+
+def map_nodejs_arch(a, d):
+    import re
+
+    if   re.match('i.86$', a): return 'ia32'
+    elif re.match('x86_64$', a): return 'x64'
+    elif re.match('aarch64$', a): return 'arm64'
+    elif re.match('(powerpc64|powerpc64le|ppc64le)$', a): return 'ppc64'
+    elif re.match('powerpc$', a): return 'ppc'
+    return a
+
+ARCHFLAGS:arm = "${@bb.utils.contains('TUNE_FEATURES', 'callconvention-hard', '--with-arm-float-abi=hard', '--with-arm-float-abi=softfp', d)} \
+                 ${@bb.utils.contains('TUNE_FEATURES', 'neon', '--with-arm-fpu=neon', \
+                    bb.utils.contains('TUNE_FEATURES', 'vfpv3d16', '--with-arm-fpu=vfpv3-d16', \
+                    bb.utils.contains('TUNE_FEATURES', 'vfpv3', '--with-arm-fpu=vfpv3', \
+                    '--with-arm-fpu=vfp', d), d), d)}"
+ARCHFLAGS:append:mips = " --v8-lite-mode"
+ARCHFLAGS:append:mipsel = " --v8-lite-mode"
+ARCHFLAGS ?= ""
+
+PACKAGECONFIG ??= "ares brotli icu zlib"
+
+PACKAGECONFIG[ares] = "--shared-cares,,c-ares"
+PACKAGECONFIG[brotli] = "--shared-brotli,,brotli"
+PACKAGECONFIG[icu] = "--with-intl=system-icu,--without-intl,icu"
+PACKAGECONFIG[libuv] = "--shared-libuv,,libuv"
+PACKAGECONFIG[nghttp2] = "--shared-nghttp2,,nghttp2"
+PACKAGECONFIG[shared] = "--shared"
+PACKAGECONFIG[zlib] = "--shared-zlib,,zlib"
+
+# We don't want to cross-compile during target compile,
+# and we need to use the right flags during host compile,
+# too.
+EXTRA_OEMAKE = "\
+    CC.host='${CC}' \
+    CFLAGS.host='${CPPFLAGS} ${CFLAGS}' \
+    CXX.host='${CXX}' \
+    CXXFLAGS.host='${CPPFLAGS} ${CXXFLAGS}' \
+    LDFLAGS.host='${LDFLAGS}' \
+    AR.host='${AR}' \
+    \
+    builddir_name=./ \
+"
+
+EXTRANATIVEPATH += "file-native"
+
+python prune_sources() {
+    import shutil
+
+    shutil.rmtree(d.getVar('S') + '/deps/openssl')
+    if 'ares' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/cares')
+    if 'brotli' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/brotli')
+    if 'libuv' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/uv')
+    if 'nghttp2' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/nghttp2')
+    if 'zlib' in d.getVar('PACKAGECONFIG'):
+        shutil.rmtree(d.getVar('S') + '/deps/zlib')
+}
+do_unpack[postfuncs] += "prune_sources"
+
+# V8's JIT infrastructure requires binaries such as mksnapshot and
+# mkpeephole to be run in the host during the build. However, these
+# binaries must have the same bit-width as the target (e.g. a x86_64
+# host targeting ARMv6 needs to produce a 32-bit binary). Instead of
+# depending on a third Yocto toolchain, we just build those binaries
+# for the target and run them on the host with QEMU.
+python do_create_v8_qemu_wrapper () {
+    """Creates a small wrapper that invokes QEMU to run some target V8 binaries
+    on the host."""
+    qemu_libdirs = [d.expand('${STAGING_DIR_HOST}${libdir}'),
+                    d.expand('${STAGING_DIR_HOST}${base_libdir}')]
+    qemu_cmd = qemu_wrapper_cmdline(d, d.getVar('STAGING_DIR_HOST'),
+                                    qemu_libdirs)
+    wrapper_path = d.expand('${B}/v8-qemu-wrapper.sh')
+    with open(wrapper_path, 'w') as wrapper_file:
+        wrapper_file.write("""#!/bin/sh
+
+# This file has been generated automatically.
+# It invokes QEMU to run binaries built for the target in the host during the
+# build process.
+
+%s "$@"
+""" % qemu_cmd)
+    os.chmod(wrapper_path, 0o755)
+}
+
+do_create_v8_qemu_wrapper[dirs] = "${B}"
+addtask create_v8_qemu_wrapper after do_configure before do_compile
+
+LDFLAGS:append:x86 = " -latomic"
+
+CROSS_FLAGS = "--cross-compiling"
+CROSS_FLAGS:class-native = "--no-cross-compiling"
+
+# Node is way too cool to use proper autotools, so we install two wrappers to forcefully inject proper arch cflags to workaround gypi
+do_configure () {
+    GYP_DEFINES="${GYP_DEFINES}" export GYP_DEFINES
+    # $TARGET_ARCH settings don't match --dest-cpu settings
+    python3 configure.py --verbose --prefix=${prefix} \
+               --shared-openssl \
+               --without-dtrace \
+               --without-etw \
+               --dest-cpu="${@map_nodejs_arch(d.getVar('TARGET_ARCH'), d)}" \
+               --dest-os=linux \
+               --libdir=${baselib} \
+               ${CROSS_FLAGS} \
+               ${ARCHFLAGS} \
+               ${PACKAGECONFIG_CONFARGS}
+}
+
+do_compile () {
+    install -D ${RECIPE_SYSROOT_NATIVE}/etc/ssl/openssl.cnf ${B}/deps/openssl/nodejs-openssl.cnf
+    install -D ${B}/v8-qemu-wrapper.sh ${B}/out/Release/v8-qemu-wrapper.sh
+    oe_runmake BUILDTYPE=Release
+}
+
+do_install () {
+    oe_runmake install DESTDIR=${D}
+}
+
+do_install_ptest () {
+    cp -r  ${B}/out/Release/cctest ${D}${PTEST_PATH}/
+    cp -r ${B}/test ${D}${PTEST_PATH}
+    chown -R root:root ${D}${PTEST_PATH}
+}
+
+PACKAGES =+ "${PN}-npm"
+FILES:${PN}-npm = "${nonarch_libdir}/node_modules ${bindir}/npm ${bindir}/npx ${bindir}/corepack"
+RDEPENDS:${PN}-npm = "bash python3-core python3-shell python3-datetime \
+    python3-misc python3-multiprocessing"
+
+PACKAGES =+ "${PN}-systemtap"
+FILES:${PN}-systemtap = "${datadir}/systemtap"
+
+BBCLASSEXTEND = "native"
-- 
2.34.1


