Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44FF0E0155A
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 09:47:09 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id q56so9612984wes.3
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 09:47:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=OOjzh0g1KpHQwLYh1rPjNQRC3dQWdero1NF3KFj9j7Y=;
	b=Jl2Roykw8GnPTyAoC8hSqffRvDJ4ZLtlBSH9wxrvqF1y6mIsBmeHSrH28c9dFg0Ir7
	q0zyhd5aeublM87YAYR//FXxfYYYbi0z9PJMELY1+HX30C+Tc72a4X5oUz546wptdNIn
	YnkKXSTfXi8ALZiUUozF6LSMvz42EaGYPpl749X3q6UrBR15gA+dcgZ5lDeLk0J4+ucq
	D6ymcFXWYMJmaY2Ce66uFlR0imgmCqwzF+jd0OZrjaBwTOC/wKlRt0hM5EbIyRpqt1Ca
	BTZ3R01CT3pUN4kELlZJyJhhg3XlXB7GOtXEaY1E3+gjumXwvfIp6z1G1nDUgaK+6bkJ
	ro9w==
X-Received: by 10.180.205.200 with SMTP id li8mr9766053wic.15.1372178828397;
	Tue, 25 Jun 2013 09:47:08 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id r9sm5334668wik.1.2013.06.25.09.47.06
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Jun 2013 09:47:07 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 17:43:30 +0100
Message-Id: <1372178610-19243-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQn3nh1XnxAftx2jWRAbDvh5Sa002WZoEGqR1ZXm4js3YJvMU9eLo245lD3/+tTP2bNVpCLU
Subject: [meta-intel][PATCH] intel-gpu-tools: add new package
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
X-List-Received-Date: Tue, 25 Jun 2013 16:47:10 -0000

This package contains numerous useful tools for working with Intel GPUs.  Add a
patch to install intel_panel_fitter as it's genuinely useful and not just a
debugging tool.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../intel-gpu-tools/files/install-fitter.patch     |   26 ++++++++++++++++++++
 .../intel-gpu-tools/intel-gpu-tools_1.3.bb         |   15 +++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch
 create mode 100644 common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb

diff --git a/common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch b/common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch
new file mode 100644
index 0000000..2a344c5
--- /dev/null
+++ b/common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch
@@ -0,0 +1,26 @@
+The panel_fitter is genuinely useful but not installed, so install it.
+
+Upstream-Status: Inappropriate
+Signed-off-by: Ross Burton <ross.burton@intel.com>
+
+Index: tools/Makefile.am
+===================================================================
+--- a/tools.orig/Makefile.am	2012-08-21 08:30:29.000000000 +0100
++++ b/tools/Makefile.am	2013-06-25 16:52:34.220504579 +0100
+@@ -17,13 +17,13 @@
+ 	intel_forcewaked		\
+ 	intel_dpio_read			\
+ 	intel_dpio_write		\
+-	intel_l3_parity
++	intel_l3_parity			\
++	intel_panel_fitter
+ 
+ noinst_PROGRAMS = 			\
+ 	intel_dump_decode 		\
+ 	intel_infoframes		\
+-	intel_lid			\
+-	intel_panel_fitter
++	intel_lid
+ 
+ dist_bin_SCRIPTS = intel_gpu_abrt
+ 
diff --git a/common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb b/common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb
new file mode 100644
index 0000000..893c418
--- /dev/null
+++ b/common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb
@@ -0,0 +1,15 @@
+require ${COREBASE}/meta/recipes-graphics/xorg-app/xorg-app-common.inc
+
+SUMMARY = "Intel GPU tools"
+DESCRIPTION = "Variety of small tools for testing intel graphics."
+
+SRC_URI += "file://install-fitter.patch"
+
+SRC_URI[md5sum] = "67facd6241e26e2c68614728e3a932e9"
+SRC_URI[sha256sum] = "51d22fdb3d415a1b3b7d0a172c1bb24dec6f16116e80a9ce49873f44527f20a0"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=0918806acfedc3e8c0488f2dd61616dd"
+
+DEPENDS += "libdrm libpciaccess cairo udev glib-2.0"
+
+EXTRA_OECONF = "--disable-nouveau --disable-shader-debugger"
-- 
1.7.10.4


