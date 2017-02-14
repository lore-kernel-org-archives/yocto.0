Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 129D0E0050B; Tue, 14 Feb 2017 08:58:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A17E7E004A0
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 08:58:51 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id v77so22055294wmv.0
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 08:58:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=o5EZ6rMs73MuC4ZjIdy2mOqsyZxZmSI4wUyOgbL0vWA=;
	b=DNW0YBclzmR1FkMwmel4giOaj8qomWtXk943LXTcqv4pTFQ5Z/ubpVi4Q5D1y0zeXI
	eSYtO+pNSdYcilJ0JJE10MW+EYy+d8Jc4lm1vKWXifILfSjLSBErTr86s/qoR38HyutS
	hUjzmebsg4Yk4fMD0Sr54z0n8wZk6VqgAaS5YBz1KFOb3FErx1XqJNlH7TjFwxzfm73m
	qR0GxuizPR5Svyf5TRSBPqrAMVXcsxy3hWxzaNEWNqn/EddCsMIT05fYOF7FHayxTQHY
	hGUCCxMb0Wtfh8jMjBGjuKfARrfZjakit5CZmn6BGhnz5byCPdalEYsY3N5H2mJTIo7I
	Z76w==
X-Gm-Message-State: AMke39mWf+VszH18BfWYFaCxz3aGiebRQ6iP2nXDBub2M3s5WdtnofslAJt/ra5Tua1pnw==
X-Received: by 10.28.126.12 with SMTP id z12mr4543706wmc.84.1487091529179;
	Tue, 14 Feb 2017 08:58:49 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	a47sm1062303wrc.48.2017.02.14.08.58.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Feb 2017 08:58:48 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 14 Feb 2017 16:58:47 +0000
Message-Id: <20170214165847.15675-1-git@andred.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-swupd][RFC][PATCH] swupd-image.bbclass: split out swupd-client and config specific bits
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
X-List-Received-Date: Tue, 14 Feb 2017 16:58:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

It is useful to be able to integrate swupd-client into an image that
is not itself subject to swupd based processing.

An example would be an initramfs that contains the client, but that
initramfs itself is a regular file in a different (outer) file system
(image). The outer image would be subject to swupd processing, and the
inner initramfs is simply responsible to update the outer file system
during system (re)start.

Having split all swupd-client specific functionality into its own class,
the initramfs image recipe can now inherit the client specific class,
and benefit from correct contents for files in /usr/share/defaults/swupd,
correct public keys, and correct URLs.

Signed-off-by: André Draszik <git@andred.net>
---
 classes/swupd-client.bbclass | 109 ++++++++++++++++++++++++++++++++
 classes/swupd-image.bbclass  | 147 +------------------------------------------
 conf/swupd/swupd-config.inc  |  55 ++++++++++++++++
 3 files changed, 167 insertions(+), 144 deletions(-)
 create mode 100644 classes/swupd-client.bbclass
 create mode 100644 conf/swupd/swupd-config.inc

diff --git a/classes/swupd-client.bbclass b/classes/swupd-client.bbclass
new file mode 100644
index 0000000..f380eb3
--- /dev/null
+++ b/classes/swupd-client.bbclass
@@ -0,0 +1,109 @@
+# Class for swupd client integration -- adds necessary bits to
+# rootfs images that contain the swupd-client, i.e. setting the
+# expected format version, URLs, and public keys.
+#
+# Usage:
+# * inherit this class if you wish to create an image that contains the
+#   swupd-client, but where the image itself is not subject to any
+#   swupd based processing
+#
+# An example would be an initramfs that contains the client, but that
+# initramfs itself is a regular file in a different (outer) file system
+# (image). The outer image would be subject to swupd processing, and the
+# inner initramfs is simply responsible to update the outer file system
+# during system (re)start.
+
+require conf/swupd/swupd-config.inc
+
+PACKAGE_INSTALL_append = " swupd-client-format${SWUPD_TOOLS_FORMAT}"
+
+# The information about where to find version information and actual
+# content is needed in several places:
+# - the swupd client in the image gets configured such that it uses that as default
+# - swupd server needs information about the previous build
+#
+# The version URL determines what the client picks as the version that it updates to.
+# The content URL must have all builds ever produced and is expected to also
+# have the corresponding version information.
+#
+# To build the very first version of an image, set these to empty.
+# Errors while accessing the server (as the non-existent download.example.com)
+# or not having any previous build on that server are fatal. The latter
+# is necessary to detect misconfiguration.
+SWUPD_VERSION_URL ??= "http://download.example.com/updates/my-distro/milestone/${MACHINE}/${SWUPD_IMAGE_PN}"
+SWUPD_CONTENT_URL ??= "http://download.example.com/updates/my-distro/builds/${MACHINE}/${SWUPD_IMAGE_PN}"
+
+# An absolute path for a file containing the SSL certificate that is
+# is to be used for verifying https connections to the version and content
+# derver.
+SWUPD_PINNED_PUBKEY ??= ""
+
+
+# swupd-client checks VERSION_ID, which must match the OS_VERSION
+# used for generating swupd bundles in the current build.
+#
+# We patch this during image creation and exclude OS_VERSION from the
+# dependencies because doing it during the compilation of os-release.bb
+# would trigger a rebuild even if all that changed is the OS_VERSION.
+# It would also affect builds of images where swupd is not active. Both
+# is undesirable.
+#
+# If triggering a rebuild on each OS_VERSION change is desired,
+# then this can be achieved by influencing the os-release package
+# by setting in local.conf:
+# VERSION_ID = "${OS_VERSION}"
+PACKAGE_INSTALL_append = " os-release"
+swupd_patch_os_release () {
+    sed -i -e 's/^VERSION_ID *=.*/VERSION_ID="${OS_VERSION}"/' ${IMAGE_ROOTFS}/usr/lib/os-release
+}
+swupd_patch_os_release[vardepsexclude] = "OS_VERSION"
+ROOTFS_POSTPROCESS_COMMAND += "swupd_patch_os_release; "
+
+
+def hash_swupd_pinned_pubkey(d):
+    pubkey = d.getVar('SWUPD_PINNED_PUBKEY', True)
+    if pubkey:
+        import hashlib
+        bb.parse.mark_dependency(d, pubkey)
+        with open(pubkey, 'rb') as f:
+            hash = hashlib.sha256()
+            hash.update(f.read())
+            return hash.hexdigest()
+    else:
+        return ''
+
+SWUPD_PINNED_PUBKEY_HASH := "${@ hash_swupd_pinned_pubkey(d)}"
+
+# The swupd client must be configured on a per-image basis.
+# Different images might need different settings.
+configure_swupd_client () {
+    # Write default values to the configuration hierarchy (since 3.4.0)
+    install -d ${IMAGE_ROOTFS}/usr/share/defaults/swupd
+    echo "${SWUPD_VERSION_URL}" >> ${IMAGE_ROOTFS}/usr/share/defaults/swupd/versionurl
+    echo "${SWUPD_CONTENT_URL}" >> ${IMAGE_ROOTFS}/usr/share/defaults/swupd/contenturl
+    echo "${SWUPD_FORMAT}" >> ${IMAGE_ROOTFS}/usr/share/defaults/swupd/format
+    # Changing content of the pubkey also changes the hash and thus ensures
+    # that this method and thus do_rootfs run again.
+    #
+    # TODO: does not actually work. Recipe gets reparsed when the file
+    # changes ("bitbake -e ostro-image-swupd | SWUPD_PINNED_PUBKEY_HASH" changes)
+    # but the task  does not get re-executed. Forcing that leads to:
+    #
+    # ERROR: ostro-image-swupd-1.0-r0 do_rootfs: Taskhash mismatch 8762bf20b997ac29dd6793fd11e609c3 versus cb40afac8ca291e31022d5ffd9a9bbac for /work/ostro-os/meta-ostro/recipes-image/images/ostro-image-swupd.bb.do_rootfs
+    # ERROR: Taskhash mismatch 8762bf20b997ac29dd6793fd11e609c3 versus cb40afac8ca291e31022d5ffd9a9bbac for /work/ostro-os/meta-ostro/recipes-image/images/ostro-image-swupd.bb.do_rootfs
+    #
+    # $ bitbake-diffsigs tmp-glibc/stamps/qemux86-ostro-linux/ostro-image-swupd/1.0-r0.do_rootfs.sigdata.c8a9371831f58ce4f8b49a73211f66aa tmp-glibc/stamps/qemux86-ostro-linux/ostro-image-swupd/1.0-r0.do_rootfs.sigdata.cb40afac8ca291e31022d5ffd9a9bbac
+    # basehash changed from 02de100ee7baa348e224f21844fdaa06 to e3bb23a069673a09afee4994522991d3
+    # Variable SWUPD_PINNED_PUBKEY_HASH value changed from 'b9ffbe0963f3f7ab3f3c1af5cd8471c121cb601eb4294ad4b211f1e206746a0a' to '8d172423eb0162feb8c7fb2f2d7da28a6effdf3e95184114c62e6b0efdeae89a'
+    # Taint (by forced/invalidated task) changed from None to 2c8e3b43-5e70-4c96-bf6e-741f0b344731
+    #
+    # There's no sigdata for 8762b. c8a93 is from before changing the file.
+    if [ "${SWUPD_PINNED_PUBKEY_HASH}" ]; then
+        install -d ${IMAGE_ROOTFS}${datadir}/clear/update-ca
+        install -m 0644 '${SWUPD_PINNED_PUBKEY}' ${IMAGE_ROOTFS}${datadir}/clear/update-ca/
+        echo "${datadir}/clear/update-ca/$(basename '${SWUPD_PINNED_PUBKEY}')" > ${IMAGE_ROOTFS}/usr/share/defaults/swupd/pinnedpubkey
+    fi
+    chown -R root:root ${IMAGE_ROOTFS}/usr/share/defaults/swupd
+    chmod 0644 ${IMAGE_ROOTFS}/usr/share/defaults/swupd/*
+}
+ROOTFS_POSTPROCESS_COMMAND_append = " configure_swupd_client;"
diff --git a/classes/swupd-image.bbclass b/classes/swupd-image.bbclass
index 771a416..6810529 100644
--- a/classes/swupd-image.bbclass
+++ b/classes/swupd-image.bbclass
@@ -15,6 +15,8 @@
 #
 # See docs/Guide.md for more information.
 
+inherit swupd-client
+
 # Created for each bundle (including os-core) and the "full" directory,
 # describing files and directories that swupd-server needs to include in the update
 # mechanism (i.e. without SWUPD_FILE_BLACKLIST entries). Used by swupd-server.
@@ -32,69 +34,6 @@ SWUPD_IMAGE_PN = "${@ d.getVar('PN_BASE', True) or d.getVar('PN', True)}"
 # to be published will be in the "www" sub-directory.
 DEPLOY_DIR_SWUPD = "${DEPLOY_DIR}/swupd/${MACHINE}/${SWUPD_IMAGE_PN}"
 
-# The "format" needs to be bumped for different reasons:
-# - the output of the swupd-server changes in a way that
-#   a swupd-client currently installed on devices  will not
-#   understand it (example: changing file names or using
-#   a new compression method for archives)
-# - the content of the distro changes such that a device
-#   cannot update directly to the latest build (example:
-#   the distro changes the boot loader and some swupd postinst
-#   helper which knows about that change must be installed on
-#   the device first before actually switching)
-#
-# meta-swupd handles the first case with SWUPD_TOOLS_FORMAT.
-# The default value matches the default versions of the swupd-server
-# and swupd-client. Distros can override this if they need to pick
-# non-default versions of the tools, but that is not tested.
-#
-# Distros need to handle the second case by preparing and releasing
-# a build that devices can update to (i.e. the version URL the devices
-# check must have that update), then make the incompatible change and
-# in the next build bump the SWUPD_DISTRO_FORMAT.
-#
-# In both cases, SWUPD_FORMAT gets bumped. meta-swupd notices that
-# and then prepares a special transitional update:
-# - the rootfs is configured to use the new SWUUPD_FORMAT and
-#   OS_VERSION
-# - a fake OS_VERSION-1 release is built using a swupd-server that is
-#   compatible with the swupd-client before the bump
-# - the OS_VERSION release then is the first one using the new format
-#
-# This way, devices are forced to update to OS_VERSION-1 because that
-# will forever be the "latest" version for their current format.
-# Once they have updated, the device really is on OS_VERSION, configured
-# to use the new format, and the next update check will see future
-# releases again.
-#
-# For this to work, "swupd-client" should always be invoked without
-# explicit format parameter.
-SWUPD_TOOLS_FORMAT ?= "4"
-SWUPD_DISTRO_FORMAT ?= "0"
-SWUPD_FORMAT = "${@ str(int('${SWUPD_TOOLS_FORMAT}') + int('${SWUPD_DISTRO_FORMAT}')) }"
-IMAGE_INSTALL_append = " swupd-client-format${SWUPD_TOOLS_FORMAT}"
-
-# The information about where to find version information and actual
-# content is needed in several places:
-# - the swupd client in the image gets configured such that it uses that as default
-# - swupd server needs information about the previous build
-#
-# The version URL determines what the client picks as the version that it updates to.
-# The content URL must have all builds ever produced and is expected to also
-# have the corresponding version information.
-#
-# To build the very first version of an image, set these to empty.
-# Errors while accessing the server (as the non-existent download.example.com)
-# or not having any previous build on that server are fatal. The latter
-# is necessary to detect misconfiguration.
-SWUPD_VERSION_URL ??= "http://download.example.com/updates/my-distro/milestone/${MACHINE}/${SWUPD_IMAGE_PN}"
-SWUPD_CONTENT_URL ??= "http://download.example.com/updates/my-distro/builds/${MACHINE}/${SWUPD_IMAGE_PN}"
-
-# An absolute path for a file containing the SSL certificate that is
-# is to be used for verifying https connections to the version and content
-# derver.
-SWUPD_PINNED_PUBKEY ??= ""
-
 # User configurable variables to disable all swupd processing or deltapack
 # generation.
 SWUPD_GENERATE ??= "1"
@@ -102,13 +41,9 @@ SWUPD_DELTAPACK_VERSIONS ??= ""
 
 SWUPD_LOG_FN ??= "bbdebug 1"
 
-# This version number *must* map to VERSION_ID in /etc/os-release and *must* be
-# a non-negative integer that fits in an int.
-OS_VERSION ??= "${DISTRO_VERSION}"
-
 # When doing format changes, this version number is used for the intermediate
 # release. Default is OS_VERSION - 1. There's a separate sanity check for
-# OS_VERSION below, so this code should always work.
+# OS_VERSION in the .inc file, so this code should always work.
 OS_VERSION_INTERIM ?= "${@ ${OS_VERSION} - 1 }"
 
 # We need to preserve xattrs, which works with bsdtar out of the box.
@@ -125,14 +60,6 @@ REQUIRED_DISTRO_FEATURES = "systemd"
 python () {
     import os
 
-    ver = d.getVar('OS_VERSION', True) or 'invalid'
-    try:
-        ver = int(ver)
-    except ValueError:
-        bb.fatal("Invalid value for OS_VERSION (%s), must be a non-negative integer value." % ver)
-    if ver <= 0 or ver > 2147483647:
-        bb.fatal('OS_VERSION outside of valid range (> 0, <= 2147483647): %d' % ver)
-
     havebundles = (d.getVar('SWUPD_BUNDLES', True) or '') != ''
     deploy_dir = d.getVar('DEPLOY_DIR_SWUPD', True)
 
@@ -642,26 +569,6 @@ python swupd_replace_hardlinks () {
 }
 ROOTFS_POSTPROCESS_COMMAND += "swupd_replace_hardlinks; "
 
-# swupd-client checks VERSION_ID, which must match the OS_VERSION
-# used for generating swupd bundles in the current build.
-#
-# We patch this during image creation and exclude OS_VERSION from the
-# dependencies because doing it during the compilation of os-release.bb
-# would trigger a rebuild even if all that changed is the OS_VERSION.
-# It would also affect builds of images where swupd is not active. Both
-# is undesirable.
-#
-# If triggering a rebuild on each OS_VERSION change is desired,
-# then this can be achieved by influencing the os-release package
-# by setting in local.conf:
-# VERSION_ID = "${OS_VERSION}"
-IMAGE_INSTALL_append = " os-release"
-swupd_patch_os_release () {
-    sed -i -e 's/^VERSION_ID *=.*/VERSION_ID="${OS_VERSION}"/' ${IMAGE_ROOTFS}/usr/lib/os-release
-}
-swupd_patch_os_release[vardepsexclude] = "OS_VERSION"
-ROOTFS_POSTPROCESS_COMMAND += "swupd_patch_os_release; "
-
 # Check whether the constructed image contains any dangling symlinks, these
 # are likely to indicate deeper issues.
 # NOTE: you'll almost certainly want to override these for your distro.
@@ -721,51 +628,3 @@ i.e. the link is to a file which only exists at runtime, such as files in /proc,
 SWUPD_IMAGE_SYMLINK_WHITELIST to resolve this error.'
         raise ImageQAFailed(message, swupd_check_dangling_symlinks)
 }
-
-def hash_swupd_pinned_pubkey(d):
-    pubkey = d.getVar('SWUPD_PINNED_PUBKEY', True)
-    if pubkey:
-        import hashlib
-        bb.parse.mark_dependency(d, pubkey)
-        with open(pubkey, 'rb') as f:
-            hash = hashlib.sha256()
-            hash.update(f.read())
-            return hash.hexdigest()
-    else:
-        return ''
-
-SWUPD_PINNED_PUBKEY_HASH := "${@ hash_swupd_pinned_pubkey(d)}"
-
-# The swupd client must be configured on a per-image basis.
-# Different images might need different settings.
-configure_swupd_client () {
-    # Write default values to the configuration hierarchy (since 3.4.0)
-    install -d ${IMAGE_ROOTFS}/usr/share/defaults/swupd
-    echo "${SWUPD_VERSION_URL}" >> ${IMAGE_ROOTFS}/usr/share/defaults/swupd/versionurl
-    echo "${SWUPD_CONTENT_URL}" >> ${IMAGE_ROOTFS}/usr/share/defaults/swupd/contenturl
-    echo "${SWUPD_FORMAT}" >> ${IMAGE_ROOTFS}/usr/share/defaults/swupd/format
-    # Changing content of the pubkey also changes the hash and thus ensures
-    # that this method and thus do_rootfs run again.
-    #
-    # TODO: does not actually work. Recipe gets reparsed when the file
-    # changes ("bitbake -e ostro-image-swupd | SWUPD_PINNED_PUBKEY_HASH" changes)
-    # but the task  does not get re-executed. Forcing that leads to:
-    #
-    # ERROR: ostro-image-swupd-1.0-r0 do_rootfs: Taskhash mismatch 8762bf20b997ac29dd6793fd11e609c3 versus cb40afac8ca291e31022d5ffd9a9bbac for /work/ostro-os/meta-ostro/recipes-image/images/ostro-image-swupd.bb.do_rootfs
-    # ERROR: Taskhash mismatch 8762bf20b997ac29dd6793fd11e609c3 versus cb40afac8ca291e31022d5ffd9a9bbac for /work/ostro-os/meta-ostro/recipes-image/images/ostro-image-swupd.bb.do_rootfs
-    #
-    # $ bitbake-diffsigs tmp-glibc/stamps/qemux86-ostro-linux/ostro-image-swupd/1.0-r0.do_rootfs.sigdata.c8a9371831f58ce4f8b49a73211f66aa tmp-glibc/stamps/qemux86-ostro-linux/ostro-image-swupd/1.0-r0.do_rootfs.sigdata.cb40afac8ca291e31022d5ffd9a9bbac 
-    # basehash changed from 02de100ee7baa348e224f21844fdaa06 to e3bb23a069673a09afee4994522991d3
-    # Variable SWUPD_PINNED_PUBKEY_HASH value changed from 'b9ffbe0963f3f7ab3f3c1af5cd8471c121cb601eb4294ad4b211f1e206746a0a' to '8d172423eb0162feb8c7fb2f2d7da28a6effdf3e95184114c62e6b0efdeae89a'
-    # Taint (by forced/invalidated task) changed from None to 2c8e3b43-5e70-4c96-bf6e-741f0b344731
-    #
-    # There's no sigdata for 8762b. c8a93 is from before changing the file.
-    if [ "${SWUPD_PINNED_PUBKEY_HASH}" ]; then
-        install -d ${IMAGE_ROOTFS}${datadir}/clear/update-ca
-        install -m 0644 '${SWUPD_PINNED_PUBKEY}' ${IMAGE_ROOTFS}${datadir}/clear/update-ca/
-        echo "${datadir}/clear/update-ca/$(basename '${SWUPD_PINNED_PUBKEY}')" > ${IMAGE_ROOTFS}/usr/share/defaults/swupd/pinnedpubkey
-    fi
-    chown -R root:root ${IMAGE_ROOTFS}/usr/share/defaults/swupd
-    chmod 0644 ${IMAGE_ROOTFS}/usr/share/defaults/swupd/*
-}
-ROOTFS_POSTPROCESS_COMMAND_append = " configure_swupd_client;"
diff --git a/conf/swupd/swupd-config.inc b/conf/swupd/swupd-config.inc
new file mode 100644
index 0000000..bb9eaa5
--- /dev/null
+++ b/conf/swupd/swupd-config.inc
@@ -0,0 +1,55 @@
+# The "format" needs to be bumped for different reasons:
+# - the output of the swupd-server changes in a way that
+#   a swupd-client currently installed on devices  will not
+#   understand it (example: changing file names or using
+#   a new compression method for archives)
+# - the content of the distro changes such that a device
+#   cannot update directly to the latest build (example:
+#   the distro changes the boot loader and some swupd postinst
+#   helper which knows about that change must be installed on
+#   the device first before actually switching)
+#
+# meta-swupd handles the first case with SWUPD_TOOLS_FORMAT.
+# The default value matches the default versions of the swupd-server
+# and swupd-client. Distros can override this if they need to pick
+# non-default versions of the tools, but that is not tested.
+#
+# Distros need to handle the second case by preparing and releasing
+# a build that devices can update to (i.e. the version URL the devices
+# check must have that update), then make the incompatible change and
+# in the next build bump the SWUPD_DISTRO_FORMAT.
+#
+# In both cases, SWUPD_FORMAT gets bumped. meta-swupd notices that
+# and then prepares a special transitional update:
+# - the rootfs is configured to use the new SWUUPD_FORMAT and
+#   OS_VERSION
+# - a fake OS_VERSION-1 release is built using a swupd-server that is
+#   compatible with the swupd-client before the bump
+# - the OS_VERSION release then is the first one using the new format
+#
+# This way, devices are forced to update to OS_VERSION-1 because that
+# will forever be the "latest" version for their current format.
+# Once they have updated, the device really is on OS_VERSION, configured
+# to use the new format, and the next update check will see future
+# releases again.
+#
+# For this to work, "swupd-client" should always be invoked without
+# explicit format parameter.
+SWUPD_TOOLS_FORMAT ?= "4"
+SWUPD_DISTRO_FORMAT ?= "0"
+SWUPD_FORMAT = "${@ str(int('${SWUPD_TOOLS_FORMAT}') + int('${SWUPD_DISTRO_FORMAT}')) }"
+
+
+# This version number *must* map to VERSION_ID in /etc/os-release and *must* be
+# a non-negative integer that fits in an int.
+OS_VERSION ??= "${DISTRO_VERSION}"
+
+python () {
+    ver = d.getVar('OS_VERSION', True) or 'invalid'
+    try:
+        ver = int(ver)
+    except ValueError:
+        bb.fatal("Invalid value for OS_VERSION (%s), must be a non-negative integer value." % ver)
+    if ver <= 0 or ver > 2147483647:
+        bb.fatal('OS_VERSION outside of valid range (> 0, <= 2147483647): %d' % ver)
+}
-- 
2.11.0


