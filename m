Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 196E2E00294
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2012 06:03:22 -0700 (PDT)
Received: from mail-ee0-f72.google.com ([74.125.83.72])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 26 Oct 2012 06:03:21 -0700
Received: by mail-ee0-f72.google.com with SMTP id c4so2227559eek.11
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2012 06:03:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=iaBUX5EooCs2AEqlz+pUMr9hlmso3Ry8sRP9LqOvdmY=;
	b=DPgYhqb1HD74MpP6e7kQdmfyrTBKqP+Z04HKvWV7fIHOkn90Sma3xvXpjy8GO0yRIA
	Gwb/vZxZNx/HEtIFemDf8i7rTy6vQK/eXn5Cv5Od0MpE/tHr9e8VD+La2DuPPYaRgDBy
	TmHPDm63GkKTyvAPsR0aZHWtlqN7y/yrKoqqCEsTvmlfD/+YGX+0Gel73rrquz/7Z1BH
	jpVzJ3NOUsJfzRlxI1MGefDVLCJVkHhPY0/h24C7fL44DfMYyi/g1w7UB+yGIKxIbTvU
	/8TxG+s1790vgeIe/5ifowHfHAv4VSswn/2kQiZqFRL9DoL+AF1GUkHUwdlWxOB7vo+b
	JZkg==
Received: by 10.180.100.136 with SMTP id ey8mr4866781wib.1.1351256600033;
	Fri, 26 Oct 2012 06:03:20 -0700 (PDT)
Received: by 10.180.100.136 with SMTP id ey8mr4866761wib.1.1351256599865;
	Fri, 26 Oct 2012 06:03:19 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id p4sm2926565wix.0.2012.10.26.06.03.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 26 Oct 2012 06:03:18 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Oct 2012 14:02:08 +0100
Message-Id: <1351256528-28229-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQmI9SDVcGwuWsrG6E5PETom9+KkDk3QEc9TxtJQzLZTILNG6zCVnBOA5vEoeHwCFtMh8/wiRmhoMfcPXYYUq9Z+u1o1Td67oBdYdPL7E5is1q2xUycIZYjZxKF+JAKfa7XM+YO1RklbZtU6ZVfZGiwpNSpf1Q==
Subject: [PATCH] cdv-pvr-driver: inhibit package stripping
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
X-List-Received-Date: Fri, 26 Oct 2012 13:03:23 -0000

The binaries are already stripped, so don't try stripping them again (which
results in a warning).

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb          |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
index e9d4ede..7bda3b5 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = " \
 
 DEPENDS = "rpm-native libva"
 
-PR = "r4"
+PR = "r5"
 
 PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
 PSB-VIDEO-REV = "1.0.3"
@@ -66,6 +66,9 @@ S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
 # These are closed binaries generated elsewhere so don't check ldflags
 INSANE_SKIP_${PN} = "ldflags"
 
+# Don't try stripping, as the binaries are already stripped
+INHIBIT_PACKAGE_STRIP = "1"
+
 # .so files in these binaries are not symlinks. Rearange package order
 # so that they go to ${PN} instead of $PN}-dev
 PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN} ${PN}-dev ${PN}-doc ${PN}-locale"
-- 
1.7.10


