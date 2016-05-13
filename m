Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD666E00C44; Thu, 12 May 2016 22:43:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72F3BE00C1E
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 22:43:14 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id yl2so7769039pac.1
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 22:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=GwPPEnkBq1Ewd+wAxuQ5Bpw73XOT4oXUEI4y57X/3lU=;
	b=ukVCEt8tsRQcfAGf7qQV8ynwo/AZPH8hluPk6H+U5fYT9qBU5XsCbBdmwPPF9RriJD
	wL/j/dJ07SBkITSprsBlmUNAdCMBZ7gMxfk2tV6gxEEFdYWY4FRDUDI82YWh8iCB7s/O
	jwUIwSr2muIs3zMlnAEHdHKs9nBshtDCidKHoXmn3l+jSb34aGoybU0TqCHxfZto29J0
	w09njjhFJQWhLgqw5DPKRWARLT/vmOAspoHdLiQeT9T2v+v9/8lVbvFJWKBgKlAElwID
	1y+IvqwL8eyyXpdoqp/IOFLvALyQEMcwY4Waye/5A2kEcvDSpyJyaEcyxakRitIaV+FL
	o6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=GwPPEnkBq1Ewd+wAxuQ5Bpw73XOT4oXUEI4y57X/3lU=;
	b=UyZI/icvQWlZ26EMqfOC/4ilHtLrFpKc8DUg20nalTOJi+wN6pG5PEwafghG6xDLsS
	dH7t0dL/tQWDi3edwEUwM9datDwxzoRNoT9LztPl18uMOIjgJEORcROhsPb7QRsiTEPz
	nW/FdmTfekyTUQIKM1jkg+rSt4R/vv/TlX3su424meLAz/BHH9JW+AhkwCNpvL4X/l0S
	wPSGxZjw7o4i+fyMmjToyZx42kN3W/49Vr4KFpPWTws03iaiKANNKFVru9IJYQBt2b1O
	NWGFmhWAb6ObPY5XbaYDnziUtb7yjaQfF+FaabdUa/rBtyWi5QaH0gZJR9FblJV15lCU
	trfQ==
X-Gm-Message-State: AOPr4FUV3C7ScuFWrgIcL+ZEX8gbJQFvqXeL1qxL/K9Yb71U6jSFtjV97nvlnKZrJeoeXA==
X-Received: by 10.66.66.42 with SMTP id c10mr19865262pat.119.1463118194466;
	Thu, 12 May 2016 22:43:14 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	i6sm23900209pfc.65.2016.05.12.22.43.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 12 May 2016 22:43:13 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 12 May 2016 22:43:03 -0700
Message-Id: <1463118184-2174-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.8.2
Subject: [meta-raspberrypi][PATCH 1/2] linux-rpi: Enable kconf options to enable initramfs support
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
X-List-Received-Date: Fri, 13 May 2016 05:43:16 -0000

Additionally add few few file systems e.g. squashfs, overlayfs
to support booting with initramfs

Drop checking for target triplet to set EABI, rpi probaly should
not have any legacy into OABI world.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-rpi.inc | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index fae78b7..1755685 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -18,6 +18,8 @@ UDEV_GE_141 ?= "1"
 CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet", "debug", d)}'
 CMDLINE_append = " ${CMDLINE_DEBUG}"
 
+KERNEL_INITRAMFS ?= '${@base_conditional("INITRAMFS_IMAGE_BUNDLE", "1", "1", "", d)}'
+
 # Set a variable in .configure
 # $1 - Configure variable to be set
 # $2 - value [n/y/value]
@@ -38,15 +40,10 @@ do_configure_prepend() {
     CONF_SED_SCRIPT=""
 
     # oabi / eabi support
-    if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = "linux-uclibceabi" ]; then
-        kernel_configure_variable AEABI y
-        if [ "${ARM_KEEP_OABI}" = "1" ] ; then
-            kernel_configure_variable OABI_COMPAT y
-        else
-            kernel_configure_variable OABI_COMPAT n
-        fi
+    kernel_configure_variable AEABI y
+    if [ "${ARM_KEEP_OABI}" = "1" ] ; then
+        kernel_configure_variable OABI_COMPAT y
     else
-        kernel_configure_variable AEABI n
         kernel_configure_variable OABI_COMPAT n
     fi
 
@@ -103,7 +100,14 @@ do_configure_prepend() {
         kernel_configure_variable ROOT_NFS y
         kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
     fi
-
+    if [ ! -z "${KERNEL_INITRAMFS}" ]; then
+        kernel_configure_variable BLK_DEV_INITRD y
+        kernel_configure_variable INITRAMFS_SOURCE ""
+        kernel_configure_variable RD_GZIP y
+        kernel_configure_variable OVERLAY_FS y
+        kernel_configure_variable SQUASHFS y
+        kernel_configure_variable UBIFS_FS y
+    fi
     # Activate CONFIG_LEGACY_PTYS
     kernel_configure_variable LEGACY_PTYS y
 
-- 
2.8.2


