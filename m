Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D922E00E83; Mon,  5 Mar 2018 01:31:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19A2CE00E83
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:31 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id v111so16454342wrb.3
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=b9ZcGyeTzdOU/mPLHV79HurzU/cnUWHPDB7kSA5rov0=;
	b=GRtNck24D/Vb8h4/YImAeLmB/xMwLt4cA6Q60j6DjsUwUm9v7F4i5ze9vBvuF0hDe5
	x92gL733ElJvlkV7add4XnwhST+ZQ0ALCj4vwSLNUGV0iODl5lcmC3mI06v9/krb3Yu4
	cjXOxqoty9Rk2ZRWjxIqh0OyffJoEc2Cd193WG6eAAF/HXYH8SiKJ7A/hT98FHznyCVz
	Ulh4KuxH3tp7TjUV3FsTRNDDHX2Hsf6HBmCcPS9gALf9gMyBUW/6EOBciTIUjeOsUWwj
	d/TasiK1nlmBFVSsfus7tAOG9ByllF0Biq/cgIvhYFJRyM6bOqYTkcmbgSNhOG4GUc4E
	KtcA==
X-Gm-Message-State: APf1xPAlcq2lPzX0G8XwLG7Vf62Wi5KOhFUx/o1f4nM5sXOl8qDBFtxI
	LssvFQeETpoytS1kitSsH2nDokmb
X-Google-Smtp-Source: AG47ELvyslRpdrwKz/Ocyfio8I3K0V0ZIAmGNAvg4zAbu0mnPIruEzc87RVQ8qlEYvv+4yG9ZKSilg==
X-Received: by 10.223.195.206 with SMTP id d14mr12983946wrg.0.1520242289727;
	Mon, 05 Mar 2018 01:31:29 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:29 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:31:06 +0000
Message-Id: <20180305093106.11858-15-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 14/14] openjdk-8: add aarch64 support
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

This is using the aarch64 port to make it work, which is at version
u161b15.
We also add one patch to make this work with musl, too.

Because the aarch64 port is fetched from a different
repository, the version specific include has been split so
as to have all common parts (URIs, patches, configuration
bits) in one single file, and version specific bits
(checksum, mercurial commit ID), in another file, to
ease maintenance, and make distinguishing easier.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-common.inc          |  2 -
 recipes-core/openjdk/openjdk-8-release-161b15.inc  | 33 ++++++++
 recipes-core/openjdk/openjdk-8-release-162b12.inc  | 83 +--------------------
 recipes-core/openjdk/openjdk-8-release-16xbyy.inc  | 87 ++++++++++++++++++++++
 .../{openjdk-8_162b12.bb => openjdk-8_16xbyy.bb}   |  3 +
 .../{openjre-8_162b12.bb => openjre-8_16xbyy.bb}   |  3 +
 .../hotspot-remaining-musl-fixes-aarch64.patch     | 35 +++++++++
 7 files changed, 164 insertions(+), 82 deletions(-)
 create mode 100644 recipes-core/openjdk/openjdk-8-release-161b15.inc
 create mode 100644 recipes-core/openjdk/openjdk-8-release-16xbyy.inc
 rename recipes-core/openjdk/{openjdk-8_162b12.bb => openjdk-8_16xbyy.bb} (98%)
 rename recipes-core/openjdk/{openjre-8_162b12.bb => openjre-8_16xbyy.bb} (96%)
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/hotspot-remaining-musl-fixes-aarch64.patch

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index dbdd053..b2020c3 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -199,8 +199,6 @@ def get_jdk_arch(d):
     return jdk_arch
 
 JDK_ARCH = "${@get_jdk_arch(d)}"
-# We do not yet work for aarch64.
-COMPATIBLE_HOST = "^(?!aarch64).*"
 
 export DEBUG_BINARIES = "true"
 
diff --git a/recipes-core/openjdk/openjdk-8-release-161b15.inc b/recipes-core/openjdk/openjdk-8-release-161b15.inc
new file mode 100644
index 0000000..0a4434c
--- /dev/null
+++ b/recipes-core/openjdk/openjdk-8-release-161b15.inc
@@ -0,0 +1,33 @@
+require openjdk-8-release-16xbyy.inc
+
+CORBA_CHANGESET_aarch64 = "f73da600c483"
+SRC_URI[corba.md5sum] = "bf884b82fcc6de466946fcb87d24ebf3"
+SRC_URI[corba.sha256sum] = "ebf73d96185fc05e502088ae89a8d6494c3971dd220458deeff3876f72396b6c"
+
+HOTSPOT_CHANGESET_aarch64 = "a600839824fa"
+SRC_URI[hotspot.md5sum] = "20c88ba26f8f45a2769f4edf32afd593"
+SRC_URI[hotspot.sha256sum] = "6d0d1b9c2df3392ad6e21ca3eae39d06b50632a4a419da3d4363248943ea8b97"
+
+JAXP_CHANGESET_aarch64 = "b1e2af899046"
+SRC_URI[jaxp.md5sum] = "219582b26d7de2973b75f4329b53ec7d"
+SRC_URI[jaxp.sha256sum] = "907cc4dfb01a3a2a6d74dfa90fa6fcb5b3df55600f41ba44dcdc94b47e85a382"
+
+JAXWS_CHANGESET_aarch64 = "0002ed323fe5"
+SRC_URI[jaxws.md5sum] = "44935b81e3405fcaef675d5d08c2149e"
+SRC_URI[jaxws.sha256sum] = "0d1d52f1cf254a643ece1bd6cd8628fae1a4d56e8b59388cc9ad73b3caf151a1"
+
+JDK_CHANGESET_aarch64 = "c2ba2ed87d18"
+SRC_URI[jdk.md5sum] = "f4c0393a157dcb8b90ee7c7d80cbdfbf"
+SRC_URI[jdk.sha256sum] = "c84a17451b47242f9d96bf431011607afc3776f285a6ad9a60190fba2d434c49"
+
+LANGTOOLS_CHANGESET_aarch64 = "cdb217c578cb"
+SRC_URI[langtools.md5sum] = "608cf07781259d916d1663d6a5ced26d"
+SRC_URI[langtools.sha256sum] = "ad28e75bfaba1b64fdd02ea316db3ba3cba68007f90c5fa2be2418ce8bc0074d"
+
+NASHORN_CHANGESET_aarch64 = "505d0eb2fafe"
+SRC_URI[nashorn.md5sum] = "be981a6c55f9e602ff129fed65505a8c"
+SRC_URI[nashorn.sha256sum] = "14419ccd773e1db83b600d05aca3cbac9f24be77abda9a132d12305d8821d6d7"
+
+OPENJDK_CHANGESET_aarch64 = "917454da25c1"
+SRC_URI[openjdk.md5sum] = "1e4b3eca032742b7448731f9b8fcb426"
+SRC_URI[openjdk.sha256sum] = "1e17e2d8384a7b808a89b982e7c09c4feb8598b7a66b93697bfb8759c1005974"
diff --git a/recipes-core/openjdk/openjdk-8-release-162b12.inc b/recipes-core/openjdk/openjdk-8-release-162b12.inc
index dc1e023..bc2b342 100644
--- a/recipes-core/openjdk/openjdk-8-release-162b12.inc
+++ b/recipes-core/openjdk/openjdk-8-release-162b12.inc
@@ -1,58 +1,7 @@
-PATCHES_URI = "\
-    file://remove-shell-variables-from-autoheader.patch;striplevel=0 \
-    file://filter-aclocal-copy-too.patch;striplevel=0 \
-    file://dont-expect-fqpn-for-make.patch;striplevel=0 \
-    file://openjdk8-no-genx11-in-headless.patch;striplevel=0 \
-    file://openjdk8-no-unused-deps.patch;striplevel=0 \
-    file://openjdk8-find-compiler-fix-env-respect.patch;striplevel=0 \
-    file://openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch;striplevel=0 \
-    file://0001-jdk-comparison-between-pointer-and-integer.patch \
-    file://0002-hotspot-fix-compilation-with-security-flags-enabled.patch \
-    file://0003-jdk-Allow-using-a-system-installed-libjpeg.patch \
-    file://0004-jdk-Allow-using-a-system-installed-libpng.patch \
-    file://0005-hotspot-use-correct-include-for-poll.patch \
-    file://0006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch \
-    file://0007-jdk-use-correct-include-for-poll.patch \
-    file://0008-jdk-use-correct-include-for-signal.patch \
-    file://0009-jdk-disable-backtrace-musl-build-fix.patch \
-"
-# some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
-# reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
-# by Roman Kennke (rkennke at redhat.com)
-PATCHES_URI_append_class-target = "\
-    file://openjdk8-restrict-to-staging-dir.patch;striplevel=0 \
-    file://openjdk8-fix-shark-build.patch;striplevel=0 \
-    file://openjdk8-fix-shark-stdc++11.patch;striplevel=0 \
-    file://openjdk8-fix-assembler-flag-handling-in-makefile.patch;striplevel=0 \
-    file://openjdk8-fix-adlc-flags.patch;striplevel=0 \
-    file://openjdk8-add-missing-linker-flags.patch;striplevel=0 \
-    file://openjdk8-fix-libpng-neon-build.patch;striplevel=0 \
-"
-PATCHES_URI_append_libc-musl = "\
-    file://musl-0001-hotspot-stop-using-obsolete-isnanf.patch \
-    file://musl-0002-jdk-give-a-much-bigger-buffer-to-getmntent_r.patch \
-    file://musl-0003-jdk-fix-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch \
-    file://musl-0004-jdk-remove-sysctl.h-include-musl-build-fix.patch \
-    file://musl-0005-hotspot-disable-agent-build.patch \
-    file://musl-0006-hotspot-os_linux-remove-glibc-dependencies.patch \
-    file://musl-0007-hotspot-os_linux_x86-remove-glibc-dependencies-fpu_c.patch \
-    file://musl-0008-jdk-musl-build-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch \
-    file://musl-0009-jdk-musl-has-gethostby_r.patch \
-"
+require openjdk-8-release-16xbyy.inc
 
-# Name of the directory containing the compiled output
-BUILD_DIR = "openjdk.build"
-BUILD_DIR_ECJ = "openjdk.build-ecj"
-
-# Force arm mode for now
-ARM_INSTRUCTION_SET_armv4t = "ARM"
-
-# readdir_r was deprecated in glibc-2.24. Ignore the error for now
-# NOTE: When updating the recipe, please check if this is still needed
-CFLAGS_append = " -Wno-error=deprecated-declarations"
-
-# Enable zero mode for arm based builds, as normal hotspot fails to build
-PACKAGECONFIG_append_arm = " zero"
+# We do not yet work for aarch64.
+COMPATIBLE_HOST = "^(?!aarch64).*"
 
 CORBA_CHANGESET = "f6b6ad6feb6e"
 SRC_URI[corba.md5sum] = "0358300224b63f3deeba63d3de7d765c"
@@ -86,33 +35,7 @@ OPENJDK_CHANGESET = "4be07cb28b21"
 SRC_URI[openjdk.md5sum] = "24d30b66aaaef51af9b598c8989c1c82"
 SRC_URI[openjdk.sha256sum] = "8f9ecc5fc5f9c6df671a2ef07949f86080823c89954b2b87f6727a82af679eca"
 
-OPENJDK_HG_U = "jdk8u"
-OPENJDK_HG_URL = "http://hg.openjdk.java.net/jdk8u/${OPENJDK_HG_U}"
-
-OPENJDK_FILE = "${OPENJDK_CHANGESET}.tar.bz2"
-OPENJDK_URI = "${OPENJDK_HG_URL}/archive/${OPENJDK_FILE};name=openjdk"
-
-HOTSPOT_FILE = "${HOTSPOT_CHANGESET}.tar.bz2"
-HOTSPOT_URI = "${OPENJDK_HG_URL}/hotspot/archive/${HOTSPOT_FILE};name=hotspot;unpack=false"
-
-CORBA_FILE = "${CORBA_CHANGESET}.tar.bz2"
-CORBA_URI = "${OPENJDK_HG_URL}/corba/archive/${CORBA_FILE};name=corba;unpack=false"
 
-JAXP_FILE = "${JAXP_CHANGESET}.tar.bz2"
-JAXP_URI = "${OPENJDK_HG_URL}/jaxp/archive/${JAXP_FILE};name=jaxp;unpack=false"
-
-JAXWS_FILE = "${JAXWS_CHANGESET}.tar.bz2"
-JAXWS_URI = "${OPENJDK_HG_URL}/jaxws/archive/${JAXWS_FILE};name=jaxws;unpack=false"
-
-JDK_FILE = "${JDK_CHANGESET}.tar.bz2"
-JDK_URI = "${OPENJDK_HG_URL}/jdk/archive/${JDK_FILE};name=jdk;unpack=false"
-
-LANGTOOLS_FILE = "${LANGTOOLS_CHANGESET}.tar.bz2"
-LANGTOOLS_URI = "${OPENJDK_HG_URL}/langtools/archive/${LANGTOOLS_FILE};name=langtools;unpack=false"
-
-NASHORN_FILE = "${NASHORN_CHANGESET}.tar.bz2"
-NASHORN_URI = "${OPENJDK_HG_URL}/nashorn/archive/${NASHORN_FILE};name=nashorn;unpack=false"
-#
 #CACAO_VERSION = "e215e36be9fc"
 #CACAO_FILE = "${CACAO_VERSION}.tar.gz"
 #CACAO_URI = "http://icedtea.wildebeest.org/download/drops/cacao/${CACAO_FILE};name=cacao;unpack=false"
diff --git a/recipes-core/openjdk/openjdk-8-release-16xbyy.inc b/recipes-core/openjdk/openjdk-8-release-16xbyy.inc
new file mode 100644
index 0000000..ab72830
--- /dev/null
+++ b/recipes-core/openjdk/openjdk-8-release-16xbyy.inc
@@ -0,0 +1,87 @@
+PATCHES_URI = "\
+    file://remove-shell-variables-from-autoheader.patch;striplevel=0 \
+    file://filter-aclocal-copy-too.patch;striplevel=0 \
+    file://dont-expect-fqpn-for-make.patch;striplevel=0 \
+    file://openjdk8-no-genx11-in-headless.patch;striplevel=0 \
+    file://openjdk8-no-unused-deps.patch;striplevel=0 \
+    file://openjdk8-find-compiler-fix-env-respect.patch;striplevel=0 \
+    file://openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch;striplevel=0 \
+    file://0001-jdk-comparison-between-pointer-and-integer.patch \
+    file://0002-hotspot-fix-compilation-with-security-flags-enabled.patch \
+    file://0003-jdk-Allow-using-a-system-installed-libjpeg.patch \
+    file://0004-jdk-Allow-using-a-system-installed-libpng.patch \
+    file://0005-hotspot-use-correct-include-for-poll.patch \
+    file://0006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch \
+    file://0007-jdk-use-correct-include-for-poll.patch \
+    file://0008-jdk-use-correct-include-for-signal.patch \
+    file://0009-jdk-disable-backtrace-musl-build-fix.patch \
+"
+# some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
+# reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
+# by Roman Kennke (rkennke at redhat.com)
+LIBPNG_NEON_PATCH = "file://openjdk8-fix-libpng-neon-build.patch;striplevel=0"
+LIBPNG_NEON_PATCH_aarch64 = ""
+PATCHES_URI_append_class-target = "\
+    file://openjdk8-restrict-to-staging-dir.patch;striplevel=0 \
+    file://openjdk8-fix-shark-build.patch;striplevel=0 \
+    file://openjdk8-fix-shark-stdc++11.patch;striplevel=0 \
+    file://openjdk8-fix-assembler-flag-handling-in-makefile.patch;striplevel=0 \
+    file://openjdk8-fix-adlc-flags.patch;striplevel=0 \
+    file://openjdk8-add-missing-linker-flags.patch;striplevel=0 \
+    ${LIBPNG_NEON_PATCH} \
+"
+PATCHES_URI_append_libc-musl = "\
+    file://musl-0001-hotspot-stop-using-obsolete-isnanf.patch \
+    file://musl-0002-jdk-give-a-much-bigger-buffer-to-getmntent_r.patch \
+    file://musl-0003-jdk-fix-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch \
+    file://musl-0004-jdk-remove-sysctl.h-include-musl-build-fix.patch \
+    file://musl-0005-hotspot-disable-agent-build.patch \
+    file://musl-0006-hotspot-os_linux-remove-glibc-dependencies.patch \
+    file://musl-0007-hotspot-os_linux_x86-remove-glibc-dependencies-fpu_c.patch \
+    file://musl-0008-jdk-musl-build-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch \
+    file://musl-0009-jdk-musl-has-gethostby_r.patch \
+"
+PATCHES_URI_append_libc-musl_aarch64 = " file://hotspot-remaining-musl-fixes-aarch64.patch"
+
+# Name of the directory containing the compiled output
+BUILD_DIR = "openjdk.build"
+BUILD_DIR_ECJ = "openjdk.build-ecj"
+
+# Force arm mode for now
+ARM_INSTRUCTION_SET_armv4t = "ARM"
+
+# readdir_r was deprecated in glibc-2.24. Ignore the error for now
+# NOTE: When updating the recipe, please check if this is still needed
+CFLAGS_append = " -Wno-error=deprecated-declarations"
+
+# Enable zero mode for arm based builds, as normal hotspot fails to build
+PACKAGECONFIG_append_arm = " zero"
+
+OPENJDK_ARCH_PORT = "jdk8u"
+OPENJDK_ARCH_PORT_aarch64 = "aarch64-port"
+OPENJDK_HG_U = "jdk8u"
+OPENJDK_HG_URL = "http://hg.openjdk.java.net/${OPENJDK_ARCH_PORT}/${OPENJDK_HG_U}"
+
+OPENJDK_FILE = "${OPENJDK_CHANGESET}.tar.bz2"
+OPENJDK_URI = "${OPENJDK_HG_URL}/archive/${OPENJDK_FILE};name=openjdk"
+
+HOTSPOT_FILE = "${HOTSPOT_CHANGESET}.tar.bz2"
+HOTSPOT_URI = "${OPENJDK_HG_URL}/hotspot/archive/${HOTSPOT_FILE};name=hotspot;unpack=false"
+
+CORBA_FILE = "${CORBA_CHANGESET}.tar.bz2"
+CORBA_URI = "${OPENJDK_HG_URL}/corba/archive/${CORBA_FILE};name=corba;unpack=false"
+
+JAXP_FILE = "${JAXP_CHANGESET}.tar.bz2"
+JAXP_URI = "${OPENJDK_HG_URL}/jaxp/archive/${JAXP_FILE};name=jaxp;unpack=false"
+
+JAXWS_FILE = "${JAXWS_CHANGESET}.tar.bz2"
+JAXWS_URI = "${OPENJDK_HG_URL}/jaxws/archive/${JAXWS_FILE};name=jaxws;unpack=false"
+
+JDK_FILE = "${JDK_CHANGESET}.tar.bz2"
+JDK_URI = "${OPENJDK_HG_URL}/jdk/archive/${JDK_FILE};name=jdk;unpack=false"
+
+LANGTOOLS_FILE = "${LANGTOOLS_CHANGESET}.tar.bz2"
+LANGTOOLS_URI = "${OPENJDK_HG_URL}/langtools/archive/${LANGTOOLS_FILE};name=langtools;unpack=false"
+
+NASHORN_FILE = "${NASHORN_CHANGESET}.tar.bz2"
+NASHORN_URI = "${OPENJDK_HG_URL}/nashorn/archive/${NASHORN_FILE};name=nashorn;unpack=false"
diff --git a/recipes-core/openjdk/openjdk-8_162b12.bb b/recipes-core/openjdk/openjdk-8_16xbyy.bb
similarity index 98%
rename from recipes-core/openjdk/openjdk-8_162b12.bb
rename to recipes-core/openjdk/openjdk-8_16xbyy.bb
index 11208a1..dd0ed1d 100644
--- a/recipes-core/openjdk/openjdk-8_162b12.bb
+++ b/recipes-core/openjdk/openjdk-8_16xbyy.bb
@@ -1,3 +1,6 @@
+PV = "162b12"
+PV_aarch64 = "161b15"
+
 require openjdk-8-release-${PV}.inc
 require openjdk-8-cross.inc
 
diff --git a/recipes-core/openjdk/openjre-8_162b12.bb b/recipes-core/openjdk/openjre-8_16xbyy.bb
similarity index 96%
rename from recipes-core/openjdk/openjre-8_162b12.bb
rename to recipes-core/openjdk/openjre-8_16xbyy.bb
index 263091d..e6454ea 100644
--- a/recipes-core/openjdk/openjre-8_162b12.bb
+++ b/recipes-core/openjdk/openjre-8_16xbyy.bb
@@ -1,3 +1,6 @@
+PV = "162b12"
+PV_aarch64 = "161b15"
+
 require openjdk-8-release-${PV}.inc
 require openjdk-8-cross.inc
 
diff --git a/recipes-core/openjdk/patches-openjdk-8/hotspot-remaining-musl-fixes-aarch64.patch b/recipes-core/openjdk/patches-openjdk-8/hotspot-remaining-musl-fixes-aarch64.patch
new file mode 100644
index 0000000..436f012
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/hotspot-remaining-musl-fixes-aarch64.patch
@@ -0,0 +1,35 @@
+From 8e8e79c136fe56db119fd9a76fb881e96727c840 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 15:33:17 +0000
+Subject: [PATCH] hotspot: remaining musl fixes (aarch64)
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+* fpu_control.h doesn't exist in musl
+| hotspot/src/os_cpu/linux_aarch64/vm/os_linux_aarch64.cpp:78:11: fatal error: fpu_control.h: No such file or directory
+|  # include <fpu_control.h>
+|            ^~~~~~~~~~~~~~~
+
+Upstream-Status: Inappropriate [OE specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ hotspot/src/os_cpu/linux_aarch64/vm/os_linux_aarch64.cpp | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/hotspot/src/os_cpu/linux_aarch64/vm/os_linux_aarch64.cpp b/hotspot/src/os_cpu/linux_aarch64/vm/os_linux_aarch64.cpp
+index 8b985693..23f196cd 100644
+--- a/hotspot/src/os_cpu/linux_aarch64/vm/os_linux_aarch64.cpp
++++ b/hotspot/src/os_cpu/linux_aarch64/vm/os_linux_aarch64.cpp
+@@ -75,7 +75,7 @@
+ # include <pwd.h>
+ # include <poll.h>
+ # include <ucontext.h>
+-# include <fpu_control.h>
++# include <linux/types.h>  /* provides __u64 */
+ 
+ #ifdef BUILTIN_SIM
+ #define REG_SP REG_RSP
+-- 
+2.16.1
+
-- 
2.16.2


