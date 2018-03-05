Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34A13E00E18; Mon,  5 Mar 2018 01:31:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7812FE00E21
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:21 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id 188so14009420wme.1
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=vGo2NjhUUrUJCL0ZdsKpC+mNyYh/KDJBwuLZPpRDE1g=;
	b=ChPGbFeOKei05YX+Pl+Zm7TQ8FE/2GRImjMZyGYg0hKFuOKSCaPCGO6whcycoZb90V
	qWdtd2otx4dGjUpHV4L4CYYx13wd48QiYKVycwK9SygWZsOPb0y/aZEMm979YDBSRl4H
	KcodVkeqimy/Z/yPrznPI1SAyBUaDPHGbwoe+1B8GCob64JAC/4xzwKwCshXBJgsciH+
	HM0i/WjHOI56Ycxx/Peta82ju4w8hg63bj9PeRL5mranmoanu9qebjYYDxs6C6fXC9hi
	JXei//8z4xMDCHrxMjbz38pQpeYd7z2tPTJMW5YNO6VBmyzEc0rqohtlequFj4atIAwP
	ffMA==
X-Gm-Message-State: AElRT7FojAParX2/vGfxgOS6+jxTm80nzFbCFtiQHvlYieWh9NC7TdYb
	IdemUuXwPdr2g5Bxkg3TWrZi92ae
X-Google-Smtp-Source: AG47ELuP81/juErUOc1+zSlul7I8a9I8dmvBPXkwNgZYL/Sd6njJzCxmZA2qzmeg59Ka8FZ+sxrePw==
X-Received: by 10.28.9.19 with SMTP id 19mr8527670wmj.114.1520242280172;
	Mon, 05 Mar 2018 01:31:20 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.19 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:19 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:57 +0000
Message-Id: <20180305093106.11858-6-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 05/14] openjdk-8: rework do_patch (pt 2 - use bitbake variable overrides)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Mar 2018 09:31:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

This currently uses a hand-crafted solution to distinguish
between common, native-only and and target-only patches.
That is a bit hard to follow as patches are being applied in
strange order, and is also non-standard.

Instead, we can just use bitbake variable overrides. This
makes it much easier to work with this recipe, as:
* it is clear in which order patches are going to be applied by
  looking at the recipe
* it is clear which patches are meant to be common, for build,
  or target
* old patches that are still lying around in WORKDIR (e.g.
  because rm_work is not enabled), but that have been removed
  from SRC_URI are no longer incorrectly applied
* if patches fail to apply, we know exactly which patch has
  failed
* we can use PATCHTOOL = without any ill effects

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-common.inc         | 10 ----------
 recipes-core/openjdk/openjdk-8-cross.inc          | 14 --------------
 recipes-core/openjdk/openjdk-8-release-162b12.inc | 23 ++++++++++++++++++-----
 3 files changed, 18 insertions(+), 29 deletions(-)

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index cf14be9..dbdd053 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -155,16 +155,6 @@ def jdk_configure_options(d):
 do_unpack[postfuncs] += "do_unpack_extract_submodules"
 do_unpack[postfuncs] += "${@bb.utils.contains('PACKAGECONFIG', 'x11', '', 'do_unpack_remove_X11_wrappers', d)}"
 
-do_patch_openjdk8() {
-        olddir=`pwd`
-        cd "${S}"
-        for OJ8P in ${WORKDIR}/openjdk8-*.patch; do
-                patch -p0 < ${OJ8P}
-        done
-}
-
-do_patch[postfuncs] += "do_patch_openjdk8"
-
 do_configure_prepend() {
         export ${@jdk_environment_options(d)}
 }
diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index 65e3a98..3973fcf 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -1,20 +1,6 @@
 JDK_HOME = "${libdir_jvm}/openjdk-8"
 JRE_HOME = "${libdir_jvm}/openjre-8"
 
-# some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
-# reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
-# by Roman Kennke (rkennke at redhat.com)
-PATCHES_URI_append = "\
-    file://openjdk8-restrict-to-staging-dir.patch;apply=no \
-    file://openjdk8-fix-shark-build.patch;apply=no \
-    file://openjdk8-fix-shark-stdc++11.patch;apply=no \
-    file://openjdk8-fix-assembler-flag-handling-in-makefile.patch;apply=no \
-    file://openjdk8-fix-adlc-flags.patch;apply=no \
-    file://openjdk8-silence-d_fortify_source-warning.patch;apply=no \
-    file://openjdk8-add-missing-linker-flags.patch;apply=no \
-    file://openjdk8-fix-libpng-neon-build.patch;apply=no \
-"
-
 DEPENDS = "\
     openjdk-8-native zip-native ant-native libxslt \
     jpeg libpng krb5 libffi fontconfig freetype \
diff --git a/recipes-core/openjdk/openjdk-8-release-162b12.inc b/recipes-core/openjdk/openjdk-8-release-162b12.inc
index c8f6ad1..b7e6392 100644
--- a/recipes-core/openjdk/openjdk-8-release-162b12.inc
+++ b/recipes-core/openjdk/openjdk-8-release-162b12.inc
@@ -1,11 +1,24 @@
-PATCHES_URI="\
+PATCHES_URI = "\
     file://remove-shell-variables-from-autoheader.patch;striplevel=0 \
     file://filter-aclocal-copy-too.patch;striplevel=0 \
     file://dont-expect-fqpn-for-make.patch;striplevel=0 \
-    file://openjdk8-no-genx11-in-headless.patch;apply=no \
-    file://openjdk8-no-unused-deps.patch;apply=no \
-    file://openjdk8-find-compiler-fix-env-respect.patch;apply=no \
-    file://openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch;apply=no \
+    file://openjdk8-no-genx11-in-headless.patch;striplevel=0 \
+    file://openjdk8-no-unused-deps.patch;striplevel=0 \
+    file://openjdk8-find-compiler-fix-env-respect.patch;striplevel=0 \
+    file://openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch;striplevel=0 \
+"
+# some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
+# reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
+# by Roman Kennke (rkennke at redhat.com)
+PATCHES_URI_append_class-target = "\
+    file://openjdk8-restrict-to-staging-dir.patch;striplevel=0 \
+    file://openjdk8-fix-shark-build.patch;striplevel=0 \
+    file://openjdk8-fix-shark-stdc++11.patch;striplevel=0 \
+    file://openjdk8-fix-assembler-flag-handling-in-makefile.patch;striplevel=0 \
+    file://openjdk8-fix-adlc-flags.patch;striplevel=0 \
+    file://openjdk8-silence-d_fortify_source-warning.patch;striplevel=0 \
+    file://openjdk8-add-missing-linker-flags.patch;striplevel=0 \
+    file://openjdk8-fix-libpng-neon-build.patch;striplevel=0 \
 "
 
 # Name of the directory containing the compiled output
-- 
2.16.2


