Return-Path: <fahad.usman@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB97BE01409
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 01:00:23 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id u56so880014wes.39
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 01:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=SuoTA4xGSvuXIEmmEhb/56QmHqKoqso8mviKk/7487s=;
	b=k90Hpp2l6IzHy1AAxDNXeXlpztk8T+WqYKHRQzUDOfECpKWWcEL3/IePnd1YzY/T2N
	VHsvnU4zcotjsc35emwIy1sHqIVI05dJEQSDJFg5mHq/gp3AAsxLg2BHFcMUMZdIqVQ0
	W3mUz3vzorU/LnjmKG3Q+6EWhVda+09matDe/5I5hLz32PdyuctkH2gEhWzMNLFsRQOA
	AoT4mUHkvyNbkY44Qbg95iKotGgiyMOZPN3hPDabX8HDaW0KJAq3Wr5IOzxPPfU8jQdH
	dRVQubo0/2tKgIb/r8kcBR1prIFlosHNf88nMyqAI51753O5KlfxotCY7TJYsxunFaix
	BYhw==
X-Received: by 10.180.108.175 with SMTP id hl15mr12917808wib.19.1369209620436; 
	Wed, 22 May 2013 01:00:20 -0700 (PDT)
Received: from fahad-u1204.mgc.mentorg.com ([110.93.212.98])
	by mx.google.com with ESMTPSA id
	eq15sm27082684wic.4.2013.05.22.01.00.18 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 May 2013 01:00:19 -0700 (PDT)
Sender: Fahad Usman <fahad.usman@gmail.com>
From: Fahad Usman <fahad_usman@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 22 May 2013 13:00:03 +0500
Message-Id: <1369209603-29493-1-git-send-email-fahad_usman@mentor.com>
X-Mailer: git-send-email 1.8.2.3
Subject: [meta-ivi][RFC] packagegroups: restructure the yocto-ivi PGs
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
X-List-Received-Date: Wed, 22 May 2013 08:00:24 -0000

with the current implementation of packagegroups, it's not clear how a
particular recipe map to the GENIVI baseline document.

this scheme remove confusion about which packagegroup a certain recipe belong
to. And provide guidance to the customers about modifying the image. For
instance customers should be careful about replacing specific-p1 components if
they wish to maintain GENIVI compliance.

Signed-off-by: Fahad Usman <fahad_usman@mentor.com>
---
 recipes-yocto-ivi/images/foton-image.bb             |  8 +++++++-
 .../packagegroup-foton-abstract-component-p1.bb     | 21 +++++++++++++++++++++
 ... => packagegroup-foton-abstract-component-p2.bb} | 14 ++++++--------
 .../packagegroup-foton-placeholder-component-p1.bb  | 20 ++++++++++++++++++++
 ... => packagegroup-foton-specific-component-p1.bb} | 21 +++++++--------------
 .../packagegroup-foton-specific-component-p2.bb     | 19 +++++++++++++++++++
 6 files changed, 80 insertions(+), 23 deletions(-)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p1.bb
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p2.bb => packagegroup-foton-abstract-component-p2.bb} (61%)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-foton-placeholder-component-p1.bb
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p1.bb => packagegroup-foton-specific-component-p1.bb} (67%)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p2.bb

diff --git a/recipes-yocto-ivi/images/foton-image.bb b/recipes-yocto-ivi/images/foton-image.bb
index 6532519..f83aaf9 100644
--- a/recipes-yocto-ivi/images/foton-image.bb
+++ b/recipes-yocto-ivi/images/foton-image.bb
@@ -4,6 +4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc
 PV = "4.0.0"
 #PR = "r1"
 
-IMAGE_INSTALL_append = " packagegroup-core-p1 packagegroup-core-p2"
+IMAGE_INSTALL_append = " \
+    packagegroup-foton-abstract-component-p1 \
+    packagegroup-foton-placeholder-component-p1 \
+    packagegroup-foton-specific-component-p2 \
+    packagegroup-foton-abstract-component-p2 \
+    packagegroup-foton-specific-component-p1 \
+"
 
 # Add image specific packages
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p1.bb b/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p1.bb
new file mode 100644
index 0000000..9ff02b2
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p1.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "GENIVI 4.0 (Foton) P1 Abstract components (AC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-foton-abstract-component-p1 \
+    "
+
+ALLOW_EMPTY = "1"
+
+RDEPENDS_${PN} += "\
+    bluez4 \
+    bluez4-systemd \
+    eglibc \
+    layer-management \
+    obex-client \
+    obexd \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb b/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p2.bb
similarity index 61%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
rename to recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p2.bb
index e9b7b86..ac6af13 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p2.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "P2 packages"
+DESCRIPTION = "GENIVI 4.0 (Foton) P2 Abstract components (SC)"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r0"
@@ -6,16 +6,14 @@ PR = "r0"
 inherit packagegroup
 
 PACKAGES = "\
-    packagegroup-core-p2 \
+    packagegroup-foton-abstract-component-p2 \
     "
 
-RDEPENDS_packagegroup-core-p2 = "\
+ALLOW_EMPTY = "1"
+
+
+RDEPENDS_${PN} += "\
     node-state-manager \
     ofono \
     ofono-systemd \
-    pulseaudio-server \
-    wireless-tools \
     "
-
-
-
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-foton-placeholder-component-p1.bb b/recipes-yocto-ivi/packagegroups/packagegroup-foton-placeholder-component-p1.bb
new file mode 100644
index 0000000..fd76884
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-placeholder-component-p1.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "GENIVI 4.0 (Foton) P1 Placeholder components"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-foton-placeholder-component-p1 \
+    "
+
+ALLOW_EMPTY = "1"
+
+
+RDEPENDS_${PN} += "\
+    "
+
+RRECOMMENDS_${PN} = "\
+    packagegroup-xserver-ivi \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb b/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p1.bb
similarity index 67%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
rename to recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p1.bb
index f3ec738..06cf375 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p1.bb
@@ -1,45 +1,38 @@
-DESCRIPTION = "P1 packages"
+DESCRIPTION = "GENIVI 4.0 (Foton) P1 Specific components (SC)"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r1"
+PR = "r0"
 
 inherit packagegroup
 
 PACKAGES = "\
-    packagegroup-core-p1 \
+    packagegroup-foton-specific-component-p1 \
     "
 
-RDEPENDS_packagegroup-core-p1 = "\
+ALLOW_EMPTY = "1"
+
+
+RDEPENDS_${PN} += "\
     kernel-modules \
     audiomanager \
     dlt-daemon \
     dlt-daemon-systemd \
     alsa-lib  \
     alsa-utils \
-    bluez4 \
-    bluez4-systemd \
     connman \
     curl \
     dbus \
     ecryptfs-utils \
-    eglibc \
     fuse \
     gstreamer \
     gst-plugins-good \
     gst-plugins-base \
-    layer-management \
     libusb1 \
     nfs-utils \
     node-startup-controller \
-    obex-client \
-    obexd \
     openssl \
     quota \
     sqlite3 \
     udev \
     wpa-supplicant \
     "
-
-RRECOMMENDS_${PN} = "\
-    packagegroup-xserver-ivi \
-    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p2.bb b/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p2.bb
new file mode 100644
index 0000000..6348ba4
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p2.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "GENIVI 4.0 (Foton) P2 Specific components (SC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-foton-specific-component-p2 \
+    "
+
+ALLOW_EMPTY = "1"
+
+
+RDEPENDS_${PN} += "\
+    pulseaudio-server \
+    wireless-tools \
+    "
+
-- 
1.8.2.3


