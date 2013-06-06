Return-Path: <fahad.usman@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51A95E0155F
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 21:54:18 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id d49so963611eek.23
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2013 21:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=rdjB68C994oxmarw13aDGzdYQ9o7hFmhGCRkIiETpYo=;
	b=fnk5rl5rSP7s9Vrra14lj0Nvk6YGR5xhfYEjs8Jc9Ust53ZRBP3jTkGjlX93t/9UCf
	Ei0QV6HmA4fRRC9GORnk/dbbfm6N6kzbETiH3flJUlyzq1WuDTg6Y9iMI0to3jNv/o1x
	/e9ys9IQpx+cP8rDQ9dEDdaM0QDDAJ7ldvD9cTuGzq6PbGO2zogjF6mtBe+9xSfnMWXO
	IM4JSrYBMJzdQtTaDnU+BEMv3TKG3XjN/qq36VGlUao7KoVkwJLHXagANzyPmL2wwcUN
	DLcIPThwSVIp28VAwsci5jScEeF4sYmlzSI273tEcgVEW1wq5VQiCNVI3wzqJ1p/4iro
	N+6A==
X-Received: by 10.14.109.71 with SMTP id r47mr32836722eeg.84.1370494456009;
	Wed, 05 Jun 2013 21:54:16 -0700 (PDT)
Received: from fahad-u1204.mgc.mentorg.com ([110.93.212.98])
	by mx.google.com with ESMTPSA id
	p43sm60591110eem.11.2013.06.05.21.54.13 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 05 Jun 2013 21:54:15 -0700 (PDT)
Sender: Fahad Usman <fahad.usman@gmail.com>
From: Fahad Usman <fahad_usman@mentor.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2013 09:54:01 +0500
Message-Id: <1370494441-20953-1-git-send-email-fahad_usman@mentor.com>
X-Mailer: git-send-email 1.8.2.3
Subject: [meta-ivi][PATCH] packagegroups: restructure the yocto-ivi PGs
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
X-List-Received-Date: Thu, 06 Jun 2013 04:54:18 -0000

with the current implementation of packagegroups, it's not clear how a
particular recipe map to the GENIVI baseline document.

this scheme remove confusion about which packagegroup a certain recipe belong
to. And provide guidance to the customers about modifying the image. For
instance customers should be careful about replacing specific-p1 components if
they wish to maintain GENIVI compliance.

Signed-off-by: Fahad Usman <fahad_usman@mentor.com>
---
 recipes-yocto-ivi/images/foton-image.bb             |  8 +++++++-
 .../packagegroup-abstract-component-p1.bb           | 21 +++++++++++++++++++++
 ...-p2.bb => packagegroup-abstract-component-p2.bb} | 14 ++++++--------
 .../packagegroup-placeholder-component-p1.bb        | 20 ++++++++++++++++++++
 ...-p1.bb => packagegroup-specific-component-p1.bb} | 21 +++++++--------------
 .../packagegroup-specific-component-p2.bb           | 19 +++++++++++++++++++
 6 files changed, 80 insertions(+), 23 deletions(-)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p1.bb
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p2.bb => packagegroup-abstract-component-p2.bb} (63%)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-placeholder-component-p1.bb
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p1.bb => packagegroup-specific-component-p1.bb} (67%)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p2.bb

diff --git a/recipes-yocto-ivi/images/foton-image.bb b/recipes-yocto-ivi/images/foton-image.bb
index 6d3077e..0b9a04a 100644
--- a/recipes-yocto-ivi/images/foton-image.bb
+++ b/recipes-yocto-ivi/images/foton-image.bb
@@ -4,6 +4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc
 PV = "4.0.1"
 #PR = "r1"
 
-IMAGE_INSTALL_append = " packagegroup-core-p1 packagegroup-core-p2"
+IMAGE_INSTALL_append = " \
+    packagegroup-abstract-component-p1 \
+    packagegroup-placeholder-component-p1 \
+    packagegroup-specific-component-p2 \
+    packagegroup-abstract-component-p2 \
+    packagegroup-specific-component-p1 \
+"
 
 # Add image specific packages
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p1.bb b/recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p1.bb
new file mode 100644
index 0000000..7730252
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p1.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "GENIVI P1 Abstract components (AC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-abstract-component-p1 \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+RDEPENDS_${PN} += "\
+    bluez4 \
+    bluez4-systemd \
+    eglibc \
+    layer-management \
+    obex-client \
+    obexd \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb b/recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p2.bb
similarity index 63%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
rename to recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p2.bb
index e9b7b86..c9ca67b 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p2.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "P2 packages"
+DESCRIPTION = "GENIVI P2 Abstract components (SC)"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r0"
@@ -6,16 +6,14 @@ PR = "r0"
 inherit packagegroup
 
 PACKAGES = "\
-    packagegroup-core-p2 \
+    packagegroup-abstract-component-p2 \
     "
 
-RDEPENDS_packagegroup-core-p2 = "\
+ALLOW_EMPTY_${PN} = "1"
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
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-placeholder-component-p1.bb b/recipes-yocto-ivi/packagegroups/packagegroup-placeholder-component-p1.bb
new file mode 100644
index 0000000..373266a
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-placeholder-component-p1.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "GENIVI P1 Placeholder components (PC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-placeholder-component-p1 \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+
+RDEPENDS_${PN} += "\
+    "
+
+RRECOMMENDS_${PN} = "\
+    packagegroup-xserver-ivi \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb b/recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p1.bb
similarity index 67%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
rename to recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p1.bb
index 657aa89..731813b 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p1.bb
@@ -1,44 +1,37 @@
-DESCRIPTION = "P1 packages"
+DESCRIPTION = "GENIVI P1 Specific components (SC)"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r1"
+PR = "r0"
 
 inherit packagegroup
 
 PACKAGES = "\
-    packagegroup-core-p1 \
+    packagegroup-specific-component-p1 \
     "
 
-RDEPENDS_packagegroup-core-p1 = "\
+ALLOW_EMPTY_${PN} = "1"
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
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p2.bb b/recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p2.bb
new file mode 100644
index 0000000..18a2abb
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p2.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "GENIVI P2 Specific components (SC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-specific-component-p2 \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+
+RDEPENDS_${PN} += "\
+    pulseaudio-server \
+    wireless-tools \
+    "
+
-- 
1.8.2.3


