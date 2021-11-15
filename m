Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1E3C433EF
	for <webhook@archiver.kernel.org>; Mon, 15 Nov 2021 15:01:47 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.23374.1636988506887055099
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 07:01:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17A006D;
	Mon, 15 Nov 2021 07:01:46 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B5F63F766;
	Mon, 15 Nov 2021 07:01:45 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH] zephyr-kernel-src: fix build with latest dtc
Date: Mon, 15 Nov 2021 15:01:42 +0000
Message-Id: <20211115150142.3654556-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Nov 2021 15:01:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55329

dtc is now built with Meson, which changes the version string in the
--version output.  Zephyr matches this in a regular expression which now
fails, so update it to match both Make and Meson formats.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 recipes-kernel/zephyr-kernel/files/dtc.patch  | 43 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src-2.7.0.inc |  1 +
 2 files changed, 44 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/files/dtc.patch

diff --git a/recipes-kernel/zephyr-kernel/files/dtc.patch b/recipes-kerne=
l/zephyr-kernel/files/dtc.patch
new file mode 100644
index 0000000..f23a438
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/files/dtc.patch
@@ -0,0 +1,43 @@
+Upstream-Status: Submitted [https://github.com/zephyrproject-rtos/zephyr=
/pull/40364]
+Signed-off-by: Ross Burton <ross.burton@arm.com>
+
+From deb6e9b29d77f0d86eb188fb3c5fc6f470277d3d Mon Sep 17 00:00:00 2001
+From: Ross Burton <ross.burton@arm.com>
+Date: Mon, 15 Nov 2021 14:01:47 +0000
+Subject: [PATCH] cmake: expand DTC version regex
+
+DTC can be built with both traditional Makefiles or Meson. When built
+with Makefiles the --version output looks like 'Version: DTC
+1.6.1-dirty' but when built with Meson the output is 'Version: DTC
+v1.6.1+.
+
+This fails to match the version regex and the cmake then fails:
+
+CMake Error at cmake/host-tools.cmake:28 (if):
+  if given arguments:
+    "VERSION_GREATER" "1.4.6"
+  Unknown arguments specified
+
+Expanding the regex with an optional 'v' covers both cases and the build
+succeeds.
+
+Signed-off-by: Ross Burton <ross.burton@arm.com>
+---
+ cmake/host-tools.cmake | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/cmake/host-tools.cmake b/cmake/host-tools.cmake
+index cb7bf2e281..93d33d6390 100644
+--- a/cmake/host-tools.cmake
++++ b/cmake/host-tools.cmake
+@@ -20,7 +20,7 @@ if(DTC)
+     )
+=20
+   if(${dtc_status} EQUAL 0)
+-    string(REGEX MATCH "Version: DTC ([0-9]+[.][0-9]+[.][0-9]+).*" out_=
var ${dtc_version_output})
++    string(REGEX MATCH "Version: DTC v?([0-9]+[.][0-9]+[.][0-9]+).*" ou=
t_var ${dtc_version_output})
+=20
+     # Since it is optional, an outdated version is not an error. If an
+     # outdated version is discovered, print a warning and proceed as if
+--=20
+2.25.1
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc b/r=
ecipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
index a1619a7..db42418 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.0.inc
@@ -14,4 +14,5 @@ PV =3D "2.7.0+git${SRCPV}"
=20
 SRC_URI:append =3D " file://0001-cmake-add-yocto-toolchain.patch \
                     file://0001-x86-fix-efi-binary-generation-issue-in-c=
ross-compila.patch \
+                    file://dtc.patch \
                     "
--=20
2.25.1


