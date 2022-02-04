Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D3C6C433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 10:39:39 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.7531.1643971178046165764
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 02:39:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b93pTiKL;
 spf=pass (domain: gmail.com, ip: 209.85.221.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id f17so10503447wrx.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 02:39:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I7i65iJxzENmhRDjOa8q+HMODxsIN7sAEYbWoqFQB8o=;
        b=b93pTiKLqIWIvmEy9YjZxqJBVwxVuH4BmLD6mk3rv+Nl+S6LxPX6ZBrgu8huYrze/a
         zwUTWgN1wRlVu8HzD4eZqKPR4PLHMITcxOYflPT+GEQHtmEN3R++fLxIdmeiT+knTPSb
         ZGQKu0wFHkgRHe2KbabHhLAc7tEycDIggJMEAvuVj74ah8K0ntFQj7vGetTuPVCOpZAJ
         TxoLaCMEefcyonPgXaNfl6dRtr3l6tD8Hv7traGOkK652Aw1EuwMV9LmNYW3bA5beHgT
         FuGWsx+RZGlf7rb+W8545ot8JVqy8N0NZWbkaCJbt2SGwBsXvo7T1PIBa4vizvL01148
         NVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I7i65iJxzENmhRDjOa8q+HMODxsIN7sAEYbWoqFQB8o=;
        b=Gf/WIdu04lZZw1WkQd340MYqvQa2JQrkjNFkeHaw+q14rWop6G4C93TnzY6sfy/XBu
         r4xzt4N92LKspoa9Vz5MNt0mgC8ysnW6En/+e/SW8jUqTa+KV2MMQ+kLDJyO9tY3roMp
         ibcjiLut0dle9q5RFD0p42UhCYFJzuYp/Zshddnm1M9OyObxFQsBl88Bc3QL5xl6f6eM
         a1z6OEqAdCGMGEDkjn2MQK63PF5UZNg5q18/8bow3KOX0se/Z35uy3JNJUX3E0YuVDPv
         lT7+bWPb8OPg/02vtdbhtPGhhYQR8Z0Vn7EfF7DWObbuZfjidKfymhcNWsHjUTj49ysd
         MlcA==
X-Gm-Message-State: AOAM533KJzcTdOt30Cwhqe9W9CfADWKcRbLrAqDsfrvS+/h8fQM3LgmF
	uTYICCE6NkNEWxIuYJl8di3DbvDD1Vc=
X-Google-Smtp-Source: 
 ABdhPJxoWyaBn7vXzc/WUJoVyTBjC8niZOxXTEMvyu26ETbTapbNU/yLUtp86T2aWhxsp56NsHJQUg==
X-Received: by 2002:adf:ee86:: with SMTP id b6mr1977406wro.373.1643971176299;
        Fri, 04 Feb 2022 02:39:36 -0800 (PST)
Received: from nereus.lab.linutronix.de.
 (ip-109-090-143-203.um36.pools.vodafone-ip.de. [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 o10sm1765863wri.19.2022.02.04.02.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 02:39:35 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	adrian.freihofer@gmail.com
Subject: [meta-lts-mixins][dunfell/go PATCH 1/2] go: update 1.17.4 -> 1.17.6
Date: Fri,  4 Feb 2022 11:39:33 +0100
Message-Id: <20220204103934.25380-1-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 10:39:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56066

    (copy from external source:
     git: https://git.yoctoproject.org/poky/
     archive: 472a99447fe0f89bbdb959c1d9b7f67f8a122935
     copy: meta/recipes-devtools/go --> recipes-devtools/go-1.17)

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .../go-1.17/{go-1.17.4.inc => go-1.17.6.inc}  |  4 +-
 ...not-write-linker-flags-into-buildids.patch | 41 +++++++++++++++++++
 ...ldgo.go-do-not-hardcode-host-compile.patch | 41 +++++++++++++++++++
 ...e_1.17.4.bb => go-binary-native_1.17.6.bb} |  4 +-
 recipes-devtools/go-1.17/go-common.inc        |  4 +-
 ..._1.17.4.bb => go-cross-canadian_1.17.6.bb} |  0
 ...{go-cross_1.17.4.bb => go-cross_1.17.6.bb} |  0
 ...osssdk_1.17.4.bb => go-crosssdk_1.17.6.bb} |  0
 ...o-native_1.17.4.bb => go-native_1.17.6.bb} |  0
 recipes-devtools/go-1.17/go-runtime.inc       |  8 +++-
 ...runtime_1.17.4.bb => go-runtime_1.17.6.bb} |  0
 recipes-devtools/go-1.17/go-target.inc        | 11 +++++
 .../go-1.17/{go_1.17.4.bb => go_1.17.6.bb}    |  0
 13 files changed, 108 insertions(+), 5 deletions(-)
 rename recipes-devtools/go-1.17/{go-1.17.4.inc => go-1.17.6.inc} (80%)
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0001-exec.go-do-not-write-linker-flags-into-buildids.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
 rename recipes-devtools/go-1.17/{go-binary-native_1.17.4.bb => go-binary-native_1.17.6.bb} (83%)
 rename recipes-devtools/go-1.17/{go-cross-canadian_1.17.4.bb => go-cross-canadian_1.17.6.bb} (100%)
 rename recipes-devtools/go-1.17/{go-cross_1.17.4.bb => go-cross_1.17.6.bb} (100%)
 rename recipes-devtools/go-1.17/{go-crosssdk_1.17.4.bb => go-crosssdk_1.17.6.bb} (100%)
 rename recipes-devtools/go-1.17/{go-native_1.17.4.bb => go-native_1.17.6.bb} (100%)
 rename recipes-devtools/go-1.17/{go-runtime_1.17.4.bb => go-runtime_1.17.6.bb} (100%)
 rename recipes-devtools/go-1.17/{go_1.17.4.bb => go_1.17.6.bb} (100%)

diff --git a/recipes-devtools/go-1.17/go-1.17.4.inc b/recipes-devtools/go-1.17/go-1.17.6.inc
similarity index 80%
rename from recipes-devtools/go-1.17/go-1.17.4.inc
rename to recipes-devtools/go-1.17/go-1.17.6.inc
index 5c4423a..3ea23e0 100644
--- a/recipes-devtools/go-1.17/go-1.17.4.inc
+++ b/recipes-devtools/go-1.17/go-1.17.6.inc
@@ -14,8 +14,10 @@ SRC_URI += "\
     file://0007-cmd-go-make-GOROOT-precious-by-default.patch \
     file://0008-use-GOBUILDMODE-to-set-buildmode.patch \
     file://0009-Revert-cmd-go-make-sure-CC-and-CXX-are-absolute.patch \
+    file://0001-exec.go-do-not-write-linker-flags-into-buildids.patch \
+    file://0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch \
 "
-SRC_URI[main.sha256sum] = "4bef3699381ef09e075628504187416565d710660fec65b057edf1ceb187fc4b"
+SRC_URI[main.sha256sum] = "4dc1bbf3ff61f0c1ff2b19355e6d88151a70126268a47c761477686ef94748c8"
 
 # Upstream don't believe it is a signifiant real world issue and will only
 # fix in 1.17 onwards where we can drop this.
diff --git a/recipes-devtools/go-1.17/go-1.17/0001-exec.go-do-not-write-linker-flags-into-buildids.patch b/recipes-devtools/go-1.17/go-1.17/0001-exec.go-do-not-write-linker-flags-into-buildids.patch
new file mode 100644
index 0000000..20b6636
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0001-exec.go-do-not-write-linker-flags-into-buildids.patch
@@ -0,0 +1,41 @@
+From bdd69b55387f80c8df18d0af5008bf5e1a66be6a Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Mon, 23 Nov 2020 19:22:04 +0000
+Subject: [PATCH] exec.go: do not write linker flags into buildids
+
+The flags can contain build-specific paths, breaking reproducibility.
+
+To make this acceptable to upstream, we probably need to trim the flags,
+removing those known to be buildhost-specific.
+
+Upstream-Status: Inappropriate [needs upstream discussion]
+Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
+---
+ src/cmd/go/internal/work/exec.go | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/src/cmd/go/internal/work/exec.go b/src/cmd/go/internal/work/exec.go
+index 696db23..727d40b 100644
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -1136,7 +1136,7 @@ func (b *Builder) linkActionID(a *Action) cache.ActionID {
+ 	}
+ 
+ 	// Toolchain-dependent configuration, shared with b.linkSharedActionID.
+-	b.printLinkerConfig(h, p)
++	//b.printLinkerConfig(h, p)
+ 
+ 	// Input files.
+ 	for _, a1 := range a.Deps {
+@@ -1418,7 +1418,7 @@ func (b *Builder) linkSharedActionID(a *Action) cache.ActionID {
+ 	fmt.Fprintf(h, "goos %s goarch %s\n", cfg.Goos, cfg.Goarch)
+ 
+ 	// Toolchain-dependent configuration, shared with b.linkActionID.
+-	b.printLinkerConfig(h, nil)
++	//b.printLinkerConfig(h, nil)
+ 
+ 	// Input files.
+ 	for _, a1 := range a.Deps {
+-- 
+2.17.1
+
diff --git a/recipes-devtools/go-1.17/go-1.17/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch b/recipes-devtools/go-1.17/go-1.17/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
new file mode 100644
index 0000000..257454a
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
@@ -0,0 +1,41 @@
+From 2055a46b396e272616c0b2273903e02c3b49a2ff Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Tue, 10 Nov 2020 16:33:27 +0000
+Subject: [PATCH] src/cmd/dist/buildgo.go: do not hardcode host compilers into
+ target binaries
+
+These come from $CC/$CXX on the build host and are not useful on targets;
+additionally as they contain host specific paths, this helps reproducibility.
+
+Upstream-Status: Inappropriate [needs upstream discussion]
+Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
+---
+ src/cmd/dist/buildgo.go | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/src/cmd/dist/buildgo.go b/src/cmd/dist/buildgo.go
+index caafc13..4eb1c96 100644
+--- a/src/cmd/dist/buildgo.go
++++ b/src/cmd/dist/buildgo.go
+@@ -34,8 +34,8 @@ func mkzdefaultcc(dir, file string) {
+ 		fmt.Fprintf(&buf, "package cfg\n")
+ 		fmt.Fprintln(&buf)
+ 		fmt.Fprintf(&buf, "const DefaultPkgConfig = `%s`\n", defaultpkgconfig)
+-		buf.WriteString(defaultCCFunc("DefaultCC", defaultcc))
+-		buf.WriteString(defaultCCFunc("DefaultCXX", defaultcxx))
++		buf.WriteString(defaultCCFunc("DefaultCC", map[string]string{"":"gcc"}))
++		buf.WriteString(defaultCCFunc("DefaultCXX", map[string]string{"":"g++"}))
+ 		writefile(buf.String(), file, writeSkipSame)
+ 		return
+ 	}
+@@ -46,8 +46,8 @@ func mkzdefaultcc(dir, file string) {
+ 	fmt.Fprintf(&buf, "package main\n")
+ 	fmt.Fprintln(&buf)
+ 	fmt.Fprintf(&buf, "const defaultPkgConfig = `%s`\n", defaultpkgconfig)
+-	buf.WriteString(defaultCCFunc("defaultCC", defaultcc))
+-	buf.WriteString(defaultCCFunc("defaultCXX", defaultcxx))
++	buf.WriteString(defaultCCFunc("defaultCC", map[string]string{"":"gcc"}))
++	buf.WriteString(defaultCCFunc("defaultCXX", map[string]string{"":"g++"}))
+ 	writefile(buf.String(), file, writeSkipSame)
+ }
+ 
diff --git a/recipes-devtools/go-1.17/go-binary-native_1.17.4.bb b/recipes-devtools/go-1.17/go-binary-native_1.17.6.bb
similarity index 83%
rename from recipes-devtools/go-1.17/go-binary-native_1.17.4.bb
rename to recipes-devtools/go-1.17/go-binary-native_1.17.6.bb
index 8d8142c..674f917 100644
--- a/recipes-devtools/go-1.17/go-binary-native_1.17.4.bb
+++ b/recipes-devtools/go-1.17/go-binary-native_1.17.6.bb
@@ -8,8 +8,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
 PROVIDES = "go-native"
 
 SRC_URI = "https://dl.google.com/go/go${PV}.${BUILD_GOOS}-${BUILD_GOARCH}.tar.gz;name=go_${BUILD_GOTUPLE}"
-SRC_URI[go_linux_amd64.sha256sum] = "adab2483f644e2f8a10ae93122f0018cef525ca48d0b8764dae87cb5f4fd4206"
-SRC_URI[go_linux_arm64.sha256sum] = "617a46bd083e59877bb5680998571b3ddd4f6dcdaf9f8bf65ad4edc8f3eafb13"
+SRC_URI[go_linux_amd64.sha256sum] = "231654bbf2dab3d86c1619ce799e77b03d96f9b50770297c8f4dff8836fc8ca2"
+SRC_URI[go_linux_arm64.sha256sum] = "82c1a033cce9bc1b47073fd6285233133040f0378439f3c4659fe77cc534622a"
 
 UPSTREAM_CHECK_URI = "https://golang.org/dl/"
 UPSTREAM_CHECK_REGEX = "go(?P<pver>\d+(\.\d+)+)\.linux"
diff --git a/recipes-devtools/go-1.17/go-common.inc b/recipes-devtools/go-1.17/go-common.inc
index dfccebd..83f8db7 100644
--- a/recipes-devtools/go-1.17/go-common.inc
+++ b/recipes-devtools/go-1.17/go-common.inc
@@ -23,7 +23,7 @@ INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 SSTATE_SCAN_CMD = "true"
 
 export GOROOT_OVERRIDE = "1"
-export GOTMPDIR ?= "${WORKDIR}/go-tmp"
+export GOTMPDIR ?= "${WORKDIR}/build-tmp"
 GOTMPDIR[vardepvalue] = ""
 export CGO_ENABLED = "1"
 
@@ -37,6 +37,8 @@ export GO386 ?= "${TARGET_GO386}"
 export GOMIPS ?= "${TARGET_GOMIPS}"
 export GOROOT_FINAL ?= "${libdir}/go"
 
+export GODEBUG = "gocachehash=1"
+
 do_compile:prepend() {
 	BUILD_CC=${BUILD_CC}
 }
diff --git a/recipes-devtools/go-1.17/go-cross-canadian_1.17.4.bb b/recipes-devtools/go-1.17/go-cross-canadian_1.17.6.bb
similarity index 100%
rename from recipes-devtools/go-1.17/go-cross-canadian_1.17.4.bb
rename to recipes-devtools/go-1.17/go-cross-canadian_1.17.6.bb
diff --git a/recipes-devtools/go-1.17/go-cross_1.17.4.bb b/recipes-devtools/go-1.17/go-cross_1.17.6.bb
similarity index 100%
rename from recipes-devtools/go-1.17/go-cross_1.17.4.bb
rename to recipes-devtools/go-1.17/go-cross_1.17.6.bb
diff --git a/recipes-devtools/go-1.17/go-crosssdk_1.17.4.bb b/recipes-devtools/go-1.17/go-crosssdk_1.17.6.bb
similarity index 100%
rename from recipes-devtools/go-1.17/go-crosssdk_1.17.4.bb
rename to recipes-devtools/go-1.17/go-crosssdk_1.17.6.bb
diff --git a/recipes-devtools/go-1.17/go-native_1.17.4.bb b/recipes-devtools/go-1.17/go-native_1.17.6.bb
similarity index 100%
rename from recipes-devtools/go-1.17/go-native_1.17.4.bb
rename to recipes-devtools/go-1.17/go-native_1.17.6.bb
diff --git a/recipes-devtools/go-1.17/go-runtime.inc b/recipes-devtools/go-1.17/go-runtime.inc
index 617e6b5..ccb86d4 100644
--- a/recipes-devtools/go-1.17/go-runtime.inc
+++ b/recipes-devtools/go-1.17/go-runtime.inc
@@ -2,10 +2,16 @@ DEPENDS = "virtual/${TUNE_PKGARCH}-go go-native"
 DEPENDS:class-nativesdk = "virtual/${TARGET_PREFIX}go-crosssdk"
 PROVIDES = "virtual/${TARGET_PREFIX}go-runtime"
 
+DEBUG_PREFIX_MAP = "\
+                     -fdebug-prefix-map=${STAGING_DIR_HOST}= \
+                     -fdebug-prefix-map=${STAGING_DIR_NATIVE}= \
+"
+
 export CGO_CFLAGS = "${CFLAGS}"
 export CGO_CPPFLAGS = "${CPPFLAGS}"
 export CGO_CXXFLAGS = "${CXXFLAGS}"
-export CGO_LDFLAGS = "${LDFLAGS}"
+# Filter out -fdebug-prefix-map options as they clash with the GO's build system
+export CGO_LDFLAGS = "${@ ' '.join(filter(lambda f: not f.startswith('-fdebug-prefix-map'), d.getVar('LDFLAGS').split())) }"
 export GOCACHE = "${B}/.cache"
 
 GO_EXTLDFLAGS ?= "${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS} ${LDFLAGS}"
diff --git a/recipes-devtools/go-1.17/go-runtime_1.17.4.bb b/recipes-devtools/go-1.17/go-runtime_1.17.6.bb
similarity index 100%
rename from recipes-devtools/go-1.17/go-runtime_1.17.4.bb
rename to recipes-devtools/go-1.17/go-runtime_1.17.6.bb
diff --git a/recipes-devtools/go-1.17/go-target.inc b/recipes-devtools/go-1.17/go-target.inc
index 47b4411..b0d487a 100644
--- a/recipes-devtools/go-1.17/go-target.inc
+++ b/recipes-devtools/go-1.17/go-target.inc
@@ -1,6 +1,17 @@
 DEPENDS = "virtual/${TUNE_PKGARCH}-go go-native"
 DEPENDS:class-nativesdk = "virtual/${TARGET_PREFIX}go-crosssdk go-native"
 
+DEBUG_PREFIX_MAP = "\
+                     -fdebug-prefix-map=${STAGING_DIR_HOST}= \
+                     -fdebug-prefix-map=${STAGING_DIR_NATIVE}= \
+"
+
+export CGO_CFLAGS = "${CFLAGS}"
+export CGO_CPPFLAGS = "${CPPFLAGS}"
+export CGO_CXXFLAGS = "${CXXFLAGS}"
+# Filter out -fdebug-prefix-map options as they clash with the GO's build system
+export CGO_LDFLAGS = "${@ ' '.join(filter(lambda f: not f.startswith('-fdebug-prefix-map'), d.getVar('LDFLAGS').split())) }"
+
 export GOCACHE = "${B}/.cache"
 GO_LDFLAGS = ""
 GO_LDFLAGS:class-nativesdk = "-linkmode external"
diff --git a/recipes-devtools/go-1.17/go_1.17.4.bb b/recipes-devtools/go-1.17/go_1.17.6.bb
similarity index 100%
rename from recipes-devtools/go-1.17/go_1.17.4.bb
rename to recipes-devtools/go-1.17/go_1.17.6.bb
-- 
2.20.1


