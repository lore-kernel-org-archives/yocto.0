Return-Path: <julian@jusst.de>
Received: from smtp.work.de (smtp1.work.de [212.12.40.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B130FE00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 08:41:44 -0700 (PDT)
Received: from [95.119.44.13] (helo=juli-workstation.adnet.avionic-design.de)
	by smtp.work.de with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <julian@jusst.de>)
	id 1TJR4s-0006BN-7F; Wed, 03 Oct 2012 17:41:38 +0200
From: Julian Scheel <julian@jusst.de>
To: yocto@yoctoproject.org
Date: Wed,  3 Oct 2012 17:43:59 +0200
Message-Id: <1349279039-23416-1-git-send-email-julian@jusst.de>
X-Mailer: git-send-email 1.7.12.2
Subject: [PATCH] psplash: Add custom bar image and color options.
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
X-List-Received-Date: Wed, 03 Oct 2012 15:41:44 -0000

To make more use of the option to overwrite the splash image this adds the
possibility to overwrite the bar image as well as the color header file to
make a consistent splash screen even when a different background color is
desired.

Signed-off-by: Julian Scheel <julian@jusst.de>
---
 meta/recipes-core/psplash/psplash_git.bb | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-core/psplash/psplash_git.bb b/meta/recipes-core/psplash/psplash_git.bb
index 7c033e7..85c239c 100644
--- a/meta/recipes-core/psplash/psplash_git.bb
+++ b/meta/recipes-core/psplash/psplash_git.bb
@@ -11,9 +11,15 @@ PR = "r5"
 
 SRC_URI = "git://git.yoctoproject.org/${BPN};protocol=git \
            file://psplash-init \
-           ${SPLASH_IMAGES}"
+           ${SPLASH_IMAGES} \
+           ${BAR_IMAGE} \
+           ${COLORS}"
 
+# Overwrite these to use custom splash images (multiple possible),
+# a custom bar image (only one possible) and a custom color header file.
 SPLASH_IMAGES = "file://psplash-poky-img.h;outsuffix=default"
+BAR_IMAGE = ""
+COLORS = ""
 
 python __anonymous() {
     oldpkgs = d.getVar("PACKAGES", True).split()
@@ -69,6 +75,20 @@ ALTERNATIVE_LINK_NAME[psplash] = "${bindir}/psplash"
 python do_compile () {
     import shutil, commands
 
+    # update the bar file
+    barimage = d.getVar('BAR_IMAGE', True)
+    if barimage:
+        fetcher = bb.fetch2.Fetch([barimage], d)
+        flocal = fetcher.localpath(barimage)
+        shutil.copyfile(flocal, "psplash-bar-img.h");
+
+    # update the colors file
+    colors = d.getVar('COLORS', True)
+    if colors:
+        fetcher = bb.fetch2.Fetch([colors], d)
+        flocal = fetcher.localpath(colors)
+        shutil.copyfile(flocal, "psplash-colors.h");
+
     # Build a separate executable for each splash image
     destfile = "%s/psplash-poky-img.h" % d.getVar('S', True)
     localfiles = d.getVar('SPLASH_LOCALPATHS', True).split()
-- 
1.7.12.2


