Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCBF1C761AF
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:39 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.59647.1680279692039451326
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=fQ0Vt3Zz;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id l15-20020a05600c4f0f00b003ef6d684102so10419748wmq.3
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279690; x=1682871690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YU+KLf8lvTbeG6lxNAwFZ9F3RtiM4jrB+xtL04AM2bQ=;
        b=fQ0Vt3ZzP0dbZNzgntaDPX8fkEkU6MjhCbw42cFWIzZ+6u2/dbB2vl4Wg1U1tdqdkF
         h+gq8PfexcK1zgnKTowd4SaitBsStt5OmRNTbIKz6nqQWxOccuXV/gGiaoMefJG+iR/3
         KVBEWWRra32gViJnAr2R/Q1UsCr1NOhw56969/NpqQJSbfnYkHoEYFa7cp+mZi0ARJHH
         RkRYqBjpwh8n3atYxpphPu8UZi4mI3m4xMFrP2eEjzSyjSxOk8pktyVIkQX0usxwwG25
         +W9Z3v7ojaq8B7iZjerECIzBpSZy9CqFgEIL7fDhzVKomN+fr4r83WzCihO0BS2hWiZd
         Zg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279690; x=1682871690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YU+KLf8lvTbeG6lxNAwFZ9F3RtiM4jrB+xtL04AM2bQ=;
        b=ffbdE/y1A1ikmfwZVMHbi065jF+jyFFUhwhUCPTOAZPYE0o0Bq+pzwvTBwY71SJofJ
         Amy8bO6t9cPLkR3W0sqHAAMGsEQIoEj17gfbz2P07ESVX1fRx9QdrhiWWbWvecPzxzzk
         UsIx7280AtacyIXgOrC3w86CB8S/cE2DjFvdcf5Mf0blIaxBqchIs851xRreey0YiZaY
         lscUrrmoqh1IymCqreliYuUnpyTzFbCjtesLiIn8F//rgGgQ+jKyzHU6rp8yLdojoq0L
         GAltG0qfhX+ux3GTSXjVfwkDBKbdsAPJI5aB6/R5vAN9Eqv+Hz/Hfa3VDh67r8FfvhN+
         C9UA==
X-Gm-Message-State: AAQBX9cSv/Xakx7X3uhneBprXWLD71kNqgEx+G5AfTwnzUEIbgWxyyAf
	EUxg7ExvBPBK5YoZldsMG3oPPw7SRHIo6CtO
X-Google-Smtp-Source: AKy350ZxmS1VSRgW//umFN7Yp4wZU5caK5s/YJIYvoOrx2WYcaZCVGzQKTheA+1McZMTBHMYN+328w==
X-Received: by 2002:a05:600c:450b:b0:3ee:9652:932 with SMTP id t11-20020a05600c450b00b003ee96520932mr7809559wmo.12.1680279690308;
        Fri, 31 Mar 2023 09:21:30 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:29 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 14/16] go: fix some linkshared regression introduced in go 1.20
Date: Fri, 31 Mar 2023 16:20:40 +0000
Message-Id: <20230331162042.1801766-14-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59584

Since go 1.20 some packages fails to link [1][2]
and only build staticaly with GO_LINKSHARED = ""

[1] https://lists.yoctoproject.org/g/meta-virtualization/topic/97182310
[2] https://github.com/golang/go/issues/58966

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/go-1.20/go-1.20.1.inc        |  1 +
 ...ompile-instantiated-generic-methods-.patch | 90 +++++++++++++++++++
 2 files changed, 91 insertions(+)
 create mode 100644 recipes-devtools/go-1.20/go/0010-cmd-compile-re-compile-instantiated-generic-methods-.patch

diff --git a/recipes-devtools/go-1.20/go-1.20.1.inc b/recipes-devtools/go-1.20/go-1.20.1.inc
index aa3e2da..ffde7ed 100644
--- a/recipes-devtools/go-1.20/go-1.20.1.inc
+++ b/recipes-devtools/go-1.20/go-1.20.1.inc
@@ -14,5 +14,6 @@ SRC_URI += "\
     file://0007-exec.go-do-not-write-linker-flags-into-buildids.patch \
     file://0008-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch \
     file://0009-go-Filter-build-paths-on-staticly-linked-arches.patch \
+    file://0010-cmd-compile-re-compile-instantiated-generic-methods-.patch \
 "
 SRC_URI[main.sha256sum] = "b5c1a3af52c385a6d1c76aed5361cf26459023980d0320de7658bae3915831a2"
diff --git a/recipes-devtools/go-1.20/go/0010-cmd-compile-re-compile-instantiated-generic-methods-.patch b/recipes-devtools/go-1.20/go/0010-cmd-compile-re-compile-instantiated-generic-methods-.patch
new file mode 100644
index 0000000..f9ac202
--- /dev/null
+++ b/recipes-devtools/go-1.20/go/0010-cmd-compile-re-compile-instantiated-generic-methods-.patch
@@ -0,0 +1,90 @@
+From 7a3bb16b43efba73674629eae4369f9004e37f22 Mon Sep 17 00:00:00 2001
+From: Cuong Manh Le <cuong.manhle.vn@gmail.com>
+Date: Sat, 18 Mar 2023 00:53:07 +0700
+Subject: [PATCH] cmd/compile: re-compile instantiated generic methods in
+ linkshared mode
+
+For G[T] that was seen and compiled in imported package, it is not added
+to typecheck.Target.Decls, prevent wasting compile time re-creating
+DUPOKS symbols. However, the linker do not support a type symbol
+referencing a method symbol across DSO boundary. That causes unreachable
+sym error when building under -linkshared mode.
+
+To fix it, always re-compile generic methods in linkshared mode.
+
+Fixes #58966
+
+Change-Id: I894b417cfe8234ae1fe809cc975889345df22cef
+Reviewed-on: https://go-review.googlesource.com/c/go/+/477375
+Run-TryBot: Cuong Manh Le <cuong.manhle.vn@gmail.com>
+Reviewed-by: Cherry Mui <cherryyz@google.com>
+Reviewed-by: Matthew Dempsky <mdempsky@google.com>
+TryBot-Result: Gopher Robot <gobot@golang.org>
+
+Upstream-Status: Backport [https://github.com/golang/go/commit/bcd82125f85c7c552493e863fa1bb14e6c444557]
+
+Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
+---
+ misc/cgo/testshared/shared_test.go              |  7 ++++++-
+ misc/cgo/testshared/testdata/issue58966/main.go | 15 +++++++++++++++
+ src/cmd/compile/internal/noder/unified.go       |  6 +++++-
+ 3 files changed, 26 insertions(+), 2 deletions(-)
+ create mode 100644 misc/cgo/testshared/testdata/issue58966/main.go
+
+diff --git a/misc/cgo/testshared/shared_test.go b/misc/cgo/testshared/shared_test.go
+index b14fb1cb3a..03da8f9435 100644
+--- a/misc/cgo/testshared/shared_test.go
++++ b/misc/cgo/testshared/shared_test.go
+@@ -1112,8 +1112,13 @@ func TestStd(t *testing.T) {
+ 		t.Skip("skip in short mode")
+ 	}
+ 	t.Parallel()
++	tmpDir := t.TempDir()
+ 	// Use a temporary pkgdir to not interfere with other tests, and not write to GOROOT.
+ 	// Cannot use goCmd as it runs with cloned GOROOT which is incomplete.
+ 	runWithEnv(t, "building std", []string{"GOROOT=" + oldGOROOT},
+-		filepath.Join(oldGOROOT, "bin", "go"), "install", "-buildmode=shared", "-pkgdir="+t.TempDir(), "std")
++		filepath.Join(oldGOROOT, "bin", "go"), "install", "-buildmode=shared", "-pkgdir="+tmpDir, "std")
++
++	// Issue #58966.
++	runWithEnv(t, "testing issue #58966", []string{"GOROOT=" + oldGOROOT},
++		filepath.Join(oldGOROOT, "bin", "go"), "run", "-linkshared", "-pkgdir="+tmpDir, "./issue58966/main.go")
+ }
+diff --git a/misc/cgo/testshared/testdata/issue58966/main.go b/misc/cgo/testshared/testdata/issue58966/main.go
+new file mode 100644
+index 0000000000..2d923c3607
+--- /dev/null
++++ b/misc/cgo/testshared/testdata/issue58966/main.go
+@@ -0,0 +1,15 @@
++// Copyright 2023 The Go Authors. All rights reserved.
++// Use of this source code is governed by a BSD-style
++// license that can be found in the LICENSE file.
++
++package main
++
++import "crypto/elliptic"
++
++var curve elliptic.Curve
++
++func main() {
++	switch curve {
++	case elliptic.P224():
++	}
++}
+diff --git a/src/cmd/compile/internal/noder/unified.go b/src/cmd/compile/internal/noder/unified.go
+index ed97a09302..25136e6aad 100644
+--- a/src/cmd/compile/internal/noder/unified.go
++++ b/src/cmd/compile/internal/noder/unified.go
+@@ -158,7 +158,11 @@ func readBodies(target *ir.Package, duringInlining bool) {
+ 			// Instantiated generic function: add to Decls for typechecking
+ 			// and compilation.
+ 			if fn.OClosure == nil && len(pri.dict.targs) != 0 {
+-				if duringInlining {
++				// cmd/link does not support a type symbol referencing a method symbol
++				// across DSO boundary, so force re-compiling methods on a generic type
++				// even it was seen from imported package in linkshared mode, see #58966.
++				canSkipNonGenericMethod := !(base.Ctxt.Flag_linkshared && ir.IsMethod(fn))
++				if duringInlining && canSkipNonGenericMethod {
+ 					inlDecls = append(inlDecls, fn)
+ 				} else {
+ 					target.Decls = append(target.Decls, fn)
-- 
2.34.1


