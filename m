Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C1B3E00E68; Thu, 24 Sep 2015 09:30:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E4B6E00306
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 09:30:28 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so36252686wic.0
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 09:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=x/bIlxROjLiOp9l8tnzT34SNLvmX5scQoiXA+4N8a5U=;
	b=ZBIEJHbyICLXi5HPRUMGrUY7HATXsd0H81h53DT/OMiWN5fMFC+LrGVyQCi3QJbzJF
	MEcZcTDmyzgRKPBZWtrjYiSJ7iUFyKK8fw+KA1BIWvIP+YXRDVQjUqAKAHuB2L0r2+Gp
	6Y7Tr1QxmVnN0tAwgZw1tqb7lSUIftCS/Z/u83KnV7uDrh3prTy5TqHN9csHBPC4h56Y
	e/EK10x60PZMo4r8ZC/eSKSK+MLK3peF2QIEorVwd0LAFqaot4JmmrR0P7PsLkG+4qXU
	9eRbJP/sbfaAFFyJVyUdvhMRRwaRAoV+WUTAoTpRZEFe1QbaC90BC7WotX0gowkDItVL
	m9mw==
X-Gm-Message-State: ALoCoQnXgOkFUgPjM1jUPYodVmp8KN1dzUbKw+JgUG5fMBVZv/+vnG0f8L2F5FRahgLtXqbYHJ8j
X-Received: by 10.194.80.38 with SMTP id o6mr692723wjx.52.1443112227528;
	Thu, 24 Sep 2015 09:30:27 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	ki7sm13044701wjc.28.2015.09.24.09.30.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 24 Sep 2015 09:30:26 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Sep 2015 17:23:18 +0100
Message-Id: <1443111800-2978-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH][autobuilder 1/3] buildset-config.controller: remove unused meta-qt3 from buildsets
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
X-List-Received-Date: Thu, 24 Sep 2015 16:30:31 -0000

Many buildsets pull in meta-qt3 but don't use it, so remove the layer from those
buildsets.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
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
 buildset-config.old/minnow.conf                      | 3 ---
 26 files changed, 78 deletions(-)

diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-config.controller/nightly-arm.conf
index 5035bbc..f5d29a8 100644
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
index 634e75c..8c31fff 100644
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
index 9798796..77ed604 100644
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
index 7d326f1..732d956 100644
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
index 409c601..4881154 100644
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
index b7c4492..8361e0c 100644
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
index aeddca2..ce98dfe 100644
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
index 817a86f..9040076 100644
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
index 5f34c31..614f8e6 100644
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
diff --git a/buildset-config.old/minnow.conf b/buildset-config.old/minnow.conf
index 401727a..69eefd5 100644
--- a/buildset-config.old/minnow.conf
+++ b/buildset-config.old/minnow.conf
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
-- 
2.1.4


