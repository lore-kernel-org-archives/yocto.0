Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 561D3E01447
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 12:07:26 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1473917ghb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 12:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=jhYEH4CnhF+uG2IV9X9JE+6V7xYCQgIHG1EMYY5RdYM=;
	b=atZeFve7qHs5cvrOyCnN1tGUchYuCKCTa80psKQ2OgKNQ4A6bKS+KQIHGQoKFPkQ6v
	oTXUTffG/fj4wBDMpN2h2eXDVGLBEdHeGhW2ak7y6lssioruc5R1Oa7clo9v9V2RhFqi
	2jJjbqEjcfkAYuLyDTaFlkGG7Nqcu5a0RWEnAv+9DZWJhv68yP/8/AO8WO7XmGYE21WH
	N1i3Bs1SdeRq3XFCkS3yGdMyvuLtTFb0Qmpy82/3RaH+jOyDQJQznMCNlRKLyxver83U
	GYJnmRt8oxkpBOxDpBCCuUb1rwl1m/msSHjxNQoXxqibbV/7wrNmHjcCVVkTT/dvuVVQ
	KM4w==
Received: by 10.66.84.130 with SMTP id z2mr709444pay.77.1344020845212;
	Fri, 03 Aug 2012 12:07:25 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id og7sm3070439pbb.62.2012.08.03.12.07.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 12:07:24 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 3 Aug 2012 23:07:18 +0400
Message-Id: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: meta-toolchain error with latest gcc commit: rpm-createsolvedb.py: command not found
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
X-List-Received-Date: Fri, 03 Aug 2012 19:07:26 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3DE23886-65DA-41E6-BB40-05092834FEFF"

--Apple-Mail=_3DE23886-65DA-41E6-BB40-05092834FEFF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       I just thought of updating my gcc recipe locally to the latest =
commit, as follows:

diff --git a/meta/recipes-devtools/gcc/gcc-4.7.inc =
b/meta/recipes-devtools/gcc/gcc-4.7.inc
index 4905155..d2ce75a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.7.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.7.inc
@@ -1,6 +1,6 @@
 require gcc-common.inc
=20
-PR =3D "r9"
+PR =3D "r10"
=20
 # Third digit in PV should be incremented after a minor release
 # happens from this branch on gcc e.g. currently its 4.7.1
@@ -21,7 +21,7 @@ PV =3D "4.7.1.0+git${SRCPV}"
=20
 BINV =3D "4.7.2"
=20
-SRCREV =3D "d07e24f4ab59f264d68d21838795349faab5dede"
+SRCREV =3D "1653160670db186c6243997447ecbe6ce5056648"
 BRANCH =3D "gcc-4_7-branch"
 FILESPATH =3D "${@base_set_filespath([ '${FILE_DIRNAME}/gcc-4.7' ], =
d)}"
=20
@@ -36,7 +36,7 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552 \
                    =
file://COPYING.LIB;md5=3D2d5025d4aa3495befef8f17206a5b0a1 \
                   =
file://COPYING.RUNTIME;md5=3Dfe60d87048567d4fe8c8a0ed2448bcc8"
=20
-SRC_URI =3D =
"git://github.com/mirrors/gcc.git;branch=3D${BRANCH};protocol=3Dgit \
+SRC_URI =3D =
"git://gcc.gnu.org/git/gcc.git;branch=3D${BRANCH};protocol=3Dgit \
           file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch \
           file://100-uclibc-conf.patch \
            file://gcc-uclibc-locale-ctype_touplow_t.patch \


I thought of doing this update, before attempting to debug my Virtex5 =
PowerPC 440 processor root filesystem boot issues, to take advantage of =
any new patches and updates to gcc-4.7.2.

When I run bitbake meta-toolchain, I get the following error: =
rpm-createsolvedb.py: command not found

NOTE: Running task 2060 of 2061 (ID: 7, =
/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk)
NOTE: package meta-toolchain-1.0-r7: task do_populate_sdk: Started
ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334
Log data follows:
| DEBUG: Executing python function do_populate_sdk
| DEBUG: Executing shell function populate_sdk_image
| Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/ppc440...
| =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/run.populate_sdk_image.48334: line 610: rpm-createsolvedb.py: command =
not found
| DEBUG: Python function do_populate_sdk finished
| ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further information)
NOTE: package meta-toolchain-1.0-r7: task do_populate_sdk: Failed
ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2060 tasks of which 1293 didn't need to =
be rerun and 1 failed.

Summary: 1 task failed:
  /tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.


the log is=20

DEBUG: Executing python function do_populate_sdk
DEBUG: Executing shell function populate_sdk_image
Generating solve db for /tool/yocto/poky/build/tmp/deploy/rpm/ppc440...
=
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/run.populate_sdk_image.48334: line 610: rpm-createsolvedb.py: command =
not found
DEBUG: Python function do_populate_sdk finished
ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further information)

How can I resolve this?

Best regards,

Elvis Dowson=

--Apple-Mail=_3DE23886-65DA-41E6-BB40-05092834FEFF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div>&nbsp; &nbsp; &nbsp; &nbsp;I just thought of =
updating my gcc recipe locally to the latest commit, as =
follows:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/meta/recipes-devtools/gcc/gcc-4.7.inc =
b/meta/recipes-devtools/gcc/gcc-4.7.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
4905155..d2ce75a 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/meta/recipes-devtools/gcc/gcc-4.7.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/meta/recipes-devtools/gcc/gcc-4.7.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -1,6 +1,6 =
@@</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;require gcc-common.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-PR =3D "r9"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+PR =3D =
"r10"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;# Third digit in PV should be =
incremented after a minor release</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;# happens =
from this branch on gcc e.g. currently its 4.7.1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -21,7 +21,7 @@ =
PV =3D "4.7.1.0+git${SRCPV}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;BINV =3D "4.7.2"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-SRCREV =3D =
"d07e24f4ab59f264d68d21838795349faab5dede"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+SRCREV =3D =
"1653160670db186c6243997447ecbe6ce5056648"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;BRANCH =3D =
"gcc-4_7-branch"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILESPATH =3D "${@base_set_filespath([ =
'${FILE_DIRNAME}/gcc-4.7' ], d)}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">@@ -36,7 +36,7 @@ LIC_FILES_CHKSUM =3D "<a =
href=3D"file:///COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552">file://COP=
YING;md5=3D59530bdf33659b29e73d4adb9f9f6552</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a =
href=3D"file:///COPYING.LIB;md5=3D2d5025d4aa3495befef8f17206a5b0a1">file:/=
/COPYING.LIB;md5=3D2d5025d4aa3495befef8f17206a5b0a1</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;<a =
href=3D"file:///COPYING.RUNTIME;md5=3Dfe60d87048567d4fe8c8a0ed2448bcc8">fi=
le://COPYING.RUNTIME;md5=3Dfe60d87048567d4fe8c8a0ed2448bcc8</a>"</font></d=
iv><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-SRC_URI =3D "<a =
href=3D"git://github.com/mirrors/gcc.git;branch=3D${BRANCH};protocol=3Dgit=
">git://github.com/mirrors/gcc.git;branch=3D${BRANCH};protocol=3Dgit</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+SRC_URI =3D "<a =
href=3D"git://gcc.gnu.org/git/gcc.git;branch=3D${BRANCH};protocol=3Dgit">g=
it://gcc.gnu.org/git/gcc.git;branch=3D${BRANCH};protocol=3Dgit</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch">file://gcc-4.3.1-AR=
CH_FLAGS_FOR_TARGET.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///100-uclibc-conf.patch">file://100-uclibc-conf.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a =
href=3D"file:///gcc-uclibc-locale-ctype_touplow_t.patch">file://gcc-uclibc=
-locale-ctype_touplow_t.patch</a> \</font></div></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><br></div><div>I thought of doing this =
update, before attempting to debug my Virtex5 PowerPC 440 processor root =
filesystem boot issues, to take advantage of any new patches and updates =
to gcc-4.7.2.</div><div><br></div><div>When I run bitbake =
meta-toolchain, I get the following error:&nbsp;rpm-createsolvedb.py: =
command not found</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Running task =
2060 of 2061 (ID: 7, =
/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package meta-toolchain-1.0-r7: task =
do_populate_sdk: Started</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">ERROR: Function failed: populate_sdk_image =
(see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| DEBUG: Executing python function =
do_populate_sdk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Executing shell function =
populate_sdk_image</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/ppc440...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/run.populate_sdk_image.48334: line 610: rpm-createsolvedb.py: command =
not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Python function do_populate_sdk =
finished</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package meta-toolchain-1.0-r7: task =
do_populate_sdk: Failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk) failed with exit code '1'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Tasks =
Summary: Attempted 2060 tasks of which 1293 didn't need to be rerun and =
1 failed.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Summary: 1 task =
failed:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There was 1 WARNING message =
shown.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Summary: There was 1 ERROR message shown, returning a =
non-zero exit =
code.</font></div></div><div><br></div><div><br></div><div>the log =
is&nbsp;</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEBUG: Executing python function =
do_populate_sdk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEBUG: Executing shell function =
populate_sdk_image</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/ppc440...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchai=
n-1.0-r7/temp/run.populate_sdk_image.48334: line 610: =
rpm-createsolvedb.py: command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DEBUG: Python =
function do_populate_sdk finished</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Function =
failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further =
information)</font></div></div><div><br></div><div>How can I resolve =
this?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_3DE23886-65DA-41E6-BB40-05092834FEFF--
