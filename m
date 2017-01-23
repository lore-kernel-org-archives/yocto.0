Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 178A4E00867; Mon, 23 Jan 2017 05:25:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABCE7E0082A
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:25:57 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id j18so109884470ioe.2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=hy8F5JS3juuwzSnrqyG51IPOznrCVHXJdWERxErnoyI=;
	b=J1oYSd2aLC2cHaOMbEowwCMMcjGEZehmYyyXbW+5moYVXka1Q8oA5k78ageTSm4fGQ
	qAc/6Mx1D41ROeZJJ/3vVhTnr2FevsentKf8yImo0/RUK6M090QHWqFzM4CodsNeBeDT
	TfDzHcQTFDHfTp5ro2vYY0ZL0TgPdF9m8uoDwTaMHiQGKJ6QHyhULRI0335oGY3HQu0y
	65Nt9q0UbLYNKHc9JKVz4GUd8Q2b2dsw+WdrVwFn58zc+7/UajmuGT3EZP0WnbfhIJ4n
	WPQTXOLHLL/zIlpKlPZCYXYxEP+gi9FOkrDFDemeoYy6q0JB8poKxQGPH+CfP/rnzvpf
	FdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=hy8F5JS3juuwzSnrqyG51IPOznrCVHXJdWERxErnoyI=;
	b=PHznZ5LDkE9rj5lxgf5KQmKGaEA59BLyAP/O7asmzQYWn7MJ2Dp1cbSuOt+JTqAYyp
	EpzKNFIEIawEkWm9MIpZ8Pzgm72vwcDBiuMRsTDEz7f0cSu4A31nYwjdIAYRAzPdoZ1m
	aV36Bx5SuCARBcK8vl2UBvvgg1Gv10xaSAykW1xNO4gq9FGWK3U0EGNwnXTl+dlz9nwn
	FJbSVC2GQ9JuaRnEE2CYyBXIG+t61qUTxrIRWdo8y7b9asWCQVLBdszMiq/+o/tDLzAl
	SIZtEI43nznUcPVmz+HYIgX3IVsa3Kj70xhvmJz6kQUWoZJu8Qw3EcUV4I4GIAFt+sls
	lq7g==
X-Gm-Message-State: AIkVDXKd8SJ+GH0FF/FZz/nEKdt/ug5jhB34TafHuwB23Uw9u1xBvAxN2pbfy9P2QvI42nDr
X-Received: by 10.107.181.200 with SMTP id e191mr19851927iof.217.1485177956743;
	Mon, 23 Jan 2017 05:25:56 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8FC12.dip0.t-ipconnect.de.
	[93.232.252.18]) by smtp.gmail.com with ESMTPSA id
	l31sm9535727iod.17.2017.01.23.05.25.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 23 Jan 2017 05:25:55 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 14:25:48 +0100
Message-Id: <20170123132548.31798-1-patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Cc: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
Subject: [meta-swupd][PATCH] meta-swupd: support rm_work.bbclass
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
X-List-Received-Date: Mon, 23 Jan 2017 13:25:59 -0000

Sharing data between virtual images only worked when rm_work.bbclass
was not active.

To support rm_work.bbclass, the new do_swupd_list_bundle generates the
necessary information about the rootfs before do_rm_work removes the
rootfs. The output files and the mega image rootfs.tar get excluded
from the cleanup via the new RM_WORK_EXCLUDE_ITEMS.

While at it, some inaccurate comments get removed.

As a side effect of the more granular work split, it is now possible
to make swupd images depend on exactly those bundle images that they
contain. Now it is possible to build a swupd image without first
having to build all swupd images, which might speed up a build (less
work on the critical path).

Fixes: [YOCTO #10799]

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 classes/swupd-image.bbclass | 32 ++++++++++++++++--
 classes/swupdimage.bbclass  |  7 ++--
 lib/swupd/bundles.py        | 81 ++++++++++++++++++++++-----------------------
 lib/swupd/rootfs.py         |  6 ++--
 4 files changed, 76 insertions(+), 50 deletions(-)

diff --git a/classes/swupd-image.bbclass b/classes/swupd-image.bbclass
index 5ba9cfb..78a26ac 100644
--- a/classes/swupd-image.bbclass
+++ b/classes/swupd-image.bbclass
@@ -123,6 +123,8 @@ inherit distro_features_check
 REQUIRED_DISTRO_FEATURES = "systemd"
 
 python () {
+    import os
+
     ver = d.getVar('OS_VERSION', True) or 'invalid'
     try:
         ver = int(ver)
@@ -151,7 +153,15 @@ python () {
         mega_rootfs = d.getVar('IMAGE_ROOTFS', True)
         mega_rootfs = mega_rootfs.replace('/' + pn +'/', '/bundle-%s-mega/' % (pn_base or pn))
         d.setVar('MEGA_IMAGE_ROOTFS', mega_rootfs)
-        d.setVar('MEGA_IMAGE_ARCHIVE', mega_rootfs + '.tar')
+        mega_archive = mega_rootfs + '.tar'
+        workdir = d.getVar('WORKDIR')
+        d.setVar('MEGA_IMAGE_ARCHIVE', mega_archive)
+        mega_archive_rel = os.path.relpath(mega_archive, workdir)
+        if os.path.sep not in mega_archive_rel:
+           # The mega archive is in our work directory and must be
+           # preserved for other virtual images even when rm_work.bbclass
+           # is active.
+           d.appendVar('RM_WORK_EXCLUDE_ITEMS', ' ' + mega_archive_rel)
 
     if pn_base is not None:
         # Swupd images must depend on the mega image having been
@@ -271,6 +281,19 @@ do_image_append () {
     swupd.rootfs.create_rootfs(d)
 }
 
+# The content lists of each rootfs get stored separately and
+# need to be preserved when rm_work.bbclass is active.
+# That information is used by do_stage_swupd_inputs in the
+# base recipe.
+RM_WORK_EXCLUDE_ITEMS += "swupd${SWUPD_ROOTFS_MANIFEST_SUFFIX} swupd${SWUPD_IMAGE_MANIFEST_SUFFIX}"
+python do_swupd_list_bundle () {
+    import swupd.bundles
+
+    swupd.bundles.list_bundle_contents(d)
+}
+do_swupd_list_bundle[depends] = "${@ '${SWUPD_IMAGE_PN}:do_swupd_list_bundle' if '${SWUPD_IMAGE_PN}' != '${PN}' else '' }"
+addtask do_swupd_list_bundle after do_image before do_build
+
 # Some files should not be included in swupd manifests and therefore never be
 # updated on the target (i.e. certain per-device or machine-generated files in
 # /etc when building for a statefule OS). Add the target paths to this list to
@@ -295,9 +318,12 @@ fakeroot python do_stage_swupd_inputs () {
     swupd.bundles.copy_core_contents(d)
     swupd.bundles.copy_bundle_contents(d)
 }
-addtask stage_swupd_inputs after do_image before do_swupd_update
+addtask stage_swupd_inputs after do_swupd_list_bundle before do_swupd_update
 do_stage_swupd_inputs[dirs] = "${SWUPDIMAGEDIR} ${SWUPDMANIFESTDIR} ${DEPLOY_DIR_SWUPD}/maps/"
-do_stage_swupd_inputs[depends] += "virtual/fakeroot-native:do_populate_sysroot"
+do_stage_swupd_inputs[depends] += " \
+    virtual/fakeroot-native:do_populate_sysroot \
+    ${@ ' '.join(['bundle-${SWUPD_IMAGE_PN}-%s:do_swupd_list_bundle' % x for x in '${SWUPD_BUNDLES}'.split()]) } \
+"
 
 python do_fetch_swupd_inputs () {
     import swupd.bundles
diff --git a/classes/swupdimage.bbclass b/classes/swupdimage.bbclass
index 4b64fa9..cb77140 100644
--- a/classes/swupdimage.bbclass
+++ b/classes/swupdimage.bbclass
@@ -56,8 +56,11 @@ python swupdimage_virtclass_handler () {
     # variable triggers the creation of the IMGDEPLOYDIR that we
     # are going to write into.
     e.data.setVar("do_rootfs", "    bb.utils.mkdirhier(d.getVar('IMAGE_ROOTFS', True))\n")
-    # Depend on complete bundle generation in the base image.
-    dep = ' %s:do_stage_swupd_inputs' % pn_base
+    # Depends on the content files from those bundles which contribute to the
+    # image.
+    imageext = d.getVar('IMAGE_BUNDLE_NAME', True) or ''
+    imagebundles = d.getVarFlag('SWUPD_IMAGES', imageext, True).split() if imageext else []
+    dep = ' '.join(['bundle-%s-%s:do_swupd_list_bundle' % (pn_base, x) for x in imagebundles])
     e.data.appendVarFlag('do_image', 'depends', dep)
     # Ensure update stream is generated when only building virt image
     dep = ' %s:do_swupd_update' % pn_base
diff --git a/lib/swupd/bundles.py b/lib/swupd/bundles.py
index 18400b8..24947a8 100644
--- a/lib/swupd/bundles.py
+++ b/lib/swupd/bundles.py
@@ -55,20 +55,13 @@ def copy_core_contents(d):
     d -- the bitbake datastore
     """
     imagedir = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}')
-    corefile = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}/os-core')
+    fulltar = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}/full.tar')
     contentsuffix = d.getVar('SWUPD_ROOTFS_MANIFEST_SUFFIX', True)
-    imagesuffix = d.getVar('SWUPD_IMAGE_MANIFEST_SUFFIX', True)
-    fullfile = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}/full')
-    bundle = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}/full.tar')
-    rootfs = d.getVar('IMAGE_ROOTFS', True)
+    source = d.expand('${WORKDIR}/swupd')
+    target = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}/os-core')
 
-    # Generate a manifest of the bundle content.
     bb.utils.mkdirhier(imagedir)
-    unwanted_files = (d.getVar('SWUPD_FILE_BLACKLIST', True) or '').split()
-    swupd.utils.create_content_manifests(rootfs,
-                                         corefile + contentsuffix,
-                                         corefile + imagesuffix,
-                                         unwanted_files)
+    shutil.copy(source + contentsuffix, target + contentsuffix)
 
     # Create full.tar.gz instead of directory - speeds up
     # do_stage_swupd_input from ~11min in the Ostro CI to 6min.
@@ -77,51 +70,47 @@ def copy_core_contents(d):
     # directly with the rootfs of the main image recipe.
     havebundles = (d.getVar('SWUPD_BUNDLES', True) or '') != ''
     if not havebundles:
-        manifest_files = []
-        for suffix in (contentsuffix, imagesuffix):
-            shutil.copy2(corefile + suffix, fullfile + suffix)
-            manifest_files.extend(swupd.utils.manifest_to_file_list(fullfile + suffix))
+        rootfs = d.getVar('IMAGE_ROOTFS', True)
+        workdir = d.getVar('WORKDIR', True)
         bb.debug(1, "Copying from image rootfs (%s) to full bundle (%s)" % (rootfs, bundle))
-        swupd.path.copyxattrfiles(d, manifest_files, rootfs, bundle, True)
+        swupd.path.copyxattrfiles(d, source + contentsuffix, rootfs, fulltar, True)
     else:
-        mega_rootfs = d.getVar('MEGA_IMAGE_ROOTFS', True)
         mega_archive = d.getVar('MEGA_IMAGE_ARCHIVE', True)
-        swupd.utils.create_content_manifests(mega_rootfs,
-                                             fullfile + contentsuffix,
-                                             fullfile + imagesuffix,
-                                             unwanted_files)
-        os.link(mega_archive, bundle)
+        if os.path.exists(fulltar):
+            os.unlink(fulltar)
+        os.link(mega_archive, fulltar)
 
 
-def stage_image_bundle_contents(d, bundle):
+def list_bundle_contents(d):
     """
-    Determine bundle contents which aren't part of os-core from the mega-image rootfs
+    Determine bundle contents, i.e. the rootfs entries which are
+    in the bundle and (for non-os-core bundles) not in the os-core.
 
-    For an image-based bundle, generate a list of files which exist in the
-    bundle but not os-core and stage those files from the mega image rootfs to
-    the swupd inputs directory
+    Creates the .content.txt files. Must be called when
+    the base image has created its rootfs, because those
+    entries need to be excluded.
 
     d -- the bitbake datastore
-    bundle -- the name of the bundle to be staged
     """
 
     # Construct paths to manifest files and directories
     pn = d.getVar('PN', True)
-    corefile = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}/os-core')
-    bundlefile = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}/') + bundle
+    base_pn = d.getVar('PN_BASE', True)
+    rootfs = d.getVar('IMAGE_ROOTFS', True)
+    contentbase = os.path.join(d.getVar('WORKDIR', True), 'swupd')
     contentsuffix = d.getVar('SWUPD_ROOTFS_MANIFEST_SUFFIX', True)
     imagesuffix = d.getVar('SWUPD_IMAGE_MANIFEST_SUFFIX', True)
-    megarootfs = d.getVar('MEGA_IMAGE_ROOTFS', True)
-    imagesrc = megarootfs.replace('mega', bundle)
 
     # Generate the manifest of the bundle image's file contents,
     # excluding blacklisted files and the content of the os-core.
-    bb.debug(3, 'Writing bundle image file manifests %s' % bundlefile)
     unwanted_files = set((d.getVar('SWUPD_FILE_BLACKLIST', True) or '').split())
-    unwanted_files.update(['/' + x for x in swupd.utils.manifest_to_file_list(corefile + contentsuffix)])
-    swupd.utils.create_content_manifests(imagesrc,
-                                         bundlefile + contentsuffix,
-                                         bundlefile + imagesuffix,
+    if base_pn:
+        parts = d.getVar('WORKDIR', True).rsplit(pn, 1)
+        os_core_content = parts[0] + base_pn + parts[1] + '/swupd' + contentsuffix
+        unwanted_files.update(['/' + x for x in swupd.utils.manifest_to_file_list(os_core_content)])
+    swupd.utils.create_content_manifests(rootfs,
+                                         contentbase + contentsuffix,
+                                         contentbase + imagesuffix,
                                          unwanted_files)
 
 def stage_empty_bundle(d, bundle):
@@ -140,16 +129,24 @@ def copy_bundle_contents(d):
     """
     Stage bundle contents
 
-    Copy the contents of all bundles from the mega image rootfs to the swupd
-    inputs directory to ensure that any image postprocessing which modifies
-    files is reflected in os-core bundle
+    Copy the content list of all existing bundles to the swupd
+    inputs directory. Empty bundles no longer have any content,
+    so an empty directory is enough.
 
     d -- the bitbake datastore
     """
-    bb.debug(1, 'Copying contents of bundles for %s from mega image rootfs' % d.getVar('PN', True))
+    import shutil
+
+    pn = d.getVar('PN', True)
+    bb.debug(1, 'Copying contents of bundles for %s' % pn)
     bundles = (d.getVar('SWUPD_BUNDLES', True) or '').split()
+    workdir = d.getVar('WORKDIR', True)
+    bundledir = d.expand('${SWUPDIMAGEDIR}/${OS_VERSION}')
+    contentsuffix = d.getVar('SWUPD_ROOTFS_MANIFEST_SUFFIX', True)
+    parts = workdir.rsplit(pn, 1)
     for bndl in bundles:
-        stage_image_bundle_contents(d, bndl)
+        shutil.copyfile(parts[0] + ('bundle-%s-%s' % (pn, bndl)) + parts[1] + '/swupd' + contentsuffix,
+                        os.path.join(bundledir, bndl + contentsuffix))
     bundles = (d.getVar('SWUPD_EMPTY_BUNDLES', True) or '').split()
     for bndl in bundles:
         stage_empty_bundle(d, bndl)
diff --git a/lib/swupd/rootfs.py b/lib/swupd/rootfs.py
index b0bed27..41e6e0b 100644
--- a/lib/swupd/rootfs.py
+++ b/lib/swupd/rootfs.py
@@ -39,6 +39,7 @@ def create_rootfs(d):
     imagebundles = d.getVarFlag('SWUPD_IMAGES', imageext, True).split() if imageext else []
     rootfs = d.getVar('IMAGE_ROOTFS', True)
     rootfs_contents = set()
+    parts = d.getVar('WORKDIR', True).rsplit(pn, 1)
     if not pn_base: # the base image
         import subprocess
 
@@ -57,13 +58,12 @@ def create_rootfs(d):
     else: # non-base image, i.e. swupdimage
         manifest = d.expand("${DEPLOY_DIR_SWUPD}/image/${OS_VERSION}/os-core")
         for suffix in suffixes:
-            rootfs_contents.update(manifest_to_file_list(manifest + suffix))
+            rootfs_contents.update(manifest_to_file_list(parts[0] + pn_base + parts[1] + '/swupd' + suffix))
 
     bb.debug(3, 'rootfs_contents has %s entries' % (len(rootfs_contents)))
     for bundle in imagebundles:
-        manifest = d.expand("${DEPLOY_DIR_SWUPD}/image/${OS_VERSION}/") + bundle
         for suffix in suffixes:
-            rootfs_contents.update(manifest_to_file_list(manifest + suffix))
+            rootfs_contents.update(manifest_to_file_list(parts[0] + ('bundle-%s-%s' % (pn_base, bundle)) + parts[1] + '/swupd' + suffix))
 
     mega_archive = d.getVar('MEGA_IMAGE_ARCHIVE', True)
     bb.debug(2, 'Re-copying rootfs contents from mega image %s to %s' % (mega_archive, rootfs))
-- 
2.11.0


