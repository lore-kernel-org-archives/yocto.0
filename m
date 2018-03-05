Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B43E01065; Mon,  5 Mar 2018 01:31:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75346E01090
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:22 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id w128so14445063wmw.0
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=tGWrlV1raRTkl7dbegfuOwA3zBVhvfshTAjtHxNPSBA=;
	b=RnDKZM6oWgI1W8MjtgZ/7DFZ12ONG9oOidwtGwNFogvIclJO6GiioktUGUI7/q+GX2
	zGnfITwnc59VR7L2Xwfz0RjkIexmSgHzLalUgC3519RVCEjaAOILv/urgo3GD2+VJNwq
	cHccJss0NmKzdZDfwzf6sznuDLcxowOUVBhqLPRZ6fPkwcwvjRZtJ9N0DHkicF95SfnI
	VhUfBVvFqr05SpMjrCPD8Cy7uqTt2fmFjc3BGi8PWCgvNcJXYaRUZtlxJ8KjtAMMYJRa
	WY3WyZjBxIkL4Xbh0lASBX1J2FDEV0MZhmnypOcHlIC8gP66kvk5kySd/iQJfzRXOWY1
	sULw==
X-Gm-Message-State: AElRT7ElWQzCjbZoucL6+Sm08jf+FNnQ/j6ih4to+GNG5pnWEgNhAamt
	yBq34oyw8phftYqzhgkdKjuyvqRd
X-Google-Smtp-Source: AG47ELt7Cm8SiJZqm2NbNO130/cUXrByCPpN7Q0xL6gfPhhdgkEnskVmeWWbrVF5fBeFZc2/RoDgUA==
X-Received: by 10.28.111.145 with SMTP id c17mr6938530wmi.74.1520242278444;
	Mon, 05 Mar 2018 01:31:18 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.17 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:17 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:55 +0000
Message-Id: <20180305093106.11858-4-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 03/14] openjdk-8: Upgrade to u162b12
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

- openjdk8-fix-zero-mode-crash.patch was a backport -> dropped
- remaining patches -> refreshed
- license checksum change due to address change in license file
  (see patch)

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-common.inc          |    2 +-
 recipes-core/openjdk/openjdk-8-cross.inc           |    1 -
 recipes-core/openjdk/openjdk-8-native_102b14.bb    |    2 -
 recipes-core/openjdk/openjdk-8-native_162b12.bb    |    2 +
 ...ase-102b14.inc => openjdk-8-release-162b12.inc} |   48 +-
 .../{openjdk-8_102b14.bb => openjdk-8_162b12.bb}   |    2 +-
 .../{openjre-8_102b14.bb => openjre-8_162b12.bb}   |    2 +-
 recipes-core/openjdk/patches-openjdk-8/LICENSE     |    6 +-
 .../dont-expect-fqpn-for-make.patch                |    6 +-
 .../filter-aclocal-copy-too.patch                  |    6 +-
 .../patches-openjdk-8/handle_extra_output.patch    |    6 +-
 .../openjdk8-find-compiler-fix-env-respect.patch   |   36 +-
 ...8-fix-assembler-flag-handling-in-makefile.patch |    2 +-
 .../openjdk8-fix-shark-build.patch                 |  205 ++--
 .../openjdk8-fix-shark-stdc++11.patch              | 1008 ++++++++------------
 .../openjdk8-fix-zero-mode-crash.patch             |   49 -
 .../openjdk8-no-genx11-in-headless.patch           |   10 +-
 .../openjdk8-no-unused-deps.patch                  |   44 +-
 ...o-in-favour-of-openembedded-package-split.patch |   12 +-
 .../remove-shell-variables-from-autoheader.patch   |   10 +-
 20 files changed, 600 insertions(+), 859 deletions(-)
 delete mode 100644 recipes-core/openjdk/openjdk-8-native_102b14.bb
 create mode 100644 recipes-core/openjdk/openjdk-8-native_162b12.bb
 rename recipes-core/openjdk/{openjdk-8-release-102b14.inc => openjdk-8-release-162b12.inc} (64%)
 rename recipes-core/openjdk/{openjdk-8_102b14.bb => openjdk-8_162b12.bb} (98%)
 rename recipes-core/openjdk/{openjre-8_102b14.bb => openjre-8_162b12.bb} (96%)
 delete mode 100644 recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-zero-mode-crash.patch

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index 38a59f4..ab4c870 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "Java runtime based upon the OpenJDK Project"
 HOMEPAGE = "http://http://openjdk.java.net/"
 LICENSE  = "GPL-2.0-with-classpath-exception"
 
-LIC_FILES_CHKSUM = "file://LICENSE;md5=7b4baeedfe2d40cb03536573bc2c89b1"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3e0b59f8fac05c3c03d4a26bbda13f8f"
 
 inherit java autotools gettext qemu pkgconfig
 
diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index ad3a44d..65e3a98 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -11,7 +11,6 @@ PATCHES_URI_append = "\
     file://openjdk8-fix-assembler-flag-handling-in-makefile.patch;apply=no \
     file://openjdk8-fix-adlc-flags.patch;apply=no \
     file://openjdk8-silence-d_fortify_source-warning.patch;apply=no \
-    file://openjdk8-fix-zero-mode-crash.patch;apply=no \
     file://openjdk8-add-missing-linker-flags.patch;apply=no \
     file://openjdk8-fix-libpng-neon-build.patch;apply=no \
 "
diff --git a/recipes-core/openjdk/openjdk-8-native_102b14.bb b/recipes-core/openjdk/openjdk-8-native_102b14.bb
deleted file mode 100644
index e33f84a..0000000
--- a/recipes-core/openjdk/openjdk-8-native_102b14.bb
+++ /dev/null
@@ -1,2 +0,0 @@
-require openjdk-8-release-102b14.inc
-require openjdk-8-native.inc
diff --git a/recipes-core/openjdk/openjdk-8-native_162b12.bb b/recipes-core/openjdk/openjdk-8-native_162b12.bb
new file mode 100644
index 0000000..e7eb21c
--- /dev/null
+++ b/recipes-core/openjdk/openjdk-8-native_162b12.bb
@@ -0,0 +1,2 @@
+require openjdk-8-release-${PV}.inc
+require openjdk-8-native.inc
diff --git a/recipes-core/openjdk/openjdk-8-release-102b14.inc b/recipes-core/openjdk/openjdk-8-release-162b12.inc
similarity index 64%
rename from recipes-core/openjdk/openjdk-8-release-102b14.inc
rename to recipes-core/openjdk/openjdk-8-release-162b12.inc
index fdeb771..c8f6ad1 100644
--- a/recipes-core/openjdk/openjdk-8-release-102b14.inc
+++ b/recipes-core/openjdk/openjdk-8-release-162b12.inc
@@ -22,37 +22,37 @@ CFLAGS_append = " -Wno-error=deprecated-declarations"
 # Enable zero mode for arm based builds, as normal hotspot fails to build
 PACKAGECONFIG_append_arm = " zero"
 
-CORBA_CHANGESET = "56b133772ec1"
-SRC_URI[corba.md5sum] = "b67bd442400e6805ddb986e78adc2834"
-SRC_URI[corba.sha256sum] = "d5aabb9b3681b0593dde1b9eee4ff9b4cbabe7568b041f9e63e6fa73ba11bb86"
+CORBA_CHANGESET = "f6b6ad6feb6e"
+SRC_URI[corba.md5sum] = "0358300224b63f3deeba63d3de7d765c"
+SRC_URI[corba.sha256sum] = "54da09fd0c76834094d9f167c03ff1ac2373f5e46fb26d24d0d018cdc59a2842"
 
-HOTSPOT_CHANGESET = "ac29c9c1193a"
-SRC_URI[hotspot.md5sum] = "4383d833de07fc617595a01a78efd0fc"
-SRC_URI[hotspot.sha256sum] = "1e36c6d207ac1a7d6d08f28a61bf061188df0562d89baf606138d8245d690982"
+HOTSPOT_CHANGESET = "d2e3920d2fd0"
+SRC_URI[hotspot.md5sum] = "17a1da8be42ad0c7778e7090ea5003c1"
+SRC_URI[hotspot.sha256sum] = "3f07ee7a49cb4258ef00a8a896b0f7f87e85f06dc31f6c0db698d8058926b365"
 
-JAXP_CHANGESET = "1f032000ff4b"
-SRC_URI[jaxp.md5sum] = "a4a46860d00f8b513a690166b9ae0b56"
-SRC_URI[jaxp.sha256sum] = "dfa0098ca9b9f99cb9de4ee9f3c61b0ad28f968ecda770f09e603c6dd8f78df3"
+JAXP_CHANGESET = "e8a1a2db69dc"
+SRC_URI[jaxp.md5sum] = "9b344a6cf317ca485b8790e67ccc2467"
+SRC_URI[jaxp.sha256sum] = "fbd0eaed48415c2918a47e7d76ce276416bab792e1959b1d3dee2b703aa76f5a"
 
-JAXWS_CHANGESET = "81f2d81a48d7"
-SRC_URI[jaxws.md5sum] = "0077cb7f1d1b31ba882f910bd3c30050"
-SRC_URI[jaxws.sha256sum] = "c28322d7a9805d06b6f3a49d316aa4746076dfc106431a952fe0d12b6690cbdc"
+JAXWS_CHANGESET = "7b4329f78e52"
+SRC_URI[jaxws.md5sum] = "b1da20ee79382eb5bb72077eb02addd4"
+SRC_URI[jaxws.sha256sum] = "ffd31d467c6fe7fc0956e801c08168d48ba02b4dea38b7dedbafc054092ca8f0"
 
-JDK_CHANGESET = "48c99b423839"
-SRC_URI[jdk.md5sum] = "316fc871a823ff8f1db39a2fca51bd12"
-SRC_URI[jdk.sha256sum] = "bca18458ba0a0b8d79639829b8a71cdf65dd788b5c28658102b6b4691a47a420"
+JDK_CHANGESET = "d201d8b87f48"
+SRC_URI[jdk.md5sum] = "bced8a322e53083472b39f01e938b21a"
+SRC_URI[jdk.sha256sum] = "6e057ceb02a7d8bb66233d52b23d246120b5c0d72e7a71cb6fb0ace84e8bb581"
 
-LANGTOOLS_CHANGESET = "0549bf2f507d"
-SRC_URI[langtools.md5sum] = "bff92b915d26afd0c9b7c4b9013ee424"
-SRC_URI[langtools.sha256sum] = "4a918bab7a8f13b6705085be0d043b03e24afb4ff3c67ad98000c6b9fe577cb8"
+LANGTOOLS_CHANGESET = "034738d4f1d2"
+SRC_URI[langtools.md5sum] = "fbc6faea65cfc248f93f54e634d7bf50"
+SRC_URI[langtools.sha256sum] = "91615ade480c706f58062e74ee112f95ab947e1c5366a29a7d9b2b6b0a2f72d3"
 
-NASHORN_CHANGESET = "0948e61a3722"
-SRC_URI[nashorn.md5sum] = "19e79a31ad20b55b47d6b9f1b20eaac0"
-SRC_URI[nashorn.sha256sum] = "caa1f648cfbe45c081460bc9c2d9a7b83910bb468c325d8acc2ee4417460915e"
+NASHORN_CHANGESET = "81ce60cabe97"
+SRC_URI[nashorn.md5sum] = "318993c189f16894abe94db14a067618"
+SRC_URI[nashorn.sha256sum] = "8df64026be98e6efad200ef8639e2f7e96a783e262b402afcb8045f46709e457"
 
-OPENJDK_CHANGESET = "bf0932d3e0f8"
-SRC_URI[openjdk.md5sum] = "2b52cc3d439fe0da2ecbb28671fbe5aa"
-SRC_URI[openjdk.sha256sum] = "66fa6ecf3047b7d8a216c1372616babe96f0fb40e89cb51575b80bf602d9ba59"
+OPENJDK_CHANGESET = "4be07cb28b21"
+SRC_URI[openjdk.md5sum] = "24d30b66aaaef51af9b598c8989c1c82"
+SRC_URI[openjdk.sha256sum] = "8f9ecc5fc5f9c6df671a2ef07949f86080823c89954b2b87f6727a82af679eca"
 
 OPENJDK_HG_U = "jdk8u"
 OPENJDK_HG_URL = "http://hg.openjdk.java.net/jdk8u/${OPENJDK_HG_U}"
diff --git a/recipes-core/openjdk/openjdk-8_102b14.bb b/recipes-core/openjdk/openjdk-8_162b12.bb
similarity index 98%
rename from recipes-core/openjdk/openjdk-8_102b14.bb
rename to recipes-core/openjdk/openjdk-8_162b12.bb
index efed329..11208a1 100644
--- a/recipes-core/openjdk/openjdk-8_102b14.bb
+++ b/recipes-core/openjdk/openjdk-8_162b12.bb
@@ -1,4 +1,4 @@
-require openjdk-8-release-102b14.inc
+require openjdk-8-release-${PV}.inc
 require openjdk-8-cross.inc
 
 do_install() {
diff --git a/recipes-core/openjdk/openjre-8_102b14.bb b/recipes-core/openjdk/openjre-8_162b12.bb
similarity index 96%
rename from recipes-core/openjdk/openjre-8_102b14.bb
rename to recipes-core/openjdk/openjre-8_162b12.bb
index f47c62c..263091d 100644
--- a/recipes-core/openjdk/openjre-8_102b14.bb
+++ b/recipes-core/openjdk/openjre-8_162b12.bb
@@ -1,4 +1,4 @@
-require openjdk-8-release-102b14.inc
+require openjdk-8-release-${PV}.inc
 require openjdk-8-cross.inc
 
 do_install() {
diff --git a/recipes-core/openjdk/patches-openjdk-8/LICENSE b/recipes-core/openjdk/patches-openjdk-8/LICENSE
index b40a0f4..8b400c7 100644
--- a/recipes-core/openjdk/patches-openjdk-8/LICENSE
+++ b/recipes-core/openjdk/patches-openjdk-8/LICENSE
@@ -3,7 +3,7 @@ The GNU General Public License (GPL)
 Version 2, June 1991
 
 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
-59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 
 Everyone is permitted to copy and distribute verbatim copies of this license
 document, but changing it is not allowed.
@@ -287,8 +287,8 @@ pointer to where the full notice is found.
     more details.
 
     You should have received a copy of the GNU General Public License along
-    with this program; if not, write to the Free Software Foundation, Inc., 59
-    Temple Place, Suite 330, Boston, MA 02111-1307 USA
+    with this program; if not, write to the Free Software Foundation, Inc.,
+    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
 Also add information on how to contact you by electronic and paper mail.
 
diff --git a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch b/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
index a8a9c1d..6454237 100644
--- a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
@@ -1,6 +1,6 @@
---- common/autoconf/basics.m4.orig	2015-08-17 19:05:13.122672019 +0200
-+++ common/autoconf/basics.m4	2015-08-17 19:13:01.482673782 +0200
-@@ -549,10 +549,12 @@
+--- common/autoconf/basics.m4.orig
++++ common/autoconf/basics.m4
+@@ -555,10 +555,12 @@ AC_DEFUN([BASIC_CHECK_GNU_MAKE],
    # We need to find a recent version of GNU make. Especially on Solaris, this can be tricky.
    if test "x$MAKE" != x; then
      # User has supplied a make, test it.
diff --git a/recipes-core/openjdk/patches-openjdk-8/filter-aclocal-copy-too.patch b/recipes-core/openjdk/patches-openjdk-8/filter-aclocal-copy-too.patch
index 4679c9d..b901001 100644
--- a/recipes-core/openjdk/patches-openjdk-8/filter-aclocal-copy-too.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/filter-aclocal-copy-too.patch
@@ -1,6 +1,6 @@
---- common/autoconf/basics.m4.orig	2015-08-17 18:31:50.598664481 +0200
-+++ common/autoconf/basics.m4	2015-08-17 18:31:57.554664507 +0200
-@@ -442,7 +442,7 @@
+--- common/autoconf/basics.m4.orig
++++ common/autoconf/basics.m4
+@@ -448,7 +448,7 @@ AC_DEFUN_ONCE([BASIC_SETUP_OUTPUT_DIR],
        files_present=`$LS $OUTPUT_ROOT`
        # Configure has already touched config.log and confdefs.h in the current dir when this check
        # is performed.
diff --git a/recipes-core/openjdk/patches-openjdk-8/handle_extra_output.patch b/recipes-core/openjdk/patches-openjdk-8/handle_extra_output.patch
index 52aad95..a8d2786 100644
--- a/recipes-core/openjdk/patches-openjdk-8/handle_extra_output.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/handle_extra_output.patch
@@ -2,10 +2,8 @@ When adding the environment variable JAVA_TOOL_OPTIONS an extra line
 in the output from 'java -version' is produced. As this output is
 parsed by configure script the extra line has to be filtered out.
 
-Index: jdk8u-e8bed1496ff2/common/autoconf/boot-jdk.m4
-===================================================================
---- jdk8u-e8bed1496ff2.orig/common/autoconf/boot-jdk.m4
-+++ jdk8u-e8bed1496ff2/common/autoconf/boot-jdk.m4
+--- jdk8u-4be07cb28b21.orig/common/autoconf/boot-jdk.m4
++++ jdk8u-4be07cb28b21/common/autoconf/boot-jdk.m4
 @@ -51,7 +51,7 @@ AC_DEFUN([BOOTJDK_DO_CHECK],
              BOOT_JDK_FOUND=no
            else
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-find-compiler-fix-env-respect.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-find-compiler-fix-env-respect.patch
index 0750dac..91d258d 100644
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-find-compiler-fix-env-respect.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/openjdk8-find-compiler-fix-env-respect.patch
@@ -1,18 +1,18 @@
---- common/autoconf/toolchain.m4.orig	2015-08-07 20:52:38.000000000 +0200
-+++ common/autoconf/toolchain.m4	2015-10-27 13:57:19.708566525 +0100
-@@ -27,7 +27,7 @@
+--- common/autoconf/toolchain.m4.orig
++++ common/autoconf/toolchain.m4
+@@ -77,7 +77,7 @@ AC_DEFUN([TOOLCHAIN_CHECK_COMPILER_VERSI
  # $2 = human readable name of compiler (C or C++)
- AC_DEFUN([TOOLCHAIN_CHECK_COMPILER_VERSION],
+ AC_DEFUN([TOOLCHAIN_EXTRACT_COMPILER_VERSION],
  [
 -  COMPILER=[$]$1
 +  COMPILER="[$]$1"
    COMPILER_NAME=$2
-
+ 
    if test "x$OPENJDK_TARGET_OS" = xsolaris; then
-@@ -123,64 +123,37 @@
+@@ -174,64 +174,37 @@ AC_DEFUN([TOOLCHAIN_FIND_COMPILER],
  [
    COMPILER_NAME=$2
-
+ 
 -  $1=
 +  FOUND_$1=
 +
@@ -31,7 +31,7 @@
 +    FOUND_$1=$TOOLS_DIR_$1
      PATH="$PATH_save"
    fi
-
+ 
    # AC_PATH_PROGS can't be run multiple times with the same variable,
    # so create a new name for this run.
 -  if test "x[$]$1" = x; then
@@ -40,7 +40,7 @@
 -    $1=$POTENTIAL_$1
 +    FOUND_$1=$POTENTIAL_$1
    fi
-
+ 
 -  if test "x[$]$1" = x; then
 +  if test "x[$]FOUND_$1" = x; then
      HELP_MSG_MISSING_DEPENDENCY([devkit])
@@ -86,10 +86,10 @@
 +  TEST_COMPILER="[$]FOUND_$1"
 +
 +  $1="$TEST_COMPILER"
-   TOOLCHAIN_CHECK_COMPILER_VERSION([$1], [$COMPILER_NAME])
+   TOOLCHAIN_EXTRACT_COMPILER_VERSION([$1], [$COMPILER_NAME])
  ])
-
-@@ -214,12 +187,12 @@
+ 
+@@ -265,12 +238,12 @@ AC_DEFUN([TOOLCHAIN_SETUP_PATHS],
      # otherwise we might pick up cross-compilers which don't use standard naming.
      # Otherwise, we'll set the BUILD_tools to the native tools, but that'll have
      # to wait until they are properly discovered.
@@ -108,12 +108,12 @@
    fi
    AC_SUBST(BUILD_CC)
    AC_SUBST(BUILD_CXX)
---- common/autoconf/basics.m4.orig	2015-08-31 15:03:54.942975387 +0200
-+++ common/autoconf/basics.m4	2015-08-31 15:02:25.090975049 +0200
-@@ -171,8 +171,15 @@
+--- common/autoconf/basics.m4.orig
++++ common/autoconf/basics.m4
+@@ -171,8 +171,15 @@ AC_DEFUN([BASIC_REMOVE_SYMBOLIC_LINKS],
        fi
      fi
-
+ 
 +    # First separate the path from the arguments. This will split at the first
 +    # space.
 +    complete="[$]$1"
@@ -127,7 +127,7 @@
      else
        # Save the current directory for restoring afterwards
        STARTDIR=$PWD
-@@ -198,8 +205,9 @@
+@@ -198,8 +205,9 @@ AC_DEFUN([BASIC_REMOVE_SYMBOLIC_LINKS],
          let COUNTER=COUNTER+1
        done
        cd $STARTDIR
@@ -137,4 +137,4 @@
 +    $1="$new_path ${arguments% *}"
    fi
  ])
-
+ 
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-assembler-flag-handling-in-makefile.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-assembler-flag-handling-in-makefile.patch
index 5e02f28..3e4f156 100644
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-assembler-flag-handling-in-makefile.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-assembler-flag-handling-in-makefile.patch
@@ -9,7 +9,7 @@ Upstream-Status: Pending
 ---
 --- make/common/NativeCompilation.gmk
 +++ make/common/NativeCompilation.gmk
-@@ -372,7 +372,7 @@ define SetupNativeCompilation
+@@ -376,7 +376,7 @@ define SetupNativeCompilation
    $$(foreach p,$$($1_SRCS), \
        $$(eval $$(call add_native_source,$1,$$p,$$($1_OBJECT_DIR), \
            $$($1_CFLAGS) $$($1_EXTRA_CFLAGS),$$($1_CC), \
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-build.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-build.patch
index bc1abbd..f241361 100644
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-build.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-build.patch
@@ -1,6 +1,6 @@
---- hotspot/make/Makefile.orig	2015-08-31 19:44:44.459038814 +0200
-+++ hotspot/make/Makefile	2015-08-31 19:44:58.511038867 +0200
-@@ -525,7 +525,7 @@
+--- hotspot/make/Makefile.orig
++++ hotspot/make/Makefile
+@@ -525,7 +525,7 @@ $(EXPORT_INCLUDE_DIR)/%:			$(SHARK_BUILD
  # Unix
  $(EXPORT_JRE_LIB_ARCH_DIR)/%.$(LIBRARY_SUFFIX): $(SHARK_BUILD_DIR)/%.$(LIBRARY_SUFFIX)
  	$(install-file)
@@ -9,28 +9,28 @@
  	$(install-file)
  $(EXPORT_JRE_LIB_ARCH_DIR)/%.diz:		$(SHARK_BUILD_DIR)/%.diz
  	$(install-file)
---- hotspot/src/share/vm/ci/ciTypeFlow.cpp.orig	2015-08-31 19:45:28.611038980 +0200
-+++ hotspot/src/share/vm/ci/ciTypeFlow.cpp	2015-08-31 19:47:17.539039390 +0200
-@@ -35,7 +35,9 @@
+--- hotspot/src/share/vm/ci/ciTypeFlow.cpp.orig
++++ hotspot/src/share/vm/ci/ciTypeFlow.cpp
+@@ -35,8 +35,10 @@
  #include "interpreter/bytecode.hpp"
  #include "interpreter/bytecodes.hpp"
  #include "memory/allocation.inline.hpp"
--#include "opto/compile.hpp"
 +#ifdef COMPILER2
-+#include "opto/compile.hpp"
+ #include "opto/compile.hpp"
  #include "opto/node.hpp"
 +#endif
  #include "runtime/deoptimization.hpp"
  #include "utilities/growableArray.hpp"
-@@ -2647,6 +2649,7 @@
+ 
+@@ -2648,6 +2650,7 @@ void ciTypeFlow::df_flow_types(Block* st
        assert (!blk->has_pre_order(), "");
        blk->set_next_pre_order();
-
+ 
 +#ifdef COMPILER2
        if (_next_pre_order >= (int)Compile::current()->max_node_limit() / 2) {
          // Too many basic blocks.  Bail out.
          // This can happen when try/finally constructs are nested to depth N,
-@@ -2656,6 +2659,7 @@
+@@ -2657,6 +2660,7 @@ void ciTypeFlow::df_flow_types(Block* st
          record_failure("too many basic blocks");
          return;
        }
@@ -38,9 +38,9 @@
        if (do_flow) {
          flow_block(blk, temp_vector, temp_set);
          if (failing()) return; // Watch for bailouts.
---- hotspot/src/share/vm/classfile/systemDictionary.cpp.orig	2015-08-31 19:50:00.367040003 +0200
-+++ hotspot/src/share/vm/classfile/systemDictionary.cpp	2015-08-31 19:51:28.323040334 +0200
-@@ -2276,6 +2276,7 @@
+--- hotspot/src/share/vm/classfile/systemDictionary.cpp.orig
++++ hotspot/src/share/vm/classfile/systemDictionary.cpp
+@@ -2289,6 +2289,7 @@ methodHandle SystemDictionary::find_meth
      spe = NULL;
      // Must create lots of stuff here, but outside of the SystemDictionary lock.
      m = Method::make_method_handle_intrinsic(iid, signature, CHECK_(empty));
@@ -48,7 +48,7 @@
      if (!Arguments::is_interpreter_only()) {
        // Generate a compiled form of the MH intrinsic.
        AdapterHandlerLibrary::create_native_wrapper(m);
-@@ -2285,6 +2286,7 @@
+@@ -2298,6 +2299,7 @@ methodHandle SystemDictionary::find_meth
                     "out of space in CodeCache for method handle intrinsic", empty);
        }
      }
@@ -56,9 +56,9 @@
      // Now grab the lock.  We might have to throw away the new method,
      // if a racing thread has managed to install one at the same time.
      {
-@@ -2298,9 +2300,11 @@
+@@ -2311,9 +2313,11 @@ methodHandle SystemDictionary::find_meth
    }
-
+ 
    assert(spe != NULL && spe->method() != NULL, "");
 +#ifndef SHARK
    assert(Arguments::is_interpreter_only() || (spe->method()->has_compiled_code() &&
@@ -67,13 +67,13 @@
 +#endif
    return spe->method();
  }
-
---- hotspot/src/share/vm/runtime/handles.inline.hpp.orig	2015-08-31 20:01:39.295042634 +0200
-+++ hotspot/src/share/vm/runtime/handles.inline.hpp	2015-08-31 20:04:31.331043282 +0200
-@@ -51,6 +51,12 @@
+ 
+--- hotspot/src/share/vm/runtime/handles.inline.hpp.orig
++++ hotspot/src/share/vm/runtime/handles.inline.hpp
+@@ -51,6 +51,12 @@ inline Handle::Handle(Thread* thread, oo
  }
  #endif // ASSERT
-
+ 
 +#ifdef SHARK
 +#define assert_on_stack(expr) (void)(expr)
 +#else
@@ -83,7 +83,7 @@
  // Constructors for metadata handles
  #define DEF_METADATA_HANDLE_FN(name, type) \
  inline name##Handle::name##Handle(type* obj) : _value(obj), _thread(NULL) {       \
-@@ -79,7 +85,7 @@
+@@ -79,7 +85,7 @@ inline name##Handle::name##Handle(const
      } else {                                                           \
        _thread = Thread::current();                                     \
      }                                                                  \
@@ -92,12 +92,12 @@
      _thread->metadata_handles()->push((Metadata*)_value);              \
    } else {                                                             \
      _thread = NULL;                                                    \
---- hotspot/src/cpu/zero/vm/entry_zero.hpp.orig	2015-08-31 20:53:40.743054385 +0200
-+++ hotspot/src/cpu/zero/vm/entry_zero.hpp	2015-08-31 20:53:54.459054436 +0200
+--- hotspot/src/cpu/zero/vm/entry_zero.hpp.orig
++++ hotspot/src/cpu/zero/vm/entry_zero.hpp
 @@ -26,6 +26,10 @@
  #ifndef CPU_ZERO_VM_ENTRY_ZERO_HPP
  #define CPU_ZERO_VM_ENTRY_ZERO_HPP
-
+ 
 +#include "utilities/globalDefinitions.hpp"
 +#include "utilities/exceptions.hpp"
 +#include "interpreter/cppInterpreter.hpp"
@@ -105,22 +105,22 @@
  class ZeroEntry {
   public:
    ZeroEntry() {
---- hotspot/src/share/vm/shark/sharkEntry.hpp.orig	2015-08-31 20:47:13.091052925 +0200
-+++ hotspot/src/share/vm/shark/sharkEntry.hpp	2015-08-31 20:49:42.755053489 +0200
+--- hotspot/src/share/vm/shark/sharkEntry.hpp.orig
++++ hotspot/src/share/vm/shark/sharkEntry.hpp
 @@ -27,6 +27,7 @@
  #define SHARE_VM_SHARK_SHARKENTRY_HPP
-
+ 
  #include "shark/llvmHeaders.hpp"
 +#include "entry_zero.hpp"
-
+ 
  class SharkContext;
-
---- hotspot/src/share/vm/interpreter/cppInterpreterGenerator.hpp.orig	2015-08-31 21:01:14.847056094 +0200
-+++ hotspot/src/share/vm/interpreter/cppInterpreterGenerator.hpp	2015-08-31 21:01:24.459056130 +0200
+ 
+--- hotspot/src/share/vm/interpreter/cppInterpreterGenerator.hpp.orig
++++ hotspot/src/share/vm/interpreter/cppInterpreterGenerator.hpp
 @@ -30,6 +30,10 @@
-
+ 
  #ifdef CC_INTERP
-
+ 
 +#ifdef TARGET_ARCH_zero
 +#include "entry_zero.hpp"
 +#endif
@@ -128,8 +128,8 @@
  class CppInterpreterGenerator: public AbstractInterpreterGenerator {
    protected:
    // shared code sequences
---- hotspot/src/cpu/zero/vm/nativeInst_zero.cpp.orig	2015-08-31 21:07:21.643057475 +0200
-+++ hotspot/src/cpu/zero/vm/nativeInst_zero.cpp	2015-08-31 21:14:49.019059159 +0200
+--- hotspot/src/cpu/zero/vm/nativeInst_zero.cpp.orig
++++ hotspot/src/cpu/zero/vm/nativeInst_zero.cpp
 @@ -26,6 +26,9 @@
  #include "precompiled.hpp"
  #include "assembler_zero.inline.hpp"
@@ -140,23 +140,23 @@
  #include "nativeInst_zero.hpp"
  #include "oops/oop.inline.hpp"
  #include "runtime/handles.hpp"
---- hotspot/src/share/vm/shark/llvmHeaders.hpp.orig	2015-09-01 14:17:09.793868541 +0200
-+++ hotspot/src/share/vm/shark/llvmHeaders.hpp	2015-09-01 16:20:25.653868618 +0200
+--- hotspot/src/share/vm/shark/llvmHeaders.hpp.orig
++++ hotspot/src/share/vm/shark/llvmHeaders.hpp
 @@ -35,7 +35,11 @@
    #undef DEBUG
  #endif
-
+ 
 +#if SHARK_LLVM_VERSION <= 34
  #include <llvm/Analysis/Verifier.h>
 +#else
 +#include <llvm-c/Analysis.h>
 +#endif
  #include <llvm/ExecutionEngine/ExecutionEngine.h>
-
+ 
  // includes specific to each version
---- common/autoconf/libraries.m4.orig	2015-09-01 16:53:51.821868486 +0200
-+++ common/autoconf/libraries.m4	2015-09-01 16:55:27.653868542 +0200
-@@ -847,8 +847,9 @@
+--- common/autoconf/libraries.m4.orig
++++ common/autoconf/libraries.m4
+@@ -834,8 +834,9 @@ AC_DEFUN_ONCE([LIB_SETUP_STATIC_LINK_LIB
          fi
        fi
      done
@@ -164,23 +164,23 @@
 +    llvm_version=$("${LLVM_CONFIG}" --version | sed 's/\.//; s/svn.*//; s/\..*$//')
      LLVM_CFLAGS="${LLVM_CFLAGS} -DSHARK_LLVM_VERSION=${llvm_version}"
 +    AS_IF([test $llvm_version -ge 34], [LLVM_CFLAGS="${LLVM_CFLAGS} -std=gnu++11"])
-
+ 
      unset LLVM_LDFLAGS
      for flag in $("${LLVM_CONFIG}" --ldflags); do
-@@ -862,7 +862,7 @@
+@@ -848,7 +849,7 @@ AC_DEFUN_ONCE([LIB_SETUP_STATIC_LINK_LIB
      done
-
+ 
      unset LLVM_LIBS
 -    for flag in $("${LLVM_CONFIG}" --libs ${llvm_components}); do
 +    for flag in $("${LLVM_CONFIG}" --libs --system-libs ${llvm_components}); do
        if echo "${flag}" | grep -q '^-l'; then
          if test "${LLVM_LIBS}" != ""; then
            LLVM_LIBS="${LLVM_LIBS} "
---- hotspot/src/share/vm/shark/sharkIntrinsics.cpp.orig	2015-09-02 16:58:17.000000000 +0200
-+++ hotspot/src/share/vm/shark/sharkIntrinsics.cpp	2015-09-02 17:09:26.000000000 +0200
-@@ -265,7 +265,11 @@
+--- hotspot/src/share/vm/shark/sharkIntrinsics.cpp.orig
++++ hotspot/src/share/vm/shark/sharkIntrinsics.cpp
+@@ -265,7 +265,11 @@ void SharkIntrinsics::do_Unsafe_compareA
      "addr");
-
+ 
    // Perform the operation
 +#if SHARK_LLVM_VERSION <= 34
    Value *result = builder()->CreateAtomicCmpXchg(addr, e, x, llvm::SequentiallyConsistent);
@@ -190,22 +190,22 @@
    // Push the result
    state()->push(
      SharkValue::create_jint(
---- hotspot/src/share/vm/shark/sharkRuntime.cpp.orig	2015-09-02 17:11:58.000000000 +0200
-+++ hotspot/src/share/vm/shark/sharkRuntime.cpp	2015-09-02 17:12:57.000000000 +0200
+--- hotspot/src/share/vm/shark/sharkRuntime.cpp.orig
++++ hotspot/src/share/vm/shark/sharkRuntime.cpp
 @@ -32,6 +32,7 @@
  #ifdef TARGET_ARCH_zero
  # include "stack_zero.inline.hpp"
  #endif
 +#include "memory/oopFactory.hpp"
-
+ 
  using namespace llvm;
-
---- hotspot/src/share/vm/shark/sharkTopLevelBlock.cpp.orig	2015-09-02 17:23:07.000000000 +0200
-+++ hotspot/src/share/vm/shark/sharkTopLevelBlock.cpp	2015-09-02 17:43:20.000000000 +0200
-@@ -1732,7 +1732,11 @@
+ 
+--- hotspot/src/share/vm/shark/sharkTopLevelBlock.cpp.orig
++++ hotspot/src/share/vm/shark/sharkTopLevelBlock.cpp
+@@ -1732,7 +1732,11 @@ void SharkTopLevelBlock::do_new() {
      heap_object = builder()->CreateIntToPtr(
        old_top, SharkType::oop_type(), "heap_object");
-
+ 
 +#if SHARK_LLVM_VERSION <= 34
      Value *check = builder()->CreateAtomicCmpXchg(top_addr, old_top, new_top, llvm::SequentiallyConsistent);
 +#else
@@ -214,8 +214,8 @@
      builder()->CreateCondBr(
        builder()->CreateICmpEQ(old_top, check),
        initialize, retry);
-@@ -1933,7 +1937,11 @@
-
+@@ -1933,7 +1937,11 @@ void SharkTopLevelBlock::acquire_lock(Va
+ 
    Value *lock = builder()->CreatePtrToInt(
      monitor_header_addr, SharkType::intptr_type());
 +#if SHARK_LLVM_VERSION <= 34
@@ -226,10 +226,10 @@
    builder()->CreateCondBr(
      builder()->CreateICmpEQ(disp, check),
      acquired_fast, try_recursive);
-@@ -2018,7 +2026,11 @@
+@@ -2018,7 +2026,11 @@ void SharkTopLevelBlock::release_lock(in
      PointerType::getUnqual(SharkType::intptr_type()),
      "mark_addr");
-
+ 
 +#if SHARK_LLVM_VERSION <= 34
    Value *check = builder()->CreateAtomicCmpXchg(mark_addr, lock, disp, llvm::Release);
 +#else
@@ -238,8 +238,8 @@
    builder()->CreateCondBr(
      builder()->CreateICmpEQ(lock, check),
      released_fast, slow_path);
---- hotspot/src/cpu/zero/vm/interpreter_zero.cpp.orig	2015-09-14 20:13:25.539432044 +0200
-+++ hotspot/src/cpu/zero/vm/interpreter_zero.cpp	2015-09-14 20:13:46.107432122 +0200
+--- hotspot/src/cpu/zero/vm/interpreter_zero.cpp.orig
++++ hotspot/src/cpu/zero/vm/interpreter_zero.cpp
 @@ -49,7 +49,7 @@
  #ifdef COMPILER1
  #include "c1/c1_Runtime1.hpp"
@@ -248,21 +248,21 @@
 +#if defined(CC_INTERP) || defined(SHARK)
  #include "interpreter/cppInterpreter.hpp"
  #endif
-
---- hotspot/src/share/vm/shark/sharkCompiler.hpp.orig	2015-08-31 20:08:44.723044236 +0200
-+++ hotspot/src/share/vm/shark/sharkCompiler.hpp	2015-08-31 20:08:59.387044291 +0200
-@@ -40,6 +40,8 @@
+ 
+--- hotspot/src/share/vm/shark/sharkCompiler.hpp.orig
++++ hotspot/src/share/vm/shark/sharkCompiler.hpp
+@@ -40,6 +40,8 @@ class SharkCompiler : public AbstractCom
    // Creation
    SharkCompiler();
-
+ 
 +  void init_llvm();
 +
    // Name of this compiler
    const char *name()     { return "shark"; }
-
---- hotspot/src/share/vm/shark/sharkCompiler.cpp.orig	2015-09-19 12:19:21.000000000 +0200
-+++ hotspot/src/share/vm/shark/sharkCompiler.cpp	2015-09-19 12:27:17.000000000 +0200
-@@ -61,11 +61,25 @@
+ 
+--- hotspot/src/share/vm/shark/sharkCompiler.cpp.orig
++++ hotspot/src/share/vm/shark/sharkCompiler.cpp
+@@ -61,11 +61,25 @@ SharkCompiler::SharkCompiler()
    : AbstractCompiler() {
    // Create the lock to protect the memory manager and execution engine
    _execution_engine_lock = new Monitor(Mutex::leaf, "SharkExecutionEngineLock");
@@ -274,7 +274,7 @@
 +  // All done
 +  set_state(initialized);
 +}
-
+ 
 +void SharkCompiler::init_llvm() {
 +  // with llvm 3.5, Multi-threading can only be enabled/disabled with the
 +  // compile time define LLVM_ENABLE_THREADS
@@ -286,19 +286,19 @@
 +  if (!llvm_is_multithreaded())
 +    fatal("llvm_is_multithreaded() tells no multithreading support in llvm");
 +#endif
-
+ 
    // Initialize the native target
    InitializeNativeTarget();
-@@ -83,7 +97,7 @@
+@@ -83,7 +97,7 @@ SharkCompiler::SharkCompiler()
    // Finetune LLVM for the current host CPU.
    StringMap<bool> Features;
    bool gotCpuFeatures = llvm::sys::getHostCPUFeatures(Features);
 -  std::string cpu("-mcpu=" + llvm::sys::getHostCPUName());
 +  std::string cpu("-mcpu=" + std::string(llvm::sys::getHostCPUName()));
-
+ 
    std::vector<const char*> args;
    args.push_back(""); // program name
-@@ -112,6 +126,9 @@
+@@ -112,6 +126,9 @@ SharkCompiler::SharkCompiler()
    builder.setMAttrs(MAttrs);
    builder.setJITMemoryManager(memory_manager());
    builder.setEngineKind(EngineKind::JIT);
@@ -308,9 +308,10 @@
    builder.setErrorStr(&ErrorMsg);
    if (! fnmatch(SharkOptimizationLevel, "None", 0)) {
      tty->print_cr("Shark optimization level set to: None");
-@@ -134,9 +151,10 @@
+@@ -133,10 +150,11 @@ SharkCompiler::SharkCompiler()
+     exit(1);
    }
-
+ 
 +#if SHARK_LLVM_VERSION > 34
 +  _native_context->execution_engine(_execution_engine);
 +  _normal_context->execution_engine(_execution_engine);
@@ -320,19 +321,19 @@
 -  // All done
 -  set_state(initialized);
  }
-
+ 
  void SharkCompiler::initialize() {
-@@ -165,7 +179,7 @@
+@@ -165,7 +183,7 @@ void SharkCompiler::compile_method(ciEnv
    }
-
+ 
    // Create the recorders
 -  Arena arena;
 +  Arena arena(mtCompiler);
    env->set_oop_recorder(new OopRecorder(&arena));
    OopMapSet oopmaps;
    env->set_debug_info(new DebugInformationRecorder(env->oop_recorder()));
-@@ -268,7 +282,12 @@
-
+@@ -268,7 +286,12 @@ void SharkCompiler::generate_native_code
+ 
    if (SharkVerifyFunction != NULL) {
      if (!fnmatch(SharkVerifyFunction, name, 0)) {
 +#if SHARK_LLVM_VERSION <= 34
@@ -343,8 +344,8 @@
 +#endif
      }
    }
-
-@@ -298,7 +317,11 @@
+ 
+@@ -298,7 +321,11 @@ void SharkCompiler::generate_native_code
  #endif
  #endif // !NDEBUG
      memory_manager()->set_entry_for_function(function, entry);
@@ -356,11 +357,11 @@
    }
    assert(code != NULL, "code must be != NULL");
    entry->set_entry_point(code);
---- hotspot/src/share/vm/shark/sharkContext.cpp.orig	2015-09-21 11:22:51.707813194 +0200
-+++ hotspot/src/share/vm/shark/sharkContext.cpp	2015-09-21 13:47:56.243845961 +0200
+--- hotspot/src/share/vm/shark/sharkContext.cpp.orig
++++ hotspot/src/share/vm/shark/sharkContext.cpp
 @@ -34,8 +34,13 @@
  using namespace llvm;
-
+ 
  SharkContext::SharkContext(const char* name)
 -  : LLVMContext(),
 -    _free_queue(NULL) {
@@ -373,32 +374,32 @@
 +{
    // Create a module to build our functions into
    _module = new Module(name, *this);
-
---- hotspot/src/share/vm/shark/sharkContext.hpp.orig	2015-09-21 10:58:37.195807719 +0200
-+++ hotspot/src/share/vm/shark/sharkContext.hpp	2015-09-21 13:50:48.459846609 +0200
+ 
+--- hotspot/src/share/vm/shark/sharkContext.hpp.orig
++++ hotspot/src/share/vm/shark/sharkContext.hpp
 @@ -29,6 +29,8 @@
  #include "shark/llvmHeaders.hpp"
  #include "shark/sharkCompiler.hpp"
-
+ 
 +#include <map>
 +
  // The LLVMContext class allows multiple instances of LLVM to operate
  // independently of each other in a multithreaded context.  We extend
  // this here to store things in Shark that are LLVMContext-specific.
-@@ -41,12 +43,28 @@
-
+@@ -41,12 +43,28 @@ class SharkContext : public llvm::LLVMCo
+ 
   private:
    llvm::Module* _module;
 +#if SHARK_LLVM_VERSION > 34
 +  llvm::ExecutionEngine *_ee;
 +  std::map<std::string, llvm::Module *> func_mod_map;
 +#endif
-
+ 
   public:
    llvm::Module* module() const {
      return _module;
    }
-
+ 
 +#if SHARK_LLVM_VERSION > 34
 +  llvm::ExecutionEngine *execution_engine(llvm::ExecutionEngine *ee) {
 +      llvm::ExecutionEngine *oee = _ee;
@@ -414,8 +415,8 @@
    // Get this thread's SharkContext
   public:
    static SharkContext& current() {
-@@ -55,12 +73,35 @@
-
+@@ -55,12 +73,35 @@ class SharkContext : public llvm::LLVMCo
+ 
    // Module accessors
   public:
 -  void add_function(llvm::Function* function) const {
@@ -449,5 +450,5 @@
 +    }
 +#endif
    }
-
+ 
    // Basic types
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-stdc++11.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-stdc++11.patch
index a1900b3..12fc17d 100644
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-stdc++11.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-shark-stdc++11.patch
@@ -1,22 +1,18 @@
-diff --git hotspot/src/os/posix/vm/os_posix.cpp hotspot/src/os/posix/vm/os_posix.cpp
-index d1bf84f..a88417c 100644
---- hotspot/src/os/posix/vm/os_posix.cpp
+--- hotspot/src/os/posix/vm/os_posix.cpp.orig
 +++ hotspot/src/os/posix/vm/os_posix.cpp
-@@ -594,7 +594,7 @@ const char* os::Posix::describe_sa_flags(int flags, char* buffer, size_t size) {
+@@ -594,7 +594,7 @@ const char* os::Posix::describe_sa_flags
    strncpy(buffer, "none", size);
-
+ 
    const struct {
 -    int i;
 +    unsigned i;
      const char* s;
    } flaginfo [] = {
      { SA_NOCLDSTOP, "SA_NOCLDSTOP" },
-diff --git hotspot/src/share/vm/classfile/dictionary.hpp hotspot/src/share/vm/classfile/dictionary.hpp
-index 504e735..9ed0def 100644
---- hotspot/src/share/vm/classfile/dictionary.hpp
+--- hotspot/src/share/vm/classfile/dictionary.hpp.orig
 +++ hotspot/src/share/vm/classfile/dictionary.hpp
-@@ -373,7 +373,7 @@ class SymbolPropertyEntry : public HashtableEntry<Symbol*, mtSymbol> {
-
+@@ -373,7 +373,7 @@ class SymbolPropertyEntry : public Hasht
+ 
    void print_on(outputStream* st) const {
      symbol()->print_value_on(st);
 -    st->print("/mode="INTX_FORMAT, symbol_mode());
@@ -24,11 +20,9 @@ index 504e735..9ed0def 100644
      st->print(" -> ");
      bool printed = false;
      if (method() != NULL) {
-diff --git hotspot/src/share/vm/code/exceptionHandlerTable.cpp hotspot/src/share/vm/code/exceptionHandlerTable.cpp
-index 511b84d..224e164 100644
---- hotspot/src/share/vm/code/exceptionHandlerTable.cpp
+--- hotspot/src/share/vm/code/exceptionHandlerTable.cpp.orig
 +++ hotspot/src/share/vm/code/exceptionHandlerTable.cpp
-@@ -186,7 +186,7 @@ uint ImplicitExceptionTable::at( uint exec_off ) const {
+@@ -186,7 +186,7 @@ uint ImplicitExceptionTable::at( uint ex
  void ImplicitExceptionTable::print(address base) const {
    tty->print("{");
    for( uint i=0; i<len(); i++ )
@@ -36,12 +30,10 @@ index 511b84d..224e164 100644
 +    tty->print("< " INTPTR_FORMAT ", " INTPTR_FORMAT " > ",base + *adr(i), base + *(adr(i)+1));
    tty->print_cr("}");
  }
-
-diff --git hotspot/src/share/vm/code/nmethod.cpp hotspot/src/share/vm/code/nmethod.cpp
-index 6ea39ae..94a7eef 100644
---- hotspot/src/share/vm/code/nmethod.cpp
+ 
+--- hotspot/src/share/vm/code/nmethod.cpp.orig
 +++ hotspot/src/share/vm/code/nmethod.cpp
-@@ -2319,7 +2319,7 @@ public:
+@@ -2344,7 +2344,7 @@ public:
    void maybe_print(oop* p) {
      if (_print_nm == NULL)  return;
      if (!_detected_scavenge_root)  _print_nm->print_on(tty, "new scavenge root");
@@ -50,7 +42,7 @@ index 6ea39ae..94a7eef 100644
                    _print_nm, (int)((intptr_t)p - (intptr_t)_print_nm),
                    (void *)(*p), (intptr_t)p);
      (*p)->print();
-@@ -2700,7 +2700,7 @@ public:
+@@ -2725,7 +2725,7 @@ public:
        _nm->print_nmethod(true);
        _ok = false;
      }
@@ -59,7 +51,7 @@ index 6ea39ae..94a7eef 100644
                    (void *)(*p), (intptr_t)p, (int)((intptr_t)p - (intptr_t)_nm));
    }
    virtual void do_oop(narrowOop* p) { ShouldNotReachHere(); }
-@@ -2824,7 +2824,7 @@ public:
+@@ -2849,7 +2849,7 @@ public:
        _nm->print_nmethod(true);
        _ok = false;
      }
@@ -68,46 +60,40 @@ index 6ea39ae..94a7eef 100644
                    (void *)(*p), (intptr_t)p, (int)((intptr_t)p - (intptr_t)_nm));
      (*p)->print();
    }
-@@ -2869,7 +2869,7 @@ void nmethod::print() const {
+@@ -2894,7 +2894,7 @@ void nmethod::print() const {
    print_on(tty, NULL);
-
+ 
    if (WizardMode) {
 -    tty->print("((nmethod*) "INTPTR_FORMAT ") ", this);
 +    tty->print("((nmethod*) " INTPTR_FORMAT ") ", this);
      tty->print(" for method " INTPTR_FORMAT , (address)method());
      tty->print(" { ");
      if (is_in_use())      tty->print("in_use ");
-diff --git hotspot/src/share/vm/compiler/compileBroker.cpp hotspot/src/share/vm/compiler/compileBroker.cpp
-index dad99ec..81429cc 100644
---- hotspot/src/share/vm/compiler/compileBroker.cpp
+--- hotspot/src/share/vm/compiler/compileBroker.cpp.orig
 +++ hotspot/src/share/vm/compiler/compileBroker.cpp
-@@ -203,7 +203,7 @@ class CompilationLog : public StringEventLog {
+@@ -203,7 +203,7 @@ class CompilationLog : public StringEven
    }
-
+ 
    void log_nmethod(JavaThread* thread, nmethod* nm) {
 -    log(thread, "nmethod %d%s " INTPTR_FORMAT " code ["INTPTR_FORMAT ", " INTPTR_FORMAT "]",
 +    log(thread, "nmethod %d%s " INTPTR_FORMAT " code [" INTPTR_FORMAT ", " INTPTR_FORMAT "]",
          nm->compile_id(), nm->is_osr_method() ? "%" : "",
          p2i(nm), p2i(nm->code_begin()), p2i(nm->code_end()));
    }
-diff --git hotspot/src/share/vm/compiler/disassembler.cpp hotspot/src/share/vm/compiler/disassembler.cpp
-index 3291360..93cd9e8 100644
---- hotspot/src/share/vm/compiler/disassembler.cpp
+--- hotspot/src/share/vm/compiler/disassembler.cpp.orig
 +++ hotspot/src/share/vm/compiler/disassembler.cpp
-@@ -60,7 +60,7 @@ bool        Disassembler::_tried_to_load_library = false;
+@@ -63,7 +63,7 @@ bool        Disassembler::_tried_to_load
  Disassembler::decode_func_virtual Disassembler::_decode_instructions_virtual = NULL;
  Disassembler::decode_func Disassembler::_decode_instructions = NULL;
-
+ 
 -static const char hsdis_library_name[] = "hsdis-"HOTSPOT_LIB_ARCH;
 +static const char hsdis_library_name[] = "hsdis-" HOTSPOT_LIB_ARCH;
  static const char decode_instructions_virtual_name[] = "decode_instructions_virtual";
  static const char decode_instructions_name[] = "decode_instructions";
  static bool use_new_version = true;
-diff --git hotspot/src/share/vm/gc_implementation/concurrentMarkSweep/concurrentMarkSweepGeneration.cpp hotspot/src/share/vm/gc_implementation/concurrentMarkSweep/concurrentMarkSweepGeneration.cpp
-index 14f09d1..7427120 100644
---- hotspot/src/share/vm/gc_implementation/concurrentMarkSweep/concurrentMarkSweepGeneration.cpp
+--- hotspot/src/share/vm/gc_implementation/concurrentMarkSweep/concurrentMarkSweepGeneration.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/concurrentMarkSweep/concurrentMarkSweepGeneration.cpp
-@@ -838,18 +838,18 @@ void ConcurrentMarkSweepGeneration::printOccupancy(const char *s) {
+@@ -838,18 +838,18 @@ void ConcurrentMarkSweepGeneration::prin
    GenCollectedHeap* gch = GenCollectedHeap::heap();
    if (PrintGCDetails) {
      if (Verbose) {
@@ -130,7 +116,7 @@ index 14f09d1..7427120 100644
                gch->used() / K, gch->capacity() / K);
    }
  }
-@@ -879,8 +879,8 @@ bool ConcurrentMarkSweepGeneration::promotion_attempt_is_safe(size_t max_promoti
+@@ -879,8 +879,8 @@ bool ConcurrentMarkSweepGeneration::prom
    bool   res = (available >= av_promo) || (available >= max_promotion_in_bytes);
    if (Verbose && PrintGCDetails) {
      gclog_or_tty->print_cr(
@@ -141,7 +127,7 @@ index 14f09d1..7427120 100644
        res? "":" not", available, res? ">=":"<",
        av_promo, max_promotion_in_bytes);
    }
-@@ -966,8 +966,8 @@ void ConcurrentMarkSweepGeneration::compute_new_size_free_list() {
+@@ -966,8 +966,8 @@ void ConcurrentMarkSweepGeneration::comp
          desired_free_percentage);
        gclog_or_tty->print_cr("  Maximum free fraction %f",
          maximum_free_percentage);
@@ -152,7 +138,7 @@ index 14f09d1..7427120 100644
          desired_capacity/1000);
        int prev_level = level() - 1;
        if (prev_level >= 0) {
-@@ -975,14 +975,14 @@ void ConcurrentMarkSweepGeneration::compute_new_size_free_list() {
+@@ -975,14 +975,14 @@ void ConcurrentMarkSweepGeneration::comp
          GenCollectedHeap* gch = GenCollectedHeap::heap();
          Generation* prev_gen = gch->_gens[prev_level];
          prev_size = prev_gen->capacity();
@@ -171,7 +157,7 @@ index 14f09d1..7427120 100644
          expand_bytes);
      }
      // safe if expansion fails
-@@ -1513,8 +1513,8 @@ bool CMSCollector::shouldConcurrentCollect() {
+@@ -1513,8 +1513,8 @@ bool CMSCollector::shouldConcurrentColle
      stats().print_on(gclog_or_tty);
      gclog_or_tty->print_cr("time_until_cms_gen_full %3.7f",
        stats().time_until_cms_gen_full());
@@ -182,7 +168,7 @@ index 14f09d1..7427120 100644
                             _cmsGen->contiguous_available());
      gclog_or_tty->print_cr("promotion_rate=%g", stats().promotion_rate());
      gclog_or_tty->print_cr("cms_allocation_rate=%g", stats().cms_allocation_rate());
-@@ -2792,7 +2792,7 @@ void ConcurrentMarkSweepGeneration::gc_prologue_work(bool full,
+@@ -2792,7 +2792,7 @@ void ConcurrentMarkSweepGeneration::gc_p
      assert(_numObjectsPromoted == 0, "check");
      assert(_numWordsPromoted   == 0, "check");
      if (Verbose && PrintGC) {
@@ -191,7 +177,7 @@ index 14f09d1..7427120 100644
                            SIZE_FORMAT" bytes concurrently",
        _numObjectsAllocated, _numWordsAllocated*sizeof(HeapWord));
      }
-@@ -2879,7 +2879,7 @@ void ConcurrentMarkSweepGeneration::gc_epilogue_work(bool full) {
+@@ -2879,7 +2879,7 @@ void ConcurrentMarkSweepGeneration::gc_e
      assert(_numObjectsAllocated == 0, "check");
      assert(_numWordsAllocated == 0, "check");
      if (Verbose && PrintGC) {
@@ -200,7 +186,7 @@ index 14f09d1..7427120 100644
                            SIZE_FORMAT" bytes",
                   _numObjectsPromoted, _numWordsPromoted*sizeof(HeapWord));
      }
-@@ -2890,7 +2890,7 @@ void ConcurrentMarkSweepGeneration::gc_epilogue_work(bool full) {
+@@ -2890,7 +2890,7 @@ void ConcurrentMarkSweepGeneration::gc_e
    if (PrintGC && Verbose) {
      // Call down the chain in contiguous_available needs the freelistLock
      // so print this out before releasing the freeListLock.
@@ -209,7 +195,7 @@ index 14f09d1..7427120 100644
                          contiguous_available());
    }
  }
-@@ -2978,7 +2978,7 @@ class VerifyMarkedClosure: public BitMapClosure {
+@@ -2978,7 +2978,7 @@ class VerifyMarkedClosure: public BitMap
      HeapWord* addr = _marks->offsetToHeapWord(offset);
      if (!_marks->isMarked(addr)) {
        oop(addr)->print_on(gclog_or_tty);
@@ -218,8 +204,8 @@ index 14f09d1..7427120 100644
        _failed = true;
      }
      return true;
-@@ -5039,7 +5039,7 @@ void CMSCollector::checkpointRootsFinal(bool asynch,
-
+@@ -5039,7 +5039,7 @@ void CMSCollector::checkpointRootsFinal(
+ 
    SpecializationStats::clear();
    if (PrintGCDetails) {
 -    gclog_or_tty->print("[YG occupancy: "SIZE_FORMAT" K ("SIZE_FORMAT" K)]",
@@ -227,7 +213,7 @@ index 14f09d1..7427120 100644
                          _young_gen->used() / K,
                          _young_gen->capacity() / K);
    }
-@@ -5172,8 +5172,8 @@ void CMSCollector::checkpointRootsFinalWork(bool asynch,
+@@ -5172,8 +5172,8 @@ void CMSCollector::checkpointRootsFinalW
    if (ser_ovflw > 0) {
      if (PrintCMSStatistics != 0) {
        gclog_or_tty->print_cr("Marking stack overflow (benign) "
@@ -238,7 +224,7 @@ index 14f09d1..7427120 100644
          _ser_pmc_preclean_ovflw, _ser_pmc_remark_ovflw,
          _ser_kac_ovflw, _ser_kac_preclean_ovflw);
      }
-@@ -5186,7 +5186,7 @@ void CMSCollector::checkpointRootsFinalWork(bool asynch,
+@@ -5186,7 +5186,7 @@ void CMSCollector::checkpointRootsFinalW
    if (_par_pmc_remark_ovflw > 0 || _par_kac_ovflw > 0) {
      if (PrintCMSStatistics != 0) {
        gclog_or_tty->print_cr("Work queue overflow (benign) "
@@ -247,7 +233,7 @@ index 14f09d1..7427120 100644
          _par_pmc_remark_ovflw, _par_kac_ovflw);
      }
      _par_pmc_remark_ovflw = 0;
-@@ -5194,12 +5194,12 @@ void CMSCollector::checkpointRootsFinalWork(bool asynch,
+@@ -5194,12 +5194,12 @@ void CMSCollector::checkpointRootsFinalW
    }
    if (PrintCMSStatistics != 0) {
       if (_markStack._hit_limit > 0) {
@@ -263,7 +249,7 @@ index 14f09d1..7427120 100644
                                _markStack._failed_double,
                                _markStack.capacity());
       }
-@@ -5963,7 +5963,7 @@ void CMSCollector::do_remark_non_parallel() {
+@@ -5963,7 +5963,7 @@ void CMSCollector::do_remark_non_paralle
                                                 &markFromDirtyCardsClosure);
        verify_work_stacks_empty();
        if (PrintCMSStatistics != 0) {
@@ -299,7 +285,7 @@ index 14f09d1..7427120 100644
                          * sizeof(HeapWord);
 -    gclog_or_tty->print_cr("Total sweep: "SIZE_FORMAT" bytes", totalBytes);
 +    gclog_or_tty->print_cr("Total sweep: " SIZE_FORMAT " bytes", totalBytes);
-
+ 
      if (PrintCMSStatistics && CMSVerifyReturnedBytes) {
        size_t indexListReturnedBytes = _sp->sumIndexedFreeListArrayReturnedBytes();
        size_t dict_returned_bytes = _sp->dictionary()->sum_dict_returned_bytes();
@@ -314,7 +300,7 @@ index 14f09d1..7427120 100644
          dict_returned_bytes);
      }
    }
-@@ -8313,13 +8313,13 @@ size_t SweepClosure::do_blk_careful(HeapWord* addr) {
+@@ -8313,13 +8313,13 @@ size_t SweepClosure::do_blk_careful(Heap
      // coalesced chunk to the appropriate free list.
      if (inFreeRange()) {
        assert(freeFinger() >= _sp->bottom() && freeFinger() < _limit,
@@ -331,9 +317,7 @@ index 14f09d1..7427120 100644
                     freeFinger(), pointer_delta(addr, freeFinger()),
                     lastFreeRangeCoalesced());
        }
-diff --git hotspot/src/share/vm/gc_implementation/g1/collectionSetChooser.hpp hotspot/src/share/vm/gc_implementation/g1/collectionSetChooser.hpp
-index e177fd1..c36852e 100644
---- hotspot/src/share/vm/gc_implementation/g1/collectionSetChooser.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/collectionSetChooser.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/collectionSetChooser.hpp
 @@ -92,7 +92,7 @@ public:
      regions_at_put(_curr_index, NULL);
@@ -344,9 +328,7 @@ index e177fd1..c36852e 100644
                     hr->reclaimable_bytes(), _remaining_reclaimable_bytes));
      _remaining_reclaimable_bytes -= hr->reclaimable_bytes();
      _curr_index += 1;
-diff --git hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
-index 9226191..29b4899 100644
---- hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
 @@ -284,7 +284,7 @@ void CMMarkStack::expand() {
      if (PrintGCDetails && Verbose) {
@@ -357,16 +339,16 @@ index 9226191..29b4899 100644
                            _capacity / K, new_capacity / K);
      }
    }
-@@ -581,7 +581,7 @@ ConcurrentMark::ConcurrentMark(G1CollectedHeap* g1h, G1RegionToSpaceMapper* prev
+@@ -581,7 +581,7 @@ ConcurrentMark::ConcurrentMark(G1Collect
    _verbose_level = verbose_level;
-
+ 
    if (verbose_low()) {
 -    gclog_or_tty->print_cr("[global] init, heap start = "PTR_FORMAT", "
 +    gclog_or_tty->print_cr("[global] init, heap start = " PTR_FORMAT ", "
                             "heap end = " INTPTR_FORMAT, p2i(_heap_start), p2i(_heap_end));
    }
-
-@@ -838,7 +838,7 @@ void ConcurrentMark::set_concurrency_and_phase(uint active_tasks, bool concurren
+ 
+@@ -837,7 +837,7 @@ void ConcurrentMark::set_concurrency_and
      // in a STW phase.
      assert(!concurrent_marking_in_progress(), "invariant");
      assert(out_of_regions(),
@@ -375,18 +357,18 @@ index 9226191..29b4899 100644
                     p2i(_finger), p2i(_heap_end)));
    }
  }
-@@ -1453,7 +1453,7 @@ public:
-
+@@ -1452,7 +1452,7 @@ public:
+ 
      assert(start <= hr->end() && start <= ntams && ntams <= hr->end(),
             err_msg("Preconditions not met - "
 -                   "start: "PTR_FORMAT", ntams: "PTR_FORMAT", end: "PTR_FORMAT,
 +                   "start: " PTR_FORMAT ", ntams: " PTR_FORMAT ", end: " PTR_FORMAT,
                     p2i(start), p2i(ntams), p2i(hr->end())));
-
+ 
      // Find the first marked object at or after "start".
-@@ -1770,10 +1770,10 @@ class FinalCountDataUpdateClosure: public CMCountDataClosureBase {
+@@ -1769,10 +1769,10 @@ class FinalCountDataUpdateClosure: publi
        }
-
+ 
        assert(end_idx <= _card_bm->size(),
 -             err_msg("oob: end_idx=  "SIZE_FORMAT", bitmap size= "SIZE_FORMAT,
 +             err_msg("oob: end_idx=  " SIZE_FORMAT ", bitmap size= " SIZE_FORMAT,
@@ -395,9 +377,9 @@ index 9226191..29b4899 100644
 -             err_msg("oob: start_idx=  "SIZE_FORMAT", bitmap size= "SIZE_FORMAT,
 +             err_msg("oob: start_idx=  " SIZE_FORMAT ", bitmap size= " SIZE_FORMAT,
                       start_idx, _card_bm->size()));
-
+ 
        _cm->set_card_bitmap_range(_card_bm, start_idx, end_idx, true /* is_par */);
-@@ -2278,7 +2278,7 @@ class G1CMKeepAliveAndDrainClosure: public OopClosure {
+@@ -2277,7 +2277,7 @@ class G1CMKeepAliveAndDrainClosure: publ
        oop obj = oopDesc::load_decode_heap_oop(p);
        if (_cm->verbose_high()) {
          gclog_or_tty->print_cr("\t[%u] we're looking at location "
@@ -405,26 +387,26 @@ index 9226191..29b4899 100644
 +                               "*" PTR_FORMAT " = " PTR_FORMAT,
                                 _task->worker_id(), p2i(p), p2i((void*) obj));
        }
-
-@@ -2847,7 +2847,7 @@ public:
+ 
+@@ -2846,7 +2846,7 @@ public:
        }
      }
-
+ 
 -    _out->print_cr("  "PTR_FORMAT": "PTR_FORMAT"%s%s",
 +    _out->print_cr("  " PTR_FORMAT ": " PTR_FORMAT "%s%s",
                     p2i(p), p2i((void*) obj), str, str2);
    }
  };
-@@ -2874,7 +2874,7 @@ public:
+@@ -2873,7 +2873,7 @@ public:
      bool print_it = _all || over_tams || marked;
-
+ 
      if (print_it) {
 -      _out->print_cr(" "PTR_FORMAT"%s",
 +      _out->print_cr(" " PTR_FORMAT "%s",
                       p2i((void *)o), (over_tams) ? " >" : (marked) ? " M" : "");
        PrintReachableOopClosure oopCl(_out, _vo, _all);
        o->oop_iterate_no_header(&oopCl);
-@@ -2895,7 +2895,7 @@ public:
+@@ -2894,7 +2894,7 @@ public:
      HeapWord* e = hr->end();
      HeapWord* t = hr->top();
      HeapWord* p = _g1h->top_at_mark_start(hr, _vo);
@@ -432,10 +414,10 @@ index 9226191..29b4899 100644
 +    _out->print_cr("** [" PTR_FORMAT ", " PTR_FORMAT "] top: " PTR_FORMAT " "
                     "TAMS: " PTR_FORMAT, p2i(b), p2i(e), p2i(t), p2i(p));
      _out->cr();
-
-@@ -3019,9 +3019,9 @@ ConcurrentMark::claim_region(uint worker_id) {
+ 
+@@ -3018,9 +3018,9 @@ ConcurrentMark::claim_region(uint worker
        HeapWord*   limit         = curr_region->next_top_at_mark_start();
-
+ 
        if (verbose_low()) {
 -        gclog_or_tty->print_cr("[%u] curr_region = "PTR_FORMAT" "
 -                               "["PTR_FORMAT", "PTR_FORMAT"), "
@@ -445,9 +427,9 @@ index 9226191..29b4899 100644
 +                               "limit = " PTR_FORMAT,
                                 worker_id, p2i(curr_region), p2i(bottom), p2i(end), p2i(limit));
        }
-
-@@ -3036,7 +3036,7 @@ ConcurrentMark::claim_region(uint worker_id) {
-
+ 
+@@ -3035,7 +3035,7 @@ ConcurrentMark::claim_region(uint worker
+ 
        if (limit > bottom) {
          if (verbose_low()) {
 -          gclog_or_tty->print_cr("[%u] region "PTR_FORMAT" is not empty, "
@@ -455,7 +437,7 @@ index 9226191..29b4899 100644
                                   "returning it ", worker_id, p2i(curr_region));
          }
          return curr_region;
-@@ -3044,7 +3044,7 @@ ConcurrentMark::claim_region(uint worker_id) {
+@@ -3043,7 +3043,7 @@ ConcurrentMark::claim_region(uint worker
          assert(limit == bottom,
                 "the region limit should be at bottom");
          if (verbose_low()) {
@@ -464,7 +446,7 @@ index 9226191..29b4899 100644
                                   "returning NULL", worker_id, p2i(curr_region));
          }
          // we return NULL and the caller should try calling
-@@ -3056,13 +3056,13 @@ ConcurrentMark::claim_region(uint worker_id) {
+@@ -3055,13 +3055,13 @@ ConcurrentMark::claim_region(uint worker
        if (verbose_low()) {
          if (curr_region == NULL) {
            gclog_or_tty->print_cr("[%u] found uncommitted region, moving finger, "
@@ -482,16 +464,16 @@ index 9226191..29b4899 100644
                                   worker_id, p2i(_finger), p2i(finger));
          }
        }
-@@ -3098,7 +3098,7 @@ private:
-
+@@ -3097,7 +3097,7 @@ private:
+ 
    void do_object_work(oop obj) {
      guarantee(!_g1h->obj_in_cs(obj),
 -              err_msg("obj: "PTR_FORMAT" in CSet, phase: %s, info: %d",
 +              err_msg("obj: " PTR_FORMAT " in CSet, phase: %s, info: %d",
                        p2i((void*) obj), phase_str(), _info));
    }
-
-@@ -3159,7 +3159,7 @@ void ConcurrentMark::verify_no_cset_oops() {
+ 
+@@ -3158,7 +3158,7 @@ void ConcurrentMark::verify_no_cset_oops
      // here.
      HeapRegion* global_hr = _g1h->heap_region_containing_raw(global_finger);
      guarantee(global_hr == NULL || global_finger == global_hr->bottom(),
@@ -499,8 +481,8 @@ index 9226191..29b4899 100644
 +              err_msg("global finger: " PTR_FORMAT " region: " HR_FORMAT,
                        p2i(global_finger), HR_FORMAT_PARAMS(global_hr)));
    }
-
-@@ -3173,7 +3173,7 @@ void ConcurrentMark::verify_no_cset_oops() {
+ 
+@@ -3172,7 +3172,7 @@ void ConcurrentMark::verify_no_cset_oops
        HeapRegion* task_hr = _g1h->heap_region_containing_raw(task_finger);
        guarantee(task_hr == NULL || task_finger == task_hr->bottom() ||
                  !task_hr->in_collection_set(),
@@ -509,8 +491,8 @@ index 9226191..29b4899 100644
                          p2i(task_finger), HR_FORMAT_PARAMS(task_hr)));
      }
    }
-@@ -3215,8 +3215,8 @@ class AggregateCountDataHRClosure: public HeapRegionClosure {
-
+@@ -3214,8 +3214,8 @@ class AggregateCountDataHRClosure: publi
+ 
      assert(start <= limit && limit <= hr->top() && hr->top() <= hr->end(),
             err_msg("Preconditions not met - "
 -                   "start: "PTR_FORMAT", limit: "PTR_FORMAT", "
@@ -518,9 +500,9 @@ index 9226191..29b4899 100644
 +                   "start: " PTR_FORMAT ", limit: " PTR_FORMAT ", "
 +                   "top: " PTR_FORMAT ", end: " PTR_FORMAT,
                     p2i(start), p2i(limit), p2i(hr->top()), p2i(hr->end())));
-
+ 
      assert(hr->next_marked_bytes() == 0, "Precondition");
-@@ -3495,7 +3495,7 @@ bool ConcurrentMark::do_yield_check(uint worker_id) {
+@@ -3494,7 +3494,7 @@ bool ConcurrentMark::do_yield_check(uint
  #ifndef PRODUCT
  // for debugging purposes
  void ConcurrentMark::print_finger() {
@@ -529,16 +511,16 @@ index 9226191..29b4899 100644
                           p2i(_heap_start), p2i(_heap_end), p2i(_finger));
    for (uint i = 0; i < _max_worker_id; ++i) {
      gclog_or_tty->print("   %u: " PTR_FORMAT, i, p2i(_tasks[i]->finger()));
-@@ -3580,7 +3580,7 @@ void CMTask::setup_for_region(HeapRegion* hr) {
+@@ -3579,7 +3579,7 @@ void CMTask::setup_for_region(HeapRegion
          "claim_region() should have filtered out continues humongous regions");
-
+ 
    if (_cm->verbose_low()) {
 -    gclog_or_tty->print_cr("[%u] setting up for region "PTR_FORMAT,
 +    gclog_or_tty->print_cr("[%u] setting up for region " PTR_FORMAT,
                             _worker_id, p2i(hr));
    }
-
-@@ -3597,7 +3597,7 @@ void CMTask::update_region_limit() {
+ 
+@@ -3596,7 +3596,7 @@ void CMTask::update_region_limit() {
    if (limit == bottom) {
      if (_cm->verbose_low()) {
        gclog_or_tty->print_cr("[%u] found an empty region "
@@ -547,7 +529,7 @@ index 9226191..29b4899 100644
                               _worker_id, p2i(bottom), p2i(limit));
      }
      // The region was collected underneath our feet.
-@@ -3629,7 +3629,7 @@ void CMTask::update_region_limit() {
+@@ -3628,7 +3628,7 @@ void CMTask::update_region_limit() {
  void CMTask::giveup_current_region() {
    assert(_curr_region != NULL, "invariant");
    if (_cm->verbose_low()) {
@@ -556,8 +538,8 @@ index 9226191..29b4899 100644
                             _worker_id, p2i(_curr_region));
    }
    clear_region_fields();
-@@ -3751,7 +3751,7 @@ void CMTask::regular_clock_call() {
-
+@@ -3750,7 +3750,7 @@ void CMTask::regular_clock_call() {
+ 
    if (_cm->verbose_medium()) {
        gclog_or_tty->print_cr("[%u] regular clock, interval = %1.2lfms, "
 -                        "scanned = "SIZE_FORMAT"%s, refs reached = "SIZE_FORMAT"%s",
@@ -565,17 +547,17 @@ index 9226191..29b4899 100644
                          _worker_id, last_interval_ms,
                          _words_scanned,
                          (_words_scanned >= _words_scanned_limit) ? " (*)" : "",
-@@ -3920,7 +3920,7 @@ void CMTask::drain_local_queue(bool partially) {
+@@ -3919,7 +3919,7 @@ void CMTask::drain_local_queue(bool part
        statsOnly( ++_local_pops );
-
+ 
        if (_cm->verbose_high()) {
 -        gclog_or_tty->print_cr("[%u] popped "PTR_FORMAT, _worker_id,
 +        gclog_or_tty->print_cr("[%u] popped " PTR_FORMAT, _worker_id,
                                 p2i((void*) obj));
        }
-
-@@ -4273,8 +4273,8 @@ void CMTask::do_marking_step(double time_target_ms,
-
+ 
+@@ -4272,8 +4272,8 @@ void CMTask::do_marking_step(double time
+ 
        if (_cm->verbose_low()) {
          gclog_or_tty->print_cr("[%u] we're scanning part "
 -                               "["PTR_FORMAT", "PTR_FORMAT") "
@@ -585,34 +567,34 @@ index 9226191..29b4899 100644
                                 _worker_id, p2i(_finger), p2i(_region_limit),
                                 HR_FORMAT_PARAMS(_curr_region));
        }
-@@ -4361,7 +4361,7 @@ void CMTask::do_marking_step(double time_target_ms,
-
+@@ -4360,7 +4360,7 @@ void CMTask::do_marking_step(double time
+ 
          if (_cm->verbose_low()) {
            gclog_or_tty->print_cr("[%u] we successfully claimed "
 -                                 "region "PTR_FORMAT,
 +                                 "region " PTR_FORMAT,
                                   _worker_id, p2i(claimed_region));
          }
-
-@@ -4422,7 +4422,7 @@ void CMTask::do_marking_step(double time_target_ms,
-
+ 
+@@ -4421,7 +4421,7 @@ void CMTask::do_marking_step(double time
+ 
        if (_cm->try_stealing(_worker_id, &_hash_seed, obj)) {
          if (_cm->verbose_medium()) {
 -          gclog_or_tty->print_cr("[%u] stolen "PTR_FORMAT" successfully",
 +          gclog_or_tty->print_cr("[%u] stolen " PTR_FORMAT " successfully",
                                   _worker_id, p2i((void*) obj));
          }
-
-@@ -4630,7 +4630,7 @@ CMTask::CMTask(uint worker_id,
+ 
+@@ -4629,7 +4629,7 @@ CMTask::CMTask(uint worker_id,
  // identify them easily in a large log file.
  #define G1PPRL_LINE_PREFIX            "###"
-
+ 
 -#define G1PPRL_ADDR_BASE_FORMAT    " "PTR_FORMAT"-"PTR_FORMAT
 +#define G1PPRL_ADDR_BASE_FORMAT    " " PTR_FORMAT "-" PTR_FORMAT
  #ifdef _LP64
  #define G1PPRL_ADDR_BASE_H_FORMAT  " %37s"
  #else // _LP64
-@@ -4640,16 +4640,16 @@ CMTask::CMTask(uint worker_id,
+@@ -4639,16 +4639,16 @@ CMTask::CMTask(uint worker_id,
  // For per-region info
  #define G1PPRL_TYPE_FORMAT            "   %-4s"
  #define G1PPRL_TYPE_H_FORMAT          "   %4s"
@@ -621,7 +603,7 @@ index 9226191..29b4899 100644
  #define G1PPRL_BYTE_H_FORMAT          "  %9s"
  #define G1PPRL_DOUBLE_FORMAT          "  %14.1f"
  #define G1PPRL_DOUBLE_H_FORMAT        "  %14s"
-
+ 
  // For summary info
 -#define G1PPRL_SUM_ADDR_FORMAT(tag)    "  "tag":"G1PPRL_ADDR_BASE_FORMAT
 -#define G1PPRL_SUM_BYTE_FORMAT(tag)    "  "tag": "SIZE_FORMAT
@@ -631,14 +613,12 @@ index 9226191..29b4899 100644
 +#define G1PPRL_SUM_BYTE_FORMAT(tag)    "  " tag ": " SIZE_FORMAT
 +#define G1PPRL_SUM_MB_FORMAT(tag)      "  " tag ": %1.2f MB"
 +#define G1PPRL_SUM_MB_PERC_FORMAT(tag) G1PPRL_SUM_MB_FORMAT(tag) " / %1.2f %%"
-
+ 
  G1PrintRegionLivenessInfoClosure::
  G1PrintRegionLivenessInfoClosure(outputStream* out, const char* phase_name)
-diff --git hotspot/src/share/vm/gc_implementation/g1/concurrentMark.inline.hpp hotspot/src/share/vm/gc_implementation/g1/concurrentMark.inline.hpp
-index 4e84d49..46ab546 100644
---- hotspot/src/share/vm/gc_implementation/g1/concurrentMark.inline.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/concurrentMark.inline.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/concurrentMark.inline.hpp
-@@ -196,8 +196,8 @@ inline bool CMBitMapRO::iterate(BitMapClosure* cl) {
+@@ -196,8 +196,8 @@ inline bool CMBitMapRO::iterate(BitMapCl
    assert(_bmStartWord <= (addr) && (addr) < (_bmStartWord + _bmWordSize),      \
           "outside underlying space?");                                         \
    assert(G1CollectedHeap::heap()->is_in_exact(addr),                           \
@@ -647,18 +627,18 @@ index 4e84d49..46ab546 100644
 +         err_msg("Trying to access not available bitmap " PTR_FORMAT           \
 +                 " corresponding to " PTR_FORMAT " (%u)",                      \
                   p2i(this), p2i(addr), G1CollectedHeap::heap()->addr_to_region(addr)));
-
+ 
  inline void CMBitMap::mark(HeapWord* addr) {
-@@ -343,7 +343,7 @@ inline void CMTask::make_reference_grey(oop obj, HeapRegion* hr) {
-
+@@ -343,7 +343,7 @@ inline void CMTask::make_reference_grey(
+ 
  inline void CMTask::deal_with_reference(oop obj) {
    if (_cm->verbose_high()) {
 -    gclog_or_tty->print_cr("[%u] we're dealing with reference = "PTR_FORMAT,
 +    gclog_or_tty->print_cr("[%u] we're dealing with reference = " PTR_FORMAT,
                             _worker_id, p2i((void*) obj));
    }
-
-@@ -392,7 +392,7 @@ inline void ConcurrentMark::grayRoot(oop obj, size_t word_size,
+ 
+@@ -392,7 +392,7 @@ inline void ConcurrentMark::grayRoot(oop
    // assert that word_size is under an upper bound which is its
    // containing region's capacity.
    assert(word_size * HeapWordSize <= hr->capacity(),
@@ -666,22 +646,20 @@ index 4e84d49..46ab546 100644
 +         err_msg("size: " SIZE_FORMAT " capacity: " SIZE_FORMAT " " HR_FORMAT,
                   word_size * HeapWordSize, hr->capacity(),
                   HR_FORMAT_PARAMS(hr)));
-
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1AllocRegion.cpp hotspot/src/share/vm/gc_implementation/g1/g1AllocRegion.cpp
-index 697a402..f92ae11 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1AllocRegion.cpp
+ 
+--- hotspot/src/share/vm/gc_implementation/g1/g1AllocRegion.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1AllocRegion.cpp
-@@ -140,7 +140,7 @@ HeapWord* G1AllocRegion::new_alloc_region_and_allocate(size_t word_size,
+@@ -140,7 +140,7 @@ HeapWord* G1AllocRegion::new_alloc_regio
  }
-
+ 
  void G1AllocRegion::fill_in_ext_msg(ar_ext_msg* msg, const char* message) {
 -  msg->append("[%s] %s c: %u b: %s r: "PTR_FORMAT" u: "SIZE_FORMAT,
 +  msg->append("[%s] %s c: %u b: %s r: " PTR_FORMAT " u: " SIZE_FORMAT,
                _name, message, _count, BOOL_TO_STR(_bot_updates),
                p2i(_alloc_region), _used_bytes_before);
  }
-@@ -217,7 +217,7 @@ void G1AllocRegion::trace(const char* str, size_t word_size, HeapWord* result) {
-
+@@ -217,7 +217,7 @@ void G1AllocRegion::trace(const char* st
+ 
      if (G1_ALLOC_REGION_TRACING > 1) {
        if (result != NULL) {
 -        jio_snprintf(rest_buffer, buffer_length, SIZE_FORMAT" "PTR_FORMAT,
@@ -689,12 +667,10 @@ index 697a402..f92ae11 100644
                       word_size, result);
        } else if (word_size != 0) {
          jio_snprintf(rest_buffer, buffer_length, SIZE_FORMAT, word_size);
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1Allocator.hpp hotspot/src/share/vm/gc_implementation/g1/g1Allocator.hpp
-index b32a419..04628b7 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1Allocator.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1Allocator.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1Allocator.hpp
 @@ -73,7 +73,7 @@ public:
-
+ 
     void decrease_used(size_t bytes) {
       assert(_summary_bytes_used >= bytes,
 -            err_msg("invariant: _summary_bytes_used: "SIZE_FORMAT" should be >= bytes: "SIZE_FORMAT,
@@ -702,11 +678,9 @@ index b32a419..04628b7 100644
                  _summary_bytes_used, bytes));
       _summary_bytes_used -= bytes;
     }
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.cpp hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.cpp
-index 44f0d58..f6ef670 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.cpp
-@@ -385,11 +385,11 @@ G1BlockOffsetArray::verify_for_object(HeapWord* obj_start,
+@@ -385,11 +385,11 @@ G1BlockOffsetArray::verify_for_object(He
      HeapWord* card_addr = _array->address_for_index(card);
      HeapWord* block_start = block_start_const(card_addr);
      if (block_start != obj_start) {
@@ -738,7 +712,7 @@ index 44f0d58..f6ef670 100644
                    i, _array->address_for_index(i),
                    (uint) _array->offset_array(i));
    }
-@@ -488,7 +488,7 @@ G1BlockOffsetArrayContigSpace::set_for_starts_humongous(HeapWord* new_top) {
+@@ -488,7 +488,7 @@ G1BlockOffsetArrayContigSpace::set_for_s
  void
  G1BlockOffsetArrayContigSpace::print_on(outputStream* out) {
    G1BlockOffsetArray::print_on(out);
@@ -748,14 +722,12 @@ index 44f0d58..f6ef670 100644
 +  out->print_cr("  next offset index:     " SIZE_FORMAT, _next_offset_index);
  }
  #endif // !PRODUCT
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.inline.hpp hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.inline.hpp
-index be5cf30..ca424d3 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.inline.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.inline.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1BlockOffsetTable.inline.hpp
-@@ -47,15 +47,15 @@ G1BlockOffsetTable::block_start_const(const void* addr) const {
+@@ -47,15 +47,15 @@ G1BlockOffsetTable::block_start_const(co
    }
  }
-
+ 
 -#define check_index(index, msg)                                                \
 -  assert((index) < (_reserved.word_size() >> LogN_words),                      \
 -         err_msg("%s - index: "SIZE_FORMAT", _vs.committed_size: "SIZE_FORMAT, \
@@ -775,13 +747,11 @@ index be5cf30..ca424d3 100644
 +                 (index),                                                         \
 +                 p2i(address_for_index_raw(index)),                               \
                   G1CollectedHeap::heap()->addr_to_region(address_for_index_raw(index))));
-
+ 
  u_char G1BlockOffsetSharedArray::offset_array(size_t index) const {
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.cpp hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.cpp
-index 76bf850..0023998 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.cpp
-@@ -44,7 +44,7 @@ void G1CardCountsMappingChangedListener::on_commit(uint start_idx, size_t num_re
+@@ -44,7 +44,7 @@ void G1CardCountsMappingChangedListener:
  void G1CardCounts::clear_range(size_t from_card_num, size_t to_card_num) {
    if (has_count_table()) {
      assert(from_card_num < to_card_num,
@@ -790,7 +760,7 @@ index 76bf850..0023998 100644
                     from_card_num, to_card_num));
      Copy::fill_to_bytes(&_card_counts[from_card_num], (to_card_num - from_card_num));
    }
-@@ -87,7 +87,7 @@ uint G1CardCounts::add_card_count(jbyte* card_ptr) {
+@@ -87,7 +87,7 @@ uint G1CardCounts::add_card_count(jbyte*
    if (has_count_table()) {
      size_t card_num = ptr_2_card_num(card_ptr);
      assert(card_num < _reserved_max_card_num,
@@ -799,24 +769,20 @@ index 76bf850..0023998 100644
                     card_num, _reserved_max_card_num));
      count = (uint) _card_counts[card_num];
      if (count < G1ConcRSHotCardLimit) {
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.hpp hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.hpp
-index 7dcad45..b2ab012 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1CardCounts.hpp
-@@ -91,7 +91,7 @@ class G1CardCounts: public CHeapObj<mtGC> {
-
+@@ -91,7 +91,7 @@ class G1CardCounts: public CHeapObj<mtGC
+ 
    jbyte* card_num_2_ptr(size_t card_num) {
      assert(card_num >= 0 && card_num < _reserved_max_card_num,
 -           err_msg("card num out of range: "SIZE_FORMAT, card_num));
 +           err_msg("card num out of range: " SIZE_FORMAT, card_num));
      return (jbyte*) (_ct_bot + card_num);
    }
-
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.cpp hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.cpp
-index 76bfcd6..aed811b 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.cpp
+ 
+--- hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.cpp
-@@ -230,7 +230,7 @@ bool YoungList::check_list_well_formed() {
+@@ -230,7 +230,7 @@ bool YoungList::check_list_well_formed()
    HeapRegion* last = NULL;
    while (curr != NULL) {
      if (!curr->is_young()) {
@@ -834,16 +800,16 @@ index 76bfcd6..aed811b 100644
                               HR_FORMAT_PARAMS(curr),
                               curr->prev_top_at_mark_start(),
                               curr->next_top_at_mark_start(),
-@@ -490,7 +490,7 @@ void G1CollectedHeap::check_ct_logs_at_safepoint() {
+@@ -490,7 +490,7 @@ void G1CollectedHeap::check_ct_logs_at_s
    gclog_or_tty->print_cr("Log entries = %d, dirty cards = %d.",
                           clear.num_processed(), orig_count);
    guarantee(redirty.num_processed() == clear.num_processed(),
 -            err_msg("Redirtied "SIZE_FORMAT" cards, bug cleared "SIZE_FORMAT,
 +            err_msg("Redirtied " SIZE_FORMAT " cards, bug cleared " SIZE_FORMAT,
                      redirty.num_processed(), clear.num_processed()));
-
+ 
    CountNonCleanMemRegionClosure count3(this);
-@@ -528,7 +528,7 @@ G1CollectedHeap::new_region_try_secondary_free_list(bool is_old) {
+@@ -528,7 +528,7 @@ G1CollectedHeap::new_region_try_secondar
        HeapRegion* res = _hrm.allocate_free_region(is_old);
        if (G1ConcRegionFreeingVerbose) {
          gclog_or_tty->print_cr("G1ConcRegionFreeing [region alloc] : "
@@ -852,7 +818,7 @@ index 76bfcd6..aed811b 100644
                                 HR_FORMAT_PARAMS(res));
        }
        return res;
-@@ -1597,8 +1597,8 @@ resize_if_necessary_after_full_collection(size_t word_size) {
+@@ -1597,8 +1597,8 @@ resize_if_necessary_after_full_collectio
    // This assert only makes sense here, before we adjust them
    // with respect to the min and max heap size.
    assert(minimum_desired_capacity <= maximum_desired_capacity,
@@ -861,7 +827,7 @@ index 76bfcd6..aed811b 100644
 +         err_msg("minimum_desired_capacity = " SIZE_FORMAT ", "
 +                 "maximum_desired_capacity = " SIZE_FORMAT,
                   minimum_desired_capacity, maximum_desired_capacity));
-
+ 
    // Should not be greater than the heap max size. No need to adjust
 @@ -2256,7 +2256,7 @@ public:
    virtual bool doHeapRegion(HeapRegion* hr) {
@@ -895,7 +861,7 @@ index 76bfcd6..aed811b 100644
          }
          obj->print_on(gclog_or_tty);
          _failures = true;
-@@ -3041,9 +3041,9 @@ class G1VerifyCodeRootOopClosure: public OopClosure {
+@@ -3041,9 +3041,9 @@ class G1VerifyCodeRootOopClosure: public
        // Verify that the strong code root list for this region
        // contains the nmethod
        if (!hrrs->strong_code_roots_list_contains(_nm)) {
@@ -942,7 +908,7 @@ index 76bfcd6..aed811b 100644
 @@ -3533,7 +3533,7 @@ public:
      size_t occupied = hrrs->occupied();
      _occupied_sum += occupied;
-
+ 
 -    gclog_or_tty->print_cr("Printing RSet for region "HR_FORMAT,
 +    gclog_or_tty->print_cr("Printing RSet for region " HR_FORMAT,
                             HR_FORMAT_PARAMS(r));
@@ -950,7 +916,7 @@ index 76bfcd6..aed811b 100644
        gclog_or_tty->print_cr("  RSet is empty");
 @@ -3552,7 +3552,7 @@ public:
    }
-
+ 
    ~PrintRSetsClosure() {
 -    gclog_or_tty->print_cr("Occupied Sum: "SIZE_FORMAT, _occupied_sum);
 +    gclog_or_tty->print_cr("Occupied Sum: " SIZE_FORMAT, _occupied_sum);
@@ -966,7 +932,7 @@ index 76bfcd6..aed811b 100644
                   (HeapWord*) old));
    markOop m = old->mark();
    oop forward_ptr = old->forward_to_atomic(old);
-@@ -4450,7 +4450,7 @@ G1CollectedHeap::handle_evacuation_failure_par(G1ParScanThreadState* _par_scan_s
+@@ -4450,7 +4450,7 @@ G1CollectedHeap::handle_evacuation_failu
      // space for this object (old != forward_ptr) or they beat us in
      // self-forwarding it (old == forward_ptr).
      assert(old == forward_ptr || !obj_in_cs(forward_ptr),
@@ -976,7 +942,7 @@ index 76bfcd6..aed811b 100644
                     (HeapWord*) old, (HeapWord*) forward_ptr));
      return forward_ptr;
 @@ -4837,16 +4837,16 @@ public:
-
+ 
    ~G1StringSymbolTableUnlinkTask() {
      guarantee(!_process_strings || !_do_in_parallel || StringTable::parallel_claimed_index() >= _initial_string_table_size,
 -              err_msg("claim value "INT32_FORMAT" after unlink less than initial string table size "INT32_FORMAT,
@@ -986,7 +952,7 @@ index 76bfcd6..aed811b 100644
 -              err_msg("claim value "INT32_FORMAT" after unlink less than initial symbol table size "INT32_FORMAT,
 +              err_msg("claim value " INT32_FORMAT " after unlink less than initial symbol table size " INT32_FORMAT,
                        SymbolTable::parallel_claimed_index(), _initial_symbol_table_size));
-
+ 
      if (G1TraceStringSymbolTableScrubbing) {
        gclog_or_tty->print_cr("Cleaned string and symbol table, "
 -                             "strings: "SIZE_FORMAT" processed, "SIZE_FORMAT" removed, "
@@ -996,7 +962,7 @@ index 76bfcd6..aed811b 100644
                               strings_processed(), strings_removed(),
                               symbols_processed(), symbols_removed());
      }
-@@ -6029,13 +6029,13 @@ void G1CollectedHeap::verify_dirty_young_regions() {
+@@ -6029,13 +6029,13 @@ void G1CollectedHeap::verify_dirty_young
  bool G1CollectedHeap::verify_no_bits_over_tams(const char* bitmap_name, CMBitMapRO* bitmap,
                                                 HeapWord* tams, HeapWord* end) {
    guarantee(tams <= end,
@@ -1013,7 +979,7 @@ index 76bfcd6..aed811b 100644
                             bitmap_name, tams, end);
      return false;
    }
-@@ -6061,7 +6061,7 @@ bool G1CollectedHeap::verify_bitmaps(const char* caller, HeapRegion* hr) {
+@@ -6061,7 +6061,7 @@ bool G1CollectedHeap::verify_bitmaps(con
      res_n = verify_no_bits_over_tams("next", next_bitmap, ntams, end);
    }
    if (!res_p || !res_n) {
@@ -1022,18 +988,18 @@ index 76bfcd6..aed811b 100644
                             HR_FORMAT_PARAMS(hr));
      gclog_or_tty->print_cr("#### Caller: %s", caller);
      return false;
-@@ -6373,7 +6373,7 @@ class G1FreeHumongousRegionClosure : public HeapRegionClosure {
+@@ -6373,7 +6373,7 @@ class G1FreeHumongousRegionClosure : pub
          !r->rem_set()->is_empty()) {
-
+ 
        if (G1TraceEagerReclaimHumongousObjects) {
 -        gclog_or_tty->print_cr("Live humongous region %u size "SIZE_FORMAT" start "PTR_FORMAT" length "UINT32_FORMAT" with remset "SIZE_FORMAT" code roots "SIZE_FORMAT" is marked %d reclaim candidate %d type array %d",
 +        gclog_or_tty->print_cr("Live humongous region %u size " SIZE_FORMAT " start " PTR_FORMAT " length " UINT32_FORMAT " with remset " SIZE_FORMAT " code roots " SIZE_FORMAT " is marked %d reclaim candidate %d type array %d",
                                 region_idx,
                                 obj->size()*HeapWordSize,
                                 r->bottom(),
-@@ -6395,7 +6395,7 @@ class G1FreeHumongousRegionClosure : public HeapRegionClosure {
+@@ -6395,7 +6395,7 @@ class G1FreeHumongousRegionClosure : pub
                        r->bottom()));
-
+ 
      if (G1TraceEagerReclaimHumongousObjects) {
 -      gclog_or_tty->print_cr("Dead humongous region %u size "SIZE_FORMAT" start "PTR_FORMAT" length "UINT32_FORMAT" with remset "SIZE_FORMAT" code roots "SIZE_FORMAT" is marked %d reclaim candidate %d type array %d",
 +      gclog_or_tty->print_cr("Dead humongous region %u size " SIZE_FORMAT " start " PTR_FORMAT " length " UINT32_FORMAT " with remset " SIZE_FORMAT " code roots " SIZE_FORMAT " is marked %d reclaim candidate %d type array %d",
@@ -1049,7 +1015,7 @@ index 76bfcd6..aed811b 100644
                               r->bottom(), r->end());
        _success = false;
      }
-@@ -6680,7 +6680,7 @@ void G1CollectedHeap::rebuild_region_sets(bool free_list_only) {
+@@ -6680,7 +6680,7 @@ void G1CollectedHeap::rebuild_region_set
    }
    assert(_allocator->used_unlocked() == recalculate_used(),
           err_msg("inconsistent _allocator->used_unlocked(), "
@@ -1057,8 +1023,8 @@ index 76bfcd6..aed811b 100644
 +                 "value: " SIZE_FORMAT " recalculated: " SIZE_FORMAT,
                   _allocator->used_unlocked(), recalculate_used()));
  }
-
-@@ -6901,8 +6901,8 @@ class RegisterNMethodOopClosure: public OopClosure {
+ 
+@@ -6901,8 +6901,8 @@ class RegisterNMethodOopClosure: public
        oop obj = oopDesc::decode_heap_oop_not_null(heap_oop);
        HeapRegion* hr = _g1h->heap_region_containing(obj);
        assert(!hr->continuesHumongous(),
@@ -1067,9 +1033,9 @@ index 76bfcd6..aed811b 100644
 +             err_msg("trying to add code root " PTR_FORMAT " in continuation of humongous region " HR_FORMAT
 +                     " starting at " HR_FORMAT,
                       _nm, HR_FORMAT_PARAMS(hr), HR_FORMAT_PARAMS(hr->humongous_start_region())));
-
+ 
        // HeapRegion::add_strong_code_root_locked() avoids adding duplicate entries.
-@@ -6928,8 +6928,8 @@ class UnregisterNMethodOopClosure: public OopClosure {
+@@ -6928,8 +6928,8 @@ class UnregisterNMethodOopClosure: publi
        oop obj = oopDesc::decode_heap_oop_not_null(heap_oop);
        HeapRegion* hr = _g1h->heap_region_containing(obj);
        assert(!hr->continuesHumongous(),
@@ -1078,14 +1044,12 @@ index 76bfcd6..aed811b 100644
 +             err_msg("trying to remove code root " PTR_FORMAT " in continuation of humongous region " HR_FORMAT
 +                     " starting at " HR_FORMAT,
                       _nm, HR_FORMAT_PARAMS(hr), HR_FORMAT_PARAMS(hr->humongous_start_region())));
-
+ 
        hr->remove_strong_code_root(_nm);
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.inline.hpp hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.inline.hpp
-index 0fd2786..7b26fdb 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.inline.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.inline.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1CollectedHeap.inline.hpp
-@@ -81,7 +81,7 @@ inline HeapRegion* G1CollectedHeap::region_at(uint index) const { return _hrm.at
-
+@@ -81,7 +81,7 @@ inline HeapRegion* G1CollectedHeap::regi
+ 
  inline uint G1CollectedHeap::addr_to_region(HeapWord* addr) const {
    assert(is_in_reserved(addr),
 -         err_msg("Cannot calculate region index for address "PTR_FORMAT" that is outside of the heap ["PTR_FORMAT", "PTR_FORMAT")",
@@ -1102,9 +1066,7 @@ index 0fd2786..7b26fdb 100644
            p2i((void*)addr), p2i(g1_reserved().start()), p2i(g1_reserved().end())));
    return _hrm.addr_to_region((HeapWord*) addr);
  }
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1CollectorPolicy.cpp hotspot/src/share/vm/gc_implementation/g1/g1CollectorPolicy.cpp
-index ea80c44..c4463f5 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1CollectorPolicy.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1CollectorPolicy.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1CollectorPolicy.cpp
 @@ -199,7 +199,7 @@ G1CollectorPolicy::G1CollectorPolicy() :
    const size_t region_size = HeapRegion::GrainWords;
@@ -1115,18 +1077,18 @@ index ea80c44..c4463f5 100644
                   OldPLABSize > region_size ? "Old" : "Young", region_size);
      vm_exit_during_initialization(buffer);
    }
-@@ -846,7 +846,7 @@ void G1CollectorPolicy::record_collection_pause_start(double start_time_sec) {
+@@ -846,7 +846,7 @@ void G1CollectorPolicy::record_collectio
    update_survivors_policy();
-
+ 
    assert(_g1->used() == _g1->recalculate_used(),
 -         err_msg("sanity, used: "SIZE_FORMAT" recalculate_used: "SIZE_FORMAT,
 +         err_msg("sanity, used: " SIZE_FORMAT " recalculate_used: " SIZE_FORMAT,
                   _g1->used(), _g1->recalculate_used()));
-
+ 
    double s_w_t_ms = (start_time_sec - _stop_world_start) * 1000.0;
-@@ -1231,10 +1231,10 @@ void G1CollectorPolicy::print_detailed_heap_transition(bool full) {
+@@ -1231,10 +1231,10 @@ void G1CollectorPolicy::print_detailed_h
      (_young_list_target_length * HeapRegion::GrainBytes) - survivor_used_bytes_after_gc;
-
+ 
    gclog_or_tty->print(
 -    "   [Eden: "EXT_SIZE_FORMAT"("EXT_SIZE_FORMAT")->"EXT_SIZE_FORMAT"("EXT_SIZE_FORMAT") "
 -    "Survivors: "EXT_SIZE_FORMAT"->"EXT_SIZE_FORMAT" "
@@ -1139,7 +1101,7 @@ index ea80c44..c4463f5 100644
      EXT_SIZE_PARAMS(_eden_used_bytes_before_gc),
      EXT_SIZE_PARAMS(_eden_capacity_bytes_before_gc),
      EXT_SIZE_PARAMS(eden_used_bytes_after_gc),
-@@ -1851,7 +1851,7 @@ void G1CollectorPolicy::print_collection_set(HeapRegion* list_head, outputStream
+@@ -1851,7 +1851,7 @@ void G1CollectorPolicy::print_collection
    while (csr != NULL) {
      HeapRegion* next = csr->next_in_collection_set();
      assert(csr->in_collection_set(), "bad CS");
@@ -1148,9 +1110,7 @@ index ea80c44..c4463f5 100644
                   HR_FORMAT_PARAMS(csr),
                   csr->prev_top_at_mark_start(), csr->next_top_at_mark_start(),
                   csr->age_in_surv_rate_group_cond());
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1ErgoVerbose.hpp hotspot/src/share/vm/gc_implementation/g1/g1ErgoVerbose.hpp
-index eff1196..fff1663 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1ErgoVerbose.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1ErgoVerbose.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1ErgoVerbose.hpp
 @@ -121,15 +121,15 @@ public:
  // Single parameter format strings
@@ -1163,42 +1123,38 @@ index eff1196..fff1663 100644
  #define ergo_format_ms(_name_)       ", " _name_ ": %1.2f ms"
 -#define ergo_format_size(_name_)     ", " _name_ ": "SIZE_FORMAT
 +#define ergo_format_size(_name_)     ", " _name_ ": " SIZE_FORMAT
-
+ 
  // Double parameter format strings
  #define ergo_format_byte_perc(_name_)                                   \
 -                             ", " _name_ ": "SIZE_FORMAT" bytes (%1.2f %%)"
 +                             ", " _name_ ": " SIZE_FORMAT " bytes (%1.2f %%)"
-
+ 
  // Generates the format string
  #define ergo_format(_extra_format_)                           \
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1GCPhaseTimes.cpp hotspot/src/share/vm/gc_implementation/g1/g1GCPhaseTimes.cpp
-index c037110..af0bdb9 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1GCPhaseTimes.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1GCPhaseTimes.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1GCPhaseTimes.cpp
-@@ -332,7 +332,7 @@ void G1GCPhaseTimes::print_stats(int level, const char* str, double value) {
+@@ -332,7 +332,7 @@ void G1GCPhaseTimes::print_stats(int lev
  }
-
+ 
  void G1GCPhaseTimes::print_stats(int level, const char* str, size_t value) {
 -  LineBuffer(level).append_and_print_cr("[%s: "SIZE_FORMAT"]", str, value);
 +  LineBuffer(level).append_and_print_cr("[%s: " SIZE_FORMAT "]", str, value);
  }
-
+ 
  void G1GCPhaseTimes::print_stats(int level, const char* str, double value, uint workers) {
-@@ -452,7 +452,7 @@ class G1GCParPhasePrinter : public StackObj {
-
+@@ -452,7 +452,7 @@ class G1GCParPhasePrinter : public Stack
+ 
      if (phase->_thread_work_items != NULL) {
        LineBuffer buf2(phase->_thread_work_items->_indent_level);
 -      buf2.append_and_print_cr("[%s:  "SIZE_FORMAT"]", phase->_thread_work_items->_title, _phase_times->sum_thread_work_items(phase_id));
 +      buf2.append_and_print_cr("[%s:  " SIZE_FORMAT "]", phase->_thread_work_items->_title, _phase_times->sum_thread_work_items(phase_id));
      }
    }
-
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1HRPrinter.cpp hotspot/src/share/vm/gc_implementation/g1/g1HRPrinter.cpp
-index 8139048..9cc752a 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1HRPrinter.cpp
+ 
+--- hotspot/src/share/vm/gc_implementation/g1/g1HRPrinter.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1HRPrinter.cpp
-@@ -84,18 +84,18 @@ void G1HRPrinter::print(ActionType action, RegionType type,
-
+@@ -84,18 +84,18 @@ void G1HRPrinter::print(ActionType actio
+ 
    if (type_str != NULL) {
      if (top != NULL) {
 -      gclog_or_tty->print_cr(G1HR_PREFIX" %s(%s) "PTR_FORMAT" "PTR_FORMAT,
@@ -1220,25 +1176,23 @@ index 8139048..9cc752a 100644
                               action_str, bottom);
      }
    }
-@@ -104,11 +104,11 @@ void G1HRPrinter::print(ActionType action, RegionType type,
+@@ -104,11 +104,11 @@ void G1HRPrinter::print(ActionType actio
  void G1HRPrinter::print(ActionType action, HeapWord* bottom, HeapWord* end) {
    const char* action_str = action_name(action);
-
+ 
 -  gclog_or_tty->print_cr(G1HR_PREFIX" %s ["PTR_FORMAT","PTR_FORMAT"]",
 +  gclog_or_tty->print_cr(G1HR_PREFIX" %s [" PTR_FORMAT "," PTR_FORMAT "]",
                           action_str, bottom, end);
  }
-
+ 
  void G1HRPrinter::print(PhaseType phase, size_t phase_num) {
    const char* phase_str = phase_name(phase);
 -  gclog_or_tty->print_cr(G1HR_PREFIX" #%s "SIZE_FORMAT, phase_str, phase_num);
 +  gclog_or_tty->print_cr(G1HR_PREFIX" #%s " SIZE_FORMAT, phase_str, phase_num);
  }
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1OopClosures.inline.hpp hotspot/src/share/vm/gc_implementation/g1/g1OopClosures.inline.hpp
-index a00cd7a..0385f66 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1OopClosures.inline.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1OopClosures.inline.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1OopClosures.inline.hpp
-@@ -118,7 +118,7 @@ inline void G1CMOopClosure::do_oop_nv(T* p) {
+@@ -118,7 +118,7 @@ inline void G1CMOopClosure::do_oop_nv(T*
    oop obj = oopDesc::load_decode_heap_oop(p);
    if (_cm->verbose_high()) {
      gclog_or_tty->print_cr("[%u] we're looking at location "
@@ -1247,11 +1201,9 @@ index a00cd7a..0385f66 100644
                             _task->worker_id(), p2i(p), p2i((void*) obj));
    }
    _task->deal_with_reference(obj);
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1RemSet.cpp hotspot/src/share/vm/gc_implementation/g1/g1RemSet.cpp
-index ca714dc..da4d632 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1RemSet.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1RemSet.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1RemSet.cpp
-@@ -442,7 +442,7 @@ G1UpdateRSOrPushRefOopClosure(G1CollectedHeap* g1h,
+@@ -442,7 +442,7 @@ G1UpdateRSOrPushRefOopClosure(G1Collecte
  bool G1RemSet::refine_card(jbyte* card_ptr, uint worker_i,
                             bool check_for_refs_into_cset) {
    assert(_g1->is_in_exact(_ct_bs->addr_for(card_ptr)),
@@ -1260,102 +1212,10 @@ index ca714dc..da4d632 100644
                   p2i(card_ptr),
                   _ct_bs->index_for(_ct_bs->addr_for(card_ptr)),
                   _ct_bs->addr_for(card_ptr),
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1RemSetSummary.cpp hotspot/src/share/vm/gc_implementation/g1/g1RemSetSummary.cpp
-index c55165b..8d654dc 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1RemSetSummary.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1RemSetSummary.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1RemSetSummary.cpp
-@@ -187,22 +187,22 @@ public:
-   size_t code_root_elems() const { return _code_root_elems; }
-
-   void print_rs_mem_info_on(outputStream * out, size_t total) {
--    out->print_cr("    "SIZE_FORMAT_W(8)"K (%5.1f%%) by "SIZE_FORMAT" %s regions",
-+    out->print_cr("    " SIZE_FORMAT_W(8) "K (%5.1f%%) by " SIZE_FORMAT " %s regions",
-         round_to_K(rs_mem_size()), rs_mem_size_percent_of(total), amount(), _name);
-   }
-
-   void print_cards_occupied_info_on(outputStream * out, size_t total) {
--    out->print_cr("     "SIZE_FORMAT_W(8)" (%5.1f%%) entries by "SIZE_FORMAT" %s regions",
-+    out->print_cr("     " SIZE_FORMAT_W(8) " (%5.1f%%) entries by " SIZE_FORMAT " %s regions",
-         cards_occupied(), cards_occupied_percent_of(total), amount(), _name);
-   }
-
-   void print_code_root_mem_info_on(outputStream * out, size_t total) {
--    out->print_cr("    "SIZE_FORMAT_W(8)"K (%5.1f%%) by "SIZE_FORMAT" %s regions",
-+    out->print_cr("    " SIZE_FORMAT_W(8) "K (%5.1f%%) by " SIZE_FORMAT " %s regions",
-         round_to_K(code_root_mem_size()), code_root_mem_size_percent_of(total), amount(), _name);
-   }
-
-   void print_code_root_elems_info_on(outputStream * out, size_t total) {
--    out->print_cr("     "SIZE_FORMAT_W(8)" (%5.1f%%) elements by "SIZE_FORMAT" %s regions",
-+    out->print_cr("     " SIZE_FORMAT_W(8) " (%5.1f%%) elements by " SIZE_FORMAT " %s regions",
-         code_root_elems(), code_root_elems_percent_of(total), amount(), _name);
-   }
- };
-@@ -280,19 +280,19 @@ public:
-     RegionTypeCounter* counters[] = { &_young, &_humonguous, &_free, &_old, NULL };
-
-     out->print_cr("\n Current rem set statistics");
--    out->print_cr("  Total per region rem sets sizes = "SIZE_FORMAT"K."
--                  " Max = "SIZE_FORMAT"K.",
-+    out->print_cr("  Total per region rem sets sizes = " SIZE_FORMAT "K."
-+                  " Max = " SIZE_FORMAT "K.",
-                   round_to_K(total_rs_mem_sz()), round_to_K(max_rs_mem_sz()));
-     for (RegionTypeCounter** current = &counters[0]; *current != NULL; current++) {
-       (*current)->print_rs_mem_info_on(out, total_rs_mem_sz());
-     }
-
--    out->print_cr("   Static structures = "SIZE_FORMAT"K,"
--                  " free_lists = "SIZE_FORMAT"K.",
-+    out->print_cr("   Static structures = " SIZE_FORMAT "K,"
-+                  " free_lists = " SIZE_FORMAT "K.",
-                   round_to_K(HeapRegionRemSet::static_mem_size()),
-                   round_to_K(HeapRegionRemSet::fl_mem_size()));
-
--    out->print_cr("    "SIZE_FORMAT" occupied cards represented.",
-+    out->print_cr("    " SIZE_FORMAT " occupied cards represented.",
-                   total_cards_occupied());
-     for (RegionTypeCounter** current = &counters[0]; *current != NULL; current++) {
-       (*current)->print_cards_occupied_info_on(out, total_cards_occupied());
-@@ -300,30 +300,30 @@ public:
-
-     // Largest sized rem set region statistics
-     HeapRegionRemSet* rem_set = max_rs_mem_sz_region()->rem_set();
--    out->print_cr("    Region with largest rem set = "HR_FORMAT", "
--                  "size = "SIZE_FORMAT "K, occupied = "SIZE_FORMAT"K.",
-+    out->print_cr("    Region with largest rem set = " HR_FORMAT ", "
-+                  "size = " SIZE_FORMAT "K, occupied = " SIZE_FORMAT "K.",
-                   HR_FORMAT_PARAMS(max_rs_mem_sz_region()),
-                   round_to_K(rem_set->mem_size()),
-                   round_to_K(rem_set->occupied()));
-
-     // Strong code root statistics
-     HeapRegionRemSet* max_code_root_rem_set = max_code_root_mem_sz_region()->rem_set();
--    out->print_cr("  Total heap region code root sets sizes = "SIZE_FORMAT"K."
--                  "  Max = "SIZE_FORMAT"K.",
-+    out->print_cr("  Total heap region code root sets sizes = " SIZE_FORMAT "K."
-+                  "  Max = " SIZE_FORMAT "K.",
-                   round_to_K(total_code_root_mem_sz()),
-                   round_to_K(max_code_root_rem_set->strong_code_roots_mem_size()));
-     for (RegionTypeCounter** current = &counters[0]; *current != NULL; current++) {
-       (*current)->print_code_root_mem_info_on(out, total_code_root_mem_sz());
-     }
-
--    out->print_cr("    "SIZE_FORMAT" code roots represented.",
-+    out->print_cr("    " SIZE_FORMAT " code roots represented.",
-                   total_code_root_elems());
-     for (RegionTypeCounter** current = &counters[0]; *current != NULL; current++) {
-       (*current)->print_code_root_elems_info_on(out, total_code_root_elems());
-     }
-
--    out->print_cr("    Region with largest amount of code roots = "HR_FORMAT", "
--                  "size = "SIZE_FORMAT "K, num_elems = "SIZE_FORMAT".",
-+    out->print_cr("    Region with largest amount of code roots = " HR_FORMAT ", "
-+                  "size = " SIZE_FORMAT "K, num_elems = " SIZE_FORMAT ".",
-                   HR_FORMAT_PARAMS(max_code_root_mem_sz_region()),
-                   round_to_K(max_code_root_rem_set->strong_code_roots_mem_size()),
-                   round_to_K(max_code_root_rem_set->strong_code_roots_list_length()));
-@@ -332,16 +332,16 @@ public:
-
+@@ -344,16 +344,16 @@ public:
+ 
  void G1RemSetSummary::print_on(outputStream* out) {
    out->print_cr("\n Recent concurrent refinement statistics");
 -  out->print_cr("  Processed "SIZE_FORMAT" cards",
@@ -1376,24 +1236,20 @@ index c55165b..8d654dc 100644
    out->print_cr("  Concurrent RS threads times (s)");
    out->print("     ");
    for (uint i = 0; i < _num_vtimes; i++) {
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1StringDedupQueue.cpp hotspot/src/share/vm/gc_implementation/g1/g1StringDedupQueue.cpp
-index 8ae53e3..747f61b 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1StringDedupQueue.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1StringDedupQueue.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1StringDedupQueue.cpp
-@@ -151,7 +151,7 @@ void G1StringDedupQueue::unlink_or_oops_do(G1StringDedupUnlinkOrOopsDoClosure* c
+@@ -151,7 +151,7 @@ void G1StringDedupQueue::unlink_or_oops_
  void G1StringDedupQueue::print_statistics(outputStream* st) {
    st->print_cr(
      "   [Queue]\n"
 -    "      [Dropped: "UINTX_FORMAT"]", _queue->_dropped);
 +    "      [Dropped: " UINTX_FORMAT "]", _queue->_dropped);
  }
-
+ 
  void G1StringDedupQueue::verify() {
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1StringDedupStat.cpp hotspot/src/share/vm/gc_implementation/g1/g1StringDedupStat.cpp
-index 2d5523c..f9700e1 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1StringDedupStat.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1StringDedupStat.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1StringDedupStat.cpp
-@@ -80,8 +80,8 @@ void G1StringDedupStat::print_summary(outputStream* st, const G1StringDedupStat&
+@@ -80,8 +80,8 @@ void G1StringDedupStat::print_summary(ou
    st->stamp(PrintGCTimeStamps);
    st->print_cr(
      "[GC concurrent-string-deduplication, "
@@ -1404,8 +1260,8 @@ index 2d5523c..f9700e1 100644
      G1_STRDEDUP_BYTES_PARAM(last_stat._new_bytes),
      G1_STRDEDUP_BYTES_PARAM(last_stat._new_bytes - last_stat._deduped_bytes),
      G1_STRDEDUP_BYTES_PARAM(last_stat._deduped_bytes),
-@@ -135,22 +135,22 @@ void G1StringDedupStat::print_statistics(outputStream* st, const G1StringDedupSt
-
+@@ -135,22 +135,22 @@ void G1StringDedupStat::print_statistics
+ 
    if (total) {
      st->print_cr(
 -      "   [Total Exec: "UINTX_FORMAT"/"G1_STRDEDUP_TIME_FORMAT", Idle: "UINTX_FORMAT"/"G1_STRDEDUP_TIME_FORMAT", Blocked: "UINTX_FORMAT"/"G1_STRDEDUP_TIME_FORMAT"]",
@@ -1437,11 +1293,9 @@ index 2d5523c..f9700e1 100644
      stat._inspected,
      stat._skipped, skipped_percent,
      stat._hashed, hashed_percent,
-diff --git hotspot/src/share/vm/gc_implementation/g1/g1StringDedupTable.cpp hotspot/src/share/vm/gc_implementation/g1/g1StringDedupTable.cpp
-index 2b41688..39a3306 100644
---- hotspot/src/share/vm/gc_implementation/g1/g1StringDedupTable.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/g1StringDedupTable.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/g1StringDedupTable.cpp
-@@ -554,12 +554,12 @@ void G1StringDedupTable::trim_entry_cache() {
+@@ -596,12 +596,12 @@ void G1StringDedupTable::clean_entry_cac
  void G1StringDedupTable::print_statistics(outputStream* st) {
    st->print_cr(
      "   [Table]\n"
@@ -1460,11 +1314,9 @@ index 2b41688..39a3306 100644
      G1_STRDEDUP_BYTES_PARAM(_table->_size * sizeof(G1StringDedupEntry*) + (_table->_entries + _entry_cache->size()) * sizeof(G1StringDedupEntry)),
      _table->_size, _min_size, _max_size,
      _table->_entries, (double)_table->_entries / (double)_table->_size * 100.0, _entry_cache->size(), _entries_added, _entries_removed,
-diff --git hotspot/src/share/vm/gc_implementation/g1/heapRegion.cpp hotspot/src/share/vm/gc_implementation/g1/heapRegion.cpp
-index ef5b437..eefa1c9 100644
---- hotspot/src/share/vm/gc_implementation/g1/heapRegion.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/heapRegion.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/heapRegion.cpp
-@@ -333,7 +333,7 @@ void HeapRegion::note_self_forwarding_removal_end(bool during_initial_mark,
+@@ -333,7 +333,7 @@ void HeapRegion::note_self_forwarding_re
                                                    bool during_conc_mark,
                                                    size_t marked_bytes) {
    assert(0 <= marked_bytes && marked_bytes <= used(),
@@ -1473,7 +1325,7 @@ index ef5b437..eefa1c9 100644
                   marked_bytes, used()));
    _prev_top_at_mark_start = top();
    _prev_marked_bytes = marked_bytes;
-@@ -514,9 +514,9 @@ class VerifyStrongCodeRootOopClosure: public OopClosure {
+@@ -514,9 +514,9 @@ class VerifyStrongCodeRootOopClosure: pu
          // Object is in the region. Check that its less than top
          if (_hr->top() <= (HeapWord*)obj) {
            // Object is above top
@@ -1515,7 +1367,7 @@ index ef5b437..eefa1c9 100644
                                   _hr->bottom(), _hr->end(), nm);
            _failures = true;
          }
-@@ -599,8 +599,8 @@ void HeapRegion::verify_strong_code_roots(VerifyOption vo, bool* failures) const
+@@ -599,8 +599,8 @@ void HeapRegion::verify_strong_code_root
    // on its strong code root list
    if (is_empty()) {
      if (strong_code_roots_length > 0) {
@@ -1526,8 +1378,8 @@ index ef5b437..eefa1c9 100644
                               bottom(), end(), strong_code_roots_length);
        *failures = true;
      }
-@@ -609,8 +609,8 @@ void HeapRegion::verify_strong_code_roots(VerifyOption vo, bool* failures) const
-
+@@ -609,8 +609,8 @@ void HeapRegion::verify_strong_code_root
+ 
    if (continuesHumongous()) {
      if (strong_code_roots_length > 0) {
 -      gclog_or_tty->print_cr("region "HR_FORMAT" is a continuation of a humongous "
@@ -1537,7 +1389,7 @@ index ef5b437..eefa1c9 100644
                               HR_FORMAT_PARAMS(this), strong_code_roots_length);
        *failures = true;
      }
-@@ -634,7 +634,7 @@ void HeapRegion::print_on(outputStream* st) const {
+@@ -634,7 +634,7 @@ void HeapRegion::print_on(outputStream*
    else
      st->print("   ");
    st->print(" TS %5d", _gc_time_stamp);
@@ -1602,7 +1454,7 @@ index ef5b437..eefa1c9 100644
                                   HR_FORMAT_PARAMS(to));
            if (obj->is_oop()) {
 @@ -830,8 +830,8 @@ void HeapRegion::verify(VerifyOption vo,
-
+ 
      if (is_humongous != g1->isHumongous(obj_size) &&
          !g1->is_obj_dead(obj, this)) { // Dead objects may have bigger block_size since they span several objects.
 -      gclog_or_tty->print_cr("obj "PTR_FORMAT" is of %shumongous size ("
@@ -1638,7 +1490,7 @@ index ef5b437..eefa1c9 100644
        }
 @@ -901,8 +901,8 @@ void HeapRegion::verify(VerifyOption vo,
    }
-
+ 
    if (p != top()) {
 -    gclog_or_tty->print_cr("end of last object "PTR_FORMAT" "
 -                           "does not match top "PTR_FORMAT, p, top());
@@ -1693,7 +1545,7 @@ index ef5b437..eefa1c9 100644
        return;
 @@ -964,8 +964,8 @@ void HeapRegion::verify(VerifyOption vo,
    }
-
+ 
    if (is_humongous && object_num > 1) {
 -    gclog_or_tty->print_cr("region ["PTR_FORMAT","PTR_FORMAT"] is humongous "
 -                           "but has "SIZE_FORMAT", objects",
@@ -1702,20 +1554,18 @@ index ef5b437..eefa1c9 100644
                             bottom(), end(), object_num);
      *failures = true;
      return;
-diff --git hotspot/src/share/vm/gc_implementation/g1/heapRegion.hpp hotspot/src/share/vm/gc_implementation/g1/heapRegion.hpp
-index e62a2ab..76627e7 100644
---- hotspot/src/share/vm/gc_implementation/g1/heapRegion.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/heapRegion.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/heapRegion.hpp
 @@ -52,7 +52,7 @@ class HeapRegion;
  class HeapRegionSetBase;
  class nmethod;
-
+ 
 -#define HR_FORMAT "%u:(%s)["PTR_FORMAT","PTR_FORMAT","PTR_FORMAT"]"
 +#define HR_FORMAT "%u:(%s)[" PTR_FORMAT "," PTR_FORMAT "," PTR_FORMAT "]"
  #define HR_FORMAT_PARAMS(_hr_) \
                  (_hr_)->hrm_index(), \
                  (_hr_)->get_short_type_str(), \
-@@ -534,8 +534,8 @@ class HeapRegion: public G1OffsetTableContigSpace {
+@@ -534,8 +534,8 @@ class HeapRegion: public G1OffsetTableCo
    void set_containing_set(HeapRegionSetBase* containing_set) {
      assert((containing_set == NULL && _containing_set != NULL) ||
             (containing_set != NULL && _containing_set == NULL),
@@ -1724,24 +1574,20 @@ index e62a2ab..76627e7 100644
 +           err_msg("containing_set: " PTR_FORMAT " "
 +                   "_containing_set: " PTR_FORMAT,
                     p2i(containing_set), p2i(_containing_set)));
-
+ 
      _containing_set = containing_set;
-diff --git hotspot/src/share/vm/gc_implementation/g1/heapRegion.inline.hpp hotspot/src/share/vm/gc_implementation/g1/heapRegion.inline.hpp
-index 62ae230..46e8b00 100644
---- hotspot/src/share/vm/gc_implementation/g1/heapRegion.inline.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/heapRegion.inline.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/heapRegion.inline.hpp
-@@ -112,7 +112,7 @@ HeapRegion::block_size(const HeapWord *addr) const {
-
+@@ -112,7 +112,7 @@ HeapRegion::block_size(const HeapWord *a
+ 
    assert(ClassUnloadingWithConcurrentMark,
        err_msg("All blocks should be objects if G1 Class Unloading isn't used. "
 -              "HR: ["PTR_FORMAT", "PTR_FORMAT", "PTR_FORMAT") "
 +              "HR: [" PTR_FORMAT ", " PTR_FORMAT ", " PTR_FORMAT ") "
                "addr: " PTR_FORMAT,
                p2i(bottom()), p2i(top()), p2i(end()), p2i(addr)));
-
-diff --git hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.cpp hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.cpp
-index 020eb08..14673df 100644
---- hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.cpp
+ 
+--- hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.cpp
 @@ -432,7 +432,7 @@ void HeapRegionManager::verify() {
      HeapRegion* hr = _regions.get_by_index(i);
@@ -1752,12 +1598,10 @@ index 020eb08..14673df 100644
                        i, HR_FORMAT_PARAMS(hr), p2i(prev_end)));
      guarantee(hr->hrm_index() == i,
                err_msg("invariant: i: %u hrm_index(): %u", i, hr->hrm_index()));
-diff --git hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.inline.hpp hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.inline.hpp
-index 96bc92f..68840d6 100644
---- hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.inline.hpp
+--- hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.inline.hpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/heapRegionManager.inline.hpp
 @@ -31,9 +31,9 @@
-
+ 
  inline HeapRegion* HeapRegionManager::addr_to_region(HeapWord* addr) const {
    assert(addr < heap_end(),
 -        err_msg("addr: "PTR_FORMAT" end: "PTR_FORMAT, p2i(addr), p2i(heap_end())));
@@ -1765,24 +1609,22 @@ index 96bc92f..68840d6 100644
    assert(addr >= heap_bottom(),
 -        err_msg("addr: "PTR_FORMAT" bottom: "PTR_FORMAT, p2i(addr), p2i(heap_bottom())));
 +        err_msg("addr: " PTR_FORMAT " bottom: " PTR_FORMAT, p2i(addr), p2i(heap_bottom())));
-
+ 
    HeapRegion* hr = _regions.get_by_address(addr);
    return hr;
-diff --git hotspot/src/share/vm/gc_implementation/g1/heapRegionRemSet.cpp hotspot/src/share/vm/gc_implementation/g1/heapRegionRemSet.cpp
-index 662f4f1..6659960 100644
---- hotspot/src/share/vm/gc_implementation/g1/heapRegionRemSet.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/heapRegionRemSet.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/heapRegionRemSet.cpp
 @@ -91,7 +91,7 @@ protected:
      // concurrency.
-
+ 
      if (G1TraceHeapRegionRememberedSet) {
 -      gclog_or_tty->print_cr("    PRT::Add_reference_work(" PTR_FORMAT "->" PTR_FORMAT").",
 +      gclog_or_tty->print_cr("    PRT::Add_reference_work(" PTR_FORMAT "->" PTR_FORMAT ").",
                               from,
                               UseCompressedOops
                               ? (void *)oopDesc::load_decode_heap_oop((narrowOop*)from)
-@@ -381,7 +381,7 @@ void FromCardCache::initialize(uint n_par_rs, uint max_num_regions) {
-
+@@ -381,7 +381,7 @@ void FromCardCache::initialize(uint n_pa
+ 
  void FromCardCache::invalidate(uint start_idx, size_t new_num_regions) {
    guarantee((size_t)start_idx + new_num_regions <= max_uintx,
 -            err_msg("Trying to invalidate beyond maximum region, from %u size "SIZE_FORMAT,
@@ -1790,7 +1632,7 @@ index 662f4f1..6659960 100644
                      start_idx, new_num_regions));
    for (uint i = 0; i < HeapRegionRemSet::num_par_rem_sets(); i++) {
      uint end_idx = (start_idx + (uint)new_num_regions);
-@@ -396,7 +396,7 @@ void FromCardCache::invalidate(uint start_idx, size_t new_num_regions) {
+@@ -396,7 +396,7 @@ void FromCardCache::invalidate(uint star
  void FromCardCache::print(outputStream* out) {
    for (uint i = 0; i < HeapRegionRemSet::num_par_rem_sets(); i++) {
      for (uint j = 0; j < _max_regions; j++) {
@@ -1799,17 +1641,17 @@ index 662f4f1..6659960 100644
                      i, j, at(i, j));
      }
    }
-@@ -436,7 +436,7 @@ void OtherRegionsTable::add_reference(OopOrNarrowOopStar from, int tid) {
+@@ -436,7 +436,7 @@ void OtherRegionsTable::add_reference(Oo
    int from_card = (int)(uintptr_t(from) >> CardTableModRefBS::card_shift);
-
+ 
    if (G1TraceHeapRegionRememberedSet) {
 -    gclog_or_tty->print_cr("Table for [" PTR_FORMAT "...): card %d (cache = "INT32_FORMAT")",
 +    gclog_or_tty->print_cr("Table for [" PTR_FORMAT "...): card %d (cache = " INT32_FORMAT ")",
                    hr()->bottom(), from_card,
                    FromCardCache::at((uint)tid, cur_hrm_ind));
    }
-@@ -642,13 +642,13 @@ void OtherRegionsTable::scrub(CardTableModRefBS* ctbs,
-
+@@ -642,13 +642,13 @@ void OtherRegionsTable::scrub(CardTableM
+ 
    assert(_coarse_map.size() == region_bm->size(), "Precondition");
    if (G1RSScrubVerbose) {
 -    gclog_or_tty->print("   Coarse map: before = "SIZE_FORMAT"...",
@@ -1822,19 +1664,19 @@ index 662f4f1..6659960 100644
 -    gclog_or_tty->print_cr("   after = "SIZE_FORMAT".", _n_coarse_entries);
 +    gclog_or_tty->print_cr("   after = " SIZE_FORMAT ".", _n_coarse_entries);
    }
-
+ 
    // Now do the fine-grained maps.
-@@ -1044,7 +1044,7 @@ bool HeapRegionRemSetIterator::fine_has_next(size_t& card_index) {
-
+@@ -1044,7 +1044,7 @@ bool HeapRegionRemSetIterator::fine_has_
+ 
    card_index = _cur_region_card_offset + _cur_card_in_prt;
    guarantee(_cur_card_in_prt < HeapRegion::CardsPerRegion,
 -            err_msg("Card index "SIZE_FORMAT" must be within the region", _cur_card_in_prt));
 +            err_msg("Card index " SIZE_FORMAT " must be within the region", _cur_card_in_prt));
    return true;
  }
-
-@@ -1213,8 +1213,8 @@ void PerRegionTable::test_fl_mem_size() {
-
+ 
+@@ -1213,8 +1213,8 @@ void PerRegionTable::test_fl_mem_size()
+ 
    size_t min_prt_size = sizeof(void*) + dummy->bm()->size_in_words() * HeapWordSize;
    assert(dummy->mem_size() > min_prt_size,
 -         err_msg("PerRegionTable memory usage is suspiciously small, only has "SIZE_FORMAT" bytes. "
@@ -1844,13 +1686,11 @@ index 662f4f1..6659960 100644
    free(dummy);
    guarantee(dummy->mem_size() == fl_mem_size(), "fl_mem_size() does not return the correct element size");
    // try to reset the state
-diff --git hotspot/src/share/vm/gc_implementation/g1/heapRegionSet.cpp hotspot/src/share/vm/gc_implementation/g1/heapRegionSet.cpp
-index b654430..9ffb46f 100644
---- hotspot/src/share/vm/gc_implementation/g1/heapRegionSet.cpp
+--- hotspot/src/share/vm/gc_implementation/g1/heapRegionSet.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/g1/heapRegionSet.cpp
 @@ -32,7 +32,7 @@ PRAGMA_FORMAT_MUTE_WARNINGS_FOR_GCC
  uint FreeRegionList::_unrealistically_long_length = 0;
-
+ 
  void HeapRegionSetBase::fill_in_ext_msg(hrs_ext_msg* msg, const char* message) {
 -  msg->append("[%s] %s ln: %u cy: "SIZE_FORMAT,
 +  msg->append("[%s] %s ln: %u cy: " SIZE_FORMAT,
@@ -1858,7 +1698,7 @@ index b654430..9ffb46f 100644
    fill_in_ext_msg_extra(msg);
  }
 @@ -84,13 +84,13 @@ void HeapRegionSetBase::verify_end() {
-
+ 
  void HeapRegionSetBase::print_on(outputStream* out, bool print_contents) {
    out->cr();
 -  out->print_cr("Set: %s ("PTR_FORMAT")", name(), this);
@@ -1872,15 +1712,15 @@ index b654430..9ffb46f 100644
 +  out->print_cr("    total capacity    : " SIZE_FORMAT_W(14) " bytes",
                  total_capacity_bytes());
  }
-
-@@ -106,7 +106,7 @@ void FreeRegionList::set_unrealistically_long_length(uint len) {
+ 
+@@ -106,7 +106,7 @@ void FreeRegionList::set_unrealistically
  }
-
+ 
  void FreeRegionList::fill_in_ext_msg_extra(hrs_ext_msg* msg) {
 -  msg->append(" hd: "PTR_FORMAT" tl: "PTR_FORMAT, _head, _tail);
 +  msg->append(" hd: " PTR_FORMAT " tl: " PTR_FORMAT, _head, _tail);
  }
-
+ 
  void FreeRegionList::remove_all() {
 @@ -277,8 +277,8 @@ void FreeRegionList::clear() {
  void FreeRegionList::print_on(outputStream* out, bool print_contents) {
@@ -1890,23 +1730,21 @@ index b654430..9ffb46f 100644
 -  out->print_cr("    tail              : "PTR_FORMAT, _tail);
 +  out->print_cr("    head              : " PTR_FORMAT, _head);
 +  out->print_cr("    tail              : " PTR_FORMAT, _tail);
-
+ 
    if (print_contents) {
      out->print_cr("  Contents");
 @@ -306,7 +306,7 @@ void FreeRegionList::verify_list() {
-
+ 
      count++;
      guarantee(count < _unrealistically_long_length,
 -        hrs_err_msg("[%s] the calculated length: %u seems very long, is there maybe a cycle? curr: "PTR_FORMAT" prev0: "PTR_FORMAT" " "prev1: "PTR_FORMAT" length: %u", name(), count, curr, prev0, prev1, length()));
 +        hrs_err_msg("[%s] the calculated length: %u seems very long, is there maybe a cycle? curr: " PTR_FORMAT " prev0: " PTR_FORMAT " " "prev1: " PTR_FORMAT " length: %u", name(), count, curr, prev0, prev1, length()));
-
+ 
      if (curr->next() != NULL) {
        guarantee(curr->next()->prev() == curr, "Next or prev pointers messed up");
-diff --git hotspot/src/share/vm/gc_implementation/parallelScavenge/psMarkSweep.cpp hotspot/src/share/vm/gc_implementation/parallelScavenge/psMarkSweep.cpp
-index 114d39d..c877400 100644
---- hotspot/src/share/vm/gc_implementation/parallelScavenge/psMarkSweep.cpp
+--- hotspot/src/share/vm/gc_implementation/parallelScavenge/psMarkSweep.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/parallelScavenge/psMarkSweep.cpp
-@@ -668,7 +668,7 @@ jlong PSMarkSweep::millis_since_last_gc() {
+@@ -668,7 +668,7 @@ jlong PSMarkSweep::millis_since_last_gc(
    jlong ret_val = now - _time_of_last_gc;
    // XXX See note in genCollectedHeap::millis_since_last_gc().
    if (ret_val < 0) {
@@ -1915,11 +1753,9 @@ index 114d39d..c877400 100644
      return 0;
    }
    return ret_val;
-diff --git hotspot/src/share/vm/gc_implementation/parallelScavenge/psParallelCompact.cpp hotspot/src/share/vm/gc_implementation/parallelScavenge/psParallelCompact.cpp
-index 8175ded..dd02250 100644
---- hotspot/src/share/vm/gc_implementation/parallelScavenge/psParallelCompact.cpp
+--- hotspot/src/share/vm/gc_implementation/parallelScavenge/psParallelCompact.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/parallelScavenge/psParallelCompact.cpp
-@@ -3291,7 +3291,7 @@ jlong PSParallelCompact::millis_since_last_gc() {
+@@ -3291,7 +3291,7 @@ jlong PSParallelCompact::millis_since_la
    jlong ret_val = now - _time_of_last_gc;
    // XXX See note in genCollectedHeap::millis_since_last_gc().
    if (ret_val < 0) {
@@ -1928,11 +1764,9 @@ index 8175ded..dd02250 100644
      return 0;
    }
    return ret_val;
-diff --git hotspot/src/share/vm/gc_implementation/shared/mutableNUMASpace.cpp hotspot/src/share/vm/gc_implementation/shared/mutableNUMASpace.cpp
-index 9a9ed05..39a370c 100644
---- hotspot/src/share/vm/gc_implementation/shared/mutableNUMASpace.cpp
+--- hotspot/src/share/vm/gc_implementation/shared/mutableNUMASpace.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/shared/mutableNUMASpace.cpp
-@@ -86,7 +86,7 @@ void MutableNUMASpace::ensure_parsability() {
+@@ -86,7 +86,7 @@ void MutableNUMASpace::ensure_parsabilit
          while (words_left_to_fill > 0) {
            size_t words_to_fill = MIN2(words_left_to_fill, CollectedHeap::filler_array_max_size());
            assert(words_to_fill >= CollectedHeap::min_fill_size(),
@@ -1941,11 +1775,9 @@ index 9a9ed05..39a370c 100644
              words_to_fill, words_left_to_fill, CollectedHeap::filler_array_max_size()));
            CollectedHeap::fill_with_object((HeapWord*)cur_top, words_to_fill);
            if (!os::numa_has_static_binding()) {
-diff --git hotspot/src/share/vm/gc_implementation/shared/parGCAllocBuffer.cpp hotspot/src/share/vm/gc_implementation/shared/parGCAllocBuffer.cpp
-index bddf14b..923c34e 100644
---- hotspot/src/share/vm/gc_implementation/shared/parGCAllocBuffer.cpp
+--- hotspot/src/share/vm/gc_implementation/shared/parGCAllocBuffer.cpp.orig
 +++ hotspot/src/share/vm/gc_implementation/shared/parGCAllocBuffer.cpp
-@@ -98,10 +98,10 @@ void PLABStats::adjust_desired_plab_sz(uint no_of_gc_workers) {
+@@ -98,10 +98,10 @@ void PLABStats::adjust_desired_plab_sz(u
    if (_allocated == 0) {
      assert(_unused == 0,
             err_msg("Inconsistency in PLAB stats: "
@@ -1958,13 +1790,11 @@ index bddf14b..923c34e 100644
 +                   "_unused: " SIZE_FORMAT ", "
 +                   "_used  : " SIZE_FORMAT,
                     _allocated, _wasted, _unused, _used));
-
+ 
      _allocated = 1;
-diff --git hotspot/src/share/vm/memory/cardTableModRefBS.hpp hotspot/src/share/vm/memory/cardTableModRefBS.hpp
-index c824e61..f08d7e2 100644
---- hotspot/src/share/vm/memory/cardTableModRefBS.hpp
+--- hotspot/src/share/vm/memory/cardTableModRefBS.hpp.orig
 +++ hotspot/src/share/vm/memory/cardTableModRefBS.hpp
-@@ -158,8 +158,8 @@ class CardTableModRefBS: public ModRefBarrierSet {
+@@ -158,8 +158,8 @@ class CardTableModRefBS: public ModRefBa
    // Mapping from address to card marking array entry
    jbyte* byte_for(const void* p) const {
      assert(_whole_heap.contains(p),
@@ -1997,11 +1827,9 @@ index c824e61..f08d7e2 100644
                     p2i(p), p2i(_whole_heap.start()), p2i(_whole_heap.end())));
      return byte_for(p) - _byte_map;
    }
-diff --git hotspot/src/share/vm/memory/genCollectedHeap.cpp hotspot/src/share/vm/memory/genCollectedHeap.cpp
-index f7c9591..f1852e6 100644
---- hotspot/src/share/vm/memory/genCollectedHeap.cpp
+--- hotspot/src/share/vm/memory/genCollectedHeap.cpp.orig
 +++ hotspot/src/share/vm/memory/genCollectedHeap.cpp
-@@ -1403,7 +1403,7 @@ jlong GenCollectedHeap::millis_since_last_gc() {
+@@ -1403,7 +1403,7 @@ jlong GenCollectedHeap::millis_since_las
    // back a time later than 'now'.
    jlong retVal = now - tolgc_cl.time();
    if (retVal < 0) {
@@ -2010,11 +1838,9 @@ index f7c9591..f1852e6 100644
      return 0;
    }
    return retVal;
-diff --git hotspot/src/share/vm/memory/generation.cpp hotspot/src/share/vm/memory/generation.cpp
-index d52f325..3c45a91 100644
---- hotspot/src/share/vm/memory/generation.cpp
+--- hotspot/src/share/vm/memory/generation.cpp.orig
 +++ hotspot/src/share/vm/memory/generation.cpp
-@@ -187,7 +187,7 @@ bool Generation::promotion_attempt_is_safe(size_t max_promotion_in_bytes) const
+@@ -187,7 +187,7 @@ bool Generation::promotion_attempt_is_sa
    bool   res = (available >= max_promotion_in_bytes);
    if (PrintGC && Verbose) {
      gclog_or_tty->print_cr(
@@ -2023,11 +1849,9 @@ index d52f325..3c45a91 100644
        res? "":" not", available, res? ">=":"<",
        max_promotion_in_bytes);
    }
-diff --git hotspot/src/share/vm/memory/generation.hpp hotspot/src/share/vm/memory/generation.hpp
-index 63dccb7..c23295a 100644
---- hotspot/src/share/vm/memory/generation.hpp
+--- hotspot/src/share/vm/memory/generation.hpp.orig
 +++ hotspot/src/share/vm/memory/generation.hpp
-@@ -422,7 +422,7 @@ class Generation: public CHeapObj<mtGC> {
+@@ -422,7 +422,7 @@ class Generation: public CHeapObj<mtGC>
      // have to guard against non-monotonicity.
      NOT_PRODUCT(
        if (now < _time_of_last_gc) {
@@ -2036,12 +1860,10 @@ index 63dccb7..c23295a 100644
        }
      )
      return _time_of_last_gc;
-diff --git hotspot/src/share/vm/memory/referenceProcessor.cpp hotspot/src/share/vm/memory/referenceProcessor.cpp
-index 3c776f4..d851886 100644
---- hotspot/src/share/vm/memory/referenceProcessor.cpp
+--- hotspot/src/share/vm/memory/referenceProcessor.cpp.orig
 +++ hotspot/src/share/vm/memory/referenceProcessor.cpp
-@@ -161,7 +161,7 @@ void ReferenceProcessor::update_soft_ref_master_clock() {
-
+@@ -161,7 +161,7 @@ void ReferenceProcessor::update_soft_ref
+ 
    NOT_PRODUCT(
    if (now < _soft_ref_timestamp_clock) {
 -    warning("time warp: "INT64_FORMAT" to "INT64_FORMAT,
@@ -2049,11 +1871,9 @@ index 3c776f4..d851886 100644
              _soft_ref_timestamp_clock, now);
    }
    )
-diff --git hotspot/src/share/vm/memory/tenuredGeneration.cpp hotspot/src/share/vm/memory/tenuredGeneration.cpp
-index d7432ba..cdc51ee 100644
---- hotspot/src/share/vm/memory/tenuredGeneration.cpp
+--- hotspot/src/share/vm/memory/tenuredGeneration.cpp.orig
 +++ hotspot/src/share/vm/memory/tenuredGeneration.cpp
-@@ -294,8 +294,8 @@ bool TenuredGeneration::promotion_attempt_is_safe(size_t max_promotion_in_bytes)
+@@ -294,8 +294,8 @@ bool TenuredGeneration::promotion_attemp
    bool   res = (available >= av_promo) || (available >= max_promotion_in_bytes);
    if (PrintGC && Verbose) {
      gclog_or_tty->print_cr(
@@ -2064,12 +1884,10 @@ index d7432ba..cdc51ee 100644
        res? "":" not", available, res? ">=":"<",
        av_promo, max_promotion_in_bytes);
    }
-diff --git hotspot/src/share/vm/memory/threadLocalAllocBuffer.inline.hpp hotspot/src/share/vm/memory/threadLocalAllocBuffer.inline.hpp
-index cf3fefb..b19bd93 100644
---- hotspot/src/share/vm/memory/threadLocalAllocBuffer.inline.hpp
+--- hotspot/src/share/vm/memory/threadLocalAllocBuffer.inline.hpp.orig
 +++ hotspot/src/share/vm/memory/threadLocalAllocBuffer.inline.hpp
-@@ -94,10 +94,10 @@ void ThreadLocalAllocBuffer::record_slow_allocation(size_t obj_size) {
-
+@@ -94,10 +94,10 @@ void ThreadLocalAllocBuffer::record_slow
+ 
    if (PrintTLAB && Verbose) {
      Thread* thrd = myThread();
 -    gclog_or_tty->print("TLAB: %s thread: "INTPTR_FORMAT" [id: %2d]"
@@ -2083,11 +1901,9 @@ index cf3fefb..b19bd93 100644
                          "slow", p2i(thrd), thrd->osthread()->thread_id(),
                          obj_size, free(), refill_waste_limit());
    }
-diff --git hotspot/src/share/vm/memory/universe.cpp hotspot/src/share/vm/memory/universe.cpp
-index 2e1e90f..bfbe2ec 100644
---- hotspot/src/share/vm/memory/universe.cpp
+--- hotspot/src/share/vm/memory/universe.cpp.orig
 +++ hotspot/src/share/vm/memory/universe.cpp
-@@ -926,7 +926,7 @@ void Universe::print_compressed_oops_mode() {
+@@ -926,7 +926,7 @@ void Universe::print_compressed_oops_mod
  // Reserve the Java heap, which is now the same for all GCs.
  ReservedSpace Universe::reserve_heap(size_t heap_size, size_t alignment) {
    assert(alignment <= Arguments::conservative_max_heap_alignment(),
@@ -2096,11 +1912,9 @@ index 2e1e90f..bfbe2ec 100644
            alignment, Arguments::conservative_max_heap_alignment()));
    size_t total_reserved = align_size_up(heap_size, alignment);
    assert(!UseCompressedOops || (total_reserved <= (OopEncodingHeapMax - os::vm_page_size())),
-diff --git hotspot/src/share/vm/oops/constantPool.cpp hotspot/src/share/vm/oops/constantPool.cpp
-index a9685b2..b76435f 100644
---- hotspot/src/share/vm/oops/constantPool.cpp
+--- hotspot/src/share/vm/oops/constantPool.cpp.orig
 +++ hotspot/src/share/vm/oops/constantPool.cpp
-@@ -1494,7 +1494,7 @@ static void print_cpool_bytes(jint cnt, u1 *bytes) {
+@@ -1494,7 +1494,7 @@ static void print_cpool_bytes(jint cnt,
        }
        case JVM_CONSTANT_Long: {
          u8 val = Bytes::get_Java_u8(bytes);
@@ -2109,20 +1923,18 @@ index a9685b2..b76435f 100644
          ent_size = 8;
          idx++; // Long takes two cpool slots
          break;
-diff --git hotspot/src/share/vm/oops/cpCache.cpp hotspot/src/share/vm/oops/cpCache.cpp
-index d0c7750..e0f396d 100644
---- hotspot/src/share/vm/oops/cpCache.cpp
+--- hotspot/src/share/vm/oops/cpCache.cpp.orig
 +++ hotspot/src/share/vm/oops/cpCache.cpp
-@@ -305,7 +305,7 @@ void ConstantPoolCacheEntry::set_method_handle_common(constantPoolHandle cpool,
+@@ -315,7 +315,7 @@ void ConstantPoolCacheEntry::set_method_
                     adapter->size_of_parameters());
-
+ 
    if (TraceInvokeDynamic) {
 -    tty->print_cr("set_method_handle bc=%d appendix="PTR_FORMAT"%s method_type="PTR_FORMAT"%s method="PTR_FORMAT" ",
 +    tty->print_cr("set_method_handle bc=%d appendix=" PTR_FORMAT "%s method_type=" PTR_FORMAT "%s method=" PTR_FORMAT " ",
                    invoke_code,
                    (void *)appendix(),    (has_appendix    ? "" : " (unused)"),
                    (void *)method_type(), (has_method_type ? "" : " (unused)"),
-@@ -536,12 +536,12 @@ void ConstantPoolCacheEntry::print(outputStream* st, int index) const {
+@@ -529,12 +529,12 @@ void ConstantPoolCacheEntry::print(outpu
    // print separator
    if (index == 0) st->print_cr("                 -------------");
    // print entry
@@ -2138,12 +1950,10 @@ index d0c7750..e0f396d 100644
 +  st->print_cr("                 [   " PTR_FORMAT "]", (intptr_t)_flags);
    st->print_cr("                 -------------");
  }
-
-diff --git hotspot/src/share/vm/oops/markOop.cpp hotspot/src/share/vm/oops/markOop.cpp
-index 1cc8a19..9bca601 100644
---- hotspot/src/share/vm/oops/markOop.cpp
+ 
+--- hotspot/src/share/vm/oops/markOop.cpp.orig
 +++ hotspot/src/share/vm/oops/markOop.cpp
-@@ -49,7 +49,7 @@ void markOopDesc::print_on(outputStream* st) const {
+@@ -49,7 +49,7 @@ void markOopDesc::print_on(outputStream*
          st->print("monitor=NULL");
        else {
          BasicLock * bl = (BasicLock *) mon->owner();
@@ -2152,11 +1962,9 @@ index 1cc8a19..9bca601 100644
                  mon->count(), mon->waiters(), mon->recursions(), p2i(bl));
        }
      } else {
-diff --git hotspot/src/share/vm/oops/objArrayKlass.cpp hotspot/src/share/vm/oops/objArrayKlass.cpp
-index a4c51d0..4f637f4 100644
---- hotspot/src/share/vm/oops/objArrayKlass.cpp
+--- hotspot/src/share/vm/oops/objArrayKlass.cpp.orig
 +++ hotspot/src/share/vm/oops/objArrayKlass.cpp
-@@ -657,7 +657,7 @@ void ObjArrayKlass::oop_print_value_on(oop obj, outputStream* st) {
+@@ -657,7 +657,7 @@ void ObjArrayKlass::oop_print_value_on(o
        if (i > max_objArray_print_length) {
          st->print("..."); break;
        }
@@ -2165,25 +1973,21 @@ index a4c51d0..4f637f4 100644
      }
      st->print(" }");
    }
-diff --git hotspot/src/share/vm/oops/oop.cpp hotspot/src/share/vm/oops/oop.cpp
-index 1be5781..3df79d4 100644
---- hotspot/src/share/vm/oops/oop.cpp
+--- hotspot/src/share/vm/oops/oop.cpp.orig
 +++ hotspot/src/share/vm/oops/oop.cpp
-@@ -46,7 +46,7 @@ void oopDesc::print_on(outputStream* st) const {
-
+@@ -46,7 +46,7 @@ void oopDesc::print_on(outputStream* st)
+ 
  void oopDesc::print_address_on(outputStream* st) const {
    if (PrintOopAddress) {
 -    st->print("{"INTPTR_FORMAT"}", this);
 +    st->print("{" INTPTR_FORMAT "}", this);
    }
  }
-
-diff --git hotspot/src/share/vm/prims/methodHandles.cpp hotspot/src/share/vm/prims/methodHandles.cpp
-index 62aece7..0a2f76e 100644
---- hotspot/src/share/vm/prims/methodHandles.cpp
+ 
+--- hotspot/src/share/vm/prims/methodHandles.cpp.orig
 +++ hotspot/src/share/vm/prims/methodHandles.cpp
-@@ -1321,27 +1321,27 @@ JVM_END
-
+@@ -1342,27 +1342,27 @@ JVM_END
+ 
  // These are the native methods on java.lang.invoke.MethodHandleNatives.
  static JNINativeMethod MHN_methods[] = {
 -  {CC"init",                      CC"("MEM""OBJ")V",                     FN_PTR(MHN_init_Mem)},
@@ -2214,7 +2018,7 @@ index 62aece7..0a2f76e 100644
 +  {CC "staticFieldBase",           CC "(" MEM ")" OBJ,                        FN_PTR(MHN_staticFieldBase)},
 +  {CC "getMemberVMInfo",           CC "(" MEM ")" OBJ,                        FN_PTR(MHN_getMemberVMInfo)}
  };
-
+ 
  static JNINativeMethod MH_methods[] = {
    // UnsupportedOperationException throwers
 -  {CC"invoke",                    CC"(["OBJ")"OBJ,                       FN_PTR(MH_invoke_UOE)},
@@ -2222,11 +2026,9 @@ index 62aece7..0a2f76e 100644
 +  {CC"invoke",                    CC "([" OBJ ")" OBJ,                       FN_PTR(MH_invoke_UOE)},
 +  {CC"invokeExact",               CC "([" OBJ ")" OBJ,                       FN_PTR(MH_invokeExact_UOE)}
  };
-
+ 
  /**
-diff --git hotspot/src/share/vm/prims/perf.cpp hotspot/src/share/vm/prims/perf.cpp
-index 9ad0f4c..342cb2f 100644
---- hotspot/src/share/vm/prims/perf.cpp
+--- hotspot/src/share/vm/prims/perf.cpp.orig
 +++ hotspot/src/share/vm/prims/perf.cpp
 @@ -290,17 +290,17 @@ PERF_END
  #define FN_PTR(f) CAST_FROM_FN_PTR(void*, &f)
@@ -2236,9 +2038,9 @@ index 9ad0f4c..342cb2f 100644
 -#define CBA_ARGS    CC"("JLS"II[BI)"BB
 +#define CL_ARGS     CC "(" JLS "IIJ)" BB
 +#define CBA_ARGS    CC "(" JLS "II[BI)" BB
-
+ 
  static JNINativeMethod perfmethods[] = {
-
+ 
 -  {CC"attach",              CC"("JLS"II)"BB,  FN_PTR(Perf_Attach)},
 -  {CC"detach",              CC"("BB")V",      FN_PTR(Perf_Detach)},
 -  {CC"createLong",          CL_ARGS,          FN_PTR(Perf_CreateLong)},
@@ -2252,25 +2054,23 @@ index 9ad0f4c..342cb2f 100644
 +  {CC"highResCounter",      CC "()J",            FN_PTR(Perf_HighResCounter)},
 +  {CC"highResFrequency",    CC "()J",            FN_PTR(Perf_HighResFrequency)}
  };
-
+ 
  #undef CBA_ARGS
-diff --git hotspot/src/share/vm/prims/unsafe.cpp hotspot/src/share/vm/prims/unsafe.cpp
-index 0846b20..5e61217 100644
---- hotspot/src/share/vm/prims/unsafe.cpp
+--- hotspot/src/share/vm/prims/unsafe.cpp.orig
 +++ hotspot/src/share/vm/prims/unsafe.cpp
-@@ -1009,7 +1009,7 @@ UNSAFE_ENTRY(jclass, Unsafe_DefineClass0(JNIEnv *env, jobject unsafe, jstring na
+@@ -1001,7 +1001,7 @@ UNSAFE_ENTRY(jclass, Unsafe_DefineClass0
  UNSAFE_END
-
-
+ 
+ 
 -#define DAC_Args CLS"[B["OBJ
 +#define DAC_Args CLS "[B[" OBJ
  // define a class but do not make it known to the class loader or system dictionary
  // - host_class:  supplies context for linkage, access control, protection domain, and class loader
  // - data:  bytes of a class file, a raw memory address (length gives the number of bytes)
-@@ -1374,47 +1374,47 @@ UNSAFE_END
-
+@@ -1366,47 +1366,47 @@ UNSAFE_END
+ 
  #define LANG "Ljava/lang/"
-
+ 
 -#define OBJ LANG"Object;"
 -#define CLS LANG"Class;"
 -#define CTR LANG"reflect/Constructor;"
@@ -2283,29 +2083,29 @@ index 0846b20..5e61217 100644
 +#define FLD LANG "reflect/Field;"
 +#define MTH LANG "reflect/Method;"
 +#define THR LANG "Throwable;"
-
+ 
 -#define DC0_Args LANG"String;[BII"
 -#define DC_Args  DC0_Args LANG"ClassLoader;" "Ljava/security/ProtectionDomain;"
 +#define DC0_Args LANG "String;[BII"
 +#define DC_Args  DC0_Args LANG "ClassLoader;" "Ljava/security/ProtectionDomain;"
-
+ 
  #define CC (char*)  /*cast a literal from (const char*)*/
  #define FN_PTR(f) CAST_FROM_FN_PTR(void*, &f)
-
+ 
  // define deprecated accessors for compabitility with 1.4.0
  #define DECLARE_GETSETOOP_140(Boolean, Z) \
 -    {CC"get"#Boolean,      CC"("OBJ"I)"#Z,      FN_PTR(Unsafe_Get##Boolean##140)}, \
 -    {CC"put"#Boolean,      CC"("OBJ"I"#Z")V",   FN_PTR(Unsafe_Set##Boolean##140)}
 +    {CC"get"#Boolean,      CC"(" OBJ "I)" #Z,      FN_PTR(Unsafe_Get##Boolean##140)}, \
 +    {CC"put"#Boolean,      CC"(" OBJ "I" #Z ")V",   FN_PTR(Unsafe_Set##Boolean##140)}
-
+ 
  // Note:  In 1.4.1, getObject and kin take both int and long offsets.
  #define DECLARE_GETSETOOP_141(Boolean, Z) \
 -    {CC"get"#Boolean,      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean)}, \
 -    {CC"put"#Boolean,      CC"("OBJ"J"#Z")V",   FN_PTR(Unsafe_Set##Boolean)}
 +    {CC"get"#Boolean,      CC"(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean)}, \
 +    {CC"put"#Boolean,      CC"(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean)}
-
+ 
  // Note:  In 1.5.0, there are volatile versions too
  #define DECLARE_GETSETOOP(Boolean, Z) \
 -    {CC"get"#Boolean,      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean)}, \
@@ -2316,46 +2116,47 @@ index 0846b20..5e61217 100644
 +    {CC"put"#Boolean,      CC"(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean)}, \
 +    {CC"get"#Boolean "Volatile",      CC"(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean##Volatile)}, \
 +    {CC"put"#Boolean "Volatile",      CC"(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean##Volatile)}
-
-
+ 
+ 
  #define DECLARE_GETSETNATIVE(Byte, B) \
 -    {CC"get"#Byte,         CC"("ADR")"#B,       FN_PTR(Unsafe_GetNative##Byte)}, \
 -    {CC"put"#Byte,         CC"("ADR#B")V",      FN_PTR(Unsafe_SetNative##Byte)}
 +    {CC"get"#Byte,         CC"(" ADR ")" #B,       FN_PTR(Unsafe_GetNative##Byte)}, \
 +    {CC"put"#Byte,         CC"(" ADR #B ")V",      FN_PTR(Unsafe_SetNative##Byte)}
-
-
-
+ 
+ 
+ 
  // These are the methods for 1.4.0
  static JNINativeMethod methods_140[] = {
 -    {CC"getObject",        CC"("OBJ"I)"OBJ"",   FN_PTR(Unsafe_GetObject140)},
 -    {CC"putObject",        CC"("OBJ"I"OBJ")V",  FN_PTR(Unsafe_SetObject140)},
 +    {CC"getObject",        CC"(" OBJ "I)" OBJ "",   FN_PTR(Unsafe_GetObject140)},
 +    {CC"putObject",        CC"(" OBJ "I" OBJ ")V",  FN_PTR(Unsafe_SetObject140)},
-
+ 
      DECLARE_GETSETOOP_140(Boolean, Z),
      DECLARE_GETSETOOP_140(Byte, B),
-@@ -1433,33 +1433,33 @@ static JNINativeMethod methods_140[] = {
+@@ -1425,33 +1425,33 @@ static JNINativeMethod methods_140[] = {
      DECLARE_GETSETNATIVE(Float, F),
      DECLARE_GETSETNATIVE(Double, D),
-
+ 
 -    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 -    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
 +    {CC"getAddress",         CC"(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 +    {CC"putAddress",         CC"(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
-
+ 
 -    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
 -    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
 -    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
-+    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
-+    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
-+    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
-
+-
 -    {CC"fieldOffset",        CC"("FLD")I",               FN_PTR(Unsafe_FieldOffset)},
 -    {CC"staticFieldBase",    CC"("CLS")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromClass)},
 -    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
 -    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
 -    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
 +    {CC"fieldOffset",        CC"(" FLD ")I",               FN_PTR(Unsafe_FieldOffset)},
 +    {CC"staticFieldBase",    CC"(" CLS ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromClass)},
 +    {CC"ensureClassInitialized",CC"(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
@@ -2363,7 +2164,7 @@ index 0846b20..5e61217 100644
 +    {CC"arrayIndexScale",    CC"(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
      {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
      {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
-
+ 
 -    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
 -    {CC"defineClass",        CC"("DC_Args")"CLS,         FN_PTR(Unsafe_DefineClass)},
 -    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
@@ -2377,38 +2178,39 @@ index 0846b20..5e61217 100644
 +    {CC"monitorExit",        CC"(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
 +    {CC"throwException",     CC"(" THR ")V",               FN_PTR(Unsafe_ThrowException)}
  };
-
+ 
  // These are the methods prior to the JSR 166 changes in 1.5.0
  static JNINativeMethod methods_141[] = {
 -    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
 -    {CC"putObject",        CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObject)},
 +    {CC"getObject",        CC"(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObject)},
 +    {CC"putObject",        CC"(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
-
+ 
      DECLARE_GETSETOOP_141(Boolean, Z),
      DECLARE_GETSETOOP_141(Byte, B),
-@@ -1478,37 +1478,37 @@ static JNINativeMethod methods_141[] = {
+@@ -1470,37 +1470,37 @@ static JNINativeMethod methods_141[] = {
      DECLARE_GETSETNATIVE(Float, F),
      DECLARE_GETSETNATIVE(Double, D),
-
+ 
 -    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 -    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
 +    {CC"getAddress",         CC"(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 +    {CC"putAddress",         CC"(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
-
+ 
 -    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
 -    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
 -    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
-+    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
-+    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
-+    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
-
+-
 -    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 -    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 -    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
 -    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
 -    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
 -    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
 +    {CC"objectFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 +    {CC"staticFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 +    {CC"staticFieldBase",    CC"(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
@@ -2417,7 +2219,7 @@ index 0846b20..5e61217 100644
 +    {CC"arrayIndexScale",    CC"(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
      {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
      {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
-
+ 
 -    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
 -    {CC"defineClass",        CC"("DC_Args")"CLS,         FN_PTR(Unsafe_DefineClass)},
 -    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
@@ -2430,9 +2232,9 @@ index 0846b20..5e61217 100644
 +    {CC"monitorEnter",       CC"(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
 +    {CC"monitorExit",        CC"(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
 +    {CC"throwException",     CC"(" THR ")V",               FN_PTR(Unsafe_ThrowException)}
-
+ 
  };
-
+ 
  // These are the methods prior to the JSR 166 changes in 1.6.0
  static JNINativeMethod methods_15[] = {
 -    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
@@ -2443,31 +2245,32 @@ index 0846b20..5e61217 100644
 +    {CC"putObject",        CC"(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
 +    {CC"getObjectVolatile",CC"(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObjectVolatile)},
 +    {CC"putObjectVolatile",CC"(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
-
-
+ 
+ 
      DECLARE_GETSETOOP(Boolean, Z),
-@@ -1528,42 +1528,42 @@ static JNINativeMethod methods_15[] = {
+@@ -1520,42 +1520,42 @@ static JNINativeMethod methods_15[] = {
      DECLARE_GETSETNATIVE(Float, F),
      DECLARE_GETSETNATIVE(Double, D),
-
+ 
 -    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 -    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
 +    {CC"getAddress",         CC"(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 +    {CC"putAddress",         CC"(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
-
+ 
 -    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
 -    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
 -    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
-+    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
-+    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
-+    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
-
+-
 -    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 -    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 -    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
 -    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
 -    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
 -    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
 +    {CC"objectFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 +    {CC"staticFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 +    {CC"staticFieldBase",    CC"(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
@@ -2476,7 +2279,7 @@ index 0846b20..5e61217 100644
 +    {CC"arrayIndexScale",    CC"(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
      {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
      {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
-
+ 
 -    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
 -    {CC"defineClass",        CC"("DC_Args")"CLS,         FN_PTR(Unsafe_DefineClass)},
 -    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
@@ -2498,9 +2301,9 @@ index 0846b20..5e61217 100644
      {CC"park",               CC"(ZJ)V",                  FN_PTR(Unsafe_Park)},
 -    {CC"unpark",             CC"("OBJ")V",               FN_PTR(Unsafe_Unpark)}
 +    {CC"unpark",             CC"(" OBJ ")V",               FN_PTR(Unsafe_Unpark)}
-
+ 
  };
-
+ 
  // These are the methods for 1.6.0 and 1.7.0
  static JNINativeMethod methods_16[] = {
 -    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
@@ -2511,31 +2314,32 @@ index 0846b20..5e61217 100644
 +    {CC"putObject",        CC"(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
 +    {CC"getObjectVolatile",CC"(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObjectVolatile)},
 +    {CC"putObjectVolatile",CC"(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
-
+ 
      DECLARE_GETSETOOP(Boolean, Z),
      DECLARE_GETSETOOP(Byte, B),
-@@ -1582,45 +1582,45 @@ static JNINativeMethod methods_16[] = {
+@@ -1574,45 +1574,45 @@ static JNINativeMethod methods_16[] = {
      DECLARE_GETSETNATIVE(Float, F),
      DECLARE_GETSETNATIVE(Double, D),
-
+ 
 -    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 -    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
 +    {CC"getAddress",         CC"(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 +    {CC"putAddress",         CC"(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
-
+ 
 -    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
 -    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
 -    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
-+    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
-+    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
-+    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
-
+-
 -    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 -    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 -    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
 -    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
 -    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
 -    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
 +    {CC"objectFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 +    {CC"staticFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 +    {CC"staticFieldBase",    CC"(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
@@ -2544,7 +2348,7 @@ index 0846b20..5e61217 100644
 +    {CC"arrayIndexScale",    CC"(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
      {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
      {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
-
+ 
 -    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
 -    {CC"defineClass",        CC"("DC_Args")"CLS,         FN_PTR(Unsafe_DefineClass)},
 -    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
@@ -2575,7 +2379,7 @@ index 0846b20..5e61217 100644
 -    {CC"unpark",             CC"("OBJ")V",               FN_PTR(Unsafe_Unpark)}
 +    {CC"unpark",             CC"(" OBJ ")V",               FN_PTR(Unsafe_Unpark)}
  };
-
+ 
  // These are the methods for 1.8.0
  static JNINativeMethod methods_18[] = {
 -    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
@@ -2586,31 +2390,32 @@ index 0846b20..5e61217 100644
 +    {CC"putObject",        CC"(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
 +    {CC"getObjectVolatile",CC"(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObjectVolatile)},
 +    {CC"putObjectVolatile",CC"(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
-
+ 
      DECLARE_GETSETOOP(Boolean, Z),
      DECLARE_GETSETOOP(Byte, B),
-@@ -1639,36 +1639,36 @@ static JNINativeMethod methods_18[] = {
+@@ -1631,36 +1631,36 @@ static JNINativeMethod methods_18[] = {
      DECLARE_GETSETNATIVE(Float, F),
      DECLARE_GETSETNATIVE(Double, D),
-
+ 
 -    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 -    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
 +    {CC"getAddress",         CC"(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
 +    {CC"putAddress",         CC"(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
-
+ 
 -    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
 -    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
 -    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
-+    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
-+    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
-+    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
-
+-
 -    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 -    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 -    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
 -    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
 -    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
 -    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC"allocateMemory",     CC"(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC"reallocateMemory",   CC"(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC"freeMemory",         CC"(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
 +    {CC"objectFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
 +    {CC"staticFieldOffset",  CC"(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
 +    {CC"staticFieldBase",    CC"(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
@@ -2619,7 +2424,7 @@ index 0846b20..5e61217 100644
 +    {CC"arrayIndexScale",    CC"(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
      {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
      {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
-
+ 
 -    {CC"defineClass",        CC"("DC_Args")"CLS,         FN_PTR(Unsafe_DefineClass)},
 -    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
 -    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
@@ -2648,11 +2453,11 @@ index 0846b20..5e61217 100644
 -    {CC"unpark",             CC"("OBJ")V",               FN_PTR(Unsafe_Unpark)}
 +    {CC"unpark",             CC"(" OBJ ")V",               FN_PTR(Unsafe_Unpark)}
  };
-
+ 
  JNINativeMethod loadavg_method[] = {
-@@ -1676,28 +1676,28 @@ JNINativeMethod loadavg_method[] = {
+@@ -1668,28 +1668,28 @@ JNINativeMethod loadavg_method[] = {
  };
-
+ 
  JNINativeMethod prefetch_methods[] = {
 -    {CC"prefetchRead",       CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchRead)},
 -    {CC"prefetchWrite",      CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchWrite)},
@@ -2663,38 +2468,36 @@ index 0846b20..5e61217 100644
 +    {CC"prefetchReadStatic", CC"(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchRead)},
 +    {CC"prefetchWriteStatic",CC"(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchWrite)}
  };
-
+ 
  JNINativeMethod memcopy_methods_17[] = {
 -    {CC"copyMemory",         CC"("OBJ"J"OBJ"JJ)V",       FN_PTR(Unsafe_CopyMemory2)},
 -    {CC"setMemory",          CC"("OBJ"JJB)V",            FN_PTR(Unsafe_SetMemory2)}
 +    {CC"copyMemory",         CC"(" OBJ "J" OBJ "JJ)V",       FN_PTR(Unsafe_CopyMemory2)},
 +    {CC"setMemory",          CC"(" OBJ "JJB)V",            FN_PTR(Unsafe_SetMemory2)}
  };
-
+ 
  JNINativeMethod memcopy_methods_15[] = {
 -    {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
 -    {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)}
 +    {CC"setMemory",          CC"(" ADR "JB)V",             FN_PTR(Unsafe_SetMemory)},
 +    {CC"copyMemory",         CC"(" ADR ADR "J)V",          FN_PTR(Unsafe_CopyMemory)}
  };
-
+ 
  JNINativeMethod anonk_methods[] = {
 -    {CC"defineAnonymousClass", CC"("DAC_Args")"CLS,      FN_PTR(Unsafe_DefineAnonymousClass)},
 +    {CC"defineAnonymousClass", CC"(" DAC_Args ")" CLS,      FN_PTR(Unsafe_DefineAnonymousClass)},
  };
-
+ 
  JNINativeMethod lform_methods[] = {
 -    {CC"shouldBeInitialized",CC"("CLS")Z",               FN_PTR(Unsafe_ShouldBeInitialized)},
 +    {CC"shouldBeInitialized",CC"(" CLS ")Z",               FN_PTR(Unsafe_ShouldBeInitialized)},
  };
-
+ 
  JNINativeMethod fence_methods[] = {
-diff --git hotspot/src/share/vm/prims/whitebox.cpp hotspot/src/share/vm/prims/whitebox.cpp
-index c3e0688..fdf8649 100644
---- hotspot/src/share/vm/prims/whitebox.cpp
+--- hotspot/src/share/vm/prims/whitebox.cpp.orig
 +++ hotspot/src/share/vm/prims/whitebox.cpp
 @@ -166,8 +166,8 @@ WB_END
-
+ 
  WB_ENTRY(void, WB_PrintHeapSizes(JNIEnv* env, jobject o)) {
    CollectorPolicy * p = Universe::heap()->collector_policy();
 -  gclog_or_tty->print_cr("Minimum heap "SIZE_FORMAT" Initial heap "
@@ -2704,7 +2507,7 @@ index c3e0688..fdf8649 100644
      p->min_heap_byte_size(), p->initial_heap_byte_size(), p->max_heap_byte_size(),
      p->space_alignment(), p->heap_alignment());
  }
-@@ -202,8 +202,8 @@ WB_ENTRY(void, WB_ReadFromNoaccessArea(JNIEnv* env, jobject o))
+@@ -202,8 +202,8 @@ WB_ENTRY(void, WB_ReadFromNoaccessArea(J
           Universe::narrow_oop_use_implicit_null_checks() )) {
      tty->print_cr("WB_ReadFromNoaccessArea method is useless:\n "
                    "\tUseCompressedOops is %d\n"
@@ -2715,8 +2518,8 @@ index c3e0688..fdf8649 100644
                    "\tUniverse::narrow_oop_use_implicit_null_checks() is %d",
                    UseCompressedOops,
                    rhs.base(),
-@@ -256,8 +256,8 @@ static jint wb_stress_virtual_space_resize(size_t reserved_space_size,
-
+@@ -256,8 +256,8 @@ static jint wb_stress_virtual_space_resi
+ 
  WB_ENTRY(jint, WB_StressVirtualSpaceResize(JNIEnv* env, jobject o,
          jlong reserved_space_size, jlong magnitude, jlong iterations))
 -  tty->print_cr("reservedSpaceSize="JLONG_FORMAT", magnitude="JLONG_FORMAT", "
@@ -2726,12 +2529,10 @@ index c3e0688..fdf8649 100644
                  iterations);
    if (reserved_space_size < 0 || magnitude < 0 || iterations < 0) {
      tty->print_cr("One of variables printed above is negative. Can't proceed.\n");
-diff --git hotspot/src/share/vm/runtime/safepoint.cpp hotspot/src/share/vm/runtime/safepoint.cpp
-index 2f46a84..bbf0339 100644
---- hotspot/src/share/vm/runtime/safepoint.cpp
+--- hotspot/src/share/vm/runtime/safepoint.cpp.orig
 +++ hotspot/src/share/vm/runtime/safepoint.cpp
-@@ -914,7 +914,7 @@ void ThreadSafepointState::restart() {
-
+@@ -918,7 +918,7 @@ void ThreadSafepointState::restart() {
+ 
      case _running:
      default:
 -       tty->print_cr("restart thread "INTPTR_FORMAT" with state %d",
@@ -2739,8 +2540,8 @@ index 2f46a84..bbf0339 100644
                        _thread, _type);
         _thread->print();
        ShouldNotReachHere();
-@@ -1271,14 +1271,14 @@ void SafepointSynchronize::print_stat_on_exit() {
-
+@@ -1275,14 +1275,14 @@ void SafepointSynchronize::print_stat_on
+ 
    for (int index = 0; index < VM_Operation::VMOp_Terminating; index++) {
      if (_safepoint_reasons[index] != 0) {
 -      tty->print_cr("%-26s"UINT64_FORMAT_W(10), VM_Operation::name(index),
@@ -2748,7 +2549,7 @@ index 2f46a84..bbf0339 100644
                      _safepoint_reasons[index]);
      }
    }
-
+ 
    tty->print_cr(UINT64_FORMAT_W(5)" VM operations coalesced during safepoint",
                  _coalesced_vmop_count);
 -  tty->print_cr("Maximum sync time  "INT64_FORMAT_W(5)" ms",
@@ -2756,67 +2557,61 @@ index 2f46a84..bbf0339 100644
                  _max_sync_time / MICROUNITS);
    tty->print_cr("Maximum vm operation time (except for Exit VM operation)  "
                  INT64_FORMAT_W(5)" ms",
-diff --git hotspot/src/share/vm/services/threadService.cpp hotspot/src/share/vm/services/threadService.cpp
-index 02156a2..be5acfd 100644
---- hotspot/src/share/vm/services/threadService.cpp
+--- hotspot/src/share/vm/services/threadService.cpp.orig
 +++ hotspot/src/share/vm/services/threadService.cpp
-@@ -889,7 +889,7 @@ void DeadlockCycle::print_on(outputStream* st) const {
+@@ -889,7 +889,7 @@ void DeadlockCycle::print_on(outputStrea
        st->print("  waiting to lock monitor " INTPTR_FORMAT, waitingToLockMonitor);
        oop obj = (oop)waitingToLockMonitor->object();
        if (obj != NULL) {
 -        st->print(" (object "INTPTR_FORMAT ", a %s)", (address)obj,
 +        st->print(" (object " INTPTR_FORMAT ", a %s)", (address)obj,
                     (InstanceKlass::cast(obj->klass()))->external_name());
-
+ 
          if (!currentThread->current_pending_monitor_is_from_java()) {
-diff --git hotspot/src/share/vm/trace/traceStream.hpp hotspot/src/share/vm/trace/traceStream.hpp
-index 89911ea..e2c982a 100644
---- hotspot/src/share/vm/trace/traceStream.hpp
+--- hotspot/src/share/vm/trace/traceStream.hpp.orig
 +++ hotspot/src/share/vm/trace/traceStream.hpp
 @@ -40,31 +40,31 @@ class TraceStream : public StackObj {
    TraceStream(outputStream& stream): _st(stream) {}
-
+ 
    void print_val(const char* label, u1 val) {
 -    _st.print("%s = "UINT32_FORMAT, label, val);
 +    _st.print("%s = " UINT32_FORMAT, label, val);
    }
-
+ 
    void print_val(const char* label, u2 val) {
 -    _st.print("%s = "UINT32_FORMAT, label, val);
 +    _st.print("%s = " UINT32_FORMAT, label, val);
    }
-
+ 
    void print_val(const char* label, s2 val) {
 -    _st.print("%s = "INT32_FORMAT, label, val);
 +    _st.print("%s = " INT32_FORMAT, label, val);
    }
-
+ 
    void print_val(const char* label, u4 val) {
 -    _st.print("%s = "UINT32_FORMAT, label, val);
 +    _st.print("%s = " UINT32_FORMAT, label, val);
    }
-
+ 
    void print_val(const char* label, s4 val) {
 -    _st.print("%s = "INT32_FORMAT, label, val);
 +    _st.print("%s = " INT32_FORMAT, label, val);
    }
-
+ 
    void print_val(const char* label, u8 val) {
 -    _st.print("%s = "UINT64_FORMAT, label, val);
 +    _st.print("%s = " UINT64_FORMAT, label, val);
    }
-
+ 
    void print_val(const char* label, s8 val) {
 -    _st.print("%s = "INT64_FORMAT, label, (int64_t) val);
 +    _st.print("%s = " INT64_FORMAT, label, (int64_t) val);
    }
-
+ 
    void print_val(const char* label, bool val) {
-diff --git hotspot/src/share/vm/utilities/ostream.cpp hotspot/src/share/vm/utilities/ostream.cpp
-index 21bdd69..44ce683 100644
---- hotspot/src/share/vm/utilities/ostream.cpp
+--- hotspot/src/share/vm/utilities/ostream.cpp.orig
 +++ hotspot/src/share/vm/utilities/ostream.cpp
-@@ -277,7 +277,7 @@ void outputStream::print_data(void* data, size_t len, bool with_ascii) {
+@@ -277,7 +277,7 @@ void outputStream::print_data(void* data
    size_t limit = (len + 16) / 16 * 16;
    for (size_t i = 0; i < limit; ++i) {
      if (i % 16 == 0) {
@@ -2834,6 +2629,3 @@ index 21bdd69..44ce683 100644
               LOG_MAJOR_VERSION, LOG_MINOR_VERSION,
               os::current_process_id(), (int64_t)time_ms);
      // Write VM version header immediately.
---
-2.7.4
-
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-zero-mode-crash.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-zero-mode-crash.patch
deleted file mode 100644
index 29702fa..0000000
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-fix-zero-mode-crash.patch
+++ /dev/null
@@ -1,49 +0,0 @@
-# HG changeset patch
-# User aph
-# Date 1461121375 -3600
-#      Wed Apr 20 04:02:55 2016 +0100
-# Node ID 6811f311f905409fe71d2b1c2fb34c3268758724
-# Parent  c66e4cc0fce57664ab44c55c47fa1a2f1bf02638
-8154210: Zero: Better byte behaviour
-Summary: Complete support for 8132051 on Zero and fix failure on 64-bit big-endian systems
-Reviewed-by: andrew, chrisphi, coleenp
-
-Upstream-Status: Backport [Fixed in u112]
-
-diff --git hotspot/src/cpu/zero/vm/cppInterpreter_zero.cpp hotspot/src/cpu/zero/vm/cppInterpreter_zero.cpp
---- hotspot/src/cpu/zero/vm/cppInterpreter_zero.cpp
-+++ hotspot/src/cpu/zero/vm/cppInterpreter_zero.cpp
-@@ -220,9 +220,16 @@
-   // Push our result
-   for (int i = 0; i < result_slots; i++) {
-     // Adjust result to smaller
--    intptr_t res = result[-i];
-+    union {
-+      intptr_t res;
-+      jint res_jint;
-+    };
-+    res = result[-i];
-     if (result_slots == 1) {
--      res = narrow(method->result_type(), res);
-+      BasicType t = method->result_type();
-+      if (is_subword_type(t)) {
-+        res_jint = (jint)narrow(t, res_jint);
-+      }
-     }
-     stack->push(res);
-   }
-diff --git hotspot/src/share/vm/interpreter/bytecodeInterpreter.cpp hotspot/src/share/vm/interpreter/bytecodeInterpreter.cpp
---- hotspot/src/share/vm/interpreter/bytecodeInterpreter.cpp
-+++ hotspot/src/share/vm/interpreter/bytecodeInterpreter.cpp
-@@ -593,8 +593,9 @@
- /* 0xDC */ &&opc_default,     &&opc_default,        &&opc_default,      &&opc_default,
-
- /* 0xE0 */ &&opc_default,     &&opc_default,        &&opc_default,      &&opc_default,
--/* 0xE4 */ &&opc_default,     &&opc_fast_aldc,      &&opc_fast_aldc_w,  &&opc_return_register_finalizer,
--/* 0xE8 */ &&opc_invokehandle,&&opc_default,        &&opc_default,      &&opc_default,
-+/* 0xE4 */ &&opc_default,     &&opc_default,        &&opc_fast_aldc,    &&opc_fast_aldc_w,
-+/* 0xE8 */ &&opc_return_register_finalizer,
-+                              &&opc_invokehandle,   &&opc_default,      &&opc_default,
- /* 0xEC */ &&opc_default,     &&opc_default,        &&opc_default,      &&opc_default,
-
- /* 0xF0 */ &&opc_default,     &&opc_default,        &&opc_default,      &&opc_default,
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-genx11-in-headless.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-genx11-in-headless.patch
index e34305c..38f5f9b 100644
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-genx11-in-headless.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-genx11-in-headless.patch
@@ -1,9 +1,9 @@
---- jdk/make/GenerateSources.gmk.orig	2015-08-24 11:23:34.720648954 +0200
-+++ jdk/make/GenerateSources.gmk	2015-08-24 11:24:41.376649205 +0200
-@@ -73,9 +73,11 @@
+--- jdk/make/GenerateSources.gmk.orig
++++ jdk/make/GenerateSources.gmk
+@@ -73,9 +73,11 @@ ifneq ($(OPENJDK_TARGET_OS), windows)
      GENSRC += $(GENSRC_OSX_ICONS)
    endif
-
+ 
 -  ifneq ($(OPENJDK_TARGET_OS), macosx)
 -    include gensrc/GensrcX11Wrappers.gmk
 -    GENSRC += $(GENSRC_X11WRAPPERS)
@@ -14,4 +14,4 @@
 +    endif
    endif
  endif
-
+ 
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-unused-deps.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-unused-deps.patch
index cd42544..7b5d998 100644
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-unused-deps.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/openjdk8-no-unused-deps.patch
@@ -1,9 +1,9 @@
---- jdk/make/lib/Awt2dLibraries.gmk.orig	2015-09-03 15:05:21.429981848 +0200
-+++ jdk/make/lib/Awt2dLibraries.gmk	2015-09-03 15:05:44.705981936 +0200
-@@ -235,6 +235,10 @@
+--- jdk/make/lib/Awt2dLibraries.gmk.orig
++++ jdk/make/lib/Awt2dLibraries.gmk
+@@ -235,6 +235,10 @@ ifeq ($(OPENJDK_TARGET_OS), aix)
    LIBAWT_DIRS += $(JDK_TOPDIR)/src/aix/porting
  endif
-
+ 
 +ifdef BUILD_HEADLESS_ONLY
 +LIBAWT_CFLAGS += -DHEADLESS=true
 +endif
@@ -11,10 +11,10 @@
  LIBAWT_CFLAGS += -D__MEDIALIB_OLD_NAMES -D__USE_J2D_NAMES \
      $(X_CFLAGS) \
      $(foreach dir, $(LIBAWT_DIRS), -I$(dir))
-@@ -1126,17 +1130,28 @@
-           -F/System/Library/Frameworks/ApplicationServices.framework/Frameworks
-     endif
-
+@@ -792,17 +796,28 @@ ifeq ($(BUILD_HEADLESS), true)
+         -I$(JDK_TOPDIR)/src/$(OPENJDK_TARGET_OS_API_DIR)/native/sun/jdga \
+         $(foreach dir, $(LIBAWT_HEADLESS_DIRS), -I$(dir))
+ 
 -    LIBAWT_HEADLESS_FILES := \
 -        awt_Font.c \
 -        HeadlessToolkit.c \
@@ -45,7 +45,7 @@
          OGLBlitLoops.c \
          OGLBufImgOps.c \
          OGLContext.c \
-@@ -1149,10 +1164,9 @@
+@@ -815,10 +830,9 @@ ifeq ($(BUILD_HEADLESS), true)
          OGLSurfaceData.c \
          OGLTextRenderer.c \
          OGLVertexCache.c \
@@ -55,23 +55,23 @@
 -        CUPSfuncs.c
 +	$(LIBAWT_HEADLESS_X11_FILES) \
 +	$(LIBAWT_HEADLESS_CUPS_FILES)
-
+ 
      LIBAWT_HEADLESS_REORDER :=
      ifeq ($(OPENJDK_TARGET_OS), solaris)
---- jdk/make/CompileNativeLibraries.gmk.orig	2015-08-24 13:35:55.320678845 +0200
-+++ jdk/make/CompileNativeLibraries.gmk	2015-08-24 13:36:22.776678949 +0200
-@@ -85,7 +85,9 @@
-
+--- jdk/make/CompileNativeLibraries.gmk.orig
++++ jdk/make/CompileNativeLibraries.gmk
+@@ -85,7 +85,9 @@ include lib/ServiceabilityLibraries.gmk
+ 
  include lib/Awt2dLibraries.gmk
-
+ 
 +ifndef BUILD_SOUNDLESS_ONLY
  include lib/SoundLibraries.gmk
 +endif
-
- # Include the corresponding custom file, if present.
+ 
+ # Include the corresponding custom file, if present. 
  -include $(CUSTOM_MAKE_DIR)/CompileNativeLibraries.gmk
---- jdk/src/solaris/native/sun/awt/jawt.c.orig	2015-08-24 14:12:29.376687104 +0200
-+++ jdk/src/solaris/native/sun/awt/jawt.c	2015-08-24 14:16:20.420687974 +0200
+--- jdk/src/solaris/native/sun/awt/jawt.c.orig
++++ jdk/src/solaris/native/sun/awt/jawt.c
 @@ -33,7 +33,7 @@
   */
  JNIEXPORT jboolean JNICALL JAWT_GetAWT(JNIEnv* env, JAWT* awt)
@@ -81,12 +81,12 @@
      /* there are no AWT libs available at all */
      return JNI_FALSE;
  #else
---- jdk/src/solaris/native/sun/awt/utility/rect.h.orig	2015-09-03 14:45:40.717977403 +0200
-+++ jdk/src/solaris/native/sun/awt/utility/rect.h	2015-09-03 14:46:46.337977650 +0200
+--- jdk/src/solaris/native/sun/awt/utility/rect.h.orig
++++ jdk/src/solaris/native/sun/awt/utility/rect.h
 @@ -28,7 +28,7 @@
  #ifndef _AWT_RECT_H
  #define _AWT_RECT_H
-
+ 
 -#ifndef MACOSX
 +#if !(defined(MACOSX) || defined(HEADLESS))
  #include <X11/Xlib.h>
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch
index 3a71403..7d340a8 100644
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch
@@ -1,6 +1,6 @@
---- make/common/NativeCompilation.gmk.orig	2015-09-09 17:15:33.869765681 +0200
-+++ make/common/NativeCompilation.gmk	2015-09-09 17:55:26.485774688 +0200
-@@ -434,58 +434,6 @@
+--- make/common/NativeCompilation.gmk.orig
++++ make/common/NativeCompilation.gmk
+@@ -438,58 +438,6 @@ define SetupNativeCompilation
            $$($1_OUTPUT_DIR)/% : $$($1_OBJECT_DIR)/%
  		$(CP) $$< $$@
          endif
@@ -58,8 +58,8 @@
 -        endif
        endif
      endif
-
-@@ -518,58 +466,6 @@
+ 
+@@ -522,58 +470,6 @@ endif # no MacOS X support yet
            $$($1_OUTPUT_DIR)/% : $$($1_OBJECT_DIR)/%
  		$(CP) $$< $$@
          endif
@@ -117,4 +117,4 @@
 -        endif
        endif
      endif
-
+ 
diff --git a/recipes-core/openjdk/patches-openjdk-8/remove-shell-variables-from-autoheader.patch b/recipes-core/openjdk/patches-openjdk-8/remove-shell-variables-from-autoheader.patch
index 92a9831..5e2f78b 100644
--- a/recipes-core/openjdk/patches-openjdk-8/remove-shell-variables-from-autoheader.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/remove-shell-variables-from-autoheader.patch
@@ -1,8 +1,8 @@
---- common/autoconf/basics.m4.orig	2015-08-17 18:02:01.642657746 +0200
-+++ common/autoconf/basics.m4	2015-08-17 18:14:44.046660616 +0200
-@@ -466,21 +466,21 @@
+--- common/autoconf/basics.m4.orig
++++ common/autoconf/basics.m4
+@@ -472,21 +472,21 @@ AC_DEFUN_ONCE([BASIC_SETUP_OUTPUT_DIR],
    AC_SUBST(OUTPUT_ROOT, $OUTPUT_ROOT)
-
+ 
    # Most of the probed defines are put into config.h
 -  AC_CONFIG_HEADERS([$OUTPUT_ROOT/config.h:$AUTOCONF_DIR/config.h.in])
 +  AC_CONFIG_HEADERS([config.h:config.h.in])
@@ -26,6 +26,6 @@
    # which will look for generated configurations
 -  AC_CONFIG_FILES([$OUTPUT_ROOT/Makefile:$AUTOCONF_DIR/Makefile.in])
 +  AC_CONFIG_FILES([Makefile:Makefile.in])
-
+ 
    # Save the arguments given to us
    echo "$CONFIGURE_COMMAND_LINE" > $OUTPUT_ROOT/configure-arguments
-- 
2.16.2


