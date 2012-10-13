Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF0FE0032E
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 10:42:52 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so4693163pab.35
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 10:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:cc:to:mime-version
	:x-mailer; bh=30J6a/TwbOHnsSEWQKNnPMBkhk/dg6LELc6bMA/TNmc=;
	b=pt+SnjBuEehaixeFuygkXNQg0itvoUbsevaiNQSfo4N0l1CnqjN/bgYWEqSYLna7tN
	picLquSMUuBkr3Wb30jWU/RTjmNlJGzqiMXE24EbvmI50EvAQcnJY6+4Y6sFS5tuO4Fw
	30nBfOmk3T7dlqGzeTtkM5bC0aQdKt+XgQC6d9y0N8mZWme1BARfsrQGsb1IojqEBJIK
	3GrdPOkXspDX7uhFC2PHZ/fDLjrbQHACANFiisUnvv2E2XWafe+BAYjn0szLTnQruwXN
	eVOODaGw3kX4pfEZ5N87WRlwh6UVX4JKfhFd0EsuDQYgg9zix3rEyPXHts0UmOBbv6PJ
	B+yg==
Received: by 10.66.80.65 with SMTP id p1mr20428693pax.20.1350150172237;
	Sat, 13 Oct 2012 10:42:52 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id kr4sm6297055pbc.76.2012.10.13.10.42.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 13 Oct 2012 10:42:51 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 13 Oct 2012 21:42:47 +0400
Message-Id: <7618B2C1-D197-406D-B563-30E837399301@gmail.com>
To: Philip Balister <philip@balister.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: meta-zynq-balister: Build output
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
X-List-Received-Date: Sat, 13 Oct 2012 17:42:52 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7EFB915E-00B2-4A4D-A943-DF104D16C76A"

--Apple-Mail=_7EFB915E-00B2-4A4D-A943-DF104D16C76A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Philip,
		  I made the following changes to your repo, since it =
was giving a warning about apps-console-core being no longer valid, and =
yocto replacing it with splash.

diff --git a/conf/machine/zynq-zc702.conf b/conf/machine/zynq-zc702.conf
index 74a1271..d25093f 100644
--- a/conf/machine/zynq-zc702.conf
+++ b/conf/machine/zynq-zc702.conf
@@ -1,3 +1,8 @@
+#@TYPE: Machine
+#@Name: Xilinx ZC702 FPGA Development Platform for the Zynq-7020 =
processor.
+#@DESCRIPTION: Machine configuration for the Xilinx ZC702 FPGA =
Development Platform.
+
+#tune for the Zynq 7020 ARM Cortex A-9 CPU
 include conf/machine/include/tune-cortexa9.inc
=20
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-zynq"
diff --git a/recipes-core/images/zc702-proto-image.bb =
b/recipes-core/images/zc702-proto-image.bb
index a6e4b11..02a6af2 100644
--- a/recipes-core/images/zc702-proto-image.bb
+++ b/recipes-core/images/zc702-proto-image.bb
@@ -1,14 +1,12 @@
-DESCRIPTION =3D "A foundational basic image without support for X that =
can be \
-reasonably used for customization."
+DESCRIPTION =3D "A console-only image with more full-featured Linux =
system \
+functionality installed."
=20
-IMAGE_FEATURES +=3D "apps-console-core ssh-server-openssh tools-sdk \
+IMAGE_FEATURES +=3D "splash ssh-server-openssh tools-sdk \
                    tools-debug debug-tweaks"
=20
 IMAGE_INSTALL =3D "\
-    task-core-boot \
-    task-core-basic \
+    packagegroup-core-boot \
+    packagegroup-core-basic \
     "
=20
-#    ${CORE_IMAGE_BASE_INSTALL}=20
-
 inherit core-image


and here is the build output:

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "zynq-zc702"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20121013"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "master:0260bb5c6978839c068007fcff2f704937805faf"
toolchain-layer   =3D "master:9e701bb060325bc47509d4874bd695f039191ea8"
meta-zynq-balister =3D "master:61ee369f84252acaaa4a4500f08450df2648247d"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL =
http://kernel.org/pub/linux/kernel/people/jsipek/guilt/guilt-0.33.tar.gz, =
attempting MIRRORS if available
NOTE: validating kernel configuration
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
** NOTE: There were 0 required options requested that do not
         have a corresponding value present in the final ".config" file.
         This is a violation of the policy defined by the higher level =
config
The full list can be found in your kernel src dir at:
meta/cfg/standard/zynq-zc702/missing_required.cfg
NOTE: Tasks Summary: Attempted 1465 tasks of which 229 didn't need to be =
rerun and all succeeded.

Summary: There was 1 WARNING message shown.

real    33m58.594s
user    97m0.724s
sys    12m50.976s


It gives a config policy warning, haven't seen this before.

I also noticed that by default, u-boot-zynq doesn't get compiled, but =
it's trivial enough to include in the zynq-zc702.conf file.

Best regards,

Elvis Dowson




--Apple-Mail=_7EFB915E-00B2-4A4D-A943-DF104D16C76A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii">

    <meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3DISO-8859-1">
  </head><body text=3D"#000000" bgcolor=3D"#FFFFFF" style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; ">
    Hi Philip,<div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>&nbsp; I made the =
following changes to your repo, since it was giving a warning about =
apps-console-core being no longer valid, and yocto replacing it with =
splash.</div><div><br></div><div><font face=3D"Monaco" size=3D"2">diff =
--git a/conf/machine/zynq-zc702.conf =
b/conf/machine/zynq-zc702.conf<br>index 74a1271..d25093f 100644<br>--- =
a/conf/machine/zynq-zc702.conf<br>+++ =
b/conf/machine/zynq-zc702.conf<br>@@ -1,3 +1,8 @@<br>+#@TYPE: =
Machine<br>+#@Name: Xilinx ZC702 FPGA Development Platform for the =
Zynq-7020 processor.<br>+#@DESCRIPTION: Machine configuration for the =
Xilinx ZC702 FPGA Development Platform.<br>+<br>+#tune for the Zynq 7020 =
ARM Cortex A-9 CPU<br>&nbsp;include =
conf/machine/include/tune-cortexa9.inc<br>&nbsp;<br>&nbsp;PREFERRED_PROVID=
ER_virtual/kernel ?=3D "linux-zynq"<br>diff --git =
a/recipes-core/images/zc702-proto-image.bb =
b/recipes-core/images/zc702-proto-image.bb<br>index a6e4b11..02a6af2 =
100644<br>--- a/recipes-core/images/zc702-proto-image.bb<br>+++ =
b/recipes-core/images/zc702-proto-image.bb<br>@@ -1,14 +1,12 =
@@<br>-DESCRIPTION =3D "A foundational basic image without support for X =
that can be \<br>-reasonably used for customization."<br>+DESCRIPTION =3D =
"A console-only image with more full-featured Linux system =
\<br>+functionality installed."<br>&nbsp;<br>-IMAGE_FEATURES +=3D =
"apps-console-core ssh-server-openssh tools-sdk \<br>+IMAGE_FEATURES +=3D =
"splash ssh-server-openssh tools-sdk =
\<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tools-debug =
debug-tweaks"<br>&nbsp;<br>&nbsp;IMAGE_INSTALL =3D =
"\<br>-&nbsp;&nbsp;&nbsp; task-core-boot \<br>-&nbsp;&nbsp;&nbsp; =
task-core-basic \<br>+&nbsp;&nbsp;&nbsp; packagegroup-core-boot =
\<br>+&nbsp;&nbsp;&nbsp; packagegroup-core-basic =
\<br>&nbsp;&nbsp;&nbsp;&nbsp; "<br>&nbsp;<br>-#&nbsp;&nbsp;&nbsp; =
${CORE_IMAGE_BASE_INSTALL}&nbsp;<br>-<br>&nbsp;inherit =
core-image</font><br></div><div><br></div><div><br></div><div>and here =
is the build output:</div><div><br></div><div><font face=3D"Monaco" =
size=3D"2">Build Configuration:<br>
    BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"1.16.0"<br>
    TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm"<br>
    TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"linux-gnueabi"<br>
    MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "zynq-zc702"<br>
    =
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "poky"<br>
    DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "1.3+snapshot-20121013"<br>
    TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D "armv7a vfp neon =
cortexa9"<br>
    TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"vfp-neon"<br>
    =
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <br>
    meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D
    "master:0260bb5c6978839c068007fcff2f704937805faf"<br>
    toolchain-layer&nbsp;&nbsp; =3D
    "master:9e701bb060325bc47509d4874bd695f039191ea8"<br>
    meta-zynq-balister =3D
    "master:61ee369f84252acaaa4a4500f08450df2648247d"<br>
    <br>
    NOTE: Resolving any missing task queue dependencies<br>
    NOTE: Preparing runqueue<br>
    NOTE: Executing SetScene Tasks<br>
    NOTE: Executing RunQueue Tasks<br>
    WARNING: Failed to fetch URL
    <a class=3D"moz-txt-link-freetext" =
href=3D"http://kernel.org/pub/linux/kernel/people/jsipek/guilt/guilt-0.33.=
tar.gz">http://kernel.org/pub/linux/kernel/people/jsipek/guilt/guilt-0.33.=
tar.gz</a>,
    attempting MIRRORS if available<br>
    NOTE: validating kernel configuration<br>
    cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or
    directory<br>
    cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or
    directory<br>
    ** NOTE: There were 0 required options requested that do not<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; have a =
corresponding value present in the final ".config"
    file.<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is a violation =
of the policy defined by the higher
    level config<br>
    The full list can be found in your kernel src dir at:<br>
    meta/cfg/standard/zynq-zc702/missing_required.cfg<br>
    NOTE: Tasks Summary: Attempted 1465 tasks of which 229 didn't need
    to be rerun and all succeeded.<br>
    <br>
    Summary: There was 1 WARNING message shown.<br>
    <br>
    real&nbsp;&nbsp;&nbsp; 33m58.594s<br>
    user&nbsp;&nbsp;&nbsp; 97m0.724s<br>
    sys&nbsp;&nbsp;&nbsp; 12m50.976s</font><br>
    <br>
    <br>
    It gives a config policy warning, haven't seen this =
before.</div><div><br></div><div>I also noticed that by default, =
u-boot-zynq doesn't get compiled, but it's trivial enough to include in =
the zynq-zc702.conf file.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson<br><br>
    <br>
    <br>
 =20

</div></body></html>=

--Apple-Mail=_7EFB915E-00B2-4A4D-A943-DF104D16C76A--
