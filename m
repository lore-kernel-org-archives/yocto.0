Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBA5FE009B3; Thu, 23 Jul 2015 14:37:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B3A5E0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 14:37:49 -0700 (PDT)
Received: by wicmv11 with SMTP id mv11so41177804wic.0
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 14:37:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=OPB5ElFBOMOiyDZ4zyW+X3Vj1opUzg9kz5lQV8fV3Xg=;
	b=j/j4Om41DKx8mEB8om2GXGOmyUAyvbePO0XsxKD2GJsgE80bVjWATQICl4Hag3TRgu
	OHO+ujNsPWv0zhL/Hca/JsDYeSbEvz2LYzXRpez98ECxtKTzDdRw3vnzvzxFUINlsaIx
	BOzDIqEJKtvdCASFxd+yR3FCrd8jFJxZytyeT33pgflRn0w/i9qX9ZcavbP2//2zRG2P
	AJ7Ux5IY4xEfK3yjY+ipBUM+xgymZyQPgAU7WqsCyd93f8kj3jTOAD9YTQAUtNW6k6po
	ElpWEIXgVjukvtOSRkGNGY/iXTOMSbERc90Xu84jB04u/fYlqmKIcZYVlnr4oWmXcKqw
	QLQw==
X-Gm-Message-State: ALoCoQnVpp033Da4dFreIpOWkmHiKg3uJVo8pTll4wnwVHeOSDrsgsOeNTBTAwRCdkfAz9T3ouZs
X-Received: by 10.194.5.4 with SMTP id o4mr21825166wjo.51.1437687468348;
	Thu, 23 Jul 2015 14:37:48 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id qq1sm9413112wjc.0.2015.07.23.14.37.47
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 23 Jul 2015 14:37:47 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Jul 2015 22:31:52 +0100
Message-Id: <1437687113-22685-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH][yocto-autobuilder 1/2] buildset-config.controller: remove unused meta-qt3 from buildsets
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
X-List-Received-Date: Thu, 23 Jul 2015 21:37:51 -0000

Many buildsets pull in meta-qt3 but don't use it, so remove the layer from those
buildsets.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/minnow.conf               | 3 ---
 buildset-config.controller/nightly-arm.conf          | 3 ---
 buildset-config.controller/nightly-arm64.conf        | 3 ---
 buildset-config.controller/nightly-deb-non-deb.conf  | 3 ---
 buildset-config.controller/nightly-deb.conf          | 3 ---
 buildset-config.controller/nightly-fsl-arm.conf      | 3 ---
 buildset-config.controller/nightly-fsl-ppc.conf      | 3 ---
 buildset-config.controller/nightly-ipk.conf          | 3 ---
 buildset-config.controller/nightly-mips.conf         | 3 ---
 buildset-config.controller/nightly-mips64.conf       | 3 ---
 buildset-config.controller/nightly-multilib.conf     | 3 ---
 buildset-config.controller/nightly-no-x11.conf       | 3 ---
 buildset-config.controller/nightly-non-gpl3.conf     | 3 ---
 buildset-config.controller/nightly-oecore.conf       | 3 ---
 buildset-config.controller/nightly-ppc.conf          | 3 ---
 buildset-config.controller/nightly-rpm-non-rpm.conf  | 3 ---
 buildset-config.controller/nightly-rpm.conf          | 3 ---
 buildset-config.controller/nightly-world-lsb.conf    | 3 ---
 buildset-config.controller/nightly-world-uclibc.conf | 3 ---
 buildset-config.controller/nightly-world.conf        | 3 ---
 buildset-config.controller/nightly-x32.conf          | 3 ---
 buildset-config.controller/nightly-x86-64.conf       | 3 ---
 buildset-config.controller/nightly-x86.conf          | 3 ---
 buildset-config.controller/poky-tiny.conf            | 3 ---
 buildset-config.controller/ptest-x86-64.conf         | 3 ---
 buildset-config.controller/ptest-x86.conf            | 3 ---
 26 files changed, 78 deletions(-)

diff --git a/buildset-config.controller/minnow.conf b/buildset-config.controller/minnow.conf
index 401727a..69eefd5 100644
--- a/buildset-config.controller/minnow.conf
+++ b/buildset-config.controller/minnow.conf
@@ -4,9 +4,6 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
              'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
-             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'branch':'master'}},
diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-config.controller/nightly-arm.conf
index ae73381..d5bc41d 100644
--- a/buildset-config.controller/nightly-arm.conf
+++ b/buildset-config.controller/nightly-arm.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-arm64.conf b/buildset-config.controller/nightly-arm64.conf
index 0b15ec8..16a35fb 100644
--- a/buildset-config.controller/nightly-arm64.conf
+++ b/buildset-config.controller/nightly-arm64.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
                 'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-deb-non-deb.conf b/buildset-config.controller/nightly-deb-non-deb.conf
index 2c2b6d3..716332c 100644
--- a/buildset-config.controller/nightly-deb-non-deb.conf
+++ b/buildset-config.controller/nightly-deb-non-deb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-deb.conf b/buildset-config.controller/nightly-deb.conf
index f6ed955..fa8813c 100644
--- a/buildset-config.controller/nightly-deb.conf
+++ b/buildset-config.controller/nightly-deb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-fsl-arm.conf b/buildset-config.controller/nightly-fsl-arm.conf
index e5ca381..d9e69d3 100644
--- a/buildset-config.controller/nightly-fsl-arm.conf
+++ b/buildset-config.controller/nightly-fsl-arm.conf
@@ -6,9 +6,6 @@ repos: [{'poky':
              'branch':'master'}},
         {'meta-fsl-arm':
             {'repourl':'git://git.yoctoproject.org/meta-fsl-arm',
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-fsl-ppc.conf b/buildset-config.controller/nightly-fsl-ppc.conf
index f506d0e..a66f19f 100644
--- a/buildset-config.controller/nightly-fsl-ppc.conf
+++ b/buildset-config.controller/nightly-fsl-ppc.conf
@@ -6,9 +6,6 @@ repos: [{'poky':
              'branch':'master'}},
         {'meta-fsl-ppc':
             {'repourl':'git://git.yoctoproject.org/meta-fsl-ppc',
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-ipk.conf b/buildset-config.controller/nightly-ipk.conf
index c0cea21..ba78f8c 100644
--- a/buildset-config.controller/nightly-ipk.conf
+++ b/buildset-config.controller/nightly-ipk.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-mips.conf b/buildset-config.controller/nightly-mips.conf
index 7d63da0..2f4413b 100644
--- a/buildset-config.controller/nightly-mips.conf
+++ b/buildset-config.controller/nightly-mips.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-mips64.conf b/buildset-config.controller/nightly-mips64.conf
index 024751d..85cc120 100644
--- a/buildset-config.controller/nightly-mips64.conf
+++ b/buildset-config.controller/nightly-mips64.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-multilib.conf b/buildset-config.controller/nightly-multilib.conf
index ebd4b64..a836974 100644
--- a/buildset-config.controller/nightly-multilib.conf
+++ b/buildset-config.controller/nightly-multilib.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-no-x11.conf b/buildset-config.controller/nightly-no-x11.conf
index 3bffd06..b21b8cb 100644
--- a/buildset-config.controller/nightly-no-x11.conf
+++ b/buildset-config.controller/nightly-no-x11.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-non-gpl3.conf b/buildset-config.controller/nightly-non-gpl3.conf
index 25b6157..864e54d 100644
--- a/buildset-config.controller/nightly-non-gpl3.conf
+++ b/buildset-config.controller/nightly-non-gpl3.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-oecore.conf b/buildset-config.controller/nightly-oecore.conf
index 1202934..d52cc57 100644
--- a/buildset-config.controller/nightly-oecore.conf
+++ b/buildset-config.controller/nightly-oecore.conf
@@ -6,9 +6,6 @@ repos: [{'oecore':
              'branch':'master'}},
         {'bitbake':
             {'repourl':'git://git.openembedded.org/bitbake',
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-ppc.conf b/buildset-config.controller/nightly-ppc.conf
index b91732a..e7d52bd 100644
--- a/buildset-config.controller/nightly-ppc.conf
+++ b/buildset-config.controller/nightly-ppc.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-rpm-non-rpm.conf b/buildset-config.controller/nightly-rpm-non-rpm.conf
index 6e4c998..c98e6f4 100644
--- a/buildset-config.controller/nightly-rpm-non-rpm.conf
+++ b/buildset-config.controller/nightly-rpm-non-rpm.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-rpm.conf b/buildset-config.controller/nightly-rpm.conf
index 4422f78..5ece0b8 100644
--- a/buildset-config.controller/nightly-rpm.conf
+++ b/buildset-config.controller/nightly-rpm.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
index b90f59a..4596d62 100644
--- a/buildset-config.controller/nightly-world-lsb.conf
+++ b/buildset-config.controller/nightly-world-lsb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-world-uclibc.conf b/buildset-config.controller/nightly-world-uclibc.conf
index dc438cd..35b5a4f 100644
--- a/buildset-config.controller/nightly-world-uclibc.conf
+++ b/buildset-config.controller/nightly-world-uclibc.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-world.conf b/buildset-config.controller/nightly-world.conf
index 1c4fed9..b4e2614 100644
--- a/buildset-config.controller/nightly-world.conf
+++ b/buildset-config.controller/nightly-world.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-x32.conf b/buildset-config.controller/nightly-x32.conf
index f9fbc22..19f285a 100644
--- a/buildset-config.controller/nightly-x32.conf
+++ b/buildset-config.controller/nightly-x32.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-x86-64.conf b/buildset-config.controller/nightly-x86-64.conf
index bbd0e85..01edfc6 100644
--- a/buildset-config.controller/nightly-x86-64.conf
+++ b/buildset-config.controller/nightly-x86-64.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/nightly-x86.conf b/buildset-config.controller/nightly-x86.conf
index 5053136..488b34a 100644
--- a/buildset-config.controller/nightly-x86.conf
+++ b/buildset-config.controller/nightly-x86.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/poky-tiny.conf b/buildset-config.controller/poky-tiny.conf
index 33999fe..7682b52 100644
--- a/buildset-config.controller/poky-tiny.conf
+++ b/buildset-config.controller/poky-tiny.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/ptest-x86-64.conf b/buildset-config.controller/ptest-x86-64.conf
index 8f90b90..44332c4 100644
--- a/buildset-config.controller/ptest-x86-64.conf
+++ b/buildset-config.controller/ptest-x86-64.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
diff --git a/buildset-config.controller/ptest-x86.conf b/buildset-config.controller/ptest-x86.conf
index e72a892..dcd380d 100644
--- a/buildset-config.controller/ptest-x86.conf
+++ b/buildset-config.controller/ptest-x86.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
-- 
2.1.4


