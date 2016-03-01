Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4994E00B3A; Tue,  1 Mar 2016 02:02:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D26BE00A27
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 02:02:00 -0800 (PST)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u21A1vFF003247; Tue, 1 Mar 2016 04:01:57 -0600
Received: from adi-pc-linux.emea.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016030104015762-872979 ;
	Tue, 1 Mar 2016 04:01:57 -0600 
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: yocto@yoctoproject.org
Date: Tue, 1 Mar 2016 12:01:30 +0200
Message-Id: <1456826490-14432-1-git-send-email-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.7.1
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 03/01/2016 04:01:57 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 03/01/2016 04:01:58 AM,
	Serialize complete at 03/01/2016 04:01:58 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-03-01_06:, , signatures=0
Subject: [meta-mono][PATCH] recipies-mono: fix LIC_FILES_CHKSUM URI
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
X-List-Received-Date: Tue, 01 Mar 2016 10:02:05 -0000

Build fails with the following error (caused by a typo s/files/file/):

"Failure expanding variable do_fetch[file-checksums], expression was
${@bb.fetch.get_checksum_file_list(d)}  ${@get_lic_checksum_file_list(d)}
which triggered exception IndexError: string index out of range"

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc   | 2 +-
 recipes-mono/dbus-sharp/dbus-sharp.inc             | 2 +-
 recipes-mono/fsharp/fsharp.inc                     | 2 +-
 recipes-mono/gtk-sharp/gtk-sharp-native_2.12.21.bb | 2 +-
 recipes-mono/gtk-sharp/gtk-sharp3_2.99.3.bb        | 2 +-
 recipes-mono/gtk-sharp/gtk-sharp3_2.99.4.bb        | 2 +-
 recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb        | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
index 4679929..9cb2ed4 100644
--- a/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
+++ b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
@@ -3,7 +3,7 @@ DESCRIPTION = "This is a fork of ndesk-dbus-glib, which provides GLib main loop
 SECTION = "devel/mono"
 DEPENDS = "dbus-sharp"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "files://COPYING;md5=ea73672fbe49f67f1c1b44a7e763dab4"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ea73672fbe49f67f1c1b44a7e763dab4"
 
 inherit autotools
 inherit pkgconfig
diff --git a/recipes-mono/dbus-sharp/dbus-sharp.inc b/recipes-mono/dbus-sharp/dbus-sharp.inc
index 6169953..603f261 100644
--- a/recipes-mono/dbus-sharp/dbus-sharp.inc
+++ b/recipes-mono/dbus-sharp/dbus-sharp.inc
@@ -2,7 +2,7 @@ SUMMARY = "C# implementation of D-Bus"
 DESCRIPTION = "An inter-process communication framework that lets applications	interface with the system event bus as well as allowing them to talk to one another in a peer-to-peer configuration."
 SECTION = "devel/mono"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "files://COPYING;md5=09d60852216ea29fdba9ea146513336c"
+LIC_FILES_CHKSUM = "file://COPYING;md5=09d60852216ea29fdba9ea146513336c"
 
 inherit autotools-brokensep
 inherit pkgconfig
diff --git a/recipes-mono/fsharp/fsharp.inc b/recipes-mono/fsharp/fsharp.inc
index f5bdcc1..150c8a4 100644
--- a/recipes-mono/fsharp/fsharp.inc
+++ b/recipes-mono/fsharp/fsharp.inc
@@ -2,7 +2,7 @@ SUMMARY = "F# programming language"
 DESCRIPTION = "F# is a strongly-typed, functional-first programming language for writing simple code to solve complex problems."
 SECTION = "devel/mono"
 LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "files://LICENSE;md5=512efb9375da0bd2fee9e2b9352c08af"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=512efb9375da0bd2fee9e2b9352c08af"
 
 inherit autotools-brokensep
 inherit mono
diff --git a/recipes-mono/gtk-sharp/gtk-sharp-native_2.12.21.bb b/recipes-mono/gtk-sharp/gtk-sharp-native_2.12.21.bb
index 6396b42..eefdc12 100644
--- a/recipes-mono/gtk-sharp/gtk-sharp-native_2.12.21.bb
+++ b/recipes-mono/gtk-sharp/gtk-sharp-native_2.12.21.bb
@@ -4,7 +4,7 @@ inherit pkgconfig native
 
 DEPENDS += " gtk+-native atk-native pango-native cairo-native glib-2.0-native libglade-native "
 
-LIC_FILES_CHKSUM = "files://COPYING;md5=f14599a2f089f6ff8c97e2baa4e3d575"
+LIC_FILES_CHKSUM = "file://COPYING;md5=f14599a2f089f6ff8c97e2baa4e3d575"
 
 SRC_URI[md5sum] = "2e892f265877fe5c16f41b771edb7618"
 SRC_URI[sha256sum] = "ea02da7000433115dcc008102e0c217479c06d74b2c3af5b76527784f933b088"
diff --git a/recipes-mono/gtk-sharp/gtk-sharp3_2.99.3.bb b/recipes-mono/gtk-sharp/gtk-sharp3_2.99.3.bb
index 84f4361..0d99d58 100644
--- a/recipes-mono/gtk-sharp/gtk-sharp3_2.99.3.bb
+++ b/recipes-mono/gtk-sharp/gtk-sharp3_2.99.3.bb
@@ -5,7 +5,7 @@ inherit pkgconfig
 DEPENDS += " gtk+3 atk pango cairo glib-2.0 libglade mono"
 RDEPENDS_${PN} += " perl gtk+3"
 
-LIC_FILES_CHKSUM = "files://COPYING;md5=8754deb904d22254188cb67189b87f19"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8754deb904d22254188cb67189b87f19"
 
 SDIRVERN = "${@gtk_sharp_download_versionN(d)}"
 SEXT ??= "bz2"
diff --git a/recipes-mono/gtk-sharp/gtk-sharp3_2.99.4.bb b/recipes-mono/gtk-sharp/gtk-sharp3_2.99.4.bb
index c5bdbb2..b4988e2 100644
--- a/recipes-mono/gtk-sharp/gtk-sharp3_2.99.4.bb
+++ b/recipes-mono/gtk-sharp/gtk-sharp3_2.99.4.bb
@@ -5,7 +5,7 @@ inherit pkgconfig
 DEPENDS += " gtk+3 atk pango cairo glib-2.0 libglade mono"
 RDEPENDS_${PN} += " perl gtk+3"
 
-LIC_FILES_CHKSUM = "files://COPYING;md5=8754deb904d22254188cb67189b87f19"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8754deb904d22254188cb67189b87f19"
 
 SRCREV = "9a72bb67fff7e4845b7bb430a608282668c3e4da"
 SRC_URI = "git://github.com/mono/gtk-sharp.git;branch=master \
diff --git a/recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb b/recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb
index c72b0bb..d755a92 100644
--- a/recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb
+++ b/recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb
@@ -4,7 +4,7 @@ inherit pkgconfig
 
 DEPENDS += " gtk+ atk pango cairo glib-2.0 libglade"
 
-LIC_FILES_CHKSUM = "files://COPYING;md5=f14599a2f089f6ff8c97e2baa4e3d575"
+LIC_FILES_CHKSUM = "file://COPYING;md5=f14599a2f089f6ff8c97e2baa4e3d575"
 
 SRC_URI[md5sum] = "2e892f265877fe5c16f41b771edb7618"
 SRC_URI[sha256sum] = "ea02da7000433115dcc008102e0c217479c06d74b2c3af5b76527784f933b088"
-- 
2.7.1


