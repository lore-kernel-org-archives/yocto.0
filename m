Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92D9C77B6C
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.59677.1680279687864334415
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=Hm2kyxux;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id o24-20020a05600c511800b003ef59905f26so14224437wms.2
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279686; x=1682871686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mfGbb9Vp8mYdeloDOxOMbGcE3iRV9V3q4q95/Juxo4=;
        b=Hm2kyxuxjuqiZvETxXeQV4y5jXPjIE4e+GQA1CWfpd910lYTpmGf2aqi9O2Koaml2g
         o66yYnXiqUJsBbiEqkVGYCCyumzYDusCX9y/OqjbbSlzDuYpzAHnfKHyDcJjRHvM1ke6
         TjScWoTkPGdjUNNpUQtTJ+PYqGmXGaFHRJBN5p1EPPs1WGF93MyrVBXxUp1a59MajFFf
         grzFFrydpR3I8MNa4twJc6qBdzcHwGXuD6RKTg7cOCO0UIoJy6h8Es+kBRa+5Ez83h7b
         a3rlBMRuk362yXfJmnB//7Lld1I0rU6Fe/xk4a/uF7lgPMPYpgr5iS8Q74xHhFyDKCai
         6hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279686; x=1682871686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6mfGbb9Vp8mYdeloDOxOMbGcE3iRV9V3q4q95/Juxo4=;
        b=I7oibDeQwkbOU1b3GjrYIQwOUlJeW0hLAB6HE3IjW9Oxkllu9hDEbUH/zbbMPEhitW
         U8PbGHFKFHRv0yxd7Ka15AWq/0lIjnVtXKdiAqGCE2dislb1uLoNNydMJkhHkNyXpWMy
         xCOFNxEdxi84eW4/bwOimyuy0suWsDuQFt0KarL44ARdCp6VPw/qAiEBE6wd8oqvqqqQ
         HMtjmUxcy7cBwuFWtr5eAOw4h9rE6GhR2cKvMGDR7XbJOMOysOBjMxyZKLk1hsCG5In5
         Vj6GYR28SIFgvXmolgMd2r2fx8dXJjowSM5mAUTBUJzzIlNc14cLVcBsqWcKNZleMme8
         /N4Q==
X-Gm-Message-State: AO0yUKWQoiS/Kgz+qlKX1VYZrJ3I+krYNg/efbx9uOxg/tRAOoOgWv4O
	f7z15p1EZmP9G99cVMjvvE0VXtoDB9S7YQGj
X-Google-Smtp-Source: AK7set9JFMw1qKp+HpiHK9htyYrQDf+QgWmjSjTcJq87R0Ebhk/wRIWCJlxnJO2qrxGo0yIU5Wf5VQ==
X-Received: by 2002:a1c:4b06:0:b0:3ed:316d:668d with SMTP id y6-20020a1c4b06000000b003ed316d668dmr21474899wma.5.1680279685251;
        Fri, 31 Mar 2023 09:21:25 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:24 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 09/16] go-1.19: import recipes from openembedded-core
Date: Fri, 31 Mar 2023 16:20:35 +0000
Message-Id: <20230331162042.1801766-9-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59579

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/go-1.19/go-1.19.4.inc        |  18 ++
 .../go-1.19/go-binary-native_1.19.4.bb        |  48 +++
 recipes-devtools/go-1.19/go-common.inc        |  44 +++
 .../go-1.19/go-cross-canadian.inc             |  61 ++++
 .../go-1.19/go-cross-canadian_1.19.4.bb       |   2 +
 recipes-devtools/go-1.19/go-cross.inc         |  52 ++++
 recipes-devtools/go-1.19/go-cross_1.19.4.bb   |   2 +
 recipes-devtools/go-1.19/go-crosssdk.inc      |  44 +++
 .../go-1.19/go-crosssdk_1.19.4.bb             |   2 +
 recipes-devtools/go-1.19/go-native_1.19.4.bb  |  58 ++++
 recipes-devtools/go-1.19/go-runtime.inc       |  94 ++++++
 recipes-devtools/go-1.19/go-runtime_1.19.4.bb |   3 +
 recipes-devtools/go-1.19/go-target.inc        |  55 ++++
 ...ent-based-hash-generation-less-pedan.patch | 165 ++++++++++
 ...not-write-linker-flags-into-buildids.patch |  36 +++
 ...ldgo.go-do-not-hardcode-host-compile.patch |  39 +++
 ...-to-be-overridden-in-the-environment.patch |  52 ++++
 ...4-ld-add-soname-to-shareable-objects.patch |  48 +++
 ...de-CC-when-building-dist-and-go_boot.patch |  41 +++
 ...dist-separate-host-and-target-builds.patch | 282 ++++++++++++++++++
 ...d-go-make-GOROOT-precious-by-default.patch | 104 +++++++
 .../go-1.19/go/filter-build-paths.patch       |  58 ++++
 recipes-devtools/go-1.19/go_1.19.4.bb         |  18 ++
 23 files changed, 1326 insertions(+)
 create mode 100644 recipes-devtools/go-1.19/go-1.19.4.inc
 create mode 100644 recipes-devtools/go-1.19/go-binary-native_1.19.4.bb
 create mode 100644 recipes-devtools/go-1.19/go-common.inc
 create mode 100644 recipes-devtools/go-1.19/go-cross-canadian.inc
 create mode 100644 recipes-devtools/go-1.19/go-cross-canadian_1.19.4.bb
 create mode 100644 recipes-devtools/go-1.19/go-cross.inc
 create mode 100644 recipes-devtools/go-1.19/go-cross_1.19.4.bb
 create mode 100644 recipes-devtools/go-1.19/go-crosssdk.inc
 create mode 100644 recipes-devtools/go-1.19/go-crosssdk_1.19.4.bb
 create mode 100644 recipes-devtools/go-1.19/go-native_1.19.4.bb
 create mode 100644 recipes-devtools/go-1.19/go-runtime.inc
 create mode 100644 recipes-devtools/go-1.19/go-runtime_1.19.4.bb
 create mode 100644 recipes-devtools/go-1.19/go-target.inc
 create mode 100644 recipes-devtools/go-1.19/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch
 create mode 100644 recipes-devtools/go-1.19/go/0001-exec.go-do-not-write-linker-flags-into-buildids.patch
 create mode 100644 recipes-devtools/go-1.19/go/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
 create mode 100644 recipes-devtools/go-1.19/go/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch
 create mode 100644 recipes-devtools/go-1.19/go/0004-ld-add-soname-to-shareable-objects.patch
 create mode 100644 recipes-devtools/go-1.19/go/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch
 create mode 100644 recipes-devtools/go-1.19/go/0006-cmd-dist-separate-host-and-target-builds.patch
 create mode 100644 recipes-devtools/go-1.19/go/0007-cmd-go-make-GOROOT-precious-by-default.patch
 create mode 100644 recipes-devtools/go-1.19/go/filter-build-paths.patch
 create mode 100644 recipes-devtools/go-1.19/go_1.19.4.bb

diff --git a/recipes-devtools/go-1.19/go-1.19.4.inc b/recipes-devtools/go-1.19/go-1.19.4.inc
new file mode 100644
index 0000000..49349ba
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-1.19.4.inc
@@ -0,0 +1,18 @@
+require go-common.inc
+
+FILESEXTRAPATHS:prepend := "${FILE_DIRNAME}/go:"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
+
+SRC_URI += "\
+    file://0001-cmd-go-make-content-based-hash-generation-less-pedan.patch \
+    file://0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch \
+    file://0004-ld-add-soname-to-shareable-objects.patch \
+    file://0005-make.bash-override-CC-when-building-dist-and-go_boot.patch \
+    file://0006-cmd-dist-separate-host-and-target-builds.patch \
+    file://0007-cmd-go-make-GOROOT-precious-by-default.patch \
+    file://0001-exec.go-do-not-write-linker-flags-into-buildids.patch \
+    file://0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch \
+    file://filter-build-paths.patch \
+"
+SRC_URI[main.sha256sum] = "eda74db4ac494800a3e66ee784e495bfbb9b8e535df924a8b01b1a8028b7f368"
diff --git a/recipes-devtools/go-1.19/go-binary-native_1.19.4.bb b/recipes-devtools/go-1.19/go-binary-native_1.19.4.bb
new file mode 100644
index 0000000..8dc8bdf
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-binary-native_1.19.4.bb
@@ -0,0 +1,48 @@
+# This recipe is for bootstrapping our go-cross from a prebuilt binary of Go from golang.org.
+
+SUMMARY = "Go programming language compiler (upstream binary for bootstrap)"
+HOMEPAGE = " http://golang.org/"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
+
+PROVIDES = "go-native"
+
+# Checksums available at https://go.dev/dl/
+SRC_URI = "https://dl.google.com/go/go${PV}.${BUILD_GOOS}-${BUILD_GOARCH}.tar.gz;name=go_${BUILD_GOTUPLE}"
+SRC_URI[go_linux_amd64.sha256sum] = "c9c08f783325c4cf840a94333159cc937f05f75d36a8b307951d5bd959cf2ab8"
+SRC_URI[go_linux_arm64.sha256sum] = "9df122d6baf6f2275270306b92af3b09d7973fb1259257e284dba33c0db14f1b"
+SRC_URI[go_linux_ppc64le.sha256sum] = "fbc6c7d1d169bbdc82223d861d2fadc6add01c126533d3efbba3fdca9b362035"
+
+UPSTREAM_CHECK_URI = "https://golang.org/dl/"
+UPSTREAM_CHECK_REGEX = "go(?P<pver>\d+(\.\d+)+)\.linux"
+
+S = "${WORKDIR}/go"
+
+inherit goarch native
+
+do_compile() {
+    :
+}
+
+make_wrapper() {
+	rm -f ${D}${bindir}/$1
+	cat <<END >${D}${bindir}/$1
+#!/bin/bash
+here=\`dirname \$0\`
+export GOROOT="${GOROOT:-\`readlink -f \$here/../lib/go\`}"
+\$here/../lib/go/bin/$1 "\$@"
+END
+	chmod +x ${D}${bindir}/$1
+}
+
+do_install() {
+    find ${S} -depth -type d -name testdata -exec rm -rf {} +
+
+	install -d ${D}${bindir} ${D}${libdir}/go
+	cp --preserve=mode,timestamps -R ${S}/ ${D}${libdir}/
+
+	for f in ${S}/bin/*
+	do
+	  	make_wrapper `basename $f`
+	done
+}
diff --git a/recipes-devtools/go-1.19/go-common.inc b/recipes-devtools/go-1.19/go-common.inc
new file mode 100644
index 0000000..83f8db7
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-common.inc
@@ -0,0 +1,44 @@
+SUMMARY = "Go programming language compiler"
+DESCRIPTION = " The Go programming language is an open source project to make \
+ programmers more productive. Go is expressive, concise, clean, and\
+ efficient. Its concurrency mechanisms make it easy to write programs\
+ that get the most out of multicore and networked machines, while its\
+ novel type system enables flexible and modular program construction.\
+ Go compiles quickly to machine code yet has the convenience of\
+ garbage collection and the power of run-time reflection. It's a\
+ fast, statically typed, compiled language that feels like a\
+ dynamically typed, interpreted language."
+
+HOMEPAGE = " http://golang.org/"
+LICENSE = "BSD-3-Clause"
+
+inherit goarch
+
+SRC_URI = "https://golang.org/dl/go${PV}.src.tar.gz;name=main"
+S = "${WORKDIR}/go"
+B = "${S}"
+UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)\.src\.tar"
+
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
+SSTATE_SCAN_CMD = "true"
+
+export GOROOT_OVERRIDE = "1"
+export GOTMPDIR ?= "${WORKDIR}/build-tmp"
+GOTMPDIR[vardepvalue] = ""
+export CGO_ENABLED = "1"
+
+export GOHOSTOS ?= "${BUILD_GOOS}"
+export GOHOSTARCH ?= "${BUILD_GOARCH}"
+export GOROOT_BOOTSTRAP ?= "${STAGING_LIBDIR_NATIVE}/go"
+export GOOS ?= "${TARGET_GOOS}"
+export GOARCH ?= "${TARGET_GOARCH}"
+export GOARM ?= "${TARGET_GOARM}"
+export GO386 ?= "${TARGET_GO386}"
+export GOMIPS ?= "${TARGET_GOMIPS}"
+export GOROOT_FINAL ?= "${libdir}/go"
+
+export GODEBUG = "gocachehash=1"
+
+do_compile:prepend() {
+	BUILD_CC=${BUILD_CC}
+}
diff --git a/recipes-devtools/go-1.19/go-cross-canadian.inc b/recipes-devtools/go-1.19/go-cross-canadian.inc
new file mode 100644
index 0000000..c1aa987
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-cross-canadian.inc
@@ -0,0 +1,61 @@
+inherit cross-canadian
+
+DEPENDS = "go-native virtual/${HOST_PREFIX}go-crosssdk virtual/nativesdk-${HOST_PREFIX}go-runtime \
+           virtual/${HOST_PREFIX}gcc-crosssdk virtual/nativesdk-libc \
+           virtual/nativesdk-${HOST_PREFIX}compilerlibs"
+PN = "go-cross-canadian-${TRANSLATED_TARGET_ARCH}"
+
+# it uses gcc on build machine during go-cross-canadian bootstrap, but
+# the gcc version may be old and not support option '-fmacro-prefix-map'
+# which is one of default values of DEBUG_PREFIX_MAP
+DEBUG_PREFIX_MAP = "-fdebug-prefix-map=${WORKDIR}=/usr/src/debug/${PN}/${EXTENDPE}${PV}-${PR} \
+                    -fdebug-prefix-map=${STAGING_DIR_HOST}= \
+                    -fdebug-prefix-map=${STAGING_DIR_NATIVE}= \
+                    "
+
+export GOTOOLDIR_BOOTSTRAP = "${STAGING_LIBDIR_NATIVE}/${HOST_SYS}/go/pkg/tool/${BUILD_GOTUPLE}"
+export CGO_CFLAGS = "${CFLAGS}"
+export CGO_LDFLAGS = "${LDFLAGS}"
+export GO_LDFLAGS = '-linkmode external -extld ${HOST_PREFIX}gcc -extldflags "--sysroot=${STAGING_DIR_HOST} ${SECURITY_NOPIE_CFLAGS} ${HOST_CC_ARCH} ${LDFLAGS}"'
+
+do_configure[noexec] = "1"
+
+do_compile() {
+	export CC_FOR_${HOST_GOTUPLE}="${HOST_PREFIX}gcc --sysroot=${STAGING_DIR_HOST}${SDKPATHNATIVE} ${SECURITY_NOPIE_CFLAGS}"
+	export CXX_FOR_${HOST_GOTUPLE}="${HOST_PREFIX}gxx --sysroot=${STAGING_DIR_HOST}${SDKPATHNATIVE} ${SECURITY_NOPIE_CFLAGS}"
+	cd src
+	./make.bash --host-only --no-banner
+	cd ${B}
+}
+do_compile[cleandirs] += "${GOTMPDIR} ${B}/bin ${B}/pkg"
+
+
+make_wrapper() {
+	rm -f ${D}${bindir}/$2
+	cat <<END >${D}${bindir}/$2
+#!/bin/sh
+here=\`dirname \$0\`
+native_goroot=\`readlink -f \$here/../../lib/${TARGET_SYS}/go\`
+export GOARCH="${TARGET_GOARCH}"
+export GOOS="${TARGET_GOOS}"
+test -n "\$GOARM" || export GOARM="${TARGET_GOARM}"
+test -n "\$GO386" || export GO386="${TARGET_GO386}"
+test -n "\$GOMIPS" || export GOMIPS="${TARGET_GOMIPS}"
+export GOTOOLDIR="\$native_goroot/pkg/tool/${HOST_GOTUPLE}"
+test -n "\$GOROOT" || export GOROOT="\$OECORE_TARGET_SYSROOT/${target_libdir}/go"
+\$here/../../lib/${TARGET_SYS}/go/bin/$1 "\$@"
+END
+	chmod +x ${D}${bindir}/$2
+}
+
+do_install() {
+	install -d ${D}${libdir}/go/pkg/tool
+	cp --preserve=mode,timestamps -R ${B}/pkg/tool/${HOST_GOTUPLE} ${D}${libdir}/go/pkg/tool/
+	install -d ${D}${bindir} ${D}${libdir}/go/bin
+	for f in ${B}/${GO_BUILD_BINDIR}/*
+	do
+		base=`basename $f`
+		install -m755 $f ${D}${libdir}/go/bin
+		make_wrapper $base ${TARGET_PREFIX}$base
+	done
+}
diff --git a/recipes-devtools/go-1.19/go-cross-canadian_1.19.4.bb b/recipes-devtools/go-1.19/go-cross-canadian_1.19.4.bb
new file mode 100644
index 0000000..7ac9449
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-cross-canadian_1.19.4.bb
@@ -0,0 +1,2 @@
+require go-cross-canadian.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.19/go-cross.inc b/recipes-devtools/go-1.19/go-cross.inc
new file mode 100644
index 0000000..a0fbdbe
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-cross.inc
@@ -0,0 +1,52 @@
+inherit cross
+
+PROVIDES = "virtual/${TUNE_PKGARCH}-go"
+DEPENDS = "go-native"
+
+PN = "go-cross-${TUNE_PKGARCH}"
+
+export GOCACHE = "${B}/.cache"
+CC = "${@d.getVar('BUILD_CC').strip()}"
+
+do_configure[noexec] = "1"
+
+do_compile() {
+	export CC_FOR_${TARGET_GOTUPLE}="${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} --sysroot=${STAGING_DIR_TARGET}"
+	export CXX_FOR_${TARGET_GOTUPLE}="${TARGET_PREFIX}g++ ${TARGET_CC_ARCH} --sysroot=${STAGING_DIR_TARGET}"
+	cd src
+	./make.bash --host-only --no-banner
+	cd ${B}
+}
+do_compile[cleandirs] += "${GOTMPDIR} ${B}/bin ${B}/pkg"
+
+make_wrapper() {
+	rm -f ${D}${bindir}/$2
+	cat <<END >${D}${bindir}/$2
+#!/bin/bash
+here=\`dirname \$0\`
+export GOARCH="${TARGET_GOARCH}"
+export GOOS="${TARGET_GOOS}"
+export GOARM="\${GOARM:-${TARGET_GOARM}}"
+export GO386="\${GO386:-${TARGET_GO386}}"
+export GOMIPS="\${GOMIPS:-${TARGET_GOMIPS}}"
+\$here/../../lib/${CROSS_TARGET_SYS_DIR}/go/bin/$1 "\$@"
+END
+	chmod +x ${D}${bindir}/$2
+}
+
+do_install() {
+	install -d ${D}${libdir}/go
+	cp --preserve=mode,timestamps -R ${B}/pkg ${D}${libdir}/go/
+	install -d ${D}${libdir}/go/src
+	(cd ${S}/src; for d in *; do \
+		[ ! -d $d ] || cp --preserve=mode,timestamps -R ${S}/src/$d ${D}${libdir}/go/src/; \
+	done)
+	find ${D}${libdir}/go/src -depth -type d -name testdata -exec rm -rf {} \;
+	install -d ${D}${bindir} ${D}${libdir}/go/bin
+	for f in ${B}/bin/*
+	do
+		base=`basename $f`
+		install -m755 $f ${D}${libdir}/go/bin
+		make_wrapper $base ${TARGET_PREFIX}$base
+	done
+}
diff --git a/recipes-devtools/go-1.19/go-cross_1.19.4.bb b/recipes-devtools/go-1.19/go-cross_1.19.4.bb
new file mode 100644
index 0000000..80b5a03
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-cross_1.19.4.bb
@@ -0,0 +1,2 @@
+require go-cross.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.19/go-crosssdk.inc b/recipes-devtools/go-1.19/go-crosssdk.inc
new file mode 100644
index 0000000..7669386
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-crosssdk.inc
@@ -0,0 +1,44 @@
+inherit crosssdk
+
+DEPENDS = "go-native virtual/${TARGET_PREFIX}gcc-crosssdk virtual/nativesdk-${TARGET_PREFIX}compilerlibs virtual/${TARGET_PREFIX}binutils-crosssdk"
+PN = "go-crosssdk-${SDK_SYS}"
+PROVIDES = "virtual/${TARGET_PREFIX}go-crosssdk"
+
+export GOCACHE = "${B}/.cache"
+
+do_configure[noexec] = "1"
+
+do_compile() {
+	export CC_FOR_${TARGET_GOTUPLE}="${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} --sysroot=${STAGING_DIR_TARGET}${SDKPATHNATIVE}"
+	export CXX_FOR_${TARGET_GOTUPLE}="${TARGET_PREFIX}g++ ${TARGET_CC_ARCH} --sysroot=${STAGING_DIR_TARGET}${SDKPATHNATIVE}"
+	cd src
+	./make.bash --host-only --no-banner
+	cd ${B}
+}
+do_compile[cleandirs] += "${GOTMPDIR} ${B}/bin ${B}/pkg"
+
+make_wrapper() {
+    rm -f ${D}${bindir}/$2
+    cat <<END >${D}${bindir}/$2
+#!/bin/bash
+here=\`dirname \$0\`
+export GOARCH="${TARGET_GOARCH}"
+export GOOS="${TARGET_GOOS}"
+\$here/../../lib/${CROSS_TARGET_SYS_DIR}/go/bin/$1 "\$@"
+END
+    chmod +x ${D}${bindir}/$2
+}
+
+do_install() {
+	install -d ${D}${libdir}/go
+	install -d ${D}${libdir}/go/bin
+	install -d ${D}${libdir}/go/pkg/tool
+	install -d ${D}${bindir}
+	cp --preserve=mode,timestamps -R ${S}/pkg/tool/${BUILD_GOTUPLE} ${D}${libdir}/go/pkg/tool/
+	for f in ${B}/bin/*
+	do
+		base=`basename $f`
+		install -m755 $f ${D}${libdir}/go/bin
+		make_wrapper $base ${TARGET_PREFIX}$base
+	done
+}
diff --git a/recipes-devtools/go-1.19/go-crosssdk_1.19.4.bb b/recipes-devtools/go-1.19/go-crosssdk_1.19.4.bb
new file mode 100644
index 0000000..1857c8a
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-crosssdk_1.19.4.bb
@@ -0,0 +1,2 @@
+require go-crosssdk.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.19/go-native_1.19.4.bb b/recipes-devtools/go-1.19/go-native_1.19.4.bb
new file mode 100644
index 0000000..ddf25b2
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-native_1.19.4.bb
@@ -0,0 +1,58 @@
+# This recipe builds a native Go (written in Go) by first building an old Go 1.4
+# (written in C). However this old Go does not support all hosts platforms.
+
+require go-${PV}.inc
+
+inherit native
+
+SRC_URI += "https://dl.google.com/go/go1.4-bootstrap-20171003.tar.gz;name=bootstrap;subdir=go1.4"
+SRC_URI[bootstrap.sha256sum] = "f4ff5b5eb3a3cae1c993723f3eab519c5bae18866b5e5f96fe1102f0cb5c3e52"
+
+export GOOS = "${BUILD_GOOS}"
+export GOARCH = "${BUILD_GOARCH}"
+CC = "${@d.getVar('BUILD_CC').strip()}"
+
+GOMAKEARGS ?= "--no-banner"
+
+do_configure() {
+	cd ${WORKDIR}/go1.4/go/src
+	CGO_ENABLED=0 GOROOT=${WORKDIR}/go1.4/go ./make.bash
+}
+
+do_compile() {
+	export GOROOT_FINAL="${libdir_native}/go"
+	export GOROOT_BOOTSTRAP="${WORKDIR}/go1.4/go"
+
+	cd src
+	./make.bash ${GOMAKEARGS}
+	cd ${B}
+}
+do_compile[cleandirs] += "${GOTMPDIR} ${B}/bin"
+
+make_wrapper() {
+	rm -f ${D}${bindir}/$2$3
+	cat <<END >${D}${bindir}/$2$3
+#!/bin/bash
+here=\`dirname \$0\`
+export GOROOT="${GOROOT:-\`readlink -f \$here/../lib/go\`}"
+\$here/../lib/go/bin/$1 "\$@"
+END
+	chmod +x ${D}${bindir}/$2
+}
+
+do_install() {
+	install -d ${D}${libdir}/go
+	cp --preserve=mode,timestamps -R ${B}/pkg ${D}${libdir}/go/
+	install -d ${D}${libdir}/go/src
+	(cd ${S}/src; for d in *; do \
+		[ -d $d ] && cp -a ${S}/src/$d ${D}${libdir}/go/src/; \
+	done)
+	find ${D}${libdir}/go/src -depth -type d -name testdata -exec rm -rf {} \;
+	install -d ${D}${bindir} ${D}${libdir}/go/bin
+	for f in ${B}/bin/*
+	do
+		base=`basename $f`
+		install -m755 $f ${D}${libdir}/go/bin
+		make_wrapper $base $base
+	done
+}
diff --git a/recipes-devtools/go-1.19/go-runtime.inc b/recipes-devtools/go-1.19/go-runtime.inc
new file mode 100644
index 0000000..02601f7
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-runtime.inc
@@ -0,0 +1,94 @@
+DEPENDS = "virtual/${TUNE_PKGARCH}-go go-native"
+DEPENDS:class-nativesdk = "virtual/${TARGET_PREFIX}go-crosssdk"
+PROVIDES = "virtual/${TARGET_PREFIX}go-runtime"
+
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
+export GOCACHE = "${B}/.cache"
+
+GO_EXTLDFLAGS ?= "${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS} ${LDFLAGS}"
+GO_SHLIB_LDFLAGS ?= '-ldflags="--linkmode=external -extldflags '${GO_EXTLDFLAGS}'"'
+
+do_configure() {
+	:
+}
+
+do_configure:libc-musl() {
+	rm -f ${S}/src/runtime/race/*.syso
+}
+
+do_compile() {
+	export CC_FOR_${TARGET_GOTUPLE}="${CC}"
+	export CXX_FOR_${TARGET_GOTUPLE}="${CXX}"
+
+	cd src
+	./make.bash --target-only --no-banner std
+	if [ -n "${GO_DYNLINK}" ]; then
+		export GOTOOLDIR="${B}/pkg/tool/native_native"
+		CC="$CC_FOR_${TARGET_GOTUPLE}" GOARCH="${TARGET_GOARCH}" GOOS="${TARGET_GOOS}" GOROOT=${B} \
+			$GOTOOLDIR/go_bootstrap install -linkshared -buildmode=shared ${GO_SHLIB_LDFLAGS} std
+	fi
+	cd ${B}
+}
+do_compile[cleandirs] += "${GOTMPDIR} ${B}/bin ${B}/pkg"
+
+do_install() {
+	install -d ${D}${libdir}/go/src
+	cp --preserve=mode,timestamps -R ${B}/pkg ${D}${libdir}/go/
+	if [ "${BUILD_GOTUPLE}" != "${TARGET_GOTUPLE}" ]; then
+		rm -rf ${D}${libdir}/go/pkg/${BUILD_GOTUPLE}
+		rm -rf ${D}${libdir}/go/pkg/obj/${BUILD_GOTUPLE}
+	fi
+	rm -rf ${D}${libdir}/go/pkg/tool
+	rm -rf ${D}${libdir}/go/pkg/obj
+	rm -rf ${D}${libdir}/go/pkg/bootstrap
+	# the cmd directory is built for the native arch so if BUILD == TARGET
+	rm -rf ${D}${libdir}/go/pkg/${BUILD_GOTUPLE}/cmd
+	find src -mindepth 1 -maxdepth 1 -type d | while read srcdir; do
+		cp --preserve=mode,timestamps -R $srcdir ${D}${libdir}/go/src/
+	done
+	find ${D}${libdir}/go/src -depth -type d -name testdata -exec rm -rf {} \;
+	rm -f ${D}${libdir}/go/src/cmd/dist/dist
+        rm -f ${D}${libdir}/go/src/cmd/cgo/zdefaultcc.go
+        rm -f ${D}${libdir}/go/src/cmd/go/internal/cfg/zdefaultcc.go
+
+}
+
+ALLOW_EMPTY:${PN} = "1"
+FILES:${PN} = "${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*${SOLIBSDEV}"
+FILES:${PN}-dev = "${libdir}/go/src ${libdir}/go/pkg/include \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*.shlibname \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*.shlibname \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*.shlibname \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*.shlibname \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*/*.shlibname \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*/*/*.shlibname \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*/*/*/*.shlibname \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*.a \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*.a \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*.a \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*.a \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*/*.a \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*/*/*.a \
+                   ${libdir}/go/pkg/${TARGET_GOTUPLE}_dynlink/*/*/*/*/*/*/*.a \
+"
+FILES:${PN}-staticdev = "${libdir}/go/pkg/${TARGET_GOTUPLE}"
+
+# Go sources include some scripts and pre-built binaries for
+# multiple architectures.  The static .a files for dynamically-linked
+# runtime are also required in -dev.
+INSANE_SKIP:${PN}-dev = "staticdev file-rdeps arch"
+
+INHIBIT_PACKAGE_STRIP = "1"
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
+INHIBIT_SYSROOT_STRIP = "1"
+
+BBCLASSEXTEND = "nativesdk"
diff --git a/recipes-devtools/go-1.19/go-runtime_1.19.4.bb b/recipes-devtools/go-1.19/go-runtime_1.19.4.bb
new file mode 100644
index 0000000..63464a1
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-runtime_1.19.4.bb
@@ -0,0 +1,3 @@
+require go-${PV}.inc
+require go-runtime.inc
+
diff --git a/recipes-devtools/go-1.19/go-target.inc b/recipes-devtools/go-1.19/go-target.inc
new file mode 100644
index 0000000..ed09cfe
--- /dev/null
+++ b/recipes-devtools/go-1.19/go-target.inc
@@ -0,0 +1,55 @@
+DEPENDS = "virtual/${TUNE_PKGARCH}-go go-native"
+DEPENDS:class-nativesdk = "virtual/${TARGET_PREFIX}go-crosssdk go-native"
+
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
+export GOCACHE = "${B}/.cache"
+GO_LDFLAGS = ""
+GO_LDFLAGS:class-nativesdk = " -linkmode external"
+export GO_LDFLAGS
+export GOBUILDFLAGS = "-gcflags=-trimpath=$GOPATH -asmflags=-trimpath=$GOPATH -trimpath"
+CC:append:class-nativesdk = " ${SECURITY_NOPIE_CFLAGS}"
+
+do_configure[noexec] = "1"
+
+do_compile() {
+	export CC_FOR_${TARGET_GOOS}_${TARGET_GOARCH}="${CC}"
+	export CXX_FOR_${TARGET_GOOS}_${TARGET_GOARCH}="${CXX}"
+
+	cd src
+	./make.bash --target-only --no-banner
+	cd ${B}
+}
+do_compile[cleandirs] += "${GOTMPDIR} ${B}/bin ${B}/pkg"
+
+do_install() {
+	install -d ${D}${libdir}/go/pkg/tool
+	cp --preserve=mode,timestamps -R ${B}/pkg/tool/${TARGET_GOTUPLE} ${D}${libdir}/go/pkg/tool/
+	install -d ${D}${libdir}/go/src
+	cp --preserve=mode,timestamps -R ${S}/src/cmd ${D}${libdir}/go/src/
+	find ${D}${libdir}/go/src -depth -type d -name testdata -exec rm -rf {} \;
+	install -d ${D}${libdir}/go/bin
+	install -d ${D}${bindir}
+	for f in ${B}/${GO_BUILD_BINDIR}/*; do
+		name=`basename $f`
+		install -m 0755 $f ${D}${libdir}/go/bin/
+		ln -sf ../${baselib}/go/bin/$name ${D}${bindir}/
+	done
+	rm -rf ${D}${libdir}/go/src
+}
+
+PACKAGES = "${PN} ${PN}-dev"
+FILES:${PN} = "${libdir}/go/bin ${libdir}/go/pkg/tool/${TARGET_GOTUPLE} ${bindir}"
+RDEPENDS:${PN} = "go-runtime"
+INSANE_SKIP:${PN} = "ldflags"
+
+BBCLASSEXTEND = "nativesdk"
diff --git a/recipes-devtools/go-1.19/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch b/recipes-devtools/go-1.19/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch
new file mode 100644
index 0000000..43be5cd
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch
@@ -0,0 +1,165 @@
+From fb22e586871cc6be0b7041e86d2daceee06ea568 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Mon, 28 Mar 2022 10:59:03 -0700
+Subject: [PATCH] cmd/go: make content-based hash generation less pedantic
+
+Go 1.10's build tool now uses content-based hashes to
+determine when something should be built or re-built.
+This same mechanism is used to maintain a built-artifact
+cache for speeding up builds.
+
+However, the hashes it generates include information that
+doesn't work well with OE, nor with using a shared runtime
+library.
+
+First, it embeds path names to source files, unless
+building within GOROOT.  This prevents the building
+of a package in GOPATH for later staging into GOROOT.
+
+This patch adds support for the environment variable
+GOPATH_OMIT_IN_ACTIONID.  If present, path name
+embedding is disabled.
+
+Upstream-Status: Inappropriate [OE specific]
+
+Signed-off-by: Alex Kube <alexander.j.kube@gmail.com>
+Signed-off-by: Matt Madison <matt@madison.systems>
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+---
+ src/cmd/go/internal/envcmd/env.go |  2 +-
+ src/cmd/go/internal/work/exec.go  | 42 ++++++++++++++++++++++++-------
+ 2 files changed, 34 insertions(+), 10 deletions(-)
+
+diff --git a/src/cmd/go/internal/envcmd/env.go b/src/cmd/go/internal/envcmd/env.go
+index 81ee859..2db3898 100644
+--- a/src/cmd/go/internal/envcmd/env.go
++++ b/src/cmd/go/internal/envcmd/env.go
+@@ -176,7 +176,7 @@ func ExtraEnvVars() []cfg.EnvVar {
+ func ExtraEnvVarsCostly() []cfg.EnvVar {
+ 	b := work.NewBuilder("")
+ 
+-	cppflags, cflags, cxxflags, fflags, ldflags, err := b.CFlags(&load.Package{})
++	cppflags, cflags, cxxflags, fflags, ldflags, err := b.CFlags(&load.Package{}, false)
+ 	if err != nil {
+ 		// Should not happen - b.CFlags was given an empty package.
+ 		fmt.Fprintf(os.Stderr, "go: invalid cflags: %v\n", err)
+diff --git a/src/cmd/go/internal/work/exec.go b/src/cmd/go/internal/work/exec.go
+index c88b315..a06455c 100644
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -213,6 +213,8 @@ func (b *Builder) Do(ctx context.Context, root *Action) {
+ 	writeActionGraph()
+ }
+ 
++var omitGopath = os.Getenv("GOPATH_OMIT_IN_ACTIONID") != ""
++
+ // buildActionID computes the action ID for a build action.
+ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 	p := a.Package
+@@ -234,7 +236,7 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 		if p.Module != nil {
+ 			fmt.Fprintf(h, "module %s@%s\n", p.Module.Path, p.Module.Version)
+ 		}
+-	} else if p.Goroot {
++	} else if p.Goroot || omitGopath {
+ 		// The Go compiler always hides the exact value of $GOROOT
+ 		// when building things in GOROOT.
+ 		//
+@@ -266,9 +268,9 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 	}
+ 	if len(p.CgoFiles)+len(p.SwigFiles)+len(p.SwigCXXFiles) > 0 {
+ 		fmt.Fprintf(h, "cgo %q\n", b.toolID("cgo"))
+-		cppflags, cflags, cxxflags, fflags, ldflags, _ := b.CFlags(p)
++		cppflags, cflags, cxxflags, fflags, ldflags, _ := b.CFlags(p, true)
+ 
+-		ccExe := b.ccExe()
++		ccExe := filterCompilerFlags(b.ccExe(), true)
+ 		fmt.Fprintf(h, "CC=%q %q %q %q\n", ccExe, cppflags, cflags, ldflags)
+ 		// Include the C compiler tool ID so that if the C
+ 		// compiler changes we rebuild the package.
+@@ -281,14 +283,14 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 			}
+ 		}
+ 		if len(p.CXXFiles)+len(p.SwigCXXFiles) > 0 {
+-			cxxExe := b.cxxExe()
++			cxxExe := filterCompilerFlags(b.cxxExe(), true)
+ 			fmt.Fprintf(h, "CXX=%q %q\n", cxxExe, cxxflags)
+ 			if cxxID, err := b.gccToolID(cxxExe[0], "c++"); err == nil {
+ 				fmt.Fprintf(h, "CXX ID=%q\n", cxxID)
+ 			}
+ 		}
+ 		if len(p.FFiles) > 0 {
+-			fcExe := b.fcExe()
++			fcExe := filterCompilerFlags(b.fcExe(), true)
+ 			fmt.Fprintf(h, "FC=%q %q\n", fcExe, fflags)
+ 			if fcID, err := b.gccToolID(fcExe[0], "f95"); err == nil {
+ 				fmt.Fprintf(h, "FC ID=%q\n", fcID)
+@@ -305,7 +307,7 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 		}
+ 	}
+ 	if p.Internal.BuildInfo != "" {
+-		fmt.Fprintf(h, "modinfo %q\n", p.Internal.BuildInfo)
++		//fmt.Fprintf(h, "modinfo %q\n", p.Internal.BuildInfo)
+ 	}
+ 
+ 	// Configuration specific to compiler toolchain.
+@@ -2705,8 +2707,25 @@ func envList(key, def string) []string {
+ 	return args
+ }
+ 
++var filterFlags = os.Getenv("CGO_PEDANTIC") == ""
++
++func filterCompilerFlags(flags []string, keepfirst bool) []string {
++	var newflags []string
++   var realkeepfirst bool = keepfirst
++	if !filterFlags {
++		return flags
++	}
++	for _, flag := range flags {
++		if strings.HasPrefix(flag, "-m") || realkeepfirst {
++			newflags = append(newflags, flag)
++           realkeepfirst = false
++		}
++	}
++	return newflags
++}
++
+ // CFlags returns the flags to use when invoking the C, C++ or Fortran compilers, or cgo.
+-func (b *Builder) CFlags(p *load.Package) (cppflags, cflags, cxxflags, fflags, ldflags []string, err error) {
++func (b *Builder) CFlags(p *load.Package, filtered bool) (cppflags, cflags, cxxflags, fflags, ldflags []string, err error) {
+ 	defaults := "-g -O2"
+ 
+ 	if cppflags, err = buildFlags("CPPFLAGS", "", p.CgoCPPFLAGS, checkCompilerFlags); err != nil {
+@@ -2724,6 +2743,13 @@ func (b *Builder) CFlags(p *load.Package) (cppflags, cflags, cxxflags, fflags, l
+ 	if ldflags, err = buildFlags("LDFLAGS", defaults, p.CgoLDFLAGS, checkLinkerFlags); err != nil {
+ 		return
+ 	}
++	if filtered {
++		cppflags = filterCompilerFlags(cppflags, false)
++		cflags = filterCompilerFlags(cflags, false)
++		cxxflags = filterCompilerFlags(cxxflags, false)
++		fflags = filterCompilerFlags(fflags, false)
++		ldflags = filterCompilerFlags(ldflags, false)
++	}
+ 
+ 	return
+ }
+@@ -2739,7 +2765,7 @@ var cgoRe = lazyregexp.New(`[/\\:]`)
+ 
+ func (b *Builder) cgo(a *Action, cgoExe, objdir string, pcCFLAGS, pcLDFLAGS, cgofiles, gccfiles, gxxfiles, mfiles, ffiles []string) (outGo, outObj []string, err error) {
+ 	p := a.Package
+-	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, cgoFFLAGS, cgoLDFLAGS, err := b.CFlags(p)
++	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, cgoFFLAGS, cgoLDFLAGS, err := b.CFlags(p, false)
+ 	if err != nil {
+ 		return nil, nil, err
+ 	}
+@@ -3246,7 +3272,7 @@ func (b *Builder) swigIntSize(objdir string) (intsize string, err error) {
+ 
+ // Run SWIG on one SWIG input file.
+ func (b *Builder) swigOne(a *Action, p *load.Package, file, objdir string, pcCFLAGS []string, cxx bool, intgosize string) (outGo, outC string, err error) {
+-	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, _, _, err := b.CFlags(p)
++	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, _, _, err := b.CFlags(p, false)
+ 	if err != nil {
+ 		return "", "", err
+ 	}
diff --git a/recipes-devtools/go-1.19/go/0001-exec.go-do-not-write-linker-flags-into-buildids.patch b/recipes-devtools/go-1.19/go/0001-exec.go-do-not-write-linker-flags-into-buildids.patch
new file mode 100644
index 0000000..f117152
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0001-exec.go-do-not-write-linker-flags-into-buildids.patch
@@ -0,0 +1,36 @@
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
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -1274,7 +1274,7 @@ func (b *Builder) linkActionID(a *Action
+ 	}
+ 
+ 	// Toolchain-dependent configuration, shared with b.linkSharedActionID.
+-	b.printLinkerConfig(h, p)
++	//b.printLinkerConfig(h, p)
+ 
+ 	// Input files.
+ 	for _, a1 := range a.Deps {
+@@ -1568,7 +1568,7 @@ func (b *Builder) linkSharedActionID(a *
+ 	fmt.Fprintf(h, "goos %s goarch %s\n", cfg.Goos, cfg.Goarch)
+ 
+ 	// Toolchain-dependent configuration, shared with b.linkActionID.
+-	b.printLinkerConfig(h, nil)
++	//b.printLinkerConfig(h, nil)
+ 
+ 	// Input files.
+ 	for _, a1 := range a.Deps {
diff --git a/recipes-devtools/go-1.19/go/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch b/recipes-devtools/go-1.19/go/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
new file mode 100644
index 0000000..ef1cc67
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0001-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
@@ -0,0 +1,39 @@
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
diff --git a/recipes-devtools/go-1.19/go/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch b/recipes-devtools/go-1.19/go/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch
new file mode 100644
index 0000000..30068d8
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch
@@ -0,0 +1,52 @@
+From 7e0136a882757da0a374ab8592209586eced0e1c Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:15:37 +0430
+Subject: [PATCH] cmd/go: Allow GOTOOLDIR to be overridden in the environment
+
+to allow for split host/target build roots
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Matt Madison <matt@madison.systems>.
+
+Upstream-Status: Inappropriate [OE specific]
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+
+---
+ src/cmd/dist/build.go          | 4 +++-
+ src/cmd/go/internal/cfg/cfg.go | 6 +++++-
+ 2 files changed, 8 insertions(+), 2 deletions(-)
+
+diff --git a/src/cmd/dist/build.go b/src/cmd/dist/build.go
+index 7c44c4a..3024d0c 100644
+--- a/src/cmd/dist/build.go
++++ b/src/cmd/dist/build.go
+@@ -264,7 +264,9 @@ func xinit() {
+ 	}
+ 	xatexit(rmworkdir)
+ 
+-	tooldir = pathf("%s/pkg/tool/%s_%s", goroot, gohostos, gohostarch)
++	if tooldir = os.Getenv("GOTOOLDIR"); tooldir == "" {
++		tooldir = pathf("%s/pkg/tool/%s_%s", goroot, gohostos, gohostarch)
++	}
+ }
+ 
+ // compilerEnv returns a map from "goos/goarch" to the
+diff --git a/src/cmd/go/internal/cfg/cfg.go b/src/cmd/go/internal/cfg/cfg.go
+index c6ddfe5..605adb1 100644
+--- a/src/cmd/go/internal/cfg/cfg.go
++++ b/src/cmd/go/internal/cfg/cfg.go
+@@ -162,7 +162,11 @@ func SetGOROOT(goroot string) {
+ 		// variables. This matches the initialization of ToolDir in
+ 		// go/build, except for using BuildContext.GOROOT rather than
+ 		// runtime.GOROOT.
+-		build.ToolDir = filepath.Join(goroot, "pkg/tool/"+runtime.GOOS+"_"+runtime.GOARCH)
++		if s := os.Getenv("GOTOOLDIR"); s != "" {
++			build.ToolDir = filepath.Clean(s)
++		} else {
++			build.ToolDir = filepath.Join(goroot, "pkg/tool/"+runtime.GOOS+"_"+runtime.GOARCH)
++		}
+ 	}
+ }
+ 
diff --git a/recipes-devtools/go-1.19/go/0004-ld-add-soname-to-shareable-objects.patch b/recipes-devtools/go-1.19/go/0004-ld-add-soname-to-shareable-objects.patch
new file mode 100644
index 0000000..b700634
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0004-ld-add-soname-to-shareable-objects.patch
@@ -0,0 +1,48 @@
+From 68867eae5d3a51f32b2a2e16374323338408781e Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:16:32 +0430
+Subject: [PATCH] ld: add soname to shareable objects
+
+so that OE's shared library dependency handling
+can find them.
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Matt Madison <matt@madison.systems>.
+
+Upstream-Status: Inappropriate [OE specific]
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+
+---
+ src/cmd/link/internal/ld/lib.go | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/src/cmd/link/internal/ld/lib.go b/src/cmd/link/internal/ld/lib.go
+index 18910dd..b2e1d36 100644
+--- a/src/cmd/link/internal/ld/lib.go
++++ b/src/cmd/link/internal/ld/lib.go
+@@ -1459,6 +1459,7 @@ func (ctxt *Link) hostlink() {
+ 				argv = append(argv, "-Wl,-z,relro")
+ 			}
+ 			argv = append(argv, "-shared")
++			argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 			if ctxt.HeadType == objabi.Hwindows {
+ 				argv = addASLRargs(argv, *flagAslr)
+ 			} else {
+@@ -1474,6 +1475,7 @@ func (ctxt *Link) hostlink() {
+ 			argv = append(argv, "-Wl,-z,relro")
+ 		}
+ 		argv = append(argv, "-shared")
++		argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 	case BuildModePlugin:
+ 		if ctxt.HeadType == objabi.Hdarwin {
+ 			argv = append(argv, "-dynamiclib")
+@@ -1482,6 +1484,7 @@ func (ctxt *Link) hostlink() {
+ 				argv = append(argv, "-Wl,-z,relro")
+ 			}
+ 			argv = append(argv, "-shared")
++			argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 		}
+ 	}
+ 
diff --git a/recipes-devtools/go-1.19/go/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch b/recipes-devtools/go-1.19/go/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch
new file mode 100644
index 0000000..608f1eb
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch
@@ -0,0 +1,41 @@
+From 8f020921c464e95ded850950382115154448580a Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:17:16 +0430
+Subject: [PATCH] make.bash: override CC when building dist and go_bootstrap
+
+for handling OE cross-canadian builds.
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Matt Madison <matt@madison.systems>.
+
+Upstream-Status: Inappropriate [OE specific]
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+
+---
+ src/make.bash | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/src/make.bash b/src/make.bash
+index ab2ce19..37ec1fb 100755
+--- a/src/make.bash
++++ b/src/make.bash
+@@ -198,7 +198,7 @@ if [ "$GOROOT_BOOTSTRAP" = "$GOROOT" ]; then
+ 	exit 1
+ fi
+ rm -f cmd/dist/dist
+-GOROOT="$GOROOT_BOOTSTRAP" GOOS="" GOARCH="" GO111MODULE=off GOEXPERIMENT="" GOENV=off GOFLAGS="" "$GOROOT_BOOTSTRAP/bin/go" build -o cmd/dist/dist ./cmd/dist
++CC="${BUILD_CC:-${CC}}" GOROOT="$GOROOT_BOOTSTRAP" GOOS="" GOARCH="" GO111MODULE=off GOEXPERIMENT="" GOENV=off GOFLAGS="" "$GOROOT_BOOTSTRAP/bin/go" build -o cmd/dist/dist ./cmd/dist
+ 
+ # -e doesn't propagate out of eval, so check success by hand.
+ eval $(./cmd/dist/dist env -p || echo FAIL=true)
+@@ -223,7 +223,7 @@ fi
+ # Run dist bootstrap to complete make.bash.
+ # Bootstrap installs a proper cmd/dist, built with the new toolchain.
+ # Throw ours, built with Go 1.4, away after bootstrap.
+-./cmd/dist/dist bootstrap -a $vflag $GO_DISTFLAGS "$@"
++CC="${BUILD_CC:-${CC}}" ./cmd/dist/dist bootstrap -a $vflag $GO_DISTFLAGS "$@"
+ rm -f ./cmd/dist/dist
+ 
+ # DO NOT ADD ANY NEW CODE HERE.
diff --git a/recipes-devtools/go-1.19/go/0006-cmd-dist-separate-host-and-target-builds.patch b/recipes-devtools/go-1.19/go/0006-cmd-dist-separate-host-and-target-builds.patch
new file mode 100644
index 0000000..2c864ba
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0006-cmd-dist-separate-host-and-target-builds.patch
@@ -0,0 +1,282 @@
+From ef5fddafdec78cab9963d21736e64d71ca520bcc Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:18:12 +0430
+Subject: [PATCH] cmd/dist: separate host and target builds
+
+Upstream-Status: Inappropriate [OE specific]
+
+Change the dist tool to allow for OE-style cross-
+and cross-canadian builds:
+
+ - command flags --host-only and --target only are added;
+   if one is present, the other changes mentioned below
+   take effect, and arguments may also be specified on
+   the command line to enumerate the package(s) to be
+   built.
+
+ - for OE cross builds, go_bootstrap is always built for
+   the current build host, and is moved, along with the supporting
+   toolchain (asm, compile, etc.) to a separate 'native_native'
+   directory under GOROOT/pkg/tool.
+
+ - go_bootstrap is not automatically removed after the build,
+   so it can be reused later (e.g., building both static and
+   shared runtime).
+
+Note that for --host-only builds, it would be nice to specify
+just the "cmd" package to build only the go commands/tools,
+the staleness checks in the dist tool will fail if the "std"
+library has not also been built.  So host-only builds have to
+build everything anyway.
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Matt Madison <matt@madison.systems>.
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+
+---
+ src/cmd/dist/build.go | 154 ++++++++++++++++++++++++++++++------------
+ 1 file changed, 112 insertions(+), 42 deletions(-)
+
+diff --git a/src/cmd/dist/build.go b/src/cmd/dist/build.go
+index 3024d0c..45ebee0 100644
+--- a/src/cmd/dist/build.go
++++ b/src/cmd/dist/build.go
+@@ -45,6 +45,7 @@ var (
+ 	goexperiment     string
+ 	workdir          string
+ 	tooldir          string
++	build_tooldir    string
+ 	oldgoos          string
+ 	oldgoarch        string
+ 	exe              string
+@@ -55,6 +56,7 @@ var (
+ 
+ 	rebuildall   bool
+ 	defaultclang bool
++	crossBuild   bool
+ 
+ 	vflag int // verbosity
+ )
+@@ -267,6 +269,8 @@ func xinit() {
+ 	if tooldir = os.Getenv("GOTOOLDIR"); tooldir == "" {
+ 		tooldir = pathf("%s/pkg/tool/%s_%s", goroot, gohostos, gohostarch)
+ 	}
++
++	build_tooldir = pathf("%s/pkg/tool/native_native", goroot)
+ }
+ 
+ // compilerEnv returns a map from "goos/goarch" to the
+@@ -468,8 +472,10 @@ func setup() {
+ 	p := pathf("%s/pkg/%s_%s", goroot, gohostos, gohostarch)
+ 	if rebuildall {
+ 		xremoveall(p)
++		xremoveall(build_tooldir)
+ 	}
+ 	xmkdirall(p)
++	xmkdirall(build_tooldir)
+ 
+ 	if goos != gohostos || goarch != gohostarch {
+ 		p := pathf("%s/pkg/%s_%s", goroot, goos, goarch)
+@@ -1248,17 +1254,35 @@ func cmdbootstrap() {
+ 
+ 	var noBanner, noClean bool
+ 	var debug bool
++	var hostOnly bool
++	var targetOnly bool
++	var toBuild = []string{"std", "cmd"}
++
+ 	flag.BoolVar(&rebuildall, "a", rebuildall, "rebuild all")
+ 	flag.BoolVar(&debug, "d", debug, "enable debugging of bootstrap process")
+ 	flag.BoolVar(&noBanner, "no-banner", noBanner, "do not print banner")
+ 	flag.BoolVar(&noClean, "no-clean", noClean, "print deprecation warning")
++	flag.BoolVar(&hostOnly, "host-only", hostOnly, "build only host binaries, not target")
++	flag.BoolVar(&targetOnly, "target-only", targetOnly, "build only target binaries, not host")
+ 
+-	xflagparse(0)
++	xflagparse(-1)
+ 
+ 	if noClean {
+ 		xprintf("warning: --no-clean is deprecated and has no effect; use 'go install std cmd' instead\n")
+ 	}
+ 
++	if hostOnly && targetOnly {
++		fatalf("specify only one of --host-only or --target-only\n")
++	}
++	crossBuild = hostOnly || targetOnly
++	if flag.NArg() > 0 {
++		if crossBuild {
++			toBuild = flag.Args()
++		} else {
++			fatalf("package names not permitted without --host-only or --target-only\n")
++		}
++	}
++
+ 	// Set GOPATH to an internal directory. We shouldn't actually
+ 	// need to store files here, since the toolchain won't
+ 	// depend on modules outside of vendor directories, but if
+@@ -1326,8 +1350,13 @@ func cmdbootstrap() {
+ 		xprintf("\n")
+ 	}
+ 
+-	gogcflags = os.Getenv("GO_GCFLAGS") // we were using $BOOT_GO_GCFLAGS until now
+-	goldflags = os.Getenv("GO_LDFLAGS") // we were using $BOOT_GO_LDFLAGS until now
++	// For split host/target cross/cross-canadian builds, we don't
++	// want to be setting these flags until after we have compiled
++	// the toolchain that runs on the build host.
++	if !crossBuild {
++		gogcflags = os.Getenv("GO_GCFLAGS") // we were using $BOOT_GO_GCFLAGS until now
++		goldflags = os.Getenv("GO_LDFLAGS") // we were using $BOOT_GO_LDFLAGS until now
++	}
+ 	goBootstrap := pathf("%s/go_bootstrap", tooldir)
+ 	cmdGo := pathf("%s/go", gorootBin)
+ 	if debug {
+@@ -1356,7 +1385,11 @@ func cmdbootstrap() {
+ 		xprintf("\n")
+ 	}
+ 	xprintf("Building Go toolchain2 using go_bootstrap and Go toolchain1.\n")
+-	os.Setenv("CC", compilerEnvLookup(defaultcc, goos, goarch))
++	if crossBuild {
++		os.Setenv("CC", defaultcc[""])
++	} else {
++		os.Setenv("CC", compilerEnvLookup(defaultcc, goos, goarch))
++	}
+ 	// Now that cmd/go is in charge of the build process, enable GOEXPERIMENT.
+ 	os.Setenv("GOEXPERIMENT", goexperiment)
+ 	goInstall(goBootstrap, append([]string{"-i"}, toolchain...)...)
+@@ -1395,50 +1428,84 @@ func cmdbootstrap() {
+ 	}
+ 	checkNotStale(goBootstrap, append(toolchain, "runtime/internal/sys")...)
+ 
+-	if goos == oldgoos && goarch == oldgoarch {
+-		// Common case - not setting up for cross-compilation.
+-		timelog("build", "toolchain")
+-		if vflag > 0 {
+-			xprintf("\n")
++	if crossBuild {
++		gogcflags = os.Getenv("GO_GCFLAGS")
++		goldflags = os.Getenv("GO_LDFLAGS")
++		tool_files, _ := filepath.Glob(pathf("%s/*", tooldir))
++		for _, f := range tool_files {
++			copyfile(pathf("%s/%s", build_tooldir, filepath.Base(f)), f, writeExec)
++			xremove(f)
++		}
++		os.Setenv("GOTOOLDIR", build_tooldir)
++		goBootstrap = pathf("%s/go_bootstrap", build_tooldir)
++		if hostOnly {
++			timelog("build", "host toolchain")
++			if vflag > 0 {
++				xprintf("\n")
++			}
++			xprintf("Building %s for host, %s/%s.\n", strings.Join(toBuild, ","), goos, goarch)
++			goInstall(goBootstrap, toBuild...)
++			checkNotStale(goBootstrap, toBuild...)
++			// Skip cmdGo staleness checks here, since we can't necessarily run the cmdGo binary
++
++			timelog("build", "target toolchain")
++			if vflag > 0 {
++				xprintf("\n")
++			}
++		} else if targetOnly {
++			goos = oldgoos
++			goarch = oldgoarch
++			os.Setenv("GOOS", goos)
++			os.Setenv("GOARCH", goarch)
++			os.Setenv("CC", compilerEnvLookup(defaultcc, goos, goarch))
++			xprintf("Building %s for target, %s/%s.\n", strings.Join(toBuild, ","), goos, goarch)
++			goInstall(goBootstrap, toBuild...)
++			checkNotStale(goBootstrap, toBuild...)
++			// Skip cmdGo staleness checks here, since we can't run the target's cmdGo binary
+ 		}
+-		xprintf("Building packages and commands for %s/%s.\n", goos, goarch)
+ 	} else {
+-		// GOOS/GOARCH does not match GOHOSTOS/GOHOSTARCH.
+-		// Finish GOHOSTOS/GOHOSTARCH installation and then
+-		// run GOOS/GOARCH installation.
+-		timelog("build", "host toolchain")
+-		if vflag > 0 {
+-			xprintf("\n")
++
++		if goos == oldgoos && goarch == oldgoarch {
++			// Common case - not setting up for cross-compilation.
++			timelog("build", "toolchain")
++			if vflag > 0 {
++				xprintf("\n")
++			}
++			xprintf("Building packages and commands for %s/%s.\n", goos, goarch)
++		} else {
++			// GOOS/GOARCH does not match GOHOSTOS/GOHOSTARCH.
++			// Finish GOHOSTOS/GOHOSTARCH installation and then
++			// run GOOS/GOARCH installation.
++			timelog("build", "host toolchain")
++			if vflag > 0 {
++				xprintf("\n")
++			}
++			xprintf("Building packages and commands for host, %s/%s.\n", goos, goarch)
++			goInstall(goBootstrap, "std", "cmd")
++			checkNotStale(goBootstrap, "std", "cmd")
++			checkNotStale(cmdGo, "std", "cmd")
++
++			timelog("build", "target toolchain")
++			if vflag > 0 {
++				xprintf("\n")
++			}
++			goos = oldgoos
++			goarch = oldgoarch
++			os.Setenv("GOOS", goos)
++			os.Setenv("GOARCH", goarch)
++			os.Setenv("CC", compilerEnvLookup(defaultcc, goos, goarch))
++			xprintf("Building packages and commands for target, %s/%s.\n", goos, goarch)
+ 		}
+-		xprintf("Building packages and commands for host, %s/%s.\n", goos, goarch)
+ 		goInstall(goBootstrap, "std", "cmd")
+ 		checkNotStale(goBootstrap, "std", "cmd")
+ 		checkNotStale(cmdGo, "std", "cmd")
+ 
+-		timelog("build", "target toolchain")
+-		if vflag > 0 {
+-			xprintf("\n")
++		if debug {
++			run("", ShowOutput|CheckExit, pathf("%s/compile", tooldir), "-V=full")
++			run("", ShowOutput|CheckExit, pathf("%s/buildid", tooldir), pathf("%s/pkg/%s_%s/runtime/internal/sys.a", goroot, goos, goarch))
++			checkNotStale(goBootstrap, append(toolchain, "runtime/internal/sys")...)
++			copyfile(pathf("%s/compile4", tooldir), pathf("%s/compile", tooldir), writeExec)
+ 		}
+-		goos = oldgoos
+-		goarch = oldgoarch
+-		os.Setenv("GOOS", goos)
+-		os.Setenv("GOARCH", goarch)
+-		os.Setenv("CC", compilerEnvLookup(defaultcc, goos, goarch))
+-		xprintf("Building packages and commands for target, %s/%s.\n", goos, goarch)
+-	}
+-	targets := []string{"std", "cmd"}
+-	if goos == "js" && goarch == "wasm" {
+-		// Skip the cmd tools for js/wasm. They're not usable.
+-		targets = targets[:1]
+-	}
+-	goInstall(goBootstrap, targets...)
+-	checkNotStale(goBootstrap, targets...)
+-	checkNotStale(cmdGo, targets...)
+-	if debug {
+-		run("", ShowOutput|CheckExit, pathf("%s/compile", tooldir), "-V=full")
+-		run("", ShowOutput|CheckExit, pathf("%s/buildid", tooldir), pathf("%s/pkg/%s_%s/runtime/internal/sys.a", goroot, goos, goarch))
+-		checkNotStale(goBootstrap, append(toolchain, "runtime/internal/sys")...)
+-		copyfile(pathf("%s/compile4", tooldir), pathf("%s/compile", tooldir), writeExec)
+ 	}
+ 
+ 	// Check that there are no new files in $GOROOT/bin other than
+@@ -1455,8 +1522,11 @@ func cmdbootstrap() {
+ 		}
+ 	}
+ 
+-	// Remove go_bootstrap now that we're done.
+-	xremove(pathf("%s/go_bootstrap", tooldir))
++	// Except that for split host/target cross-builds, we need to
++	// keep it.
++	if !crossBuild {
++		xremove(pathf("%s/go_bootstrap", tooldir))
++	}
+ 
+ 	if goos == "android" {
+ 		// Make sure the exec wrapper will sync a fresh $GOROOT to the device.
diff --git a/recipes-devtools/go-1.19/go/0007-cmd-go-make-GOROOT-precious-by-default.patch b/recipes-devtools/go-1.19/go/0007-cmd-go-make-GOROOT-precious-by-default.patch
new file mode 100644
index 0000000..534d431
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/0007-cmd-go-make-GOROOT-precious-by-default.patch
@@ -0,0 +1,104 @@
+From 9ba507e076c744f4d394418e4a849e68cd426a4a Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:18:56 +0430
+Subject: [PATCH 7/9] cmd/go: make GOROOT precious by default
+
+Upstream-Status: Inappropriate [OE specific]
+
+The go build tool normally rebuilds whatever it detects is
+stale.  This can be a problem when GOROOT is intended to
+be read-only and the go runtime has been built as a shared
+library, since we don't want every application to be rebuilding
+the shared runtime - particularly in cross-build/packaging
+setups, since that would lead to 'abi mismatch' runtime errors.
+
+This patch prevents the install and linkshared actions from
+installing to GOROOT unless overridden with the GOROOT_OVERRIDE
+environment variable.
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Matt Madison <matt@madison.systems>.
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+---
+ src/cmd/go/internal/work/action.go |  3 +++
+ src/cmd/go/internal/work/build.go  |  6 ++++++
+ src/cmd/go/internal/work/exec.go   | 25 +++++++++++++++++++++++++
+ 3 files changed, 34 insertions(+)
+
+--- a/src/cmd/go/internal/work/action.go
++++ b/src/cmd/go/internal/work/action.go
+@@ -673,6 +673,9 @@ func (b *Builder) addTransitiveLinkDeps(
+ 			if p1 == nil || p1.Shlib == "" || haveShlib[filepath.Base(p1.Shlib)] {
+ 				continue
+ 			}
++			if goRootPrecious && (p1.Standard || p1.Goroot) {
++				continue
++			}
+ 			haveShlib[filepath.Base(p1.Shlib)] = true
+ 			// TODO(rsc): The use of ModeInstall here is suspect, but if we only do ModeBuild,
+ 			// we'll end up building an overall library or executable that depends at runtime
+--- a/src/cmd/go/internal/work/build.go
++++ b/src/cmd/go/internal/work/build.go
+@@ -197,6 +197,8 @@ See also: go install, go get, go clean.
+ 
+ const concurrentGCBackendCompilationEnabledByDefault = true
+ 
++var goRootPrecious bool = true
++
+ func init() {
+ 	// break init cycle
+ 	CmdBuild.Run = runBuild
+@@ -209,6 +211,10 @@ func init() {
+ 
+ 	AddBuildFlags(CmdBuild, DefaultBuildFlags)
+ 	AddBuildFlags(CmdInstall, DefaultBuildFlags)
++
++	if x := os.Getenv("GOROOT_OVERRIDE"); x != "" {
++		goRootPrecious = false
++	}
+ }
+ 
+ // Note that flags consulted by other parts of the code
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -535,6 +535,23 @@ func (b *Builder) build(ctx context.Cont
+ 		return errors.New("binary-only packages are no longer supported")
+ 	}
+ 
++	if goRootPrecious && (a.Package.Standard || a.Package.Goroot) {
++		_, err := os.Stat(a.Package.Target)
++		if err == nil {
++			a.built = a.Package.Target
++			a.Target = a.Package.Target
++			a.buildID = b.fileHash(a.Package.Target)
++			a.Package.Stale = false
++			a.Package.StaleReason = "GOROOT-resident package"
++			return nil
++		}
++		a.Package.Stale = true
++		a.Package.StaleReason = "missing or invalid GOROOT-resident package"
++		if b.IsCmdList {
++			return nil
++		}
++	}
++
+ 	if err := b.Mkdir(a.Objdir); err != nil {
+ 		return err
+ 	}
+@@ -1585,6 +1602,14 @@ func (b *Builder) linkShared(ctx context
+ 		return err
+ 	}
+ 
++	if goRootPrecious && a.Package != nil {
++		p := a.Package
++		if p.Standard || p.Goroot {
++			err := fmt.Errorf("attempting to install package %s into read-only GOROOT", p.ImportPath)
++			return err
++		}
++	}
++
+ 	if err := b.Mkdir(a.Objdir); err != nil {
+ 		return err
+ 	}
diff --git a/recipes-devtools/go-1.19/go/filter-build-paths.patch b/recipes-devtools/go-1.19/go/filter-build-paths.patch
new file mode 100644
index 0000000..280f911
--- /dev/null
+++ b/recipes-devtools/go-1.19/go/filter-build-paths.patch
@@ -0,0 +1,58 @@
+From 3bdbce685c688a27eece36ccc8be9b50b4849498 Mon Sep 17 00:00:00 2001
+From: Richard Purdie <richard.purdie@linuxfoundation.org>
+Date: Sat, 2 Jul 2022 23:08:13 +0100
+Subject: [PATCH] go: Filter build paths on staticly linked arches
+
+Filter out build time paths from ldflags and other flags variables when they're
+embedded in the go binary so that builds are reproducible regardless of build
+location. This codepath is hit for statically linked go binaries such as those
+on mips/ppc.
+
+Upstream-Status: Submitted [https://github.com/golang/go/pull/56410]
+
+Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
+
+---
+ src/cmd/go/internal/load/pkg.go | 15 +++++++++++++--
+ 1 file changed, 13 insertions(+), 2 deletions(-)
+
+diff --git a/src/cmd/go/internal/load/pkg.go b/src/cmd/go/internal/load/pkg.go
+index 046f508..353cbc4 100644
+--- a/src/cmd/go/internal/load/pkg.go
++++ b/src/cmd/go/internal/load/pkg.go
+@@ -2256,6 +2256,17 @@ func (p *Package) collectDeps() {
+ // to their VCS information (vcsStatusError).
+ var vcsStatusCache par.Cache
+ 
++func filterCompilerFlags(flags string) string {
++	var newflags []string
++	for _, flag := range strings.Fields(flags) {
++		if strings.HasPrefix(flag, "--sysroot") || strings.HasPrefix(flag, "-fmacro-prefix-map") || strings.HasPrefix(flag, "-fdebug-prefix-map") {
++			continue
++		}
++		newflags = append(newflags, flag)
++	}
++	return strings.Join(newflags, " ")
++}
++
+ // setBuildInfo gathers build information, formats it as a string to be
+ // embedded in the binary, then sets p.Internal.BuildInfo to that string.
+ // setBuildInfo should only be called on a main package with no errors.
+@@ -2353,7 +2364,7 @@ func (p *Package) setBuildInfo(includeVCS bool) {
+ 	if gcflags := BuildGcflags.String(); gcflags != "" && cfg.BuildContext.Compiler == "gc" {
+ 		appendSetting("-gcflags", gcflags)
+ 	}
+-	if ldflags := BuildLdflags.String(); ldflags != "" {
++	if ldflags := filterCompilerFlags(BuildLdflags.String()); ldflags != "" {
+ 		// https://go.dev/issue/52372: only include ldflags if -trimpath is not set,
+ 		// since it can include system paths through various linker flags (notably
+ 		// -extar, -extld, and -extldflags).
+@@ -2392,7 +2403,7 @@ func (p *Package) setBuildInfo(includeVCS bool) {
+ 	// subset of flags that are known not to be paths?
+ 	if cfg.BuildContext.CgoEnabled && !cfg.BuildTrimpath {
+ 		for _, name := range []string{"CGO_CFLAGS", "CGO_CPPFLAGS", "CGO_CXXFLAGS", "CGO_LDFLAGS"} {
+-			appendSetting(name, cfg.Getenv(name))
++			appendSetting(name, filterCompilerFlags(cfg.Getenv(name)))
+ 		}
+ 	}
+ 	appendSetting("GOARCH", cfg.BuildContext.GOARCH)
diff --git a/recipes-devtools/go-1.19/go_1.19.4.bb b/recipes-devtools/go-1.19/go_1.19.4.bb
new file mode 100644
index 0000000..587ee55
--- /dev/null
+++ b/recipes-devtools/go-1.19/go_1.19.4.bb
@@ -0,0 +1,18 @@
+require go-${PV}.inc
+require go-target.inc
+
+inherit linuxloader
+
+CGO_LDFLAGS:append:mips = " -no-pie"
+
+export GO_LDSO = "${@get_linuxloader(d)}"
+export CC_FOR_TARGET = "gcc"
+export CXX_FOR_TARGET = "g++"
+
+# mips/rv64 doesn't support -buildmode=pie, so skip the QA checking for mips/riscv32 and its
+# variants.
+python() {
+    if 'mips' in d.getVar('TARGET_ARCH') or 'riscv32' in d.getVar('TARGET_ARCH'):
+        d.appendVar('INSANE_SKIP:%s' % d.getVar('PN'), " textrel")
+}
+
-- 
2.34.1


