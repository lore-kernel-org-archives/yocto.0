Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6EF1E00E9A; Thu,  1 Oct 2015 11:26:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEE2AE00E67
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:26:22 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so1627172wic.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=0/DTqzOezEbf/BniidSYAGTsrn8yIDIbhaQCxJ1qxDA=;
	b=rFfEpo4ijHlxZLt/hXrOYrNqB6VWM454IYtaPd+jZR2agACd3UsIuBGyt22XdpMwX9
	7aPTstV5YogWCyNfOJeRrBSje8+GJRijTjGqb+KmkSOGkP1MQ4yP+Eb2EN4O1AX25s6I
	F0/zus1ZzYVN51bT1oz8sDsEiRipApToknwzuzujB6nMo9QnYTOmaBVAn3OkBREgyTzR
	qUrFDLTNt5Ymwod8WMf65LRm5gl9vJ2NThnLM0jDDNfjQay42jU4cqi/QmFtTYtx7/tw
	H2Jm0nFqW2cIFdy6yFYX/hL3czE2OpvgFPwmDVGnMF9sdGonKuk6uAcsNXImg/uDmC38
	tJUA==
X-Received: by 10.180.9.74 with SMTP id x10mr186810wia.61.1443723981655;
	Thu, 01 Oct 2015 11:26:21 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	ht5sm4449049wib.10.2015.10.01.11.26.20 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:26:21 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <7888CF7A-4A1C-4511-B9CD-775431EDEB51@gmail.com>
Date: Thu, 1 Oct 2015 20:26:20 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 7/7][meta-java] fix build error with gcc5
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
X-List-Received-Date: Thu, 01 Oct 2015 18:26:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 ..._than_returning_address_of_local_variable.patch | 23 =
++++++++++++++++++++++
 recipes-core/openjdk/openjdk-8_72b00.bb            | 14 ++++++-------
 recipes-core/openjdk/openjre-8_72b00.bb            | 14 ++++++-------
 3 files changed, 35 insertions(+), 16 deletions(-)
 create mode 100644 =
recipes-core/openjdk/openjdk-8-72b00/openjdk8-use_builtin_frame_address_0_=
rather_than_returning_address_of_local_variable.patch

diff --git =
a/recipes-core/openjdk/openjdk-8-72b00/openjdk8-use_builtin_frame_address_=
0_rather_than_returning_address_of_local_variable.patch =
b/recipes-core/openjdk/openjdk-8-72b00/openjdk8-use_builtin_frame_address_=
0_rather_than_returning_address_of_local_variable.patch
new file mode 100644
index 0000000..9e1d204
--- /dev/null
+++ =
b/recipes-core/openjdk/openjdk-8-72b00/openjdk8-use_builtin_frame_address_=
0_rather_than_returning_address_of_local_variable.patch
@@ -0,0 +1,23 @@
+# HG changeset patch
+# User sgehwolf
+# Date 1434121785 -3600
+# Node ID 6217fd2c767b467641bf7b41a9c37273e8fa0cbd
+# Parent  ff0929a59ced0e144201aa05819ae2e47d6f2c61
+8087120: [GCC5] java.lang.StackOverflowError on Zero JVM initialization =
on non x86 platforms.
+Summary: Use __builtin_frame_address(0) rather than returning address =
of local variable.
+Reviewed-by: dholmes
+
+diff -r ff0929a59ced -r 6217fd2c767b =
src/os_cpu/linux_zero/vm/os_linux_zero.cpp
+--- hotspot/src/os_cpu/linux_zero/vm/os_linux_zero.cpp.orig	Thu Jun =
11 20:19:26 2015 -0700
++++ hotspot/src/os_cpu/linux_zero/vm/os_linux_zero.cpp	Fri Jun 12 =
16:09:45 2015 +0100
+@@ -59,8 +59,8 @@
+ extern sigjmp_buf* get_jmp_buf_for_continuation();
+=20
+ address os::current_stack_pointer() {
+-  address dummy =3D (address) &dummy;
+-  return dummy;
++  // return the address of the current function
++  return (address)__builtin_frame_address(0);
+ }
+=20
+ frame os::get_sender_for_C_frame(frame* fr) {
diff --git a/recipes-core/openjdk/openjdk-8_72b00.bb =
b/recipes-core/openjdk/openjdk-8_72b00.bb
index c6d17df..62e3190 100644
--- a/recipes-core/openjdk/openjdk-8_72b00.bb
+++ b/recipes-core/openjdk/openjdk-8_72b00.bb
@@ -1,18 +1,16 @@
 require openjdk-8-release-72b00.inc
 require openjdk-8-cross.inc
=20
+# some patches extracted from =
http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.=
patch
+# reported via =
http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
+# by Roman Kennke (rkennke at redhat.com)
 PATCHES_URI_append =3D "\
   file://openjdk8-restrict-to-staging-dir.patch;apply=3Dno \
+  file://openjdk8-fix-shark-build.patch;apply=3Dno \
+  file://openjdk8-fix-shark-stdc++11.patch;apply=3Dno \
+  =
file://openjdk8-use_builtin_frame_address_0_rather_than_returning_address_=
of_local_variable.patch;apply=3Dno \
 "
=20
-# patch extracted from =
http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.=
patch
-# reported via =
http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
-# by Roman Kennke (rkennke at redhat.com)
-PATCHES_URI_append_arm =3D " =
file://openjdk8-fix-shark-build.patch;apply=3Dno "
-PATCHES_URI_append_arm =3D " =
file://openjdk8-fix-shark-stdc++11.patch;apply=3Dno "
-PATCHES_URI_append_mips =3D " =
file://openjdk8-fix-shark-build.patch;apply=3Dno "
-PATCHES_URI_append_mips =3D " =
file://openjdk8-fix-shark-stdc++11.patch;apply=3Dno "
-
 do_install() {
     do_install_jdk
 }
diff --git a/recipes-core/openjdk/openjre-8_72b00.bb =
b/recipes-core/openjdk/openjre-8_72b00.bb
index 3decc0c..78e9a0d 100644
--- a/recipes-core/openjdk/openjre-8_72b00.bb
+++ b/recipes-core/openjdk/openjre-8_72b00.bb
@@ -1,18 +1,16 @@
 require openjdk-8-release-72b00.inc
 require openjdk-8-cross.inc
=20
+# some patches extracted from =
http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.=
patch
+# reported via =
http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
+# by Roman Kennke (rkennke at redhat.com)
 PATCHES_URI_append =3D "\
   file://openjdk8-restrict-to-staging-dir.patch;apply=3Dno \
+  file://openjdk8-fix-shark-build.patch;apply=3Dno \
+  file://openjdk8-fix-shark-stdc++11.patch;apply=3Dno \
+  =
file://openjdk8-use_builtin_frame_address_0_rather_than_returning_address_=
of_local_variable.patch;apply=3Dno \
 "
=20
-# patch extracted from =
http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.=
patch
-# reported via =
http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
-# by Roman Kennke (rkennke at redhat.com)
-PATCHES_URI_append_arm =3D " =
file://openjdk8-fix-shark-build.patch;apply=3Dno "
-PATCHES_URI_append_arm =3D " =
file://openjdk8-fix-shark-stdc++11.patch;apply=3Dno "
-PATCHES_URI_append_mips =3D " =
file://openjdk8-fix-shark-build.patch;apply=3Dno "
-PATCHES_URI_append_mips =3D " =
file://openjdk8-fix-shark-stdc++11.patch;apply=3Dno "
-
 do_install() {
     do_install_jre
 }
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


