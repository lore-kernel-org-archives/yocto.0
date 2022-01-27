Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1A6C4332F
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 14:43:30 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.29290.1643294608983761522
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:43:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OT8A5w/9;
 spf=pass (domain: gmail.com, ip: 209.85.221.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id e8so5323350wrc.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6FQOI+xNAB8HjS0Ngw0nPSyzYfqt0XEBUguvZztFBoo=;
        b=OT8A5w/9IIXPun0IUBGaRzFMlCya/2zNr7Fshqp1co/1qRUa72R+3xFSSCFBq/Ju2v
         EbMKpyyBtLNGJPxzlZdqIRfmvx64krghOZkLWx2XaHUL38ZR5kYbUv1OflZSGqqEXNJi
         s/PUJpGiQCjfBa7nyG9vUN+oG5PxOryMSFBWUpAGPpdan5S8z2aKPLK8MwT21lc4E0dP
         qZxf1Kn142i4EEAAp/Z9lExOi+za89OiMdykB16k5Fh5kXjMvlP0OwxERSegsbOvI9Ie
         90GozGFAWfEDUegAfQVcXFVkplf/VPTpc/kLhQPAUmsPWupQdFfiXUiK59zoMwrND/Un
         CTVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6FQOI+xNAB8HjS0Ngw0nPSyzYfqt0XEBUguvZztFBoo=;
        b=pVoHpdQR5iYYC+VD++ReLidSwVUY7ORIxufutIrxqLKwgok2GGop9DDytf098zzpdk
         Y1Xkli1g6GXjK2giluoSRvHkPwbFasdkcYyzISB1TC/8YVktc5PmoLOTpVWcuBTCnRG8
         RPX+wdON1eqy3BfyZ4bQjXOZSemTPfiWEvEJCYZZiJYYI/8V/Dk+4jUdjFwa4RjvdPYa
         m791lsnBEisJMOLO2UZQnwDCwPd9+tprqk7/GVMCA7gZL5qxi5aEALsL2oNieGL2K/Me
         8toiJwevieR+I9wNNHxHHmek1rCKS97mfx1ZHNO9mOGxdD9jgOcWsmKOOfdj228X2SLL
         SDgQ==
X-Gm-Message-State: AOAM531Vft78ANQvBSxk2R+KzO/AruiP0XoUCUct6660W7X2ua/4nvuP
	K8WMVPDeV68qn1NV3Boz62OWnOb+2bc4nw==
X-Google-Smtp-Source: 
 ABdhPJwgy4mi1KCvKlUpbQfaFmabEB3F8wvfD83aM1MImZxltQU0o4Ch+tx3OWmiaW5Bt0nIKuYoAQ==
X-Received: by 2002:a05:6000:384:: with SMTP id
 u4mr3454464wrf.202.1643294607028;
        Thu, 27 Jan 2022 06:43:27 -0800 (PST)
Received: from nereus.lab.linutronix.de. (b2b-109-90-143-203.unitymedia.biz.
 [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 l13sm6417669wmq.22.2022.01.27.06.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 06:43:26 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	denis@denix.org,
	adrian.freihofer@gmail.com
Subject: [meta-lts-mixins][dunfell/go PATCH 3/4] go-1.17: import recipes from
 openembedded-core
Date: Thu, 27 Jan 2022 15:43:22 +0100
Message-Id: <20220127144323.3121475-3-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220127144323.3121475-1-alex@linutronix.de>
References: <20220127144323.3121475-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 14:43:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55992

Link: https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/go?id=20846102156418f187e977ab0bbd557525bbc4e1

(copy from external source:
 git: https://git.yoctoproject.org/poky/
 archive: 20846102156418f187e977ab0bbd557525bbc4e1
 copy: meta/recipes-devtools/go --> recipes-devtools/go-1.17)

Acked-by: Martin Kaistra <martin.kaistra@linutronix.de>
Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 recipes-devtools/go-1.17/go-1.17.4.inc        |  23 ++
 ...ow-CC-and-CXX-to-have-multiple-words.patch |  33 ++
 ...ent-based-hash-generation-less-pedan.patch | 237 +++++++++++++++
 ...-to-be-overridden-in-the-environment.patch |  52 ++++
 ...4-ld-add-soname-to-shareable-objects.patch |  45 +++
 ...de-CC-when-building-dist-and-go_boot.patch |  41 +++
 ...dist-separate-host-and-target-builds.patch | 283 ++++++++++++++++++
 ...d-go-make-GOROOT-precious-by-default.patch | 104 +++++++
 ...008-use-GOBUILDMODE-to-set-buildmode.patch |  42 +++
 ...go-make-sure-CC-and-CXX-are-absolute.patch |  94 ++++++
 .../go-1.17/go-binary-native_1.17.4.bb        |  46 +++
 recipes-devtools/go-1.17/go-common.inc        |  42 +++
 .../go-1.17/go-cross-canadian.inc             |  62 ++++
 .../go-1.17/go-cross-canadian_1.17.4.bb       |   2 +
 recipes-devtools/go-1.17/go-cross.inc         |  53 ++++
 recipes-devtools/go-1.17/go-cross_1.17.4.bb   |   2 +
 recipes-devtools/go-1.17/go-crosssdk.inc      |  43 +++
 .../go-1.17/go-crosssdk_1.17.4.bb             |   2 +
 recipes-devtools/go-1.17/go-native_1.17.4.bb  |  59 ++++
 recipes-devtools/go-1.17/go-runtime.inc       |  87 ++++++
 recipes-devtools/go-1.17/go-runtime_1.17.4.bb |   3 +
 recipes-devtools/go-1.17/go-target.inc        |  45 +++
 recipes-devtools/go-1.17/go_1.17.4.bb         |  17 ++
 23 files changed, 1417 insertions(+)
 create mode 100644 recipes-devtools/go-1.17/go-1.17.4.inc
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0001-allow-CC-and-CXX-to-have-multiple-words.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0002-cmd-go-make-content-based-hash-generation-less-pedan.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0004-ld-add-soname-to-shareable-objects.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0006-cmd-dist-separate-host-and-target-builds.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0007-cmd-go-make-GOROOT-precious-by-default.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0008-use-GOBUILDMODE-to-set-buildmode.patch
 create mode 100644 recipes-devtools/go-1.17/go-1.17/0009-Revert-cmd-go-make-sure-CC-and-CXX-are-absolute.patch
 create mode 100644 recipes-devtools/go-1.17/go-binary-native_1.17.4.bb
 create mode 100644 recipes-devtools/go-1.17/go-common.inc
 create mode 100644 recipes-devtools/go-1.17/go-cross-canadian.inc
 create mode 100644 recipes-devtools/go-1.17/go-cross-canadian_1.17.4.bb
 create mode 100644 recipes-devtools/go-1.17/go-cross.inc
 create mode 100644 recipes-devtools/go-1.17/go-cross_1.17.4.bb
 create mode 100644 recipes-devtools/go-1.17/go-crosssdk.inc
 create mode 100644 recipes-devtools/go-1.17/go-crosssdk_1.17.4.bb
 create mode 100644 recipes-devtools/go-1.17/go-native_1.17.4.bb
 create mode 100644 recipes-devtools/go-1.17/go-runtime.inc
 create mode 100644 recipes-devtools/go-1.17/go-runtime_1.17.4.bb
 create mode 100644 recipes-devtools/go-1.17/go-target.inc
 create mode 100644 recipes-devtools/go-1.17/go_1.17.4.bb

diff --git a/recipes-devtools/go-1.17/go-1.17.4.inc b/recipes-devtools/go-1.17/go-1.17.4.inc
new file mode 100644
index 0000000..5c4423a
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17.4.inc
@@ -0,0 +1,23 @@
+require go-common.inc
+
+FILESEXTRAPATHS:prepend := "${FILE_DIRNAME}/go-1.17:"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
+
+SRC_URI += "\
+    file://0001-allow-CC-and-CXX-to-have-multiple-words.patch \
+    file://0002-cmd-go-make-content-based-hash-generation-less-pedan.patch \
+    file://0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch \
+    file://0004-ld-add-soname-to-shareable-objects.patch \
+    file://0005-make.bash-override-CC-when-building-dist-and-go_boot.patch \
+    file://0006-cmd-dist-separate-host-and-target-builds.patch \
+    file://0007-cmd-go-make-GOROOT-precious-by-default.patch \
+    file://0008-use-GOBUILDMODE-to-set-buildmode.patch \
+    file://0009-Revert-cmd-go-make-sure-CC-and-CXX-are-absolute.patch \
+"
+SRC_URI[main.sha256sum] = "4bef3699381ef09e075628504187416565d710660fec65b057edf1ceb187fc4b"
+
+# Upstream don't believe it is a signifiant real world issue and will only
+# fix in 1.17 onwards where we can drop this.
+# https://github.com/golang/go/issues/30999#issuecomment-910470358
+CVE_CHECK_WHITELIST += "CVE-2021-29923"
diff --git a/recipes-devtools/go-1.17/go-1.17/0001-allow-CC-and-CXX-to-have-multiple-words.patch b/recipes-devtools/go-1.17/go-1.17/0001-allow-CC-and-CXX-to-have-multiple-words.patch
new file mode 100644
index 0000000..5f4823b
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0001-allow-CC-and-CXX-to-have-multiple-words.patch
@@ -0,0 +1,33 @@
+From 9e3dc44cdfa58d96504d0a789dc82617dd5bef55 Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:01:13 +0430
+Subject: [PATCH 1/9] cmd/go: Allow CC and CXX to have multiple words
+
+Upstream-Status: Inappropriate [OE specific]
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Matt Madison <matt@madison.systems>.
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+
+---
+ src/cmd/go/internal/envcmd/env.go | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+--- a/src/cmd/go/internal/envcmd/env.go
++++ b/src/cmd/go/internal/envcmd/env.go
+@@ -103,11 +103,11 @@ func MkEnv() []cfg.EnvVar {
+ 
+ 	cc := cfg.DefaultCC(cfg.Goos, cfg.Goarch)
+ 	if env := strings.Fields(cfg.Getenv("CC")); len(env) > 0 {
+-		cc = env[0]
++		cc = strings.Join(env, " ")
+ 	}
+ 	cxx := cfg.DefaultCXX(cfg.Goos, cfg.Goarch)
+ 	if env := strings.Fields(cfg.Getenv("CXX")); len(env) > 0 {
+-		cxx = env[0]
++		cxx = strings.Join(env, " ")
+ 	}
+ 	env = append(env, cfg.EnvVar{Name: "AR", Value: envOr("AR", "ar")})
+ 	env = append(env, cfg.EnvVar{Name: "CC", Value: cc})
diff --git a/recipes-devtools/go-1.17/go-1.17/0002-cmd-go-make-content-based-hash-generation-less-pedan.patch b/recipes-devtools/go-1.17/go-1.17/0002-cmd-go-make-content-based-hash-generation-less-pedan.patch
new file mode 100644
index 0000000..42cd568
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0002-cmd-go-make-content-based-hash-generation-less-pedan.patch
@@ -0,0 +1,237 @@
+From c403b45995c5daa6747ac4d95b39bc9a6feb2cda Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:14:22 +0430
+Subject: [PATCH] cmd/go: make content-based hash generation less pedantic
+
+Upstream-Status: Inappropriate [OE specific]
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
+Second, if cgo is enabled, the build ID for cgo-related
+packages will include the current value of the environment
+variables for invoking the compiler (CC, CXX, FC) and
+any CGO_xxFLAGS variables.  Only if the settings used
+during a compilation exactly match, character for character,
+the values used for compiling runtime/cgo or any other
+cgo-enabled package being imported, will the tool
+decide that the imported package is up-to-date.
+
+This is done to help ensure correctness, but is overly
+simplistic and effectively prevents the reuse of built
+artifacts that use cgo (or shared runtime, which includes
+runtime/cgo).
+
+This patch filters out all compiler flags except those
+beginning with '-m'.  The default behavior can be restored
+by setting the CGO_PEDANTIC environment variable.
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Matt Madison <matt@madison.systems>.
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+---
+ src/cmd/go/internal/envcmd/env.go |  2 +-
+ src/cmd/go/internal/work/exec.go  | 66 ++++++++++++++++++++++---------
+ 2 files changed, 49 insertions(+), 19 deletions(-)
+
+diff --git a/src/cmd/go/internal/envcmd/env.go b/src/cmd/go/internal/envcmd/env.go
+index 20d0587..ff6f0d8 100644
+--- a/src/cmd/go/internal/envcmd/env.go
++++ b/src/cmd/go/internal/envcmd/env.go
+@@ -160,7 +160,7 @@ func ExtraEnvVars() []cfg.EnvVar {
+ func ExtraEnvVarsCostly() []cfg.EnvVar {
+ 	var b work.Builder
+ 	b.Init()
+-	cppflags, cflags, cxxflags, fflags, ldflags, err := b.CFlags(&load.Package{})
++	cppflags, cflags, cxxflags, fflags, ldflags, err := b.CFlags(&load.Package{}, false)
+ 	if err != nil {
+ 		// Should not happen - b.CFlags was given an empty package.
+ 		fmt.Fprintf(os.Stderr, "go: invalid cflags: %v\n", err)
+diff --git a/src/cmd/go/internal/work/exec.go b/src/cmd/go/internal/work/exec.go
+index 5a225fb..a37872e 100644
+--- a/src/cmd/go/internal/work/exec.go
++++ b/src/cmd/go/internal/work/exec.go
+@@ -38,6 +38,8 @@ import (
+ 	"cmd/go/internal/trace"
+ )
+ 
++var omitGopath = os.Getenv("GOPATH_OMIT_IN_ACTIONID") != ""
++
+ // actionList returns the list of actions in the dag rooted at root
+ // as visited in a depth-first post-order traversal.
+ func actionList(root *Action) []*Action {
+@@ -229,7 +231,7 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 	// Assume b.WorkDir is being trimmed properly.
+ 	// When -trimpath is used with a package built from the module cache,
+ 	// use the module path and version instead of the directory.
+-	if !p.Goroot && !cfg.BuildTrimpath && !strings.HasPrefix(p.Dir, b.WorkDir) {
++	if !p.Goroot && !omitGopath && !cfg.BuildTrimpath && !strings.HasPrefix(p.Dir, b.WorkDir) {
+ 		fmt.Fprintf(h, "dir %s\n", p.Dir)
+ 	} else if cfg.BuildTrimpath && p.Module != nil {
+ 		fmt.Fprintf(h, "module %s@%s\n", p.Module.Path, p.Module.Version)
+@@ -248,9 +250,9 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 	}
+ 	if len(p.CgoFiles)+len(p.SwigFiles)+len(p.SwigCXXFiles) > 0 {
+ 		fmt.Fprintf(h, "cgo %q\n", b.toolID("cgo"))
+-		cppflags, cflags, cxxflags, fflags, ldflags, _ := b.CFlags(p)
++		cppflags, cflags, cxxflags, fflags, ldflags, _ := b.CFlags(p, true)
+ 
+-		ccExe := b.ccExe()
++		ccExe := b.ccExe(true)
+ 		fmt.Fprintf(h, "CC=%q %q %q %q\n", ccExe, cppflags, cflags, ldflags)
+ 		// Include the C compiler tool ID so that if the C
+ 		// compiler changes we rebuild the package.
+@@ -263,14 +265,14 @@ func (b *Builder) buildActionID(a *Action) cache.ActionID {
+ 			}
+ 		}
+ 		if len(p.CXXFiles)+len(p.SwigCXXFiles) > 0 {
+-			cxxExe := b.cxxExe()
++			cxxExe := b.cxxExe(true)
+ 			fmt.Fprintf(h, "CXX=%q %q\n", cxxExe, cxxflags)
+ 			if cxxID, err := b.gccToolID(cxxExe[0], "c++"); err == nil {
+ 				fmt.Fprintf(h, "CXX ID=%q\n", cxxID)
+ 			}
+ 		}
+ 		if len(p.FFiles) > 0 {
+-			fcExe := b.fcExe()
++			fcExe := b.fcExe(true)
+ 			fmt.Fprintf(h, "FC=%q %q\n", fcExe, fflags)
+ 			if fcID, err := b.gccToolID(fcExe[0], "f95"); err == nil {
+ 				fmt.Fprintf(h, "FC ID=%q\n", fcID)
+@@ -2438,33 +2440,48 @@ var (
+ // gccCmd returns a gcc command line prefix
+ // defaultCC is defined in zdefaultcc.go, written by cmd/dist.
+ func (b *Builder) GccCmd(incdir, workdir string) []string {
+-	return b.compilerCmd(b.ccExe(), incdir, workdir)
++	return b.compilerCmd(b.ccExe(false), incdir, workdir)
+ }
+ 
+ // gxxCmd returns a g++ command line prefix
+ // defaultCXX is defined in zdefaultcc.go, written by cmd/dist.
+ func (b *Builder) GxxCmd(incdir, workdir string) []string {
+-	return b.compilerCmd(b.cxxExe(), incdir, workdir)
++	return b.compilerCmd(b.cxxExe(false), incdir, workdir)
+ }
+ 
+ // gfortranCmd returns a gfortran command line prefix.
+ func (b *Builder) gfortranCmd(incdir, workdir string) []string {
+-	return b.compilerCmd(b.fcExe(), incdir, workdir)
++	return b.compilerCmd(b.fcExe(false), incdir, workdir)
+ }
+ 
+ // ccExe returns the CC compiler setting without all the extra flags we add implicitly.
+-func (b *Builder) ccExe() []string {
+-	return b.compilerExe(origCC, cfg.DefaultCC(cfg.Goos, cfg.Goarch))
++func (b *Builder) ccExe(filtered bool) []string {
++	return b.compilerExe(origCC, cfg.DefaultCC(cfg.Goos, cfg.Goarch), filtered)
+ }
+ 
+ // cxxExe returns the CXX compiler setting without all the extra flags we add implicitly.
+-func (b *Builder) cxxExe() []string {
+-	return b.compilerExe(origCXX, cfg.DefaultCXX(cfg.Goos, cfg.Goarch))
++func (b *Builder) cxxExe(filtered bool) []string {
++	return b.compilerExe(origCXX, cfg.DefaultCXX(cfg.Goos, cfg.Goarch), filtered)
+ }
+ 
+ // fcExe returns the FC compiler setting without all the extra flags we add implicitly.
+-func (b *Builder) fcExe() []string {
+-	return b.compilerExe(cfg.Getenv("FC"), "gfortran")
++func (b *Builder) fcExe(filtered bool) []string {
++	return b.compilerExe(os.Getenv("FC"), "gfortran", filtered)
++}
++
++var filterFlags = os.Getenv("CGO_PEDANTIC") == ""
++
++func filterCompilerFlags(flags []string) []string {
++	var newflags []string
++	if !filterFlags {
++		return flags
++	}
++	for _, flag := range flags {
++		if strings.HasPrefix(flag, "-m") {
++			newflags = append(newflags, flag)
++		}
++	}
++	return newflags
+ }
+ 
+ // compilerExe returns the compiler to use given an
+@@ -2473,11 +2490,16 @@ func (b *Builder) fcExe() []string {
+ // of the compiler but can have additional arguments if they
+ // were present in the environment value.
+ // For example if CC="gcc -DGOPHER" then the result is ["gcc", "-DGOPHER"].
+-func (b *Builder) compilerExe(envValue string, def string) []string {
++func (b *Builder) compilerExe(envValue string, def string, filtered bool) []string {
+ 	compiler := strings.Fields(envValue)
+ 	if len(compiler) == 0 {
+ 		compiler = strings.Fields(def)
+ 	}
++
++	if filtered {
++		return append(compiler[0:1], filterCompilerFlags(compiler[1:])...)
++	}
++
+ 	return compiler
+ }
+ 
+@@ -2667,7 +2689,7 @@ func envList(key, def string) []string {
+ }
+ 
+ // CFlags returns the flags to use when invoking the C, C++ or Fortran compilers, or cgo.
+-func (b *Builder) CFlags(p *load.Package) (cppflags, cflags, cxxflags, fflags, ldflags []string, err error) {
++func (b *Builder) CFlags(p *load.Package, filtered bool) (cppflags, cflags, cxxflags, fflags, ldflags []string, err error) {
+ 	defaults := "-g -O2"
+ 
+ 	if cppflags, err = buildFlags("CPPFLAGS", "", p.CgoCPPFLAGS, checkCompilerFlags); err != nil {
+@@ -2686,6 +2708,14 @@ func (b *Builder) CFlags(p *load.Package) (cppflags, cflags, cxxflags, fflags, l
+ 		return
+ 	}
+ 
++	if filtered {
++		cppflags = filterCompilerFlags(cppflags)
++		cflags = filterCompilerFlags(cflags)
++		cxxflags = filterCompilerFlags(cxxflags)
++		fflags = filterCompilerFlags(fflags)
++		ldflags = filterCompilerFlags(ldflags)
++	}
++
+ 	return
+ }
+ 
+@@ -2700,7 +2730,7 @@ var cgoRe = lazyregexp.New(`[/\\:]`)
+ 
+ func (b *Builder) cgo(a *Action, cgoExe, objdir string, pcCFLAGS, pcLDFLAGS, cgofiles, gccfiles, gxxfiles, mfiles, ffiles []string) (outGo, outObj []string, err error) {
+ 	p := a.Package
+-	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, cgoFFLAGS, cgoLDFLAGS, err := b.CFlags(p)
++	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, cgoFFLAGS, cgoLDFLAGS, err := b.CFlags(p, false)
+ 	if err != nil {
+ 		return nil, nil, err
+ 	}
+@@ -3151,7 +3181,7 @@ func (b *Builder) swigIntSize(objdir string) (intsize string, err error) {
+ 
+ // Run SWIG on one SWIG input file.
+ func (b *Builder) swigOne(a *Action, p *load.Package, file, objdir string, pcCFLAGS []string, cxx bool, intgosize string) (outGo, outC string, err error) {
+-	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, _, _, err := b.CFlags(p)
++	cgoCPPFLAGS, cgoCFLAGS, cgoCXXFLAGS, _, _, err := b.CFlags(p, false)
+ 	if err != nil {
+ 		return "", "", err
+ 	}
+-- 
+2.20.1
+
diff --git a/recipes-devtools/go-1.17/go-1.17/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch b/recipes-devtools/go-1.17/go-1.17/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch
new file mode 100644
index 0000000..2a86bdc
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0003-allow-GOTOOLDIR-to-be-overridden-in-the-environment.patch
@@ -0,0 +1,52 @@
+From 8512964c0bfdfc3c9c3805743ea7de551a1d476a Mon Sep 17 00:00:00 2001
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
+index bec1769..d82f612 100644
+--- a/src/cmd/dist/build.go
++++ b/src/cmd/dist/build.go
+@@ -248,7 +248,9 @@ func xinit() {
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
+index 57a3c1f..825d8c7 100644
+--- a/src/cmd/go/internal/cfg/cfg.go
++++ b/src/cmd/go/internal/cfg/cfg.go
+@@ -67,7 +67,11 @@ func defaultContext() build.Context {
+ 		// variables. This matches the initialization of ToolDir in
+ 		// go/build, except for using ctxt.GOROOT rather than
+ 		// runtime.GOROOT.
+-		build.ToolDir = filepath.Join(ctxt.GOROOT, "pkg/tool/"+runtime.GOOS+"_"+runtime.GOARCH)
++		if s := os.Getenv("GOTOOLDIR"); s != "" {
++			build.ToolDir = filepath.Clean(s)
++		} else {
++			build.ToolDir = filepath.Join(ctxt.GOROOT, "pkg/tool/"+runtime.GOOS+"_"+runtime.GOARCH)
++		}
+ 	}
+ 
+ 	ctxt.GOPATH = envOr("GOPATH", ctxt.GOPATH)
diff --git a/recipes-devtools/go-1.17/go-1.17/0004-ld-add-soname-to-shareable-objects.patch b/recipes-devtools/go-1.17/go-1.17/0004-ld-add-soname-to-shareable-objects.patch
new file mode 100644
index 0000000..cd875f1
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0004-ld-add-soname-to-shareable-objects.patch
@@ -0,0 +1,45 @@
+From bf5cf5301ae5914498454c87293d1df2e1d8489f Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:16:32 +0430
+Subject: [PATCH 4/9] ld: add soname to shareable objects
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
+--- a/src/cmd/link/internal/ld/lib.go
++++ b/src/cmd/link/internal/ld/lib.go
+@@ -1343,6 +1343,7 @@ func (ctxt *Link) hostlink() {
+ 				argv = append(argv, "-Wl,-z,relro")
+ 			}
+ 			argv = append(argv, "-shared")
++			argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 			if ctxt.HeadType == objabi.Hwindows {
+ 				if *flagAslr {
+ 					argv = addASLRargs(argv)
+@@ -1358,6 +1359,7 @@ func (ctxt *Link) hostlink() {
+ 			argv = append(argv, "-Wl,-z,relro")
+ 		}
+ 		argv = append(argv, "-shared")
++		argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 	case BuildModePlugin:
+ 		if ctxt.HeadType == objabi.Hdarwin {
+ 			argv = append(argv, "-dynamiclib")
+@@ -1366,6 +1368,7 @@ func (ctxt *Link) hostlink() {
+ 				argv = append(argv, "-Wl,-z,relro")
+ 			}
+ 			argv = append(argv, "-shared")
++			argv = append(argv, fmt.Sprintf("-Wl,-soname,%s", filepath.Base(*flagOutfile)))
+ 		}
+ 	}
+ 
diff --git a/recipes-devtools/go-1.17/go-1.17/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch b/recipes-devtools/go-1.17/go-1.17/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch
new file mode 100644
index 0000000..2845d21
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0005-make.bash-override-CC-when-building-dist-and-go_boot.patch
@@ -0,0 +1,41 @@
+From 153e2dda6103fd9dd871be4bb495a8da5328301e Mon Sep 17 00:00:00 2001
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
+index 7986125..dd67029 100755
+--- a/src/make.bash
++++ b/src/make.bash
+@@ -181,7 +181,7 @@ if [ "$GOROOT_BOOTSTRAP" = "$GOROOT" ]; then
+ 	exit 1
+ fi
+ rm -f cmd/dist/dist
+-GOROOT="$GOROOT_BOOTSTRAP" GOOS="" GOARCH="" GO111MODULE=off "$GOROOT_BOOTSTRAP/bin/go" build -o cmd/dist/dist ./cmd/dist
++CC="${BUILD_CC:-${CC}}" GOROOT="$GOROOT_BOOTSTRAP" GOOS="" GOARCH="" GO111MODULE=off "$GOROOT_BOOTSTRAP/bin/go" build -o cmd/dist/dist ./cmd/dist
+ 
+ # -e doesn't propagate out of eval, so check success by hand.
+ eval $(./cmd/dist/dist env -p || echo FAIL=true)
+@@ -206,7 +206,7 @@ fi
+ # Run dist bootstrap to complete make.bash.
+ # Bootstrap installs a proper cmd/dist, built with the new toolchain.
+ # Throw ours, built with Go 1.4, away after bootstrap.
+-./cmd/dist/dist bootstrap -a $vflag $GO_DISTFLAGS "$@"
++CC="${BUILD_CC:-${CC}}" ./cmd/dist/dist bootstrap -a $vflag $GO_DISTFLAGS "$@"
+ rm -f ./cmd/dist/dist
+ 
+ # DO NOT ADD ANY NEW CODE HERE.
diff --git a/recipes-devtools/go-1.17/go-1.17/0006-cmd-dist-separate-host-and-target-builds.patch b/recipes-devtools/go-1.17/go-1.17/0006-cmd-dist-separate-host-and-target-builds.patch
new file mode 100644
index 0000000..68e8efc
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0006-cmd-dist-separate-host-and-target-builds.patch
@@ -0,0 +1,283 @@
+From 7bc891e00be4263311d75aa2b2ee6a3b7b75355f Mon Sep 17 00:00:00 2001
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
+ src/cmd/dist/build.go | 156 ++++++++++++++++++++++++++++++------------
+ 1 file changed, 113 insertions(+), 43 deletions(-)
+
+diff --git a/src/cmd/dist/build.go b/src/cmd/dist/build.go
+index d82f612..5c8459c 100644
+--- a/src/cmd/dist/build.go
++++ b/src/cmd/dist/build.go
+@@ -43,6 +43,7 @@ var (
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
+@@ -251,6 +253,8 @@ func xinit() {
+ 	if tooldir = os.Getenv("GOTOOLDIR"); tooldir == "" {
+ 		tooldir = pathf("%s/pkg/tool/%s_%s", goroot, gohostos, gohostarch)
+ 	}
++
++	build_tooldir = pathf("%s/pkg/tool/native_native", goroot)
+ }
+ 
+ // compilerEnv returns a map from "goos/goarch" to the
+@@ -496,8 +500,10 @@ func setup() {
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
+@@ -1267,17 +1273,35 @@ func cmdbootstrap() {
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
+@@ -1345,8 +1369,13 @@ func cmdbootstrap() {
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
+ 	cmdGo := pathf("%s/go", gobin)
+ 	if debug {
+@@ -1375,7 +1404,11 @@ func cmdbootstrap() {
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
+@@ -1414,50 +1447,84 @@ func cmdbootstrap() {
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
+-		}
+-		xprintf("Building packages and commands for host, %s/%s.\n", goos, goarch)
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
++		}
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
+@@ -1474,8 +1541,11 @@ func cmdbootstrap() {
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
diff --git a/recipes-devtools/go-1.17/go-1.17/0007-cmd-go-make-GOROOT-precious-by-default.patch b/recipes-devtools/go-1.17/go-1.17/0007-cmd-go-make-GOROOT-precious-by-default.patch
new file mode 100644
index 0000000..4b4d0d4
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0007-cmd-go-make-GOROOT-precious-by-default.patch
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
+@@ -670,6 +670,9 @@ func (b *Builder) addTransitiveLinkDeps(
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
+@@ -167,6 +167,8 @@ See also: go install, go get, go clean.
+ 
+ const concurrentGCBackendCompilationEnabledByDefault = true
+ 
++var goRootPrecious bool = true
++
+ func init() {
+ 	// break init cycle
+ 	CmdBuild.Run = runBuild
+@@ -179,6 +181,10 @@ func init() {
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
+@@ -468,6 +468,23 @@ func (b *Builder) build(a *Action) (err
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
+@@ -1520,6 +1537,14 @@ func BuildInstallFunc(b *Builder, a *Act
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
diff --git a/recipes-devtools/go-1.17/go-1.17/0008-use-GOBUILDMODE-to-set-buildmode.patch b/recipes-devtools/go-1.17/go-1.17/0008-use-GOBUILDMODE-to-set-buildmode.patch
new file mode 100644
index 0000000..4e5d502
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0008-use-GOBUILDMODE-to-set-buildmode.patch
@@ -0,0 +1,42 @@
+From 971b5626339ce0c4d57f9721c9a81af566c5a044 Mon Sep 17 00:00:00 2001
+From: Alex Kube <alexander.j.kube@gmail.com>
+Date: Wed, 23 Oct 2019 21:19:26 +0430
+Subject: [PATCH 8/9] cmd/go: Use GOBUILDMODE to set buildmode
+
+Upstream-Status: Denied [upstream choose antoher solution: `17a256b
+cmd/go: -buildmode=pie for android/arm']
+
+While building go itself, the go build system does not support
+to set `-buildmode=pie' from environment.
+
+Add GOBUILDMODE to support it which make PIE executables the default
+build mode, as PIE executables are required as of Yocto
+
+Refers: https://groups.google.com/forum/#!topic/golang-dev/gRCe5URKewI
+
+Adapted to Go 1.13 from patches originally submitted to
+the meta/recipes-devtools/go tree by
+Hongxu Jia <hongxu.jia@windriver.com>
+
+Signed-off-by: Alexander J Kube <alexander.j.kube@gmail.com>
+---
+ src/cmd/go/internal/work/build.go | 8 +++++++-
+ 1 file changed, 7 insertions(+), 1 deletion(-)
+
+--- a/src/cmd/go/internal/work/build.go
++++ b/src/cmd/go/internal/work/build.go
+@@ -254,7 +254,13 @@ func AddBuildFlags(cmd *base.Command, ma
+ 
+ 	cmd.Flag.Var(&load.BuildAsmflags, "asmflags", "")
+ 	cmd.Flag.Var(buildCompiler{}, "compiler", "")
+-	cmd.Flag.StringVar(&cfg.BuildBuildmode, "buildmode", "default", "")
++
++	if bm := os.Getenv("GOBUILDMODE"); bm != "" {
++		cmd.Flag.StringVar(&cfg.BuildBuildmode, "buildmode", bm, "")
++	} else {
++		cmd.Flag.StringVar(&cfg.BuildBuildmode, "buildmode", "default", "")
++	}
++
+ 	cmd.Flag.Var(&load.BuildGcflags, "gcflags", "")
+ 	cmd.Flag.Var(&load.BuildGccgoflags, "gccgoflags", "")
+ 	if mask&OmitModFlag == 0 {
diff --git a/recipes-devtools/go-1.17/go-1.17/0009-Revert-cmd-go-make-sure-CC-and-CXX-are-absolute.patch b/recipes-devtools/go-1.17/go-1.17/0009-Revert-cmd-go-make-sure-CC-and-CXX-are-absolute.patch
new file mode 100644
index 0000000..f857b72
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-1.17/0009-Revert-cmd-go-make-sure-CC-and-CXX-are-absolute.patch
@@ -0,0 +1,94 @@
+From 66a45dae3af140662e17ef85c2e6fe40270a2553 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Mon, 22 Feb 2021 17:54:01 -0800
+Subject: [PATCH] Revert "cmd/go: make sure CC and CXX are absolute"
+
+OE uses CC/CXX values which consists of cmpiler and options together,
+secondly, the environment is canned so this check add little value to OE
+based builds
+
+Fixes go-runtime build issues
+
+go install: CXX environment variable is relative; must be absolute path: powerpc64le-yoe-linux-musl-g++ -mlittle-endian -mhard-float -m64 -mabi=elfv2 -mcpu=power9 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=/mnt/b/yoe/master/build/tmp/work/ppc64p9le-yoe-linux-musl/go/1.16-r0/recipe-sysroot
+
+This reverts commit aa161e799df7e1eba99d2be10271e76b6f758142.
+
+Upstream-Status: Inappropriate [OE-Specific]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ src/cmd/go/internal/envcmd/env.go        |  5 -----
+ src/cmd/go/internal/work/init.go         |  6 ------
+ src/cmd/go/testdata/script/env_write.txt | 24 ------------------------
+ 3 files changed, 35 deletions(-)
+
+diff --git a/src/cmd/go/internal/envcmd/env.go b/src/cmd/go/internal/envcmd/env.go
+index ff6f0d8..43b94e7 100644
+--- a/src/cmd/go/internal/envcmd/env.go
++++ b/src/cmd/go/internal/envcmd/env.go
+@@ -457,11 +457,6 @@ func checkEnvWrite(key, val string) error {
+ 		if !filepath.IsAbs(val) && val != "" {
+ 			return fmt.Errorf("GOPATH entry is relative; must be absolute path: %q", val)
+ 		}
+-	// Make sure CC and CXX are absolute paths
+-	case "CC", "CXX", "GOMODCACHE":
+-		if !filepath.IsAbs(val) && val != "" && val != filepath.Base(val) {
+-			return fmt.Errorf("%s entry is relative; must be absolute path: %q", key, val)
+-		}
+ 	}
+ 
+ 	if !utf8.ValidString(val) {
+diff --git a/src/cmd/go/internal/work/init.go b/src/cmd/go/internal/work/init.go
+index 37a3e2d..316b0cf 100644
+--- a/src/cmd/go/internal/work/init.go
++++ b/src/cmd/go/internal/work/init.go
+@@ -39,12 +39,6 @@ func BuildInit() {
+ 		cfg.BuildPkgdir = p
+ 	}
+ 
+-	// Make sure CC and CXX are absolute paths
+-	for _, key := range []string{"CC", "CXX"} {
+-		if path := cfg.Getenv(key); !filepath.IsAbs(path) && path != "" && path != filepath.Base(path) {
+-			base.Fatalf("go %s: %s environment variable is relative; must be absolute path: %s\n", flag.Args()[0], key, path)
+-		}
+-	}
+ }
+ 
+ func instrumentInit() {
+diff --git a/src/cmd/go/testdata/script/env_write.txt b/src/cmd/go/testdata/script/env_write.txt
+index b5e9739..566c876 100644
+--- a/src/cmd/go/testdata/script/env_write.txt
++++ b/src/cmd/go/testdata/script/env_write.txt
+@@ -129,30 +129,6 @@ go env -w GOTMPDIR=
+ go env GOTMPDIR
+ stdout ^$
+ 
+-# go env -w rejects relative CC values
+-[!windows] go env -w CC=/usr/bin/clang
+-go env -w CC=clang
+-[!windows] ! go env -w CC=./clang
+-[!windows] ! go env -w CC=bin/clang
+-[!windows] stderr 'go env -w: CC entry is relative; must be absolute path'
+-
+-[windows] go env -w CC=$WORK\bin\clang
+-[windows] ! go env -w CC=.\clang
+-[windows] ! go env -w CC=bin\clang
+-[windows] stderr 'go env -w: CC entry is relative; must be absolute path'
+-
+-# go env -w rejects relative CXX values
+-[!windows] go env -w CC=/usr/bin/cpp
+-go env -w CXX=cpp
+-[!windows] ! go env -w CXX=./cpp
+-[!windows] ! go env -w CXX=bin/cpp
+-[!windows] stderr 'go env -w: CXX entry is relative; must be absolute path'
+-
+-[windows] go env -w CXX=$WORK\bin\cpp
+-[windows] ! go env -w CXX=.\cpp
+-[windows] ! go env -w CXX=bin\cpp
+-[windows] stderr 'go env -w: CXX entry is relative; must be absolute path'
+-
+ # go env -w/-u checks validity of GOOS/ARCH combinations
+ env GOOS=
+ env GOARCH=
+-- 
+2.20.1
+
diff --git a/recipes-devtools/go-1.17/go-binary-native_1.17.4.bb b/recipes-devtools/go-1.17/go-binary-native_1.17.4.bb
new file mode 100644
index 0000000..8d8142c
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-binary-native_1.17.4.bb
@@ -0,0 +1,46 @@
+# This recipe is for bootstrapping our go-cross from a prebuilt binary of Go from golang.org.
+
+SUMMARY = "Go programming language compiler (upstream binary for bootstrap)"
+HOMEPAGE = " http://golang.org/"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
+
+PROVIDES = "go-native"
+
+SRC_URI = "https://dl.google.com/go/go${PV}.${BUILD_GOOS}-${BUILD_GOARCH}.tar.gz;name=go_${BUILD_GOTUPLE}"
+SRC_URI[go_linux_amd64.sha256sum] = "adab2483f644e2f8a10ae93122f0018cef525ca48d0b8764dae87cb5f4fd4206"
+SRC_URI[go_linux_arm64.sha256sum] = "617a46bd083e59877bb5680998571b3ddd4f6dcdaf9f8bf65ad4edc8f3eafb13"
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
diff --git a/recipes-devtools/go-1.17/go-common.inc b/recipes-devtools/go-1.17/go-common.inc
new file mode 100644
index 0000000..dfccebd
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-common.inc
@@ -0,0 +1,42 @@
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
+export GOTMPDIR ?= "${WORKDIR}/go-tmp"
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
+do_compile:prepend() {
+	BUILD_CC=${BUILD_CC}
+}
diff --git a/recipes-devtools/go-1.17/go-cross-canadian.inc b/recipes-devtools/go-1.17/go-cross-canadian.inc
new file mode 100644
index 0000000..d49250a
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-cross-canadian.inc
@@ -0,0 +1,62 @@
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
+do_compile[dirs] =+ "${GOTMPDIR} ${B}/bin ${B}/pkg"
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
diff --git a/recipes-devtools/go-1.17/go-cross-canadian_1.17.4.bb b/recipes-devtools/go-1.17/go-cross-canadian_1.17.4.bb
new file mode 100644
index 0000000..7ac9449
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-cross-canadian_1.17.4.bb
@@ -0,0 +1,2 @@
+require go-cross-canadian.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.17/go-cross.inc b/recipes-devtools/go-1.17/go-cross.inc
new file mode 100644
index 0000000..3d5803b
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-cross.inc
@@ -0,0 +1,53 @@
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
+do_compile[dirs] =+ "${GOTMPDIR} ${B}/bin ${B}/pkg"
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
diff --git a/recipes-devtools/go-1.17/go-cross_1.17.4.bb b/recipes-devtools/go-1.17/go-cross_1.17.4.bb
new file mode 100644
index 0000000..80b5a03
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-cross_1.17.4.bb
@@ -0,0 +1,2 @@
+require go-cross.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.17/go-crosssdk.inc b/recipes-devtools/go-1.17/go-crosssdk.inc
new file mode 100644
index 0000000..f0bec79
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-crosssdk.inc
@@ -0,0 +1,43 @@
+inherit crosssdk
+
+DEPENDS = "go-native virtual/${TARGET_PREFIX}gcc-crosssdk virtual/nativesdk-${TARGET_PREFIX}compilerlibs virtual/${TARGET_PREFIX}binutils-crosssdk"
+PN = "go-crosssdk-${SDK_SYS}"
+PROVIDES = "virtual/${TARGET_PREFIX}go-crosssdk"
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
+do_compile[dirs] =+ "${GOTMPDIR} ${B}/bin ${B}/pkg"
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
diff --git a/recipes-devtools/go-1.17/go-crosssdk_1.17.4.bb b/recipes-devtools/go-1.17/go-crosssdk_1.17.4.bb
new file mode 100644
index 0000000..1857c8a
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-crosssdk_1.17.4.bb
@@ -0,0 +1,2 @@
+require go-crosssdk.inc
+require go-${PV}.inc
diff --git a/recipes-devtools/go-1.17/go-native_1.17.4.bb b/recipes-devtools/go-1.17/go-native_1.17.4.bb
new file mode 100644
index 0000000..ffe4ef3
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-native_1.17.4.bb
@@ -0,0 +1,59 @@
+# This recipe builds a native Go (written in Go) by first building an old Go 1.4
+# (written in C). However this old Go does not support all hosts platforms.
+
+require go-${PV}.inc
+
+inherit native
+
+SRC_URI:append = " https://dl.google.com/go/go1.4-bootstrap-20171003.tar.gz;name=bootstrap;subdir=go1.4"
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
+do_compile[dirs] =+ "${GOTMPDIR} ${B}/bin"
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
diff --git a/recipes-devtools/go-1.17/go-runtime.inc b/recipes-devtools/go-1.17/go-runtime.inc
new file mode 100644
index 0000000..617e6b5
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-runtime.inc
@@ -0,0 +1,87 @@
+DEPENDS = "virtual/${TUNE_PKGARCH}-go go-native"
+DEPENDS:class-nativesdk = "virtual/${TARGET_PREFIX}go-crosssdk"
+PROVIDES = "virtual/${TARGET_PREFIX}go-runtime"
+
+export CGO_CFLAGS = "${CFLAGS}"
+export CGO_CPPFLAGS = "${CPPFLAGS}"
+export CGO_CXXFLAGS = "${CXXFLAGS}"
+export CGO_LDFLAGS = "${LDFLAGS}"
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
+do_compile[dirs] =+ "${GOTMPDIR} ${B}/bin ${B}/pkg"
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
diff --git a/recipes-devtools/go-1.17/go-runtime_1.17.4.bb b/recipes-devtools/go-1.17/go-runtime_1.17.4.bb
new file mode 100644
index 0000000..63464a1
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-runtime_1.17.4.bb
@@ -0,0 +1,3 @@
+require go-${PV}.inc
+require go-runtime.inc
+
diff --git a/recipes-devtools/go-1.17/go-target.inc b/recipes-devtools/go-1.17/go-target.inc
new file mode 100644
index 0000000..47b4411
--- /dev/null
+++ b/recipes-devtools/go-1.17/go-target.inc
@@ -0,0 +1,45 @@
+DEPENDS = "virtual/${TUNE_PKGARCH}-go go-native"
+DEPENDS:class-nativesdk = "virtual/${TARGET_PREFIX}go-crosssdk go-native"
+
+export GOCACHE = "${B}/.cache"
+GO_LDFLAGS = ""
+GO_LDFLAGS:class-nativesdk = "-linkmode external"
+export GO_LDFLAGS
+
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
+do_compile[dirs] =+ "${GOTMPDIR} ${B}/bin ${B}/pkg"
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
diff --git a/recipes-devtools/go-1.17/go_1.17.4.bb b/recipes-devtools/go-1.17/go_1.17.4.bb
new file mode 100644
index 0000000..34dc89b
--- /dev/null
+++ b/recipes-devtools/go-1.17/go_1.17.4.bb
@@ -0,0 +1,17 @@
+require go-${PV}.inc
+require go-target.inc
+
+inherit linuxloader
+
+export GOBUILDMODE=""
+export GO_LDSO = "${@get_linuxloader(d)}"
+export CC_FOR_TARGET = "gcc"
+export CXX_FOR_TARGET = "g++"
+
+# mips/rv64 doesn't support -buildmode=pie, so skip the QA checking for mips/riscv32 and its
+# variants.
+python() {
+    if 'mips' in d.getVar('TARGET_ARCH',True) or 'riscv32' in d.getVar('TARGET_ARCH',True):
+        d.appendVar('INSANE_SKIP:%s' % d.getVar('PN',True), " textrel")
+}
+
-- 
2.20.1


