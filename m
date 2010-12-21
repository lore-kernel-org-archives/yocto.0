Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA00E4C811C1
	for <yocto@yoctoproject.org>; Tue, 21 Dec 2010 11:24:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="585876435"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
Message-Id: <c3f3eff02ba8f7c98ebbf35f1a17e12d061682fa.1292951846.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1292951846.git.elizabeth.flanagan@intel.com>
References: <cover.1292951846.git.elizabeth.flanagan@intel.com>
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Date: Mon, 20 Dec 2010 16:02:40 -0800
To: yocto@yoctoproject.org
Subject: [PATCH 2/3] Adding new scripts to reflect a real autobuilder
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Dec 2010 17:24:54 -0000

I've ported over recent script additions to the autobuilder
that haven't been in prior commits. Specifically, I've added
some of the generate-release scripts, as well as the script that
generates the release tarball. I've added some changes to enable
Swabber host contamination detection and added the scripts needed
for sanity testing.

Also, I've updated the generic pokyABConfig.py to incorporate this
new functionality

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/poky-autobuild                           |   37 ++-
 scripts/poky-autobuild-cleanoutput               |    6 +-
 scripts/poky-autobuild-copy-images               |  458 +++++++++++++++++++++
 scripts/poky-autobuild-generate-release-external |  220 ++++++++++
 scripts/poky-autobuild-generate-release-internal |  232 +++++++++++
 scripts/poky-autobuild-generate-sources-tarball  |   54 +++
 scripts/poky-autobuild-postprocess               |    6 +-
 scripts/poky-autobuild-preamble                  |   58 +++
 scripts/poky-autobuild-rename-release-images     |  128 ++++++
 scripts/poky-autobuild-sanitytest                |   58 +++
 scripts/poky-output-sort                         |  117 ++++++
 scripts/poky-preserve-work-dir                   |   26 +-
 scripts/pokyABConfig.py                          |  469 +++++++++++++++++-----
 scripts/run-on-buildset-success                  |   11 +
 14 files changed, 1746 insertions(+), 134 deletions(-)
 create mode 100755 scripts/poky-autobuild-copy-images
 create mode 100755 scripts/poky-autobuild-generate-release-external
 create mode 100755 scripts/poky-autobuild-generate-release-internal
 create mode 100755 scripts/poky-autobuild-generate-sources-tarball
 create mode 100755 scripts/poky-autobuild-preamble
 create mode 100755 scripts/poky-autobuild-rename-release-images
 create mode 100755 scripts/poky-autobuild-sanitytest
 create mode 100755 scripts/poky-output-sort
 create mode 100755 scripts/run-on-buildset-success

diff --git a/scripts/poky-autobuild b/scripts/poky-autobuild
index b4a130b..5ea61bb 100755
--- a/scripts/poky-autobuild
+++ b/scripts/poky-autobuild
@@ -2,7 +2,7 @@
 #
 # Poky Automated Build Server Enviroment Setup Script
 #
-# Copyright (C) 2010 Intel
+# Copyright (C) 2010 Intel Corp.
 #
 # This program is free software; you can redistribute it and/or modify
 # it under the terms of the GNU General Public License as published by
@@ -31,13 +31,6 @@ cd $CURRDIR
 
 echo "Changed to $CURRDIR"
 
-if [ "xpreamble" = "x$1" ]; then
-    mkdir -p ./build/tmp/deploy/images 
-    rm -f ./build/tmp/deploy/images/images-complete
-    git log -1 > ./build/tmp/deploy/images/gitinfo
-    exit 0
-fi
-
 BDIR="build"
 . ./scripts/poky-env-internal
 POSTPROCESS=`which poky-autobuild-postprocess`
@@ -58,15 +51,31 @@ if [ ! -e "$CONFFILE" ]; then
     if [ ! -d "./conf" ]; then
         mkdir -p "./conf"
     fi
-    echo 'PACKAGE_CLASSES = "package_ipk package_deb package_rpm"' > "$CONFFILE"
-    echo 'BB_NUMBER_THREADS = "4"' >> "$CONFFILE"
-    echo 'PARALLEL_MAKE = "-j 3"' >> "$CONFFILE"
+    echo 'PACKAGE_CLASSES = "package_rpm package_deb package_ipk"' > "$CONFFILE"
+    echo 'BB_NUMBER_THREADS = "10"' >> "$CONFFILE"
+    echo 'PARALLEL_MAKE = "-j 16"' >> "$CONFFILE"
     echo 'SDKMACHINE ?= "i586"' >> "$CONFFILE"
     echo "DL_DIR = \"$SOURCEDIR\"" >> "$CONFFILE"
     echo 'INHERIT += "poky-autobuild-notifier"' >> "$CONFFILE"
     echo 'INHERIT += "rm_work"' >> "$CONFFILE"
 fi
 
+if [ "x$ENABLE_SWABBER" = "xtrue" ]; then
+    echo 'USER_CLASSES += "image-prelink image-swab"' >> "$CONFFILE"
+fi
+
+# Additions needed to work behind a generic proxy
+#SITECONF="./conf/site.conf"
+#
+#if [ ! -e "$SITECONF" ]; then
+#	echo 'SCONF_VERSION = "1"' > "$SITECONF"
+#	echo 'CVS_PROXY_HOST = "proxy.sitename"' >> "$SITECONF"
+#	echo 'CVS_PROXY_PORT = "proxyportnumber"' >> "$SITECONF"
+#	echo 'GIT_PROXY_HOST = "proxy.sitename"' >> "$SITECONF"
+#	echo 'GIT_PROXY_PORT = "proxyportnumber"' >> "$SITECONF"
+#	echo 'GIT_PROXY_COMMAND = "/usr/local/bin/git-proxy"' >> "$SITECONF"
+#fi
+
 bitbake $@
 
 retval=$?
@@ -76,4 +85,10 @@ if [ "x$POSTPROCESS" != "x" -a -x "$POSTPROCESS" ]; then
     $POSTPROCESS incremental $ABTARGET $TARGETDIR
 fi
 
+if [ $retval -ne 0 ]; then
+    # Create a build failure file flag, which can be used by the
+    # run-on-buildset-success script
+    touch BuildFailure
+fi
+
 exit $retval
diff --git a/scripts/poky-autobuild-cleanoutput b/scripts/poky-autobuild-cleanoutput
index 6c006f3..6b085fc 100755
--- a/scripts/poky-autobuild-cleanoutput
+++ b/scripts/poky-autobuild-cleanoutput
@@ -1,5 +1,3 @@
 #!/bin/bash
-rm build/tmp/deploy/images/poky-image* || /bin/true
-rm build/tmp/deploy/images/moblin-image* || /bin/true
-rm build/tmp/deploy/images/rootfs* || /bin/true
-rm build/tmp/deploy/sdk/* || /bin/true
\ No newline at end of file
+rm build/tmp/deploy/images/* || /bin/true
+rm build/tmp/deploy/sdk/* || /bin/true
diff --git a/scripts/poky-autobuild-copy-images b/scripts/poky-autobuild-copy-images
new file mode 100755
index 0000000..02b4149
--- /dev/null
+++ b/scripts/poky-autobuild-copy-images
@@ -0,0 +1,458 @@
+#!/bin/bash
+#
+# Poky autobuilder image copying script. This script takes output
+# generated during an autobuidler buildset and copies it into the
+# sepcified deployment base directory.
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+
+TARGET=$1
+RELEASE_TYPE=$2
+DEPLOY_BASE_DIR=$3
+
+function usage() {
+	echo "Usage: $0 <target> [nightly|weekly|milestone] <deploy-base-directory>"
+	echo "Target can be a qemu architecture for qemu images, 'toolchain'"
+	echo "for toollchain images, 'poky-sources' for a Poky source tarball,"
+	echo "'release' to generate final release filenames,"
+	echo "'sstate' for shared state packages, 'eclipse-plugin' for Eclipse"
+	echo "plugin output, or ipk, deb, or rpm for associated package feeds"
+	exit 1
+}
+
+if [ $# != 3 ]; then
+	usage
+fi
+
+if [[ "$TARGET" != "qemux86" && "$TARGET" != "qemux86-64" &&
+      "$TARGET" != "qemuarm" && "$TARGET" != "qemumips" &&
+      "$TARGET" != "qemuppc" && "$TARGET" != "emenlow" &&
+      "$TARGET" != "atom-pc" && "$TARGET" != "toolchain" &&
+      "$TARGET" != "beagleboard" && "$TARGET" != "routerstationpro" &&
+      "$TARGET" != "poky-sources" && "$TARGET" != "release" &&
+      "$TARGET" != "sstate" && "$TARGET" != "eclipse-plugin" &&
+      "$TARGET" != "ipk" && "$TARGET" != "deb" &&
+      "$TARGET" != "rpm" && "$TARGET" != "mpc8315e-rdb" ]]; then
+	echo "Unknown output target '$TARGET'"
+	usage
+fi
+
+if [[ "$RELEASE_TYPE" != "nightly" && "$RELEASE_TYPE" != "weekly" &&
+      "$RELEASE_TYPE" != "milestone" ]]; then
+	echo "Error: Unknown release type '$RELEASE_TYPE'"
+	usage
+fi
+
+if [ ! -d "$DEPLOY_BASE_DIR" ]; then
+	echo "Error: deployment base directory '$DEPLOY_BASE_DIR' does not exist!"
+	usage
+fi
+
+if [ ! -d ./build/tmp/deploy/ ]; then
+	CWD=`pwd`
+	echo "Error: I do not see a build/tmp/deploy/ directory to work from!"
+	echo "Current directory is '$CWD'"
+	exit 1
+fi
+
+# Retrieve the deployment path which was set by poky-autobuild-preamble
+DEPLOY_BASE_DIR="$DEPLOY_BASE_DIR/$RELEASE_TYPE/"
+DEPLOY_DIR=`cat deploy-dir`
+if [ -z "$DEPLOY_DIR" ]; then
+	echo "Error: Cannot read deployment directory from 'deploydir' file"
+	echo "This file should have been created by poky-autobuild-preamble"
+	exit 1
+fi
+
+# The "weekly" option to this script is run as a final step on the
+# nightly buildset. If the day of the week is Wednesday, it simply
+# creates a symlink to the nightly build outoupt.
+if [ "x$RELEASE_TYPE" = "xweekly" ]; then
+	BUILD_DATE=`echo $DEPLOY_DIR | sed 's/\(.*\)-/\1/'`
+	DOW=`date -d $BUILD_DATE +%a`
+	if [ "x$DOW" != "xWed" ]; then
+		echo "Skipping weekly build symlinking since build started on $DOW"
+		exit 0
+	else
+		# We expect the nightly build to have been run first,
+		# so let's save disk space by just symlinking the dir
+		NIGHTLY_DIR=$DEPLOY_BASE_DIR/nightly/$DEPLOY_DIR
+		if [ ! -e $NIGHTLY_DIR ]; then
+			echo "Error: nightly dir '$NIGHTLY_DIR' does not exist"
+			echo "(I need it to symlink to in weekly/)"
+			exit 1
+		fi
+		ln -s "$NIGHTLY_DIR" "$DEPLOY_BASE_DIR/weekly/$DEPLOY_DIR"
+		exit 0
+	fi
+fi
+
+DEST="$DEPLOY_BASE_DIR$DEPLOY_DIR"
+if [ ! -d "$DEST" ]; then
+	echo "Error: deployment directory '$DEST' does not exist"
+	exit 1
+fi
+
+cd ./build/tmp/deploy/
+
+# The following is ripe for DRYing up, which will be done once the
+# release process stabilizes further.
+
+cd images
+
+cp gitinfo $DEST/
+
+if [ "$TARGET" = "qemux86" ]; then
+	FILES_QEMUX86=(
+		`readlink bzImage-qemux86.bin`
+		modules-*-qemux86.tgz
+		`readlink poky-image-minimal-qemux86.ext3`
+		`readlink poky-image-minimal-qemux86.tar.bz2`
+		`readlink poky-image-lsb-qemux86.ext3`
+		`readlink poky-image-lsb-qemux86.tar.bz2`
+		`readlink poky-image-sato-qemux86.ext3`
+		`readlink poky-image-sato-qemux86.tar.bz2`
+		`readlink poky-image-sdk-qemux86.ext3`
+		`readlink poky-image-sdk-qemux86.tar.bz2`
+	)
+
+	mkdir -p $DEST/qemu/qemux86
+	for file in ${FILES_QEMUX86[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/qemux86/"
+			cp $file $DEST/qemu/qemux86/
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+fi
+
+if [ "$TARGET" = "qemux86-64" ]; then
+	FILES_QEMUX86_64=(
+		`readlink bzImage-qemux86-64.bin`
+		modules-*-qemux86-64.tgz
+		`readlink poky-image-minimal-qemux86-64.ext3`
+		`readlink poky-image-minimal-qemux86-64.tar.bz2`
+		`readlink poky-image-lsb-qemux86-64.ext3`
+		`readlink poky-image-lsb-qemux86-64.tar.bz2`
+		`readlink poky-image-sato-qemux86-64.ext3`
+		`readlink poky-image-sato-qemux86-64.tar.bz2`
+		`readlink poky-image-sdk-qemux86-64.ext3`
+		`readlink poky-image-sdk-qemux86-64.tar.bz2`
+		)
+
+	mkdir -p $DEST/qemu/qemux86-64
+	for file in ${FILES_QEMUX86_64[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/qemux86-64/"
+			cp $file $DEST/qemu/qemux86-64/
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+fi
+
+if [ "$TARGET" = "qemuarm" ]; then
+	FILES_QEMUARM=(
+		`readlink zImage-qemuarm.bin`
+		modules-*-qemuarm.tgz
+		`readlink poky-image-minimal-qemuarm.ext3`
+		`readlink poky-image-minimal-qemuarm.tar.bz2`
+		`readlink poky-image-lsb-qemuarm.ext3`
+		`readlink poky-image-lsb-qemuarm.tar.bz2`
+		`readlink poky-image-sato-qemuarm.ext3`
+		`readlink poky-image-sato-qemuarm.tar.bz2`
+		`readlink poky-image-sdk-qemuarm.ext3`
+		`readlink poky-image-sdk-qemuarm.tar.bz2`
+		)
+
+	mkdir -p $DEST/qemu/qemuarm
+	for file in ${FILES_QEMUARM[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/qemuarm/"
+			cp $file $DEST/qemu/qemuarm/
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+fi
+
+if [ "$TARGET" = "qemumips" ]; then
+	FILES_QEMUMIPS=(
+		`readlink vmlinux-qemumips.bin`
+		modules-*-qemumips.tgz
+		`readlink poky-image-minimal-qemumips.ext3`
+		`readlink poky-image-minimal-qemumips.tar.bz2`
+		`readlink poky-image-lsb-qemumips.ext3`
+		`readlink poky-image-lsb-qemumips.tar.bz2`
+		`readlink poky-image-sato-qemumips.ext3`
+		`readlink poky-image-sato-qemumips.tar.bz2`
+		`readlink poky-image-sdk-qemumips.ext3`
+		`readlink poky-image-sdk-qemumips.tar.bz2`
+		)
+
+	mkdir -p $DEST/qemu/qemumips
+	for file in ${FILES_QEMUMIPS[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/qemumips/"
+			cp $file $DEST/qemu/qemumips/
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+fi
+
+if [ "$TARGET" = "qemuppc" ]; then
+	FILES_QEMUPPC=(
+		`readlink zImage-qemuppc.bin`
+		modules-*-qemuppc.tgz
+		`readlink poky-image-minimal-qemuppc.ext3`
+		`readlink poky-image-minimal-qemuppc.tar.bz2`
+		`readlink poky-image-lsb-qemuppc.ext3`
+		`readlink poky-image-lsb-qemuppc.tar.bz2`
+		`readlink poky-image-sato-qemuppc.ext3`
+		`readlink poky-image-sato-qemuppc.tar.bz2`
+		`readlink poky-image-sdk-qemuppc.ext3`
+		`readlink poky-image-sdk-qemuppc.tar.bz2`
+		)
+
+	mkdir -p $DEST/qemu/qemuppc
+	for file in ${FILES_QEMUPPC[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/qemuppc/"
+			cp $file $DEST/qemu/qemuppc/
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+fi
+
+if [ "$TARGET" = "beagleboard" ]; then
+    FILES_QEMUBBD=(
+        `readlink uImage-beagleboard.bin`
+        modules-*-beagleboard.tgz
+		`readlink poky-image-minimal-beagleboard.jffs2`
+    	`readlink poky-image-minimal-beagleboard.tar.bz2`
+        `readlink poky-image-sato-beagleboard.jffs2`
+        `readlink poky-image-sato-beagleboard.tar.bz2`
+        `readlink poky-image-sdk-beagleboard.jffs2`
+        `readlink poky-image-sdk-beagleboard.tar.bz2`
+	)
+
+    mkdir -p $DEST/qemu/qemubeagleboard
+    for file in ${FILES_QEMUBBD[@]}; do
+        if [ -e $file ]; then
+            echo "Copying $file to $DEST/qemubeagleboard"
+            cp $file $DEST/qemu/qemubeagleboard/
+        else
+            echo "WARNING: $file does not exist (due to build failure?)"
+        fi
+    done
+fi
+
+if [ "$TARGET" = "routerstationpro" ]; then
+    FILES_QEMURSP=(
+        `readlink vmlinux-routerstationpro.bin`
+        modules-*-routerstationpro.tgz
+        `readlink poky-image-minimal-routerstationpro.jffs2`
+        `readlink poky-image-minimal-routerstationpro.tar.bz2`
+        `readlink poky-image-sato-routerstationpro.jffs2`
+        `readlink poky-image-sato-routerstationpro.tar.bz2`
+        `readlink poky-image-sdk-routerstationpro.jffs2`
+        `readlink poky-image-sdk-routerstationpro.tar.bz2`
+    )
+
+    mkdir -p $DEST/qemu/qemurouterstationpro
+    for file in ${FILES_QEMURSP[@]}; do
+        if [ -e $file ]; then
+            echo "Copying $file to $DEST/qemurouterstationpro"
+            cp $file $DEST/qemu/qemurouterstationpro/
+        else
+            echo "WARNING: $file does not exist (due to build failure?)"
+        fi
+    done
+fi
+
+if [ "$TARGET" = "mpc8315e-rdb" ]; then
+    FILES_QEMUMPC=(
+        `readlink uImage-mpc8315e-rdb.bin`
+        modules-*-mpc8315e-rdb.tgz
+        `readlink poky-image-minimal-mpc8315e-rdb.jffs2`
+        `readlink poky-image-minimal-mpc8315e-rdb.tar.bz2`
+        `readlink poky-image-sdk-mpc8315e-rdb.jffs2`
+        `readlink poky-image-sdk-mpc8315e-rdb.tar.bz2`
+    )
+
+    mkdir -p $DEST/qemu/qemumpc8315e-rdb
+    for file in ${FILES_QEMUMPC[@]}; do
+        if [ -e $file ]; then
+            echo "Copying $file to $DEST/qemumpc8315e-rdb"
+            cp $file $DEST/qemu/qemumpc8315e-rdb/
+        else
+            echo "WARNING: $file does not exist (due to build failure?)"
+        fi
+    done
+fi
+
+if [ "$TARGET" = "emenlow" ]; then
+	FILES_EMENLOW=(
+		`readlink bzImage-emenlow.bin`
+		modules-*-emenlow.tgz
+		`readlink poky-image-minimal-emenlow.ext3`
+		`readlink poky-image-minimal-initramfs-emenlow.cpio.gz`
+		`readlink poky-image-minimal-initramfs-emenlow.ext3`
+		`readlink poky-image-minimal-live-emenlow.hddimg`
+		`readlink poky-image-sato-emenlow.ext3`
+		`readlink poky-image-sato-live-emenlow.hddimg`
+		`readlink poky-image-sdk-emenlow.ext3`
+		`readlink poky-image-sdk-live-emenlow.hddimg`
+		)
+
+	mkdir -p $DEST/emenlow/x86_32
+	for file in ${FILES_EMENLOW[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/qemuppc/"
+			cp $file $DEST/emenlow/x86_32/
+			find $DEST/emenlow/x86_32/ -type f -name "*.hddimg" -exec bzip2 {} \;
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+fi
+
+if [ "$TARGET" = "atom-pc" ]; then
+	FILES_ATOM_PC=(
+		`readlink bzImage-atom-pc.bin`
+		modules-*-atom-pc.tgz
+		`readlink poky-image-minimal-initramfs-atom-pc.cpio.gz`
+		`readlink poky-image-minimal-initramfs-atom-pc.ext3`
+		`readlink poky-image-minimal-live-atom-pc.hddimg`
+		`readlink poky-image-minimal-atom-pc.ext3`
+		`readlink poky-image-sato-atom-pc.ext3`
+		`readlink poky-image-sato-live-atom-pc.hddimg`
+		`readlink poky-image-sdk-live-atom-pc.hddimg`
+		`readlink poky-image-sdk-atom-pc.ext3`
+		)
+
+	mkdir -p $DEST/atom-pc/x86_32
+	for file in ${FILES_ATOM_PC[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/qemuppc/"
+			cp $file $DEST/atom-pc/x86_32/
+			find $DEST/atom-pc/x86_32/ -type f -name "*.hddimg" -exec bzip2 {} \;
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+fi
+
+if [ "$TARGET" = "toolchain" ]; then
+	cd ../sdk/
+
+	FILES_TOOLCHAIN_i586=(
+		*glibc-i586-*-toolchain-*.tar.bz2
+		)
+
+	mkdir -p $DEST/toolchain/i586
+	for file in ${FILES_TOOLCHAIN_i586[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/toolchain/i586/"
+			cp $file $DEST/toolchain/i586/
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+
+	FILES_TOOLCHAIN_x86_64=(
+		*glibc-x86_64-*-toolchain-*.tar.bz2
+		)
+
+	mkdir -p $DEST/toolchain/x86_64
+	for file in ${FILES_TOOLCHAIN_x86_64[@]}; do
+		if [ -e $file ]; then
+			echo "Copying $file to $DEST/toolchain/x86_64/"
+			cp $file $DEST/toolchain/x86_64/
+		else
+			echo "WARNING: $file does not exist (due to build failure?)"
+		fi
+	done
+
+	cd ../images/
+fi
+
+cd .. # now in tmp/deploy/
+
+if [ "$TARGET" = "poky-sources" ]; then
+	if [ -d "../../../poky-tarball" ]; then
+		cp ../../../poky-tarball/*.tar.bz2 $DEST/
+	else
+		echo "Error: poky tarball does not exist, cannot copy!"
+		exit 1
+	fi
+fi
+
+if [ "$TARGET" = "release" ]; then
+	poky-autobuild-rename-release-images $DEST 0.9
+fi
+
+if [ "$TARGET" = "sstate" ]; then
+	echo "Copying shared state cache to $DEST/sstate-cache/"
+	cp -r ../../sstate-cache $DEST/
+fi
+
+if [ "$TARGET" = "eclipse-plugin" ]; then
+	if [ -d "../../../eclipse-plugin" ]; then
+		mkdir $DEST/eclipse-plugin
+		cp ../../../eclipse-plugin/*.zip $DEST/eclipse-plugin/
+	else
+		echo "Error: eclipse-plugin does not exist, cannot copy!"
+		exit 1
+	fi
+fi
+
+if [ "$TARGET" = "ipk" ]; then
+	if [ -d "ipk" ]; then
+		mkdir -p $DEST/ipk
+		echo "Copying ipk packages to $DEST/ipk/"
+		cp -r ipk/ $DEST/
+	else
+		echo "Error: tmp/deploy/ipk does not exist, cannot copy!"
+		exit 1
+	fi
+fi
+
+if [ "$TARGET" = "deb" ]; then
+	if [ -d "deb" ]; then
+		mkdir -p $DEST/deb
+		echo "Copying deb packages to $DEST/deb/"
+		cp -r deb/ $DEST/
+	else
+		echo "Error: tmp/deploy/deb does not exist, cannot copy!"
+		exit 1
+	fi
+fi
+
+if [ "$TARGET" = "rpm" ]; then
+	if [ -d "rpm" ]; then
+		mkdir -p $DEST/rpm
+		echo "Copying rpm packages to $DEST/rpm/"
+		cp -r rpm/ $DEST/
+	else
+		echo "Error: tmp/deploy/rpm does not exist, cannot copy!"
+		exit 1
+	fi
+fi
diff --git a/scripts/poky-autobuild-generate-release-external b/scripts/poky-autobuild-generate-release-external
new file mode 100755
index 0000000..e8bd437
--- /dev/null
+++ b/scripts/poky-autobuild-generate-release-external
@@ -0,0 +1,220 @@
+#!/bin/bash
+#
+# Poky Automated Build Server Release Generation Script. This script
+# takes output generated during an autobuidler build set and copies it
+# into the sepcified deployment base directory.
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+
+RELEASE_TYPE=$1
+DEPLOY_DIR=$2
+
+function usage() {
+	echo "Usage: $0 [nightly|weekly|milestone] <deploy-base-directory>"
+}
+
+if [ $# != 2 ]; then
+	usage
+	exit 1
+fi
+
+if [[ "x$RELEASE_TYPE" != "xnightly" && "x$RELEASE_TYPE" != "xweekly" && "x$RELEASE_TYPE" != "xmilestone" ]]; then
+	echo "Error: Unknown release type '$RELEASE_TYPE'"
+	usage
+	exit 1
+fi
+
+if [ ! -d $DEPLOY_DIR ]; then
+	echo "Error: deployment directory '$DEPLOY_DIR' does not exist!"
+	usage
+	exit 1
+fi
+
+if [ ! -d ./build/tmp/deploy/ ]; then
+	echo "Error: I do not see a build/tmp/deploy/ directory to work from!"
+	exit 1
+fi
+
+cd ./build/tmp/deploy/
+
+# Work out a destination path which includes the date and an incremental 
+# revision number
+DEST=$DEPLOY_DIR/$RELEASE_TYPE/
+BASE=`date +%Y%m%d`
+REV=1
+
+while [ -d "$DEST$BASE-$REV" ]
+do
+    REV=`expr $REV + 1`
+done
+
+# Weekly builds only run if the day of week is Wednesday
+if [ "x$RELEASE_TYPE" = "xweekly" ]; then
+	DOW=`date +%a`
+	if [ "x$DOW" != "xWed" ]; then
+		echo "Skipping weekly build since today is $DOW"
+		exit 0
+	else
+		# We expect the nightly build to have been run first,
+		# so let's save disk space by just symlinking the dir
+		NIGHTLY_DIR=$DEPLOY_DIR/nightly/$BASE-$REV
+		if [ ! -e $NIGHTLY_DIR ]; then
+			echo "Error: nightly dir '$NIGHTLY_DIR' does not exist"
+			echo "(I need it to symlink to in weekly/)"
+			exit 1
+		fi
+		ln -s $NIGHTLY_DIR $DEST$BASE-$REV
+		exit 0
+	fi
+fi
+
+DEST="$DEST$BASE-$REV"
+mkdir -p $DEST/qemu/qemux86
+mkdir -p $DEST/qemu/qemuarm
+mkdir -p $DEST/qemu/qemumips
+mkdir -p $DEST/qemu/qemuppc
+mkdir -p $DEST/toolchain/i586
+mkdir -p $DEST/toolchain/x86_64
+
+# Copy the prebuilds
+#echo "Copying prebuild area to $DEST/pstage/"
+#cp -r ../../pstage2 $DEST/
+
+# The following is ripe for DRYing up, which will be done once the
+# release process stabilizes further.
+
+cd images
+
+cp gitinfo $DEST/
+
+FILES_QEMUX86=(
+	`readlink bzImage-qemux86.bin`
+	modules-*-qemux86.tgz
+	`readlink poky-image-minimal-qemux86.ext3`
+	`readlink poky-image-minimal-qemux86.tar.bz2`
+	`readlink poky-image-lsb-qemux86.ext3`
+	`readlink poky-image-lsb-qemux86.tar.bz2`
+	`readlink poky-image-sato-qemux86.ext3`
+	`readlink poky-image-sato-qemux86.tar.bz2`
+	`readlink poky-image-sdk-qemux86.ext3`
+	`readlink poky-image-sdk-qemux86.tar.bz2`
+	)
+
+for file in ${FILES_QEMUX86[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemux86/"
+		cp $file $DEST/qemu/qemux86/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_QEMUARM=(
+	`readlink zImage-qemuarm.bin`
+	modules-*-qemuarm.tgz
+	`readlink poky-image-minimal-qemuarm.ext3`
+	`readlink poky-image-minimal-qemuarm.tar.bz2`
+	`readlink poky-image-lsb-qemuarm.ext3`
+	`readlink poky-image-lsb-qemuarm.tar.bz2`
+	`readlink poky-image-sato-qemuarm.ext3`
+	`readlink poky-image-sato-qemuarm.tar.bz2`
+	`readlink poky-image-sdk-qemuarm.ext3`
+	`readlink poky-image-sdk-qemuarm.tar.bz2`
+	)
+
+for file in ${FILES_QEMUARM[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemuarm/"
+		cp $file $DEST/qemu/qemuarm/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_QEMUMIPS=(
+	`readlink vmlinux-qemumips.bin`
+	modules-*-qemumips.tgz
+	`readlink poky-image-minimal-qemumips.ext3`
+	`readlink poky-image-minimal-qemumips.tar.bz2`
+	`readlink poky-image-lsb-qemumips.ext3`
+	`readlink poky-image-lsb-qemumips.tar.bz2`
+	`readlink poky-image-sato-qemumips.ext3`
+	`readlink poky-image-sato-qemumips.tar.bz2`
+	`readlink poky-image-sdk-qemumips.ext3`
+	`readlink poky-image-sdk-qemumips.tar.bz2`
+	)
+
+for file in ${FILES_QEMUMIPS[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemumips/"
+		cp $file $DEST/qemu/qemumips/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_QEMUPPC=(
+	`readlink zImage-qemuppc.bin`
+	modules-*-qemuppc.tgz
+	`readlink poky-image-minimal-qemuppc.ext3`
+	`readlink poky-image-minimal-qemuppc.tar.bz2`
+	`readlink poky-image-lsb-qemuppc.ext3`
+	`readlink poky-image-lsb-qemuppc.tar.bz2`
+	`readlink poky-image-sato-qemuppc.ext3`
+	`readlink poky-image-sato-qemuppc.tar.bz2`
+	`readlink poky-image-sdk-qemuppc.ext3`
+	`readlink poky-image-sdk-qemuppc.tar.bz2`
+	)
+
+for file in ${FILES_QEMUPPC[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemuppc/"
+		cp $file $DEST/qemu/qemuppc/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+cd ../sdk/
+
+FILES_TOOLCHAIN_i586=(
+	*glibc-i586-*-toolchain-*.tar.bz2
+	)
+
+for file in ${FILES_TOOLCHAIN_i586[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/toolchain/i586/"
+		cp $file $DEST/toolchain/i586/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_TOOLCHAIN_x86_64=(
+	*glibc-x86_64-*-toolchain-*.tar.bz2
+	)
+
+for file in ${FILES_TOOLCHAIN_x86_64[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/toolchain/x86_64/"
+		cp $file $DEST/toolchain/x86_64/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+echo "Done"
diff --git a/scripts/poky-autobuild-generate-release-internal b/scripts/poky-autobuild-generate-release-internal
new file mode 100755
index 0000000..926633b
--- /dev/null
+++ b/scripts/poky-autobuild-generate-release-internal
@@ -0,0 +1,232 @@
+#!/bin/bash
+#
+# Poky Automated Build Server Release Generation Script. This script
+# takes output generated during an autobuidler build set and copies it
+# into the sepcified deployment base directory.
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+
+RELEASE_TYPE=$1
+DEPLOY_DIR=$2
+
+function usage() {
+	echo "Usage: $0 [nightly|weekly|milestone] <deploy-base-directory>"
+}
+
+if [ $# != 2 ]; then
+	usage
+	exit 1
+fi
+
+if [[ "x$RELEASE_TYPE" != "xnightly" && "x$RELEASE_TYPE" != "xweekly" && "x$RELEASE_TYPE" != "xmilestone" ]]; then
+	echo "Error: Unknown release type '$RELEASE_TYPE'"
+	usage
+	exit 1
+fi
+
+if [ ! -d $DEPLOY_DIR ]; then
+	echo "Error: deployment directory '$DEPLOY_DIR' does not exist!"
+	usage
+	exit 1
+fi
+
+if [ ! -d ./build/tmp/deploy/ ]; then
+	echo "Error: I do not see a build/tmp/deploy/ directory to work from!"
+	exit 1
+fi
+
+cd ./build/tmp/deploy/
+
+# Work out a destination path which includes the date and an incremental 
+# revision number
+DEST=$DEPLOY_DIR/$RELEASE_TYPE/
+BASE=`date +%Y%m%d`
+REV=1
+
+while [ -d "$DEST$BASE-$REV" ]
+do
+    REV=`expr $REV + 1`
+done
+
+# Weekly builds only run if the day of week is Wednesday
+if [ "x$RELEASE_TYPE" = "xweekly" ]; then
+	DOW=`date +%a`
+	if [ "x$DOW" != "xWed" ]; then
+		echo "Skipping weekly build since today is $DOW"
+		exit 0
+	else
+		# We expect the nightly build to have been run first,
+		# so let's save disk space by just symlinking the dir
+		NIGHTLY_DIR=$DEPLOY_DIR/nightly/$BASE-$REV
+		if [ ! -e $NIGHTLY_DIR ]; then
+			echo "Error: nightly dir '$NIGHTLY_DIR' does not exist"
+			echo "(I need it to symlink to in weekly/)"
+			exit 1
+		fi
+		ln -s $NIGHTLY_DIR $DEST$BASE-$REV
+		exit 0
+	fi
+fi
+
+DEST="$DEST$BASE-$REV"
+mkdir -p $DEST/qemu/qemux86
+mkdir -p $DEST/qemu/qemux86-64
+mkdir -p $DEST/emenlow/x86_32
+mkdir -p $DEST/atom-pc/x86_32
+mkdir -p $DEST/toolchain/i586
+mkdir -p $DEST/toolchain/x86_64
+
+# Copy the prebuilds - DISABLED FOR INTERNAL BUILDER
+#echo "Copying prebuild area to $DEST/pstage/"
+#cp -r ../../pstage2 $DEST/
+
+# The following is ripe for DRYing up, which will be done once the
+# release process stabilizes further.
+
+cd images
+
+cp gitinfo $DEST/
+
+FILES_QEMUX86=(
+	`readlink bzImage-qemux86.bin`
+	modules-*-qemux86.tgz
+	`readlink poky-image-minimal-qemux86.ext3`
+	`readlink poky-image-minimal-qemux86.tar.bz2`
+	`readlink poky-image-lsb-qemux86.ext3`
+	`readlink poky-image-lsb-qemux86.tar.bz2`
+	`readlink poky-image-sato-qemux86.ext3`
+	`readlink poky-image-sato-qemux86.tar.bz2`
+	`readlink poky-image-sdk-qemux86.ext3`
+	`readlink poky-image-sdk-qemux86.tar.bz2`
+	)
+
+for file in ${FILES_QEMUX86[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemux86/"
+		cp $file $DEST/qemu/qemux86/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_QEMUX86_64=(
+	`readlink bzImage-qemux86-64.bin`
+	modules-*-qemux86-64.tgz
+	`readlink poky-image-minimal-qemux86-64.ext3`
+	`readlink poky-image-minimal-qemux86-64.tar.bz2`
+	`readlink poky-image-lsb-qemux86-64.ext3`
+	`readlink poky-image-lsb-qemux86-64.tar.bz2`
+	`readlink poky-image-sato-qemux86-64.ext3`
+	`readlink poky-image-sato-qemux86-64.tar.bz2`
+	`readlink poky-image-sdk-qemux86-64.ext3`
+	`readlink poky-image-sdk-qemux86-64.tar.bz2`
+	)
+
+for file in ${FILES_QEMUX86_64[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemux86-64/"
+		cp $file $DEST/qemu/qemux86-64/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_EMENLOW=(
+	`readlink bzImage-emenlow.bin`
+	modules-*-emenlow.tgz
+	`readlink poky-image-minimal-emenlow.cpio.gz`
+	`readlink poky-image-minimal-emenlow.ext3`
+	`readlink poky-image-minimal-initramfs-emenlow.cpio.gz`
+	`readlink poky-image-minimal-initramfs-emenlow.ext3`
+	`readlink poky-image-minimal-live-emenlow.hddimg`
+	`readlink poky-image-minimal-live-emenlow.iso`
+	`readlink poky-image-sato-emenlow.cpio.gz`
+	`readlink poky-image-sato-emenlow.ext3`
+	`readlink poky-image-sato-live-emenlow.hddimg`
+	`readlink poky-image-sato-live-emenlow.iso`
+	`readlink poky-image-sdk-emenlow.cpio.gz`
+	`readlink poky-image-sdk-emenlow.ext3`
+	`readlink poky-image-sdk-live-emenlow.hddimg`
+	`readlink poky-image-sdk-live-emenlow.iso`
+	)
+
+for file in ${FILES_EMENLOW[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemuppc/"
+		cp $file $DEST/emenlow/x86_32/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_ATOM_PC=(
+	`readlink bzImage-atom-pc.bin`
+	modules-*-atom-pc.tgz
+	`readlink poky-image-minimal-initramfs-atom-pc.cpio.gz`
+	`readlink poky-image-minimal-initramfs-atom-pc.ext3`
+	`readlink poky-image-minimal-live-atom-pc.hddimg`
+	`readlink poky-image-minimal-live-atom-pc.iso`
+	`readlink poky-image-minimal-atom-pc.cpio.gz`
+	`readlink poky-image-minimal-atom-pc.ext3`
+	`readlink poky-image-sato-atom-pc.cpio.gz`
+	`readlink poky-image-sato-atom-pc.ext3`
+	`readlink poky-image-sato-live-atom-pc.hddimg`
+	`readlink poky-image-sato-live-atom-pc.iso`
+	`readlink poky-image-sdk-live-atom-pc.hddimg`
+	`readlink poky-image-sdk-live-atom-pc.iso`
+	`readlink poky-image-sdk-atom-pc.cpio.gz`
+	`readlink poky-image-sdk-atom-pc.ext3`
+	)
+
+for file in ${FILES_ATOM_PC[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/qemuppc/"
+		cp $file $DEST/atom-pc/x86_32/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+cd ../sdk/
+
+FILES_TOOLCHAIN_i586=(
+	*glibc-i586-*-toolchain-*.tar.bz2
+	)
+
+for file in ${FILES_TOOLCHAIN_i586[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/toolchain/i586/"
+		cp $file $DEST/toolchain/i586/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+FILES_TOOLCHAIN_x86_64=(
+	*glibc-x86_64-*-toolchain-*.tar.bz2
+	)
+
+for file in ${FILES_TOOLCHAIN_x86_64[@]}; do
+	if [ -e $file ]; then
+		echo "Copying $file to $DEST/toolchain/x86_64/"
+		cp $file $DEST/toolchain/x86_64/
+	else
+		echo "WARNING: $file does not exist (due to build failure?)"
+	fi
+done
+
+echo "Done"
diff --git a/scripts/poky-autobuild-generate-sources-tarball b/scripts/poky-autobuild-generate-sources-tarball
new file mode 100755
index 0000000..8a3caef
--- /dev/null
+++ b/scripts/poky-autobuild-generate-sources-tarball
@@ -0,0 +1,54 @@
+#!/bin/bash
+#
+# This script is used to generate a compressed tarball of the Poky
+# metadata.
+
+usage() {
+	echo "Usage: $0 <release-name> <version> <branch>"
+	echo "Where a release name of 'datestamp' will generate a datestamp"
+	exit 1
+}
+
+RELEASE=$1
+VERSION=$2
+BRANCH=$3
+
+if [[ -z "$RELEASE" || -z "$VERSION" ]]; then
+	echo "$0: missing argument"
+	usage
+fi
+
+if [[ -z "$BRANCH" ]]; then
+	$BRANCH = master
+fi
+
+BASEDIR=poky-tarball
+
+mkdir -p $BASEDIR/poky
+# Need to do a git clone of the yocto repo here!
+git archive $BRANCH | tar -x -C ./$BASEDIR/poky
+if [ ! -e "$BASEDIR/poky/LICENSE" ]; then
+	echo "Error: I do not see a Poky source tree under $BASEDIR/poky/"
+	exit 1
+fi
+cd $BASEDIR && rm poky/.gitignore
+
+# Rename the poky directory to use a datestamp or release name
+if [ "$RELEASE" = "datestamp" ]; then
+	DATESTAMP=`date +%Y%m%d`
+	mv poky poky-$DATESTAMP-$VERSION
+	echo "Generating poky-$DATESTAMP-$VERSION.tar.bz2:"
+	tar cvjf poky-$DATESTAMP-$VERSION.tar.bz2 poky-$DATESTAMP-$VERSION
+	if [ $? -ne 0 ]; then
+		echo "Error generating 'poky-$DATESTAMP-$VERSION.tar.bz2'"
+		exit 1
+	fi	
+else
+	mv poky poky-$RELEASE-$VERSION
+	echo "Generating poky-$RELEASE-$VERSION.tar.bz2:"
+	tar cvjf poky-$RELEASE-$VERSION.tar.bz2 poky-$RELEASE-$VERSION
+	if [ $? -ne 0 ]; then
+		echo "Error generating 'poky-$RELEASE-$VERSION.tar.bz2'"
+		exit 1
+	fi	
+fi
diff --git a/scripts/poky-autobuild-postprocess b/scripts/poky-autobuild-postprocess
index 5314615..70c59a7 100755
--- a/scripts/poky-autobuild-postprocess
+++ b/scripts/poky-autobuild-postprocess
@@ -125,7 +125,7 @@ if [ "x$ABTARGET" = "xpoky-full" ]; then
         `readlink images/zImage-qemuarm.bin`
         `readlink images/zImage-spitz.bin`
         `readlink images/bzImage-qemux86.bin`
-        `readlink images/bzImage-netbook.bin`
+        `readlink images/bzImage-atom-pc.bin`
         `readlink images/zImage-htcuniversal.bin`
         `readlink images/zImage-mx31ads.bin`
         `readlink images/zImage-zylonite.bin`
@@ -137,8 +137,8 @@ if [ "x$ABTARGET" = "xpoky-full" ]; then
         updater.sh.c7x0
         updater.sh.spitz
         gnu-tar
-        poky-image-live-netbook-*.hddimg
-        poky-image-minimal-live-netbook-*.hddimg
+        poky-image-live-atom-pc-*.hddimg
+        poky-image-minimal-live-atom-pc-*.hddimg
         poky-image-sato-akita-*.rootfs.summary.jffs2
         poky-image-sato-c7x0-*.rootfs.jffs2
         poky-image-sato-spitz-*.rootfs.tar.gz
diff --git a/scripts/poky-autobuild-preamble b/scripts/poky-autobuild-preamble
new file mode 100755
index 0000000..79ebbf5
--- /dev/null
+++ b/scripts/poky-autobuild-preamble
@@ -0,0 +1,58 @@
+#!/bin/bash
+#
+# Poky Autobuilder Preamble Script
+#
+# Copyright (c) 2010 Intel Corp.
+#
+# This script is intended to be run at the start of an autobuilder
+# buildset and creates some directories and flag files used in
+# later parts of the buildset. The optional deploy-basedir argument
+# will set up a date-buildnumber subdirectory where the build output
+# will be copied to by the poky-autobuild-copy-images script.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+
+mkdir -p ./build/tmp/deploy/images
+rm -f ./build/tmp/deploy/images/images-complete
+git log -1 > ./build/tmp/deploy/images/gitinfo
+
+if [ -z "$1" ]; then
+	exit 0
+fi
+
+if [ ! -d "$1" ]; then
+	echo "Error: deployment base dir '$1' does not exist"
+	exit 1
+fi
+
+# Work out a deployment path which includes the date and an
+# incremental revision number
+DEST=$1
+DATE=`date +%Y%m%d`
+REV=1
+
+while [ -d "$DEST/$DATE-$REV" ]; do
+	REV=$((REV + 1))
+done
+DEPLOYDIR="$DEST/$DATE-$REV"
+
+echo "Build output will be saved in $DEPLOYDIR"
+
+mkdir "$DEPLOYDIR"
+echo "$DATE-$REV" > deploy-dir
+
+if [ ! -e deploy-dir ]; then
+	echo "Error: could not create deploy-dir file"
+	exit 1
+fi
+
+#cp ~/BUILD_INCOMPLETE.txt.template "$DEPLOYDIR/BUILD_INCOMPLETE.txt"
+
+exit 0
diff --git a/scripts/poky-autobuild-rename-release-images b/scripts/poky-autobuild-rename-release-images
new file mode 100755
index 0000000..1c4e1cb
--- /dev/null
+++ b/scripts/poky-autobuild-rename-release-images
@@ -0,0 +1,128 @@
+#!/bin/bash
+#
+# Given an output directory and version number, rename the poky
+# images to our final yocto naming convention.
+
+IMAGEDIR=$1
+VERSION=$2
+
+usage() {
+	echo "Usage: $0 <image-dir> <version>"
+	echo "Where image-dir is a directory containing poky images"
+	echo "and version is the release version string"
+	exit 1
+}
+
+if [[ -z "$IMAGEDIR" || -z "$VERSION" ]]; then
+	echo "$0: missing argument"
+	usage
+fi
+
+if [ ! -d "$IMAGEDIR" ]; then
+	echo "Error: '$IMAGEDIR' is not a directory"
+	usage
+fi
+
+######
+#
+# DELETE THIS WHEN THIS IS WELL-TESTED
+mkdir "$IMAGEDIR/release"
+cp -a $IMAGEDIR/* "$IMAGEDIR/release/"
+rm -rf "$IMAGEDIR/release/release"
+IMAGEDIR="$IMAGEDIR/release"
+
+#####
+
+perform_rename() {
+	file=$1
+	image_regex=$2
+	kernel_regex=$3
+	modules_regex=$4
+
+	dirname=`dirname $file`
+	filename=`echo $file | awk -F '/' '{ print \$NF }'`
+
+	if [[ "$filename" =~ ^modules ]]; then
+		#echo "$filename is a module archive"
+
+		newfilename=`echo $filename | sed "$modules_regex"`
+		echo "Renaming $filename to $newfilename"
+		mv "$file" "$dirname/$newfilename"
+	elif [[ "$filename" =~ bin$ ]]; then
+		#echo "$filename is a kernel image"
+
+		newfilename=`echo $filename | sed "$kernel_regex"`
+		echo "Renaming $filename to $newfilename"
+		mv "$file" "$dirname/$newfilename"
+	elif [[ "$filename" =~ ^poky ]]; then
+		#echo "$filename is a poky image"
+
+		# Replace poky with yocto:
+		newfilename=`echo $filename | sed 's/^poky/yocto/'`
+		newfilename=`echo $newfilename | sed "$image_regex"`
+		echo "Renaming $filename to $newfilename"
+		mv "$file" "$dirname/$newfilename"
+	else
+		echo "Warning: Skipping unrecognized file $filename"	
+	fi
+
+	if [ $? -ne 0 ]; then
+		echo "Exiting due to error renaming file"
+		exit 1
+	fi
+}
+
+if [ -d "$IMAGEDIR/atom-pc" ]; then
+	image_regex="s/\(yocto-.*atom-pc\)-[0-9]*\(.*\)/\1-$VERSION\2/"
+	kernel_regex="s/\([^+]*\).*-\(atom-pc\)-[0-9]*\.bin$/\1-\2-$VERSION.bin/"
+	modules_regex="s/\(modules-[0-9.]*\)-.*\(-atom-pc\).*/\1\2-$VERSION.tgz/"
+
+	files=`find $IMAGEDIR/atom-pc -type f`
+	for file in $files; do
+		perform_rename $file $image_regex $kernel_regex $modules_regex
+	done
+fi
+
+
+if [ -d "$IMAGEDIR/emenlow" ]; then
+	image_regex="s/\(yocto-.*emenlow\)-[0-9]*\(.*\)/\1-$VERSION\2/"
+	kernel_regex="s/\([^+]*\).*-\(emenlow\)-[0-9]*\.bin$/\1-\2-$VERSION.bin/"
+	modules_regex="s/\(modules-[0-9.]*\)-.*\(-emenlow\).*/\1\2-$VERSION.tgz/"
+
+	files=`find $IMAGEDIR/emenlow -type f`
+	for file in $files; do
+		perform_rename $file $image_regex $kernel_regex $modules_regex
+	done
+fi
+
+if [ -d "$IMAGEDIR/qemu" ]; then
+	image_regex="s/\(yocto-.*qemu[a-z0-9-]*\)-[0-9]*\(.*\)/\1-$VERSION\2/"
+	kernel_regex="s/\([^+]*\).*-\(qemu[a-z0-9-]*\)-[0-9]*\.bin$/\1-\2-$VERSION.bin/"
+	modules_regex="s/\(modules-[0-9.]*\)-.*\(-qemu[a-z0-9-]*\).*/\1\2-$VERSION.tgz/"
+
+	files=`find $IMAGEDIR/qemu -type f`
+	for file in $files; do
+		perform_rename $file $image_regex $kernel_regex $modules_regex
+	done
+fi
+
+if [ -d "$IMAGEDIR/toolchain" ]; then
+	files=`find $IMAGEDIR/toolchain -type f`
+	for file in $files; do
+		#echo "Processing $file"
+		dirname=`dirname $file`
+		filename=`echo $file | awk -F '/' '{ print \$NF }'`
+
+		# Replace poky with yocto:
+		newfilename=`echo $filename | sed 's/^poky/yocto/'`
+		# Replace everything after toolchain-sdk with the version string:
+		newfilename=`echo $newfilename | sed "s/\(yocto-.*toolchain-sdk-\).*\.tar\.bz2/\1$VERSION\.tar\.bz2/"`
+
+		echo "Renaming $filename to $newfilename"
+		mv "$file" "$dirname/$newfilename"
+		if [ $? -ne 0 ]; then
+			echo "Exiting due to error renaming file"
+			exit 1
+		fi
+	done
+fi
diff --git a/scripts/poky-autobuild-sanitytest b/scripts/poky-autobuild-sanitytest
new file mode 100755
index 0000000..88615a8
--- /dev/null
+++ b/scripts/poky-autobuild-sanitytest
@@ -0,0 +1,58 @@
+#!/bin/bash
+#
+# Poky Automated Build Server Sanity Test Script
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+
+. $HOME/.pokyautobuild
+
+TARGETDIR=$BUILDOUTPUT
+CURRDIR=`pwd`
+CURRDIR=`readlink -f $CURRDIR`
+
+echo "ABTARGET is $ABTARGET"
+echo "Commands are $@"
+
+cd $CURRDIR
+
+echo "Changed to $CURRDIR"
+
+BDIR="build"
+. ./scripts/poky-env-internal
+
+CONFFILE="./conf/auto.conf"
+
+# This script is to only be run *after* an image has been fully
+# generated, so we can simply append to CONFFILE
+echo 'IMAGETEST = "qemu"' >> "$CONFFILE"
+
+# Little-known bash trick to test whether a port is in use:
+(echo > /dev/tcp/localhost/5901) 2> /dev/null
+if [ $? -ne 0 ]; then
+	echo "Starting a VNC server on :1"
+	vncserver :1
+else
+	echo "Will use a VNC server already running on :1"
+fi
+
+DISPLAY=localhost:1 bitbake $@ -c qemuimagetest
+
+retval=$?
+
+rm -f "$CONFFILE"
+
+exit $retval
diff --git a/scripts/poky-output-sort b/scripts/poky-output-sort
new file mode 100755
index 0000000..1c5e523
--- /dev/null
+++ b/scripts/poky-output-sort
@@ -0,0 +1,117 @@
+#!/bin/bash
+BASEPATH=/srv/www/pokylinux.org/output
+UPLOADPATH=/srv/www/pokylinux.org/output-upload
+INDEX=$BASEPATH/index.html
+
+# Remove all but the last ten builds results
+for dir in moblin-incremental-bleeding moblin-incremental; do
+	cd $UPLOADPATH/$dir
+	for FILE in `find . -type f`; do
+	    case $FILE in
+	        *.done)
+		    ;;
+		*complete)
+		    ;;
+		*gitinfo)
+		    ;;
+		ipk/*)
+		    ;;
+		pstage/*)
+		    ;;
+                *)
+	            if [ -e "$FILE.done" ]; then
+		        DESTDIR=`dirname $BASEPATH/$dir/$FILE`
+			BASENAME=`basename $FILE`
+    	                mkdir -p $DESTDIR
+			mv $FILE $BASEPATH/$dir/$FILE
+			rm $FILE.done
+			INFOFILE=`echo $FILE | sed s/$BASENAME/gitinfo/`
+			cp $INFOFILE $BASEPATH/$dir/$INFOFILE
+		    fi
+		    ;;
+	    esac
+	done
+
+	if [ ! -d "$BASEPATH/$dir" ]; then
+	    continue
+	fi
+
+        cd $BASEPATH/$dir
+	BUILDS=`/home/richard/poky-listversions $BASEPATH/$dir | egrep -v \(ipk\|pstage\) | sed -n '1,10p'`
+	TODEL=`/home/richard/poky-listversions $BASEPATH/$dir | egrep -v \(ipk\|pstage\) | sed -n '11,100p'`
+	DATA=""
+
+        for build in $BUILDS; do
+            LINK="<a href=\"./$dir/$build\">$build</a>"
+	    if [ "x$DATA" = "x" ]; then
+                DATA="<table align=\"center\" cellpadding=2><tr><td>Latest Build:</td><td>$LINK</td></tr><tr><td>Older Builds:</td><td>"
+            else 
+	        DATA="$DATA$LINK</td></tr><tr><td></td><td>"
+	    fi
+        done
+        if [ "x$DATA" = "x" ]; then
+		DATA="<p>Sorry, no images are currently available</p>"
+	else 
+        	DATA="$DATA</td></tr></table>"
+        fi
+        for build in $TODEL; do
+                echo "Removing $dir/$build"
+                rm -r "$BASEPATH/$dir/$build"
+        done
+
+        if [ "$dir" = "moblin-incremental-bleeding" ]; then	
+	    BLEEDBUILD=$DATA
+	fi
+        if [ "$dir" = "moblin-incremental" ]; then	
+	    INCBUILD=$DATA
+	fi
+done
+					
+#<h2>Moblin 2.0 Images</h2>
+#
+#<p>These images are built with the Moblin 2.0 release versions of packages. They should 
+#therefore be stable but the images are automatically generated and not indivudally tested 
+#for quality.</p>
+
+
+cat > $INDEX << EOF
+<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
+<html>
+<head>
+<title>Poky Linux built Moblin Images</title>
+</head>
+<body>
+<h1 align="center">Poky Linux built Moblin Images</h1>
+<p>
+This page contains links to Moblin like images automatically generated by the 
+Poky build system. These images are not production quality and are intended for 
+development and testing purposes. Please see <a href="http://pokylinux.org/moblin/">
+the Poky website</a> for more information.
+</p>
+
+<p>To install an image, download the .hddimage.bz2 file, decompress it using bunzip2
+and then transfer it to a USB key using a command like 'dd if=moblin-image.hddimage 
+of=/dev/sdi' where /dev/sdi is the location of the USB flash drive. Note that the flash 
+drive should be unmounted before transfer takes place.</p>
+
+<h2>Moblin 'Selected' Images</h2>
+
+<p>These images are built with hand selected recent versions of packages which have 
+been found to roughly work together. They should therefore be stable but the images
+are automatically generated and not indivudally tested for quality.</p>
+
+$INCBUILD
+
+
+<h2>Moblin 'Bleeding Edge' Images</h2>
+
+<p>These images are built from the latest revisions in the moblin git repositories. 
+The images may or may not be fully functional depending on the development work being 
+undertaken at the time the images were built.</p>
+
+$BLEEDBUILD
+
+</body>
+</html>
+EOF
+
diff --git a/scripts/poky-preserve-work-dir b/scripts/poky-preserve-work-dir
index da11204..b88535b 100755
--- a/scripts/poky-preserve-work-dir
+++ b/scripts/poky-preserve-work-dir
@@ -1,15 +1,16 @@
 #!/bin/bash
 #
-# Move the $WORKDIR into a safe area so the Buildbot SCM system can
-# blow away the build directory during updates.
+# Move the tmp dir and shared state cache dir into a safe area so the
+# Buildbot SCM system can blow away the build directory during updates.
 
 CMD=$1
 
 if [ "x$CMD" = "xbackup" ]; then
 	if [ ! -d ./build/conf ]; then
-		echo "No build/conf directory found; assuming this is the first checkout"
-		# Still create a tmp.protected directory so that restore will work
+		echo "No build/conf directory found; assuming this is a build from scratch"
+		# Create empty directores so that restore will work unmodified
 		mkdir ../tmp.protected
+		mkdir ../sstate-cache.protected
 		exit 0
 	fi
 
@@ -20,10 +21,17 @@ if [ "x$CMD" = "xbackup" ]; then
 	fi
 
 	mv build/tmp ../tmp.protected
-	if [ ! -e ../tmp.protected ]; then
+	if [ ! -d ../tmp.protected ]; then
 		echo "Error moving build/tmp to a protected area"
 		exit 1
 	fi
+
+	mv build/sstate-cache ../sstate-cache.protected
+	if [ ! -d ../sstate-cache.protected ]; then
+		echo "Error moving build/sstate-cache to a protected area"
+		exit 1
+	fi
+
 elif [ "x$CMD" == "xrestore" ]; then
 	if [ ! -d ../tmp.protected ]; then
 		PWD=`pwd`
@@ -33,10 +41,16 @@ elif [ "x$CMD" == "xrestore" ]; then
 
 	mkdir build
 	mv ../tmp.protected build/tmp
-	if [ ! -e build/tmp ]; then
+	if [ ! -d build/tmp ]; then
 		echo "Error moving tmp.protected dir back into build/tmp"
 		exit 1
 	fi
+
+	mv ../sstate-cache.protected build/sstate-cache
+	if [ ! -d build/sstate-cache ]; then
+		echo "Error moving sstate-cache.protected dir back into build/sstate-cache"
+		exit 1
+	fi
 else
 	echo "Unknown command '$CMD'"
 	echo "Commands are 'backup' or 'restore'"
diff --git a/scripts/pokyABConfig.py b/scripts/pokyABConfig.py
index 6330fc9..28669c2 100644
--- a/scripts/pokyABConfig.py
+++ b/scripts/pokyABConfig.py
@@ -7,7 +7,7 @@
 # waterfall HTML page. The 'projectURL' string will be used to provide a link
 # from buildbot HTML pages to your project's home page.
 
-poky_projname = "Poky"
+poky_projname = "Yocto"
 poky_projurl = "http://pokylinux.org/"
 
 ################################################################################
@@ -70,33 +70,38 @@ poky_sched = []
 # CVS, SVN, and others.
 
 import copy
+from time import strftime
 
 from buildbot.process import factory
 from buildbot.steps.source import Git
 from buildbot.steps.shell import ShellCommand
+from buildbot.process.properties import WithProperties
 
 poky_builders = []
 
 # Setup default environment
 defaultenv = {}
-defaultenv['POKYLIBC'] = 'glibc'
 
 # Common command 'macros'
 def runImage(factory, machine, image):
     defaultenv['MACHINE'] = machine
     factory.addStep(ShellCommand, description=["Building", machine, image], command=["poky-autobuild", image, "-k"], env=copy.copy(defaultenv), timeout=14400)
 
+def runSanityTest(factory, machine, image):
+    defaultenv['MACHINE'] = machine
+    factory.addStep(ShellCommand, description=["Running sanity test for", machine, image], command=["poky-autobuild-sanitytest", image], env=copy.copy(defaultenv), timeout=2400)
+
 def runComplete(factory):
-    factory.addStep(ShellCommand, description=["Mark", "complete"], command=["poky-autobuild", "complete"], env=copy.copy(defaultenv), timeout=600)
+    factory.addStep(ShellCommand, description="Mark complete", command="poky-autobuild complete", env=copy.copy(defaultenv), timeout=600)
 
 def runPreamble(factory):
-    factory.addStep(ShellCommand, description=["Run", "preamble"],  command=["poky-autobuild", "preamble"], env=copy.copy(defaultenv), timeout=60)
+    factory.addStep(ShellCommand, description="Run preamble",  command="poky-autobuild-preamble", env=copy.copy(defaultenv), timeout=60)
 
 def backupWorkDir(factory):
-    factory.addStep(ShellCommand, description=["Backup", "work", "dir"], command=["poky-preserve-work-dir", "backup"], timeout=60)
+    factory.addStep(ShellCommand, description="Backup work dir", command="poky-preserve-work-dir backup", timeout=60)
 
 def restoreWorkDir(factory):
-    factory.addStep(ShellCommand, description=["Restore", "work", "dir"], command=["poky-preserve-work-dir", "restore"], timeout=60)
+    factory.addStep(ShellCommand, description="Restore work dir", command="poky-preserve-work-dir restore", timeout=60)
 
 def makeCheckout(factory):
     factory.addStep(Git(repourl="git://git.pokylinux.org/poky.git", timeout=10000, retry=(5, 3)))
@@ -108,7 +113,7 @@ def makeCheckoutCopy(factory):
     factory.addStep(Git(repourl="git://git.pokylinux.org/poky.git", mode="copy", timeout=10000, retry=(5, 3)))
 
 def cleanImages(factory):
-    factory.addStep(ShellCommand, description=["Cleaning", "previous", "images"],  command="poky-autobuild-cleanoutput", timeout=600)
+    factory.addStep(ShellCommand, description="Cleaning previous images",  command="poky-autobuild-cleanoutput", timeout=600)
 
 
 ################################################################################
@@ -128,37 +133,55 @@ def cleanImages(factory):
 f5 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'poky-incremental'
+defaultenv['ENABLE_SWABBER'] = 'false'
 backupWorkDir(f5)
 makeCheckoutCopy(f5)
 restoreWorkDir(f5)
 runPreamble(f5)
 cleanImages(f5)
+runImage(f5, 'qemux86', 'virtual/kernel -c clean')
 runImage(f5, 'qemux86', 'poky-image-sdk')
 runImage(f5, 'qemux86', 'poky-image-sato')
+runSanityTest(f5, 'qemux86', 'poky-image-sato')
 runImage(f5, 'qemux86', 'poky-image-lsb')
+runSanityTest(f5, 'qemux86', 'poky-image-lsb')
+runImage(f5, 'qemux86-64', 'virtual/kernel -c clean')
 runImage(f5, 'qemux86-64', 'poky-image-sdk')
 runImage(f5, 'qemux86-64', 'poky-image-sato')
+runSanityTest(f5, 'qemux86-64', 'poky-image-sato')
 runImage(f5, 'qemux86-64', 'poky-image-lsb')
+runSanityTest(f5, 'qemux86-64', 'poky-image-lsb')
+runImage(f5, 'qemuarm', 'virtual/kernel -c clean')
 runImage(f5, 'qemuarm', 'poky-image-sdk')
 runImage(f5, 'qemuarm', 'poky-image-sato')
+runSanityTest(f5, 'qemuarm', 'poky-image-sato')
 runImage(f5, 'qemuarm', 'poky-image-lsb')
+runSanityTest(f5, 'qemuarm', 'poky-image-lsb')
+runImage(f5, 'qemumips', 'virtual/kernel -c clean')
 runImage(f5, 'qemumips', 'poky-image-sdk')
 runImage(f5, 'qemumips', 'poky-image-sato')
+runSanityTest(f5, 'qemumips', 'poky-image-sato')
 runImage(f5, 'qemumips', 'poky-image-lsb')
+runSanityTest(f5, 'qemumips', 'poky-image-lsb')
+runImage(f5, 'qemuppc', 'virtual/kernel -c clean')
 runImage(f5, 'qemuppc', 'poky-image-sdk')
 runImage(f5, 'qemuppc', 'poky-image-sato')
+runSanityTest(f5, 'qemuppc', 'poky-image-sato')
 runImage(f5, 'qemuppc', 'poky-image-lsb')
-runImage(f5, 'netbook', 'poky-image-sato-live')
+runSanityTest(f5, 'qemuppc', 'poky-image-lsb')
+runImage(f5, 'atom-pc', 'poky-image-sato-live')
+#runImage(f5, 'atom-pc', 'poky-image-lsb-live')
 runImage(f5, 'emenlow', 'poky-image-sato-live')
+#runImage(f5, 'emenlow', 'poky-image-lsb-live')
 f5.addStep(ShellCommand, description=["Setting", "SDKMACHINE=i586"], command="echo 'Setting SDKMACHINE=i586'", timeout=10)
 defaultenv['SDKMACHINE'] = 'i586'
-runImage(f5, 'qemux86', 'meta-toolchain')
-runImage(f5, 'qemuarm', 'meta-toolchain')
-runImage(f5, 'qemumips', 'meta-toolchain')
-runImage(f5, 'qemuppc', 'meta-toolchain')
+runImage(f5, 'qemux86', 'meta-toolchain-sdk')
+runImage(f5, 'qemuarm', 'meta-toolchain-sdk')
+runImage(f5, 'qemumips', 'meta-toolchain-sdk')
+runImage(f5, 'qemuppc', 'meta-toolchain-sdk')
 
 b5 = {'name': "poky-incremental",
-      'slavename': "builder1",
+      'slavename': "builder2",
       'builddir': "poky-incremental",
       'factory': f5
       }
@@ -167,9 +190,18 @@ poky_sched.append(Scheduler(name="Poky Incremental Commit Tester",
                             branch=None, treeStableTimer=120,
                             categories=["poky-incremental"],
                             builderNames=["poky-incremental"]))
+# DELETE THIS if it fixes the double-build issue:
+#poky_sched.append(Scheduler(name="Poky Incremental Tree Stable Timer",
+#                            branch="master", treeStableTimer=120,
+#                            categories=["poky-incremental"],
+#                            builderNames=["poky-incremental"]))
 
 poky_builders.append(b5)
 
+poky_sched.append(Nightly(name="Poky Incremental", branch=None,
+                                 hour=9, minute=00, dayOfWeek=5,
+                                 builderNames=["poky-incremental"]))
+
 ################################################################################
 #
 # Poky Full Builder
@@ -182,6 +214,7 @@ poky_builders.append(b5)
 f10 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'poky-full'
+defaultenv['ENABLE_SWABBER'] = 'false'
 makeCheckoutCopy(f10)
 runPreamble(f10)
 runImage(f10, 'qemux86', 'poky-image-sdk')
@@ -204,8 +237,8 @@ runImage(f10, 'qemuppc', 'poky-image-sdk')
 runImage(f10, 'qemuppc', 'poky-image-sato')
 runImage(f10, 'qemuppc', 'poky-image-lsb')
 runImage(f10, 'qemuppc', 'poky-image-minimal')
-runImage(f10, 'netbook', 'poky-image-sato-live')
-runImage(f10, 'netbook', 'poky-image-minimal-live')
+runImage(f10, 'atom-pc', 'poky-image-sato-live')
+runImage(f10, 'atom-pc', 'poky-image-minimal-live')
 runImage(f10, 'emenlow', 'poky-image-minimal-live')
 runImage(f10, 'emenlow', 'poky-image-sato-live')
 runImage(f10, 'spitz', 'poky-image-minimal')
@@ -232,13 +265,17 @@ runImage(f10, 'beagleboard', 'poky-image-minimal')
 runImage(f10, 'beagleboard', 'poky-image-sato')
 
 b10 = {'name': "poky-full",
-      'slavename': "builder1",
+      'slavename': "builder2",
       'builddir': "poky-full",
       'factory': f10,
       }
 
 poky_builders.append(b10)
 
+#poky_sched.append(Nightly(name="Poky Full", branch=None,
+#                                 hour=23, minute=00,
+#                                 builderNames=["poky-full"]))
+
 ################################################################################
 #
 # Poky World Builder
@@ -253,6 +290,7 @@ makeCheckoutCopy(f15)
 runPreamble(f15)
 defaultenv['DISTRO'] = 'world-builds'
 defaultenv['ABTARGET'] = 'world-builds'
+defaultenv['ENABLE_SWABBER'] = 'false'
 runImage(f15, 'qemux86', 'world')
 runImage(f15, 'qemux86-64', 'world')
 runImage(f15, 'qemuarm', 'world')
@@ -260,7 +298,7 @@ runImage(f15, 'qemumips', 'world')
 runImage(f15, 'qemuppc', 'world')
 
 b15 = {'name': "world-builds",
-      'slavename': "builder1",
+      'slavename': "builder2",
       'builddir': "world-builds",
       'factory': f15
       }
@@ -283,7 +321,8 @@ makeCheckoutCopy(f19)
 runPreamble(f19)
 defaultenv['DISTRO'] = 'poky-bleeding'
 defaultenv['ABTARGET'] = 'poky-bleeding'
-runImage(f19, 'netbook', 'poky-image-sato')
+defaultenv['ENABLE_SWABBER'] = 'false'
+runImage(f19, 'atom-pc', 'poky-image-sato')
 runImage(f19, 'qemux86', 'poky-image-sato')
 runImage(f19, 'qemux86-64', 'poky-image-sato')
 runImage(f19, 'qemuarm', 'poky-image-sato')
@@ -296,17 +335,17 @@ b19 = {'name': "poky-full-bleeding",
       'factory': f19
       }
 
-poky_builders.append(b19)
+#poky_builders.append(b19)
 
-poky_sched.append(Nightly(name="Poky Bleeding", branch=None,
-                                 hour=5, minute=00,
-                                 builderNames=["poky-full-bleeding"]))
+#poky_sched.append(Nightly(name="Poky Bleeding", branch=None,
+#                                 hour=5, minute=00,
+#                                 builderNames=["poky-full-bleeding"]))
 
 ################################################################################
 #
 # Poky Toolchain Nightly Builder
 #
-# Build the toolchain and sdk each night.
+# Build the toolchain and sdk each night
 #
 ################################################################################
 
@@ -315,6 +354,7 @@ makeCheckoutCopy(f20)
 runPreamble(f20)
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'poky-toolchain'
+defaultenv['ENABLE_SWABBER'] = 'false'
 f20.addStep(ShellCommand, description=["Setting", "SDKMACHINE=i586"], command="echo 'Setting SDKMACHINE=i586'", timeout=10)
 defaultenv['SDKMACHINE'] = 'i586'
 runImage(f20, 'qemux86', 'meta-toolchain')
@@ -341,29 +381,83 @@ runImage(f20, 'qemuppc', 'meta-toolchain')
 runImage(f20, 'qemuppc', 'meta-toolchain-sdk')
 
 b20 = {'name': "poky-toolchain",
-      'slavename': "builder1",
+      'slavename': "builder2",
       'builddir': "poky-toolchain",
       'factory': f20
      }
 
 poky_builders.append(b20)
 
-poky_sched.append(Nightly(name="Poky Toolchain", branch=None,
-                                 hour=04, minute=00,
-                                 builderNames=["poky-toolchain"]))
+################################################################################
+#
+# Poky Toolchain Swabber Builder Example Target
+#
+# Build the toolchain and sdk and profile it with swabber.
+#
+################################################################################
+
+f22 = factory.BuildFactory()
+makeCheckoutCopy(f22)
+f22.addStep(Git(repourl="git://git.pokylinux.org/poky-contrib", branch="adevries/swabber", timeout=10000))
+runPreamble(f22)
+defaultenv['DISTRO'] = 'poky'
+defaultenv['ABTARGET'] = 'poky-swabber-test'
+f22.addStep(ShellCommand, description=["Setting", "SDKMACHINE=i586"], command="echo 'Setting SDKMACHINE=i586'", timeout=10)
+defaultenv['SDKMACHINE'] = 'i586'
+f22.addStep(ShellCommand, description=["Setting", "ENABLE_SWABBER"], command="echo 'Setting ENABLE_SWABBER'", timeout=10)
+defaultenv['ENABLE_SWABBER'] = 'true'
+runImage(f22, 'qemux86', 'meta-toolchain')
+runImage(f22, 'qemux86', 'meta-toolchain-sdk')
+runImage(f22, 'qemux86-64', 'meta-toolchain')
+runImage(f22, 'qemux86-64', 'meta-toolchain-sdk')
+runImage(f22, 'qemuarm', 'meta-toolchain')
+runImage(f22, 'qemuarm', 'meta-toolchain-sdk')
+runImage(f22, 'qemumips', 'meta-toolchain')
+runImage(f22, 'qemumips', 'meta-toolchain-sdk')
+runImage(f22, 'qemuppc', 'meta-toolchain')
+runImage(f22, 'qemuppc', 'meta-toolchain-sdk')
+f22.addStep(ShellCommand, description=["Setting", "SDKMACHINE=x86_64"], command="echo 'Setting SDKMACHINE=x86_64'", timeout=10)
+defaultenv['SDKMACHINE'] = 'x86_64'
+runImage(f22, 'qemux86', 'meta-toolchain')
+runImage(f22, 'qemux86', 'meta-toolchain-sdk')
+runImage(f22, 'qemux86-64', 'meta-toolchain')
+runImage(f22, 'qemux86-64', 'meta-toolchain-sdk')
+runImage(f22, 'qemuarm', 'meta-toolchain')
+runImage(f22, 'qemuarm', 'meta-toolchain-sdk')
+runImage(f22, 'qemumips', 'meta-toolchain')
+runImage(f22, 'qemumips', 'meta-toolchain-sdk')
+runImage(f22, 'qemuppc', 'meta-toolchain')
+runImage(f22, 'qemuppc', 'meta-toolchain-sdk')
+swabberTimeStamp = strftime("%Y%m%d%H%M%S")
+swabberTarPath = "/etc/www/vhosts/hostname/swabber-logs/" + swabberTimeStamp + ".tar.bz2"
+f22.addStep(ShellCommand, description=["Compressing", "Swabber Logs"], command="tar cjf " + swabberTarPath + " build/tmp/log", timeout=10000)
+
+b22 = {'name': "poky-swabber-test",
+      'slavename': "builder1",
+      'builddir': "poky-swabber-test",
+      'factory': f22
+     }
+
+poky_builders.append(b22)
+
+#poky_sched.append(Nightly(name="Poky Swabber Test", branch=None,
+#                                 hour=05, minute=00,
+#                                 builderNames=["poky-swabber-test"])) 	
+
 
 ################################################################################
 #
 # Poky distro-testing Builder
 #
 # Build the distro/master branch from poky-contrib to run basic tests on
-# upcoming distro team changes.
+# upcoming distro team changes
 #
 ################################################################################
 
 f25 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'distro-testing'
+defaultenv['ENABLE_SWABBER'] = 'false'
 f25.addStep(Git(repourl="git://git.pokylinux.org/poky-contrib.git", mode="clobber", branch="distro/master", timeout=10000, retry=(5, 3)))
 runPreamble(f25)
 runImage(f25, 'qemuarm', 'poky-image-minimal')
@@ -388,13 +482,17 @@ runImage(f25, 'qemux86-64', 'poky-image-sato')
 runImage(f25, 'qemux86-64', 'poky-image-sdk')
 
 f25 = {'name': "distro-testing",
-      'slavename': "builder1",
+      'slavenames': ["builder2", "builder1"],
       'builddir': "distro-testing",
       'factory': f25,
      }
 
 poky_builders.append(f25)
 
+#poky_sched.append(Nightly(name="Distro Testing", branch="distro/master",
+#                                 hour=4, minute=30,
+#                                 builderNames=["distro-testing"]))
+
 ################################################################################
 #
 # Poky Source URI Checker
@@ -406,12 +504,13 @@ poky_builders.append(f25)
 f30 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'poky-uricheck'
+defaultenv['ENABLE_SWABBER'] = 'false'
 backupWorkDir(f30)
 makeCheckoutCopy(f30)
 restoreWorkDir(f30)
 runPreamble(f30)
 runImage(f30, 'qemux86', 'world -c checkuriall')
-runImage(f30, 'netbook', 'world -c checkuriall')
+runImage(f30, 'atom-pc', 'world -c checkuriall')
 
 b30 = {'name': "poky-uricheck",
       'slavename': "builder1",
@@ -428,7 +527,7 @@ poky_sched.append(Nightly(name="URI Checker", branch=None,
 ################################################################################
 #
 # Poky Contrib Minimal Builder
-# 
+#
 # Allows users to trigger minimal, quick builds of their poky-contrib branch.
 #
 ################################################################################
@@ -436,21 +535,23 @@ poky_sched.append(Nightly(name="URI Checker", branch=None,
 f40 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'poky-contrib-minimal'
+defaultenv['ENABLE_SWABBER'] = 'false'
 f40.addStep(Git(repourl="git://git.pokylinux.org/poky-contrib.git", mode="clobber", timeout=10000, retry=(5, 3)))
 runPreamble(f40)
 runImage(f40, 'qemuarm', 'poky-image-minimal')
-runImage(f40, 'qemuarm', 'poky-image-lsb')
+#runImage(f40, 'qemuarm', 'poky-image-lsb')
 runImage(f40, 'qemumips', 'poky-image-minimal')
-runImage(f40, 'qemumips', 'poky-image-lsb')
+#runImage(f40, 'qemumips', 'poky-image-lsb')
 runImage(f40, 'qemuppc', 'poky-image-minimal')
-runImage(f40, 'qemuppc', 'poky-image-lsb')
+#runImage(f40, 'qemuppc', 'poky-image-lsb')
 runImage(f40, 'qemux86', 'poky-image-minimal')
-runImage(f40, 'qemux86', 'poky-image-lsb')
+#runImage(f40, 'qemux86', 'poky-image-lsb')
 runImage(f40, 'qemux86-64', 'poky-image-minimal')
-runImage(f40, 'qemux86-64', 'poky-image-lsb')
+#runImage(f40, 'qemux86-64', 'poky-image-lsb')
 
 b40 = {'name': "poky-contrib-minimal",
-      'slavename': "builder1",
+#      'slavenames': ["builder2", "builder1"], # too little disk space on builder2
+      'slavenames': ["builder1", "builder2"],
       'builddir': "poky-contrib-minimal",
       'factory': f40,
       }
@@ -468,6 +569,7 @@ poky_builders.append(b40)
 f45 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'poky-contrib-full'
+defaultenv['ENABLE_SWABBER']= 'false'
 f45.addStep(Git(repourl="git://git.pokylinux.org/poky-contrib.git", mode="clobber", timeout=10000, retry=(5, 3)))
 runPreamble(f45)
 runImage(f45, 'qemuarm', 'poky-image-lsb')
@@ -515,55 +617,98 @@ poky_builders.append(b45)
 # This build performs the poky builds needed for a nightly release suitable
 # for submission to QA.
 #
-################################################################################
+###############################################################################
 
 f50 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
 defaultenv['ABTARGET'] = 'nightly-release'
+defaultenv['ENABLE_SWABBER'] = 'false'
 makeCheckoutCopy(f50)
-runPreamble(f50)
+f50.addStep(ShellCommand, description="Run preamble", command="poky-autobuild-preamble /etc/www/vhosts/hostname/nightly", timeout=60)
 runImage(f50, 'qemux86', 'poky-image-sdk')
 runImage(f50, 'qemux86', 'poky-image-sato')
+runSanityTest(f50, 'qemux86', 'poky-image-sato')
 runImage(f50, 'qemux86', 'poky-image-lsb')
+runSanityTest(f50, 'qemux86', 'poky-image-lsb')
 runImage(f50, 'qemux86', 'poky-image-minimal')
+runSanityTest(f50, 'qemux86', 'poky-image-minimal')
+f50.addStep(ShellCommand, description="Copying qemux86 build output", command="poky-autobuild-copy-images qemux86 nightly /etc/www/vhosts/hostname/", timeout=600)
 runImage(f50, 'qemux86-64', 'poky-image-sdk')
 runImage(f50, 'qemux86-64', 'poky-image-sato')
+runSanityTest(f50, 'qemux86-64', 'poky-image-sato')
 runImage(f50, 'qemux86-64', 'poky-image-lsb')
+runSanityTest(f50, 'qemux86-64', 'poky-image-lsb')
 runImage(f50, 'qemux86-64', 'poky-image-minimal')
+runSanityTest(f50, 'qemux86-64', 'poky-image-minimal')
+f50.addStep(ShellCommand, description="Copying qemux86-64 build output", command="poky-autobuild-copy-images qemux86-64 nightly /etc/www/vhosts/hostname/", timeout=600)
 runImage(f50, 'qemuarm', 'poky-image-sdk')
 runImage(f50, 'qemuarm', 'poky-image-sato')
+runSanityTest(f50, 'qemuarm', 'poky-image-sato')
 runImage(f50, 'qemuarm', 'poky-image-lsb')
+runSanityTest(f50, 'qemuarm', 'poky-image-lsb')
 runImage(f50, 'qemuarm', 'poky-image-minimal')
+runSanityTest(f50, 'qemuarm', 'poky-image-minimal')
+f50.addStep(ShellCommand, description="Copying qemuarm build output", command="poky-autobuild-copy-images qemuarm nightly /etc/www/vhosts/hostname/", timeout=600)
 runImage(f50, 'qemumips', 'poky-image-sdk')
 runImage(f50, 'qemumips', 'poky-image-sato')
+runSanityTest(f50, 'qemumips', 'poky-image-sato')
 runImage(f50, 'qemumips', 'poky-image-lsb')
+runSanityTest(f50, 'qemumips', 'poky-image-lsb')
 runImage(f50, 'qemumips', 'poky-image-minimal')
+runSanityTest(f50, 'qemumips', 'poky-image-minimal')
+f50.addStep(ShellCommand, description="Copying qemumips build output", command="poky-autobuild-copy-images qemumips nightly /etc/www/vhosts/hostname/", timeout=600)
 runImage(f50, 'qemuppc', 'poky-image-sdk')
 runImage(f50, 'qemuppc', 'poky-image-sato')
+runSanityTest(f50, 'qemuppc', 'poky-image-sato')
 runImage(f50, 'qemuppc', 'poky-image-lsb')
+runSanityTest(f50, 'qemuppc', 'poky-image-lsb')
 runImage(f50, 'qemuppc', 'poky-image-minimal')
+runSanityTest(f50, 'qemuppc', 'poky-image-minimal')
+f50.addStep(ShellCommand, description="Copying qemuppc build output", command="poky-autobuild-copy-images qemuppc nightly /etc/www/vhosts/hostname/", timeout=600)
 runImage(f50, 'emenlow', 'poky-image-sdk-live')
 runImage(f50, 'emenlow', 'poky-image-minimal-live')
 runImage(f50, 'emenlow', 'poky-image-sato-live')
-runImage(f50, 'netbook', 'poky-image-sdk-live')
-runImage(f50, 'netbook', 'poky-image-minimal-live')
-runImage(f50, 'netbook', 'poky-image-sato-live')
-f50.addStep(ShellCommand, description=["Setting", "SDKMACHINE=i586"], command="echo 'Setting SDKMACHINE=i586'", timeout=10)
+f50.addStep(ShellCommand, description="Copying emenlow build output", command="poky-autobuild-copy-images emenlow nightly /etc/www/vhosts/hostname/", timeout=600)
+runImage(f50, 'beagleboard', 'poky-image-sato')
+runImage(f50, 'beagleboard', 'poky-image-minimal')
+runImage(f50, 'beagleboard', 'poky-image-sdk')
+f50.addStep(ShellCommand, description="Copying beagleboard build output", command="poky-autobuild-copy-images beagleboard nightly /etc/www/vhosts/hostname/", timeout=600)
+runImage(f50, 'mpc8315e-rdb', 'poky-image-minimal')
+runImage(f50, 'mpc8315e-rdb', 'poky-image-sdk')
+f50.addStep(ShellCommand, description="Copying mpc8315e-rdb build output", command="poky-autobuild-copy-images mpc8315e-rdb nightly /etc/www/vhosts/hostname/",  timeout=600)
+runImage(f50, 'routerstationpro', 'poky-image-minimal')
+runImage(f50, 'routerstationpro', 'poky-image-sdk')
+f50.addStep(ShellCommand, description="Copying routerstationpro build output", command="poky-autobuild-copy-images routerstationpro nightly /etc/www/vhosts/hostname/",  timeout=600)
+runImage(f50, 'atom-pc', 'poky-image-sdk-live')
+runImage(f50, 'atom-pc', 'poky-image-minimal-live')
+runImage(f50, 'atom-pc', 'poky-image-sato-live')
+f50.addStep(ShellCommand, description="Copying atom-pc build output", command="poky-autobuild-copy-images atom-pc nightly /etc/www/vhosts/hostname/", timeout=600)
+f50.addStep(ShellCommand, description="Setting SDKMACHINE=i586", command="echo 'Setting SDKMACHINE=i586'", timeout=10)
 defaultenv['SDKMACHINE'] = 'i586'
-runImage(f50, 'qemux86', 'meta-toolchain')
-runImage(f50, 'qemux86-64', 'meta-toolchain')
-runImage(f50, 'qemuarm', 'meta-toolchain')
-runImage(f50, 'qemumips', 'meta-toolchain')
-runImage(f50, 'qemuppc', 'meta-toolchain')
-f50.addStep(ShellCommand, description=["Setting", "SDKMACHINE=x86_64"], command="echo 'Setting SDKMACHINE=x86_64'", timeout=10)
+runImage(f50, 'qemux86', 'meta-toolchain-sdk')
+runImage(f50, 'qemux86-64', 'meta-toolchain-sdk')
+runImage(f50, 'qemuarm', 'meta-toolchain-sdk')
+runImage(f50, 'qemumips', 'meta-toolchain-sdk')
+runImage(f50, 'qemuppc', 'meta-toolchain-sdk')
+f50.addStep(ShellCommand, description="Setting SDKMACHINE=x86_64", command="echo 'Setting SDKMACHINE=x86_64'", timeout=10)
 defaultenv['SDKMACHINE'] = 'x86_64'
-runImage(f50, 'qemux86', 'meta-toolchain')
-runImage(f50, 'qemux86-64', 'meta-toolchain')
-runImage(f50, 'qemuarm', 'meta-toolchain')
-runImage(f50, 'qemumips', 'meta-toolchain')
-runImage(f50, 'qemuppc', 'meta-toolchain')
-f50.addStep(ShellCommand, description=["Saving", "build", "output", "(nightly)"], command="poky-autobuild-generate-release nightly /srv/www/vhosts/autobuilder.pokylinux.org/", timeout=1800)
-f50.addStep(ShellCommand, description=["Saving", "build", "output", "(weekly)"], command="poky-autobuild-generate-release weekly /srv/www/vhosts/autobuilder.pokylinux.org/", timeout=10)
+runImage(f50, 'qemux86', 'meta-toolchain-sdk')
+runImage(f50, 'qemux86-64', 'meta-toolchain-sdk')
+runImage(f50, 'qemuarm', 'meta-toolchain-sdk')
+runImage(f50, 'qemumips', 'meta-toolchain-sdk')
+runImage(f50, 'qemuppc', 'meta-toolchain-sdk')
+f50.addStep(ShellCommand, description="Copying toolchain-x86-64 build output", command="poky-autobuild-copy-images toolchain nightly /etc/www/vhosts/hostname/", timeout=600)
+f50.addStep(ShellCommand, description="Generating Poky release tarball", command="poky-autobuild-generate-sources-tarball nightly 4.1pre", timeout=120)
+f50.addStep(ShellCommand, description="Copying Poky release tarball", command="poky-autobuild-copy-images poky-sources nightly /etc/www/vhosts/hostname/", timeout=60)
+f50.addStep(ShellCommand, description="Syncing shared state cache to mirror", command="poky-update-shared-state-prebuilds", timeout=2400)
+f50.addStep(ShellCommand, description="Copying shared state cache", command="poky-autobuild-copy-images sstate nightly /etc/www/vhosts/hostname/", timeout=2400)
+f50.addStep(ShellCommand, description="Copying RPM feed output", command="poky-autobuild-copy-images rpm nightly /etc/www/vhosts/hostname/", timeout=1800)
+f50.addStep(ShellCommand, description="Cloning eclipse-poky git repo", command="poky-eclipse-plugin-clone-repo", timeout=300)
+f50.addStep(ShellCommand, description="Copying eclipse build tools", command="poky-eclipse-plugin-copy-buildtools combo", timeout=120)
+f50.addStep(ShellCommand, description="Building eclipse plugin", command="poky-eclipse-plugin-build combo", timeout=120)
+f50.addStep(ShellCommand, description="Copying eclipse plugin output", command="poky-autobuild-copy-images eclipse-plugin nightly /etc/www/vhosts/hostname/", timeout=60)
+f50.addStep(ShellCommand, description="Saving build output (weekly)", command="poky-autobuild-generate-release weekly /etc/www/vhosts/hostname/", timeout=10)
+f50.addStep(ShellCommand, description="Creating CURRENT link", command="poky-autobuild-generate-release nightly /etc/www/vhosts/hostname/ current", timeout=20)
 
 b50 = {'name': "nightly-release",
       'slavename': "builder1",
@@ -573,70 +718,174 @@ b50 = {'name': "nightly-release",
 
 poky_builders.append(b50)
 
-poky_sched.append(Nightly(name="Nightly Release", branch=None,
-                                 hour=10, minute=00,
-                                 builderNames=["nightly-release"]))
+#poky_sched.append(Nightly(name="Nightly Release", branch=None,
+#                                 hour=01, minute=00,
+#                                 builderNames=["nightly-release"]))
 
 ################################################################################
 #
-# Milestone Release Builder
+# Eclipse Plugin Builder
 #
-# This build performs the poky builds needed for a milestone release suitable
-# for submission to QA.
+# This builds the eclipse plugin. This is a temporary area until this
+# gets merged into the nightly & milestone builds
+#
+################################################################################
+
+f61 = factory.BuildFactory()
+f61.addStep(Git(repourl="git://git.pokylinux.org/eclipse-poky.git", mode="copy", timeout=10000, retry=(5, 3)))
+f61.addStep(ShellCommand, description=["Copying", "eclipse", "build", "tools"], command="poky-eclipse-plugin-copy-buildtools standalone", timeout=120)
+f61.addStep(ShellCommand, description=["Building", "eclipse", "plugin"], command="poky-eclipse-plugin-build standalone", timeout=120)
+f61.addStep(ShellCommand, description=["Copying", "eclipse", "plugin", "output"], command="poky-eclipse-plugin-copy-output", timeout=120)
+
+b61 = {'name': "eclipse-plugin",
+      'slavename': "builder1",
+      'builddir': "eclipse-plugin",
+      'factory': f61,
+      }
+
+poky_builders.append(b61)
+
+################################################################################
+#
+# Milestone External Release Builder
+#
+# This build performs some of the poky builds needed for a milestone release
+# suitable for submission to QA. It is split up to allow the remaining builds
+# to run in parallel on the other buildslave.
 #
 ################################################################################
 
-f60 = factory.BuildFactory()
+f65 = factory.BuildFactory()
 defaultenv['DISTRO'] = 'poky'
-defaultenv['ABTARGET'] = 'milestone-release'
-f60.addStep(Git(repourl="git://git.pokylinux.org/poky-contrib.git", branch="builds/milestone", mode="copy", timeout=10000, retry=(5, 3)))
-runPreamble(f60)
-runImage(f60, 'qemux86', 'poky-image-sdk')
-runImage(f60, 'qemux86', 'poky-image-sato')
-runImage(f60, 'qemux86', 'poky-image-lsb')
-runImage(f60, 'qemux86', 'poky-image-minimal')
-runImage(f60, 'qemux86-64', 'poky-image-sdk')
-runImage(f60, 'qemux86-64', 'poky-image-sato')
-runImage(f60, 'qemux86-64', 'poky-image-lsb')
-runImage(f60, 'qemux86-64', 'poky-image-minimal')
-runImage(f60, 'qemuarm', 'poky-image-sdk')
-runImage(f60, 'qemuarm', 'poky-image-sato')
-runImage(f60, 'qemuarm', 'poky-image-lsb')
-runImage(f60, 'qemuarm', 'poky-image-minimal')
-runImage(f60, 'qemumips', 'poky-image-sdk')
-runImage(f60, 'qemumips', 'poky-image-sato')
-runImage(f60, 'qemumips', 'poky-image-lsb')
-runImage(f60, 'qemumips', 'poky-image-minimal')
-runImage(f60, 'qemuppc', 'poky-image-sdk')
-runImage(f60, 'qemuppc', 'poky-image-sato')
-runImage(f60, 'qemuppc', 'poky-image-lsb')
-runImage(f60, 'qemuppc', 'poky-image-minimal')
-runImage(f60, 'emenlow', 'poky-image-sdk-live')
-runImage(f60, 'emenlow', 'poky-image-minimal-live')
-runImage(f60, 'emenlow', 'poky-image-sato-live')
-runImage(f60, 'netbook', 'poky-image-sdk-live')
-runImage(f60, 'netbook', 'poky-image-minimal-live')
-runImage(f60, 'netbook', 'poky-image-sato-live')
-f60.addStep(ShellCommand, description=["Setting", "SDKMACHINE=i586"], command="echo 'Setting SDKMACHINE=i586'", timeout=10)
+defaultenv['ABTARGET'] = 'milestone-external'
+defaultenv['ENABLE_SWABBER'] = 'false'
+f65.addStep(Git(repourl="git://git.pokylinux.org/poky-contrib.git", branch="builds/milestone", mode="copy", timeout=10000, retry=(5, 3)))
+f65.addStep(ShellCommand, description="Run preamble", command="poky-autobuild-preamble /etc/www/vhosts/hostname/milestone", timeout=60)
+runImage(f65, 'qemux86', 'poky-image-sdk')
+runImage(f65, 'qemux86', 'poky-image-sato')
+runSanityTest(f65, 'qemux86', 'poky-image-sato')
+runImage(f65, 'qemux86', 'poky-image-lsb')
+runImage(f65, 'qemux86', 'poky-image-minimal')
+runSanityTest(f65, 'qemux86', 'poky-image-minimal')
+f65.addStep(ShellCommand, description="Copying qemux86 build output", command="poky-autobuild-copy-images qemux86 milestone /etc/www/vhosts/hostname/", timeout=600)
+runImage(f65, 'qemuarm', 'poky-image-sdk')
+runImage(f65, 'qemuarm', 'poky-image-sato')
+runSanityTest(f65, 'qemuarm', 'poky-image-sato')
+runImage(f65, 'qemuarm', 'poky-image-lsb')
+runImage(f65, 'qemuarm', 'poky-image-minimal')
+runSanityTest(f65, 'qemuarm', 'poky-image-minimal')
+f65.addStep(ShellCommand, description="Copying qemuarm build output", command="poky-autobuild-copy-images qemuarm milestone /etc/www/vhosts/hostname/", timeout=600)
+runImage(f65, 'qemumips', 'poky-image-sdk')
+runImage(f65, 'qemumips', 'poky-image-sato')
+runSanityTest(f65, 'qemumips', 'poky-image-sato')
+runImage(f65, 'qemumips', 'poky-image-lsb')
+runImage(f65, 'qemumips', 'poky-image-minimal')
+runSanityTest(f65, 'qemumips', 'poky-image-minimal')
+f65.addStep(ShellCommand, description="Copying qemumips build output", command="poky-autobuild-copy-images qemumips milestone /etc/www/vhosts/hostname/", timeout=600)
+runImage(f65, 'qemuppc', 'poky-image-sdk')
+runImage(f65, 'qemuppc', 'poky-image-sato')
+runSanityTest(f65, 'qemuppc', 'poky-image-sato')
+runImage(f65, 'qemuppc', 'poky-image-lsb')
+runImage(f65, 'qemuppc', 'poky-image-minimal')
+runSanityTest(f65, 'qemuppc', 'poky-image-minimal')
+f65.addStep(ShellCommand, description="Copying qemuppc build output", command="poky-autobuild-copy-images qemuppc milestone /etc/www/vhosts/hostname/", timeout=600)
+runImage(f65, 'beagleboard', 'poky-image-sato')
+runImage(f65, 'beagleboard', 'poky-image-minimal')
+runImage(f65, 'beagleboard', 'poky-image-sdk')
+f65.addStep(ShellCommand, description="Copying beagleboard build output", command="poky-autobuild-copy-images beagleboard milestone /etc/www/vhosts/hostname/", timeout=600)
+runImage(f65, 'mpc8315e-rdb', 'poky-image-minimal')
+runImage(f65, 'mpc8315e-rdb', 'poky-image-sdk')
+f65.addStep(ShellCommand, description="Copying mpc8315e-rdb build output", command="poky-autobuild-copy-images mpc8315e-rdb milestone /etc/www/vhosts/hostname/",  timeout=600)
+runImage(f65, 'routerstationpro', 'poky-image-minimal')
+runImage(f65, 'routerstationpro', 'poky-image-sdk')
+f65.addStep(ShellCommand, description="Copying routerstationpro build output", command="poky-autobuild-copy-images routerstationpro milestone /etc/www/vhosts/hostname/",  timeout=600)
+f65.addStep(ShellCommand, description="Setting SDKMACHINE=i586", command="echo 'Setting SDKMACHINE=i586'", timeout=10)
 defaultenv['SDKMACHINE'] = 'i586'
-runImage(f60, 'qemux86', 'meta-toolchain')
-runImage(f60, 'qemux86-64', 'meta-toolchain')
-runImage(f60, 'qemuarm', 'meta-toolchain')
-runImage(f60, 'qemumips', 'meta-toolchain')
-runImage(f60, 'qemuppc', 'meta-toolchain')
-f60.addStep(ShellCommand, description=["Setting", "SDKMACHINE=x86_64"], command="echo 'Setting SDKMACHINE=x86_64'", timeout=10)
+runImage(f65, 'qemux86', 'meta-toolchain-sdk')
+runImage(f65, 'qemuarm', 'meta-toolchain-sdk')
+runImage(f65, 'qemumips', 'meta-toolchain-sdk')
+runImage(f65, 'qemuppc', 'meta-toolchain-sdk')
+f65.addStep(ShellCommand, description="Setting SDKMACHINE=x86_64", command="echo 'Setting SDKMACHINE=x86_64'", timeout=10)
 defaultenv['SDKMACHINE'] = 'x86_64'
-runImage(f60, 'qemux86', 'meta-toolchain')
-runImage(f60, 'qemux86-64', 'meta-toolchain')
-runImage(f60, 'qemuarm', 'meta-toolchain')
-runImage(f60, 'qemumips', 'meta-toolchain')
-runImage(f60, 'qemuppc', 'meta-toolchain')
-f60.addStep(ShellCommand, description=["Saving", "build", "output"], command="poky-autobuild-generate-release milestone /srv/www/vhosts/autobuilder.pokylinux.org/", timeout=1800)
-
-b60 = {'name': "milestone-release",
+runImage(f65, 'qemux86', 'meta-toolchain-sdk')
+runImage(f65, 'qemuarm', 'meta-toolchain-sdk')
+runImage(f65, 'qemumips', 'meta-toolchain-sdk')
+runImage(f65, 'qemuppc', 'meta-toolchain-sdk')
+f65.addStep(ShellCommand, description="Copying toolchain-x86-64 build output", command="poky-autobuild-copy-images toolchain milestone /etc/www/vhosts/hostname/", timeout=600)
+f65.addStep(ShellCommand, description="Generating Poky release tarball", command="poky-autobuild-generate-sources-tarball milestone2 1.0pre builds/milestone", timeout=120)
+f65.addStep(ShellCommand, description="Copying Poky release tarball", command="poky-autobuild-copy-images poky-sources milestone /etc/www/vhosts/hostname/", timeout=60)
+f65.addStep(ShellCommand, description="Copying RPM feed output", command="poky-autobuild-copy-images rpm milestone /etc/www/vhosts/hostname/", timeout=1800)
+f65.addStep(ShellCommand, description="Cloning eclipse-poky git repo", command="poky-eclipse-plugin-clone-repo", timeout=300)
+f65.addStep(ShellCommand, description="Copying eclipse build tools", command="poky-eclipse-plugin-copy-buildtools combo", timeout=120)
+f65.addStep(ShellCommand, description="Building eclipse plugin", command="poky-eclipse-plugin-build combo", timeout=120)
+f65.addStep(ShellCommand, description="Copying eclipse plugin output", command="poky-autobuild-copy-images eclipse-plugin milestone /etc/www/vhosts/hostname/", timeout=60)
+f65.addStep(ShellCommand, description="Creating CURRENT link", command="poky-autobuild-generate-release milestone /etc/www/vhosts/hostname/ current", timeout=20)
+
+b65 = {'name': "milestone-external",
       'slavename': "builder1",
-      'builddir': "milestone-release",
-      'factory': f60,
+      'builddir': "milestone-external",
+      'factory': f65,
       }
 
-poky_builders.append(b60)
+poky_builders.append(b65)
+
+################################################################################
+#
+# Milestone Internal Release Builder
+#
+# This build performs some of the poky builds needed for a milestone release
+# suitable for submission to QA. It is split up to allow the remaining builds
+# to run in parallel on the other buildslave.
+#
+################################################################################
+
+f70 = factory.BuildFactory()
+defaultenv['DISTRO'] = 'poky'
+defaultenv['ABTARGET'] = 'milestone-internal'
+defaultenv['ENABLE_SWABBER'] = 'false'
+f70.addStep(Git(repourl="git://git.pokylinux.org/poky-contrib.git", branch="builds/milestone", mode="copy", timeout=10000, retry=(5, 3)))
+f70.addStep(ShellCommand, description="Run preamble", command="poky-autobuild-preamble /srv/www/vhosts/sitename2/milestone", timeout=60)
+runImage(f70, 'qemux86', 'poky-image-sdk')
+runImage(f70, 'qemux86', 'poky-image-sato')
+runSanityTest(f70, 'qemux86', 'poky-image-sato')
+runImage(f70, 'qemux86', 'poky-image-lsb')
+runImage(f70, 'qemux86', 'poky-image-minimal')
+runSanityTest(f70, 'qemux86', 'poky-image-minimal')
+f70.addStep(ShellCommand, description="Copying qemux86 build output", command="poky-autobuild-copy-images qemux86 milestone /srv/www/vhosts/sitename2/", timeout=600)
+runImage(f70, 'qemux86-64', 'poky-image-sdk')
+runImage(f70, 'qemux86-64', 'poky-image-sato')
+runSanityTest(f70, 'qemux86-64', 'poky-image-sato')
+runImage(f70, 'qemux86-64', 'poky-image-lsb')
+runSanityTest(f70, 'qemux86-64', 'poky-image-lsb')
+runImage(f70, 'qemux86-64', 'poky-image-minimal')
+runSanityTest(f70, 'qemux86-64', 'poky-image-minimal')
+f70.addStep(ShellCommand, description="Copying qemux86-64 build output", command="poky-autobuild-copy-images qemux86-64 milestone /srv/www/vhosts/sitename2/", timeout=600)
+runImage(f70, 'emenlow', 'poky-image-sdk-live')
+runImage(f70, 'emenlow', 'poky-image-minimal-live')
+runImage(f70, 'emenlow', 'poky-image-sato-live')
+f70.addStep(ShellCommand, description="Copying emenlow build output", command="poky-autobuild-copy-images emenlow milestone /srv/www/vhosts/sitename2/", timeout=600)
+runImage(f70, 'atom-pc', 'poky-image-sdk-live')
+runImage(f70, 'atom-pc', 'poky-image-minimal-live')
+runImage(f70, 'atom-pc', 'poky-image-sato-live')
+f70.addStep(ShellCommand, description="Copying atom-pc build output", command="poky-autobuild-copy-images atom-pc milestone /srv/www/vhosts/sitename2/", timeout=600)
+defaultenv['SDKMACHINE'] = 'i586'
+runImage(f70, 'qemux86', 'meta-toolchain-sdk')
+runImage(f70, 'qemux86-64', 'meta-toolchain-sdk')
+f70.addStep(ShellCommand, description="Setting SDKMACHINE=x86_64", command="echo 'Setting SDKMACHINE=x86_64'", timeout=10)
+defaultenv['SDKMACHINE'] = 'x86_64'
+runImage(f70, 'qemux86', 'meta-toolchain-sdk')
+runImage(f70, 'qemux86-64', 'meta-toolchain-sdk')
+f70.addStep(ShellCommand, description="Copying toolchain-x86-64 build output", command="poky-autobuild-copy-images toolchain milestone /srv/www/vhosts/sitename2/", timeout=600)
+f70.addStep(ShellCommand, description="Generating Poky release tarball", command="poky-autobuild-generate-sources-tarball milestone2 1.0pre builds/milestone", timeout=120)
+f70.addStep(ShellCommand, description="Copying Poky release tarball", command="poky-autobuild-copy-images poky-sources milestone /srv/www/vhosts/sitename2/", timeout=60)
+f70.addStep(ShellCommand, description="Copying RPM feed output", command="poky-autobuild-copy-images rpm milestone /srv/www/vhosts/sitename2/", timeout=1800)
+f70.addStep(ShellCommand, description="Creating CURRENT link", command="poky-autobuild-generate-release milestone /srv/www/vhosts/sitename2/ current", timeout=20)
+
+b70 = {'name': "milestone-internal",
+      'slavename': "builder2",
+      'builddir': "milestone-internal",
+      'factory': f70,
+      }
+
+poky_builders.append(b70)
+
diff --git a/scripts/run-on-buildset-success b/scripts/run-on-buildset-success
new file mode 100755
index 0000000..e1428da
--- /dev/null
+++ b/scripts/run-on-buildset-success
@@ -0,0 +1,11 @@
+#!/bin/bash
+#
+# Run the command given as arguments only if the build does not have
+# a 'BuildFailure' file in its build directory.
+
+if [ -e "BuildFailure" ]; then
+	echo "Build failure detected in this build set - NOT running '$@'"
+	exit 0
+fi
+
+$@
-- 
1.7.1


