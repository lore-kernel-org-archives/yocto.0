Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D98C77B6E
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.59669.1680279680814838509
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=Jk2NKCxk;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id i5-20020a05600c354500b003edd24054e0so15729472wmq.4
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279687; x=1682871687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M7JSkXTsyZohNBbkaitwg3zzSOtD1ZGrGADwMgr69fw=;
        b=Jk2NKCxkHgho3GEZF0PakoTWkZsXnyLwXv1yI7egy1ZaFCaB3ps06OLFB+mVR3ct3J
         oj2qbpzol0z+dw/IH3sQLE/cENgcqS+LcARHlhIKrOo4ZhlwLs9Qk9fqp8sbga4KxF7d
         /xwvU6vf3rHjBT2Zw4utXyug4S00U/ZfOknPnQ1lVawTnbuh/AuvtOVVccqWparzh+UW
         l8d2JdSQqdnhk7xAKqOKcEUKAgshcGHu1Szv13NrkXDMj5p0VCVqocql8NADK7Q7p/MX
         WTRcYoVPdSmCHrcR0bypN9dEugLX9GER6MXYF1kiyV8g17yOLJ9BlpJeFs3bZjgjbCV7
         eXAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279687; x=1682871687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M7JSkXTsyZohNBbkaitwg3zzSOtD1ZGrGADwMgr69fw=;
        b=nKzrKE1Syl0Y1kr1hJDvZ7rPzxmIMC96fVr/4uxIp7jHe9b0K6gRbE1XHUstNc2F7+
         6HB868kvIQ5jFExtS/InIeJcGBLD0Fh8aJcb5hF7VfECylG21EWolB6BzP+wZjAUR5Al
         1j/nVDAPwZX62GEgwGhw9k8aphvMuLCf37ZdkT8T9XGKq0Y5UtQQHlVKiHPY1iYmxW8w
         HVh/KJgXsmgtVu8afg8oLhDowL7+hktRVqqD7JiY5njXtsHJ6TJtHcuf7PoPJRySYQfA
         QhT45+Bx/SF/W3eh1wYr1XXtX7OHZqbQWbathW8MCm+XzLUABb60n6WFSuLev4KjFohb
         Va/w==
X-Gm-Message-State: AAQBX9dGeSYfs++bKrj6HpFmV11XOrilA4v/yP3wV8OpJkl5BzjTrSLR
	h45hVd6PhnnZwrQlCQrV+wHg/wPFL0pcavIP
X-Google-Smtp-Source: AKy350bP+XyUCBBdpOIEP8eTB+A5j7U/cqegFsaZUAxzDGUVDuhiO8+EnfNSnjfrtGrZpDC4RIIaug==
X-Received: by 2002:a7b:c001:0:b0:3f0:3d41:bda3 with SMTP id c1-20020a7bc001000000b003f03d41bda3mr3655066wmb.5.1680279686058;
        Fri, 31 Mar 2023 09:21:26 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:25 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 10/16] go-1.20: import recipes from openembedded-core
Date: Fri, 31 Mar 2023 16:20:36 +0000
Message-Id: <20230331162042.1801766-10-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59578

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/go-1.20/go-1.20.inc          |  18 ++
 .../go-1.20/go-binary-native_1.20.bb          |  48 +++
 recipes-devtools/go-1.20/go-common.inc        |  44 +++
 .../go-1.20/go-cross-canadian.inc             |  61 ++++
 .../go-1.20/go-cross-canadian_1.20.bb         |   2 +
 recipes-devtools/go-1.20/go-cross.inc         |  52 ++++
 recipes-devtools/go-1.20/go-cross_1.20.bb     |   2 +
 recipes-devtools/go-1.20/go-crosssdk.inc      |  44 +++
 recipes-devtools/go-1.20/go-crosssdk_1.20.bb  |   2 +
 recipes-devtools/go-1.20/go-native_1.20.bb    |  58 ++++
 recipes-devtools/go-1.20/go-runtime.inc       |  94 ++++++
 recipes-devtools/go-1.20/go-runtime_1.20.bb   |   3 +
 recipes-devtools/go-1.20/go-target.inc        |  55 ++++
 ...ent-based-hash-generation-less-pedan.patch | 167 +++++++++++
 ...OOLDIR-to-be-overridden-in-the-envir.patch |  55 ++++
 ...3-ld-add-soname-to-shareable-objects.patch |  50 ++++
 ...de-CC-when-building-dist-and-go_boot.patch |  44 +++
 ...dist-separate-host-and-target-builds.patch | 282 ++++++++++++++++++
 ...d-go-make-GOROOT-precious-by-default.patch | 113 +++++++
 ...not-write-linker-flags-into-buildids.patch |  41 +++
 ...ldgo.go-do-not-hardcode-host-compile.patch |  44 +++
 ...uild-paths-on-staticly-linked-arches.patch |  60 ++++
 recipes-devtools/go-1.20/go_1.20.bb           |  18 ++
 23 files changed, 1357 insertions(+)
 create mode 100644 recipes-devtools/go-1.20/go-1.20.inc
 create mode 100644 recipes-devtools/go-1.20/go-binary-native_1.20.bb
 create mode 100644 recipes-devtools/go-1.20/go-common.inc
 create mode 100644 recipes-devtools/go-1.20/go-cross-canadian.inc
 create mode 100644 recipes-devtools/go-1.20/go-cross-canadian_1.20.bb
 create mode 100644 recipes-devtools/go-1.20/go-cross.inc
 create mode 100644 recipes-devtools/go-1.20/go-cross_1.20.bb
 create mode 100644 recipes-devtools/go-1.20/go-crosssdk.inc
 create mode 100644 recipes-devtools/go-1.20/go-crosssdk_1.20.bb
 create mode 100644 recipes-devtools/go-1.20/go-native_1.20.bb
 create mode 100644 recipes-devtools/go-1.20/go-runtime.inc
 create mode 100644 recipes-devtools/go-1.20/go-runtime_1.20.bb
 create mode 100644 recipes-devtools/go-1.20/go-target.inc
 create mode 100644 recipes-devtools/go-1.20/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch
 create mode 100644 recipes-devtools/go-1.20/go/0002-cmd-go-Allow-GOTOOLDIR-to-be-overridden-in-the-envir.patch
 create mode 100644 recipes-devtools/go-1.20/go/0003-ld-add-soname-to-shareable-objects.patch
 create mode 100644 recipes-devtools/go-1.20/go/0004-make.bash-override-CC-when-building-dist-and-go_boot.patch
 create mode 100644 recipes-devtools/go-1.20/go/0005-cmd-dist-separate-host-and-target-builds.patch
 create mode 100644 recipes-devtools/go-1.20/go/0006-cmd-go-make-GOROOT-precious-by-default.patch
 create mode 100644 recipes-devtools/go-1.20/go/0007-exec.go-do-not-write-linker-flags-into-buildids.patch
 create mode 100644 recipes-devtools/go-1.20/go/0008-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
 create mode 100644 recipes-devtools/go-1.20/go/0009-go-Filter-build-paths-on-staticly-linked-arches.patch
 create mode 100644 recipes-devtools/go-1.20/go_1.20.bb

diff --git a/recipes-devtools/go-1.20/go-1.20.inc b/recipes-devtools/go-1.20/go-1.20.inc
new file mode 100644
index 0000000..139f8d1
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-1.20.inc
@@ -0,0 +1,18 @@
+require go-common.inc
+
+FILESEXTRAPATHS:prepend := "${FILE_DIRNAME}/go:"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
+
+SRC_URI += "\
+    file://0001-cmd-go-make-content-based-hash-generation-less-pedan.patch \
+    file://0002-cmd-go-Allow-GOTOOLDIR-to-be-overridden-in-the-envir.patch \
+    file://0003-ld-add-soname-to-shareable-objects.patch \
+    file://0004-make.bash-override-CC-when-building-dist-and-go_boot.patch \
+    file://0005-cmd-dist-separate-host-and-target-builds.patch \
+    file://0006-cmd-go-make-GOROOT-precious-by-default.patch \
+    file://0007-exec.go-do-not-write-linker-flags-into-buildids.patch \
+    file://0008-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch \
+    file://0009-go-Filter-build-paths-on-staticly-linked-arches.patch \
+"
+SRC_URI[main.sha256sum] = "3a29ff0421beaf6329292b8a46311c9fbf06c800077ceddef5fb7f8d5b1ace33"
diff --git a/recipes-devtools/go-1.20/go-binary-native_1.20.bb b/recipes-devtools/go-1.20/go-binary-native_1.20.bb
new file mode 100644
index 0000000..ee6b84c
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-binary-native_1.20.bb
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
+SRC_URI[go_linux_amd64.sha256sum] = "5a9ebcc65c1cce56e0d2dc616aff4c4cedcfbda8cc6f0288cc08cda3b18dcbf1"
+SRC_URI[go_linux_arm64.sha256sum] = "17700b6e5108e2a2c3b1a43cd865d3f9c66b7f1c5f0cec26d3672cc131cc0994"
+SRC_URI[go_linux_ppc64le.sha256sum] = "bccbf89c83e0aab2911e57217159bf0fc49bb07c6eebd2c23ae30af18fc5368b"
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
diff --git a/recipes-devtools/go-1.20/go-common.inc b/recipes-devtools/go-1.20/go-common.inc
new file mode 100644
index 0000000..83f8db7
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-common.inc
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
diff --git a/recipes-devtools/go-1.20/go-cross-canadian.inc b/recipes-devtools/go-1.20/go-cross-canadian.inc
new file mode 100644
index 0000000..c1aa987
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-cross-canadian.inc
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
diff --git a/recipes-devtools/go-1.20/go-cross-canadian_1.20.bb b/recipes-devtools/go-1.20/go-cross-canadian_1.20.bb
new file mode 100644
index 0000000..7ac9449
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-cross-canadian_1.20.bb
@@ -0,0 +1,2 @@
+require go-cross-canadian.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.20/go-cross.inc b/recipes-devtools/go-1.20/go-cross.inc
new file mode 100644
index 0000000..a0fbdbe
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-cross.inc
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
diff --git a/recipes-devtools/go-1.20/go-cross_1.20.bb b/recipes-devtools/go-1.20/go-cross_1.20.bb
new file mode 100644
index 0000000..80b5a03
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-cross_1.20.bb
@@ -0,0 +1,2 @@
+require go-cross.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.20/go-crosssdk.inc b/recipes-devtools/go-1.20/go-crosssdk.inc
new file mode 100644
index 0000000..7669386
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-crosssdk.inc
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
diff --git a/recipes-devtools/go-1.20/go-crosssdk_1.20.bb b/recipes-devtools/go-1.20/go-crosssdk_1.20.bb
new file mode 100644
index 0000000..1857c8a
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-crosssdk_1.20.bb
@@ -0,0 +1,2 @@
+require go-crosssdk.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.20/go-native_1.20.bb b/recipes-devtools/go-1.20/go-native_1.20.bb
new file mode 100644
index 0000000..ddf25b2
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-native_1.20.bb
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
diff --git a/recipes-devtools/go-1.20/go-runtime.inc b/recipes-devtools/go-1.20/go-runtime.inc
new file mode 100644
index 0000000..02601f7
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-runtime.inc
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
diff --git a/recipes-devtools/go-1.20/go-runtime_1.20.bb b/recipes-devtools/go-1.20/go-runtime_1.20.bb
new file mode 100644
index 0000000..63464a1
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-runtime_1.20.bb
@@ -0,0 +1,3 @@
+require go-${PV}.inc
+require go-runtime.inc
+
diff --git a/recipes-devtools/go-1.20/go-target.inc b/recipes-devtools/go-1.20/go-target.inc
new file mode 100644
index 0000000..ed09cfe
--- /dev/null
+++ b/recipes-devtools/go-1.20/go-target.inc
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
diff --git a/recipes-devtools/go-1.20/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch b/recipes-devtools/go-1.20/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch
new file mode 100644
index 0000000..56487e3
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0001-cmd-go-make-content-based-hash-generation-less-pedan.patch
@@ -0,0 +1,167 @@
+From 10766ca6f4007b96e3f6bf4fb496e5df74397eb9 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Mon, 28 Mar 2022 10:59:03 -0700
+Subject: [PATCH 1/9] cmd/go: make content-based hash generation less pedantic
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
+---
+ src/cmd/go/internal/envcmd/env.go |  2 +-
+ src/cmd/go/internal/work/exec.go  | 44 ++++++++++++++++++++++++-------
+ 2 files changed, 36 insertions(+), 10 deletions(-)
+
+diff --git a/src/cmd/go/internal/envcmd/env.go b/src/cmd/go/internal/envcmd/env.go
+index 66ef5ce..fb7448a 100644
+--- a/src/cmd/go/internal/envcmd/env.go
++++ b/src/cmd/go/internal/envcmd/env.go
+@@ -183,7 +183,7 @@ func ExtraEnvVarsCostly() []cfg.EnvVar {
+ 		}
+ 	}()
+ 
+-	cppflags, cflags, cxxflags, fflags, ldflags, err := b.CFlags(&load.Package{})
++	cppflags, cflags, cxxflags, fflags, ldflags, err := b.CFlags(&load.Package{}, false)
+ 	if err != nil {
+ 		// Should not happen - b.CFlags was given an empty package.
+ 		fmt.Fprintf(os.Stderr, "go: invalid cflags: %v\n", err)
+diff --git a/src/cmd/go/internal/work/exec.go b/src/cmd/go/internal/work/exec.go
+index d6fa847..7e4fcb3 100644
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -223,6 +223,8 @@ func (b *Builder) Do(ctx context.Context, root *Action) {
+ 	writeActionGraph()
+ }
+ 
++var omitGopath = os.Getenv("GOPATH_OMIT_IN_ACTIONID") != ""
++
+ // buildActionID computes the action ID for a build action.
+ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 	p := a.Package
+@@ -244,7 +246,7 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 		if p.Module != nil {
+ 			fmt.Fprintf(h, "module %s@%s\n", p.Module.Path, p.Module.Version)
+ 		}
+-	} else if p.Goroot {
++	} else if p.Goroot || omitGopath {
+ 		// The Go compiler always hides the exact value of $GOROOT
+ 		// when building things in GOROOT.
+ 		//
+@@ -276,9 +278,9 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
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
+@@ -286,14 +288,14 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 			fmt.Fprintf(h, "CC ID=%q\n", ccID)
+ 		}
+ 		if len(p.CXXFiles)+len(p.SwigCXXFiles) > 0 {
+-			cxxExe := b.cxxExe()
++			cxxExe := filterCompilerFlags(b.cxxExe(), true)
+ 			fmt.Fprintf(h, "CXX=%q %q\n", cxxExe, cxxflags)
+ 			if cxxID, _, err := b.gccToolID(cxxExe[0], "c++"); err == nil {
+ 				fmt.Fprintf(h, "CXX ID=%q\n", cxxID)
+ 			}
+ 		}
+ 		if len(p.FFiles) > 0 {
+-			fcExe := b.fcExe()
++			fcExe := filterCompilerFlags(b.fcExe(), true)
+ 			fmt.Fprintf(h, "FC=%q %q\n", fcExe, fflags)
+ 			if fcID, _, err := b.gccToolID(fcExe[0], "f95"); err == nil {
+ 				fmt.Fprintf(h, "FC ID=%q\n", fcID)
+@@ -310,7 +312,7 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 		}
+ 	}
+ 	if p.Internal.BuildInfo != "" {
+-		fmt.Fprintf(h, "modinfo %q\n", p.Internal.BuildInfo)
++		//fmt.Fprintf(h, "modinfo %q\n", p.Internal.BuildInfo)
+ 	}
+ 
+ 	// Configuration specific to compiler toolchain.
+@@ -2970,8 +2972,25 @@ func envList(key, def string) []string {
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
+ 	if cppflags, err = buildFlags("CPPFLAGS", "", p.CgoCPPFLAGS, checkCompilerFlags); err != nil {
+ 		return
+ 	}
+@@ -2987,6 +3006,13 @@ func (b *Builder) CFlags(p *load.Package) (cppflags, cflags, cxxflags, fflags, l
+ 	if ldflags, err = buildFlags("LDFLAGS", defaultCFlags, p.CgoLDFLAGS, checkLinkerFlags); err != nil {
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
+@@ -3002,7 +3028,7 @@ var cgoRe = lazyregexp.New(`[/\\:]`)
+ 
+ func (b *Builder) cgo(a *Action, cgoExe, objdir string, pcCFLAGS, pcLDFLAGS, cgofiles, gccfiles, gxxfiles, mfiles, ffiles []string) (outGo, outObj []string, err error) {
+ 	p := a.Package
+-	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, cgoFFLAGS, cgoLDFLAGS, err := b.CFlags(p)
++	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, cgoFFLAGS, cgoLDFLAGS, err := b.CFlags(p, false)
+ 	if err != nil {
+ 		return nil, nil, err
+ 	}
+@@ -3510,7 +3536,7 @@ func (b *Builder) swigIntSize(objdir string) (intsize string, err error) {
+ 
+ // Run SWIG on one SWIG input file.
+ func (b *Builder) swigOne(a *Action, p *load.Package, file, objdir string, pcCFLAGS []string, cxx bool, intgosize string) (outGo, outC string, err error) {
+-	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, _, _, err := b.CFlags(p)
++	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, _, _, err := b.CFlags(p, false)
+ 	if err != nil {
+ 		return "", "", err
+ 	}
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0002-cmd-go-Allow-GOTOOLDIR-to-be-overridden-in-the-envir.patch b/recipes-devtools/go-1.20/go/0002-cmd-go-Allow-GOTOOLDIR-to-be-overridden-in-the-envir.patch
new file mode 100644
index 0000000..6abd424
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0002-cmd-go-Allow-GOTOOLDIR-to-be-overridden-in-the-envir.patch
@@ -0,0 +1,55 @@
+From 5cca2fa5997292a87302bdc7e7ed3231371e98bd Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:15:37 +0430
+Subject: [PATCH 2/9] cmd/go: Allow GOTOOLDIR to be overridden in the
+ environment
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
+---
+ src/cmd/dist/build.go          | 4 +++-
+ src/cmd/go/internal/cfg/cfg.go | 6 +++++-
+ 2 files changed, 8 insertions(+), 2 deletions(-)
+
+diff --git a/src/cmd/dist/build.go b/src/cmd/dist/build.go
+index c36a12e..5d31718 100644
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
+index 3257140..bb46253 100644
+--- a/src/cmd/go/internal/cfg/cfg.go
++++ b/src/cmd/go/internal/cfg/cfg.go
+@@ -229,7 +229,11 @@ func SetGOROOT(goroot string, isTestGo bool) {
+ 			// This matches the initialization of ToolDir in go/build, except for
+ 			// using ctxt.GOROOT and the installed GOOS and GOARCH rather than the
+ 			// GOROOT, GOOS, and GOARCH reported by the runtime package.
+-			build.ToolDir = filepath.Join(GOROOTpkg, "tool", installedGOOS+"_"+installedGOARCH)
++	   		if s := os.Getenv("GOTOOLDIR"); s != "" {
++				build.ToolDir = filepath.Clean(s)
++			} else {
++				build.ToolDir = filepath.Join(GOROOTpkg, "tool", installedGOOS+"_"+installedGOARCH)
++			}
+ 		}
+ 	}
+ }
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0003-ld-add-soname-to-shareable-objects.patch b/recipes-devtools/go-1.20/go/0003-ld-add-soname-to-shareable-objects.patch
new file mode 100644
index 0000000..2bc7d19
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0003-ld-add-soname-to-shareable-objects.patch
@@ -0,0 +1,50 @@
+From c7536a820f713013ab1d4acef74a4c8bd970bf8f Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:16:32 +0430
+Subject: [PATCH 3/9] ld: add soname to shareable objects
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
+---
+ src/cmd/link/internal/ld/lib.go | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/src/cmd/link/internal/ld/lib.go b/src/cmd/link/internal/ld/lib.go
+index c073017..e60d39a 100644
+--- a/src/cmd/link/internal/ld/lib.go
++++ b/src/cmd/link/internal/ld/lib.go
+@@ -1491,6 +1491,7 @@ func (ctxt *Link) hostlink() {
+ 				argv = append(argv, "-Wl,-z,relro")
+ 			}
+ 			argv = append(argv, "-shared")
++			argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 			if ctxt.HeadType == objabi.Hwindows {
+ 				argv = addASLRargs(argv, *flagAslr)
+ 			} else {
+@@ -1506,6 +1507,7 @@ func (ctxt *Link) hostlink() {
+ 			argv = append(argv, "-Wl,-z,relro")
+ 		}
+ 		argv = append(argv, "-shared")
++		argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 	case BuildModePlugin:
+ 		if ctxt.HeadType == objabi.Hdarwin {
+ 			argv = append(argv, "-dynamiclib")
+@@ -1514,6 +1516,7 @@ func (ctxt *Link) hostlink() {
+ 				argv = append(argv, "-Wl,-z,relro")
+ 			}
+ 			argv = append(argv, "-shared")
++			argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 		}
+ 	}
+ 
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0004-make.bash-override-CC-when-building-dist-and-go_boot.patch b/recipes-devtools/go-1.20/go/0004-make.bash-override-CC-when-building-dist-and-go_boot.patch
new file mode 100644
index 0000000..85e42f7
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0004-make.bash-override-CC-when-building-dist-and-go_boot.patch
@@ -0,0 +1,44 @@
+From 31ff609cc3d3bfcc2f2257fda1dbaafaec31eb0b Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:17:16 +0430
+Subject: [PATCH 4/9] make.bash: override CC when building dist and
+ go_bootstrap
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
+---
+ src/make.bash | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/src/make.bash b/src/make.bash
+index c07f39b..6ca7242 100755
+--- a/src/make.bash
++++ b/src/make.bash
+@@ -194,7 +194,7 @@ if [ "$GOROOT_BOOTSTRAP" = "$GOROOT" ]; then
+ 	exit 1
+ fi
+ rm -f cmd/dist/dist
+-GOROOT="$GOROOT_BOOTSTRAP" GOOS="" GOARCH="" GO111MODULE=off GOEXPERIMENT="" GOENV=off GOFLAGS="" "$GOROOT_BOOTSTRAP/bin/go" build -o cmd/dist/dist ./cmd/dist
++CC="${BUILD_CC:-${CC}}" GOROOT="$GOROOT_BOOTSTRAP" GOOS="" GOARCH="" GO111MODULE=off GOEXPERIMENT="" GOENV=off GOFLAGS="" "$GOROOT_BOOTSTRAP/bin/go" build -o cmd/dist/dist ./cmd/dist
+ 
+ # -e doesn't propagate out of eval, so check success by hand.
+ eval $(./cmd/dist/dist env -p || echo FAIL=true)
+@@ -219,7 +219,7 @@ fi
+ # Run dist bootstrap to complete make.bash.
+ # Bootstrap installs a proper cmd/dist, built with the new toolchain.
+ # Throw ours, built with the bootstrap toolchain, away after bootstrap.
+-./cmd/dist/dist bootstrap -a $vflag $GO_DISTFLAGS "$@"
++CC="${BUILD_CC:-${CC}}" ./cmd/dist/dist bootstrap -a $vflag $GO_DISTFLAGS "$@"
+ rm -f ./cmd/dist/dist
+ 
+ # DO NOT ADD ANY NEW CODE HERE.
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0005-cmd-dist-separate-host-and-target-builds.patch b/recipes-devtools/go-1.20/go/0005-cmd-dist-separate-host-and-target-builds.patch
new file mode 100644
index 0000000..2959844
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0005-cmd-dist-separate-host-and-target-builds.patch
@@ -0,0 +1,282 @@
+From 7a191e5191c8b813e929caedb3f3918bb08692a1 Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:18:12 +0430
+Subject: [PATCH 5/9] cmd/dist: separate host and target builds
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
+---
+ src/cmd/dist/build.go | 152 +++++++++++++++++++++++++++++++-----------
+ 1 file changed, 113 insertions(+), 39 deletions(-)
+
+diff --git a/src/cmd/dist/build.go b/src/cmd/dist/build.go
+index 5d31718..1c7f308 100644
+--- a/src/cmd/dist/build.go
++++ b/src/cmd/dist/build.go
+@@ -44,6 +44,7 @@ var (
+ 	goexperiment     string
+ 	workdir          string
+ 	tooldir          string
++	build_tooldir    string
+ 	oldgoos          string
+ 	oldgoarch        string
+ 	exe              string
+@@ -55,6 +56,7 @@ var (
+ 	rebuildall   bool
+ 	defaultclang bool
+ 	noOpt        bool
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
+ 	goosGoarch := pathf("%s/pkg/%s_%s", goroot, gohostos, gohostarch)
+ 	if rebuildall {
+ 		xremoveall(goosGoarch)
++		xremoveall(build_tooldir)
+ 	}
+ 	xmkdirall(goosGoarch)
++	xmkdirall(build_tooldir)
+ 	xatexit(func() {
+ 		if files := xreaddir(goosGoarch); len(files) == 0 {
+ 			xremove(goosGoarch)
+@@ -1276,17 +1282,35 @@ func cmdbootstrap() {
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
+@@ -1354,9 +1378,14 @@ func cmdbootstrap() {
+ 		xprintf("\n")
+ 	}
+ 
+-	gogcflags = os.Getenv("GO_GCFLAGS") // we were using $BOOT_GO_GCFLAGS until now
+-	setNoOpt()
+-	goldflags = os.Getenv("GO_LDFLAGS") // we were using $BOOT_GO_LDFLAGS until now
++	// For split host/target cross/cross-canadian builds, we don't
++	// want to be setting these flags until after we have compiled
++	// the toolchain that runs on the build host.
++	if !crossBuild {
++		gogcflags = os.Getenv("GO_GCFLAGS") // we were using $BOOT_GO_GCFLAGS until now
++		setNoOpt()
++		goldflags = os.Getenv("GO_LDFLAGS") // we were using $BOOT_GO_LDFLAGS until now
++	}
+ 	goBootstrap := pathf("%s/go_bootstrap", tooldir)
+ 	cmdGo := pathf("%s/go", gorootBin)
+ 	if debug {
+@@ -1385,7 +1414,11 @@ func cmdbootstrap() {
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
+ 	goInstall(goBootstrap, toolchain...)
+@@ -1421,46 +1454,84 @@ func cmdbootstrap() {
+ 		copyfile(pathf("%s/compile3", tooldir), pathf("%s/compile", tooldir), writeExec)
+ 	}
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
+-	goInstall(goBootstrap, targets...)
+-	checkNotStale(goBootstrap, append(toolchain, "runtime/internal/sys")...)
+-	checkNotStale(goBootstrap, targets...)
+-	checkNotStale(cmdGo, targets...)
+-	if debug {
+-		run("", ShowOutput|CheckExit, pathf("%s/compile", tooldir), "-V=full")
+-		checkNotStale(goBootstrap, append(toolchain, "runtime/internal/sys")...)
+-		copyfile(pathf("%s/compile4", tooldir), pathf("%s/compile", tooldir), writeExec)
+ 	}
+ 
+ 	// Check that there are no new files in $GOROOT/bin other than
+@@ -1477,8 +1548,11 @@ func cmdbootstrap() {
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
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0006-cmd-go-make-GOROOT-precious-by-default.patch b/recipes-devtools/go-1.20/go/0006-cmd-go-make-GOROOT-precious-by-default.patch
new file mode 100644
index 0000000..38b28b9
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0006-cmd-go-make-GOROOT-precious-by-default.patch
@@ -0,0 +1,113 @@
+From efab470498bb0a30ee2d00455a0c8c10459f6347 Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:18:56 +0430
+Subject: [PATCH 6/9] cmd/go: make GOROOT precious by default
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
+diff --git a/src/cmd/go/internal/work/action.go b/src/cmd/go/internal/work/action.go
+index 8beb134..68a8cfe 100644
+--- a/src/cmd/go/internal/work/action.go
++++ b/src/cmd/go/internal/work/action.go
+@@ -718,6 +718,9 @@ func (b *Builder) addTransitiveLinkDeps(a, a1 *Action, shlib string) {
+ 			if p1 == nil || p1.Shlib == "" || haveShlib[filepath.Base(p1.Shlib)] {
+ 				continue
+ 			}
++			if goRootPrecious && (p1.Standard || p1.Goroot) {
++				continue
++			}
+ 			haveShlib[filepath.Base(p1.Shlib)] = true
+ 			// TODO(rsc): The use of ModeInstall here is suspect, but if we only do ModeBuild,
+ 			// we'll end up building an overall library or executable that depends at runtime
+diff --git a/src/cmd/go/internal/work/build.go b/src/cmd/go/internal/work/build.go
+index 2f2860a..8cc6166 100644
+--- a/src/cmd/go/internal/work/build.go
++++ b/src/cmd/go/internal/work/build.go
+@@ -217,6 +217,8 @@ See also: go install, go get, go clean.
+ 
+ const concurrentGCBackendCompilationEnabledByDefault = true
+ 
++var goRootPrecious bool = true
++
+ func init() {
+ 	// break init cycle
+ 	CmdBuild.Run = runBuild
+@@ -230,6 +232,10 @@ func init() {
+ 		AddCoverFlags(CmdBuild, nil)
+ 		AddCoverFlags(CmdInstall, nil)
+ 	}
++
++	if x := os.Getenv("GOROOT_OVERRIDE"); x != "" {
++		goRootPrecious = false
++	}
+ }
+ 
+ // Note that flags consulted by other parts of the code
+diff --git a/src/cmd/go/internal/work/exec.go b/src/cmd/go/internal/work/exec.go
+index 7e4fcb3..d83b31b 100644
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -527,6 +527,23 @@ func (b *Builder) build(ctx context.Context, a *Action) (err error) {
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
+@@ -1624,6 +1641,14 @@ func (b *Builder) linkShared(ctx context.Context, a *Action) (err error) {
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
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0007-exec.go-do-not-write-linker-flags-into-buildids.patch b/recipes-devtools/go-1.20/go/0007-exec.go-do-not-write-linker-flags-into-buildids.patch
new file mode 100644
index 0000000..a821cf0
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0007-exec.go-do-not-write-linker-flags-into-buildids.patch
@@ -0,0 +1,41 @@
+From 0ba747e6a4b251a0d9eed0cfd8f8c491bb508040 Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Mon, 23 Nov 2020 19:22:04 +0000
+Subject: [PATCH 7/9] exec.go: do not write linker flags into buildids
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
+index d83b31b..a646fbb 100644
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -1312,7 +1312,7 @@ func (b *Builder) linkActionID(a *Action) cache.ActionID {
+ 	}
+ 
+ 	// Toolchain-dependent configuration, shared with b.linkSharedActionID.
+-	b.printLinkerConfig(h, p)
++	//b.printLinkerConfig(h, p)
+ 
+ 	// Input files.
+ 	for _, a1 := range a.Deps {
+@@ -1607,7 +1607,7 @@ func (b *Builder) linkSharedActionID(a *Action) cache.ActionID {
+ 	fmt.Fprintf(h, "goos %s goarch %s\n", cfg.Goos, cfg.Goarch)
+ 
+ 	// Toolchain-dependent configuration, shared with b.linkActionID.
+-	b.printLinkerConfig(h, nil)
++	//b.printLinkerConfig(h, nil)
+ 
+ 	// Input files.
+ 	for _, a1 := range a.Deps {
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0008-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch b/recipes-devtools/go-1.20/go/0008-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
new file mode 100644
index 0000000..fe830ce
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0008-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch
@@ -0,0 +1,44 @@
+From 1cbb416538a9c7c3fbedcb23f4d90d5c48becca8 Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Tue, 10 Nov 2020 16:33:27 +0000
+Subject: [PATCH 8/9] src/cmd/dist/buildgo.go: do not hardcode host compilers
+ into target binaries
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
+index 29b0167..63a49f0 100644
+--- a/src/cmd/dist/buildgo.go
++++ b/src/cmd/dist/buildgo.go
+@@ -33,8 +33,8 @@ func mkzdefaultcc(dir, file string) {
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
+@@ -45,8 +45,8 @@ func mkzdefaultcc(dir, file string) {
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
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go/0009-go-Filter-build-paths-on-staticly-linked-arches.patch b/recipes-devtools/go-1.20/go/0009-go-Filter-build-paths-on-staticly-linked-arches.patch
new file mode 100644
index 0000000..705c922
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0009-go-Filter-build-paths-on-staticly-linked-arches.patch
@@ -0,0 +1,60 @@
+From 18011f72125bbea273d07ee5d792ac0ce6059572 Mon Sep 17 00:00:00 2001
+From: Richard Purdie <richard.purdie@linuxfoundation.org>
+Date: Sat, 2 Jul 2022 23:08:13 +0100
+Subject: [PATCH 9/9] go: Filter build paths on staticly linked arches
+
+Filter out build time paths from ldflags and other flags variables when they're
+embedded in the go binary so that builds are reproducible regardless of build
+location. This codepath is hit for statically linked go binaries such as those
+on mips/ppc.
+
+Upstream-Status: Submitted [https://github.com/golang/go/pull/56410]
+
+Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
+---
+ src/cmd/go/internal/load/pkg.go | 15 +++++++++++++--
+ 1 file changed, 13 insertions(+), 2 deletions(-)
+
+diff --git a/src/cmd/go/internal/load/pkg.go b/src/cmd/go/internal/load/pkg.go
+index 56a4e5e..22edbdb 100644
+--- a/src/cmd/go/internal/load/pkg.go
++++ b/src/cmd/go/internal/load/pkg.go
+@@ -2266,6 +2266,17 @@ func (p *Package) collectDeps() {
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
+@@ -2372,7 +2383,7 @@ func (p *Package) setBuildInfo(autoVCS bool) {
+ 	if gcflags := BuildGcflags.String(); gcflags != "" && cfg.BuildContext.Compiler == "gc" {
+ 		appendSetting("-gcflags", gcflags)
+ 	}
+-	if ldflags := BuildLdflags.String(); ldflags != "" {
++	if ldflags := filterCompilerFlags(BuildLdflags.String()); ldflags != "" {
+ 		// https://go.dev/issue/52372: only include ldflags if -trimpath is not set,
+ 		// since it can include system paths through various linker flags (notably
+ 		// -extar, -extld, and -extldflags).
+@@ -2418,7 +2429,7 @@ func (p *Package) setBuildInfo(autoVCS bool) {
+ 	// subset of flags that are known not to be paths?
+ 	if cfg.BuildContext.CgoEnabled && !cfg.BuildTrimpath {
+ 		for _, name := range []string{"CGO_CFLAGS", "CGO_CPPFLAGS", "CGO_CXXFLAGS", "CGO_LDFLAGS"} {
+-			appendSetting(name, cfg.Getenv(name))
++			appendSetting(name, filterCompilerFlags(cfg.Getenv(name)))
+ 		}
+ 	}
+ 	appendSetting("GOARCH", cfg.BuildContext.GOARCH)
+-- 
+2.30.2
+
diff --git a/recipes-devtools/go-1.20/go_1.20.bb b/recipes-devtools/go-1.20/go_1.20.bb
new file mode 100644
index 0000000..587ee55
--- /dev/null
+++ b/recipes-devtools/go-1.20/go_1.20.bb
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


