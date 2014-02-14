Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FFE8E00444
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Feb 2014 07:22:10 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id n12so503439wgh.30
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Feb 2014 07:22:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=YMyA9zTVYTQyidih4KItysgBaR4YtBmeif4oYWanl+M=;
	b=iNUaezY4kSlgMB5yqdYtdc8mIafQs5er4bUss+xfLSrnMzlkG4CRmGiU7wq5dBoPZV
	Q0tpSV8dkvBfQCaD6HArsQvzNfyJf3P3CQ4WDjFg1E0PmVUJQND2N77tBIsrrPPusepG
	p8KQQYOBnG/YLPoMZwfIgq0BHridmeOgxjj9b7v+qHVcj7sVyYzXjAr6KBEB3yuWu9j2
	pbB0nKQ9Wkl6/tJlbpvSqfhRfd0QpztkWC2h4EMnFWF8091uqLPw4Ed7n3IB4DwEEuMl
	55VMBC0y87NHMXAMqoUuiX/goKIV+z5SZNsG46TYqkAeRZUaYLDldsRGpJZ/Ejc+QvRf
	RMww==
X-Gm-Message-State: ALoCoQnPS0CXrvrCVFIbI5VEHm4zpV36G7ZVURfWI1zBvgwd53mxaGfS3PJG6biA4lMewPQRcR7M
X-Received: by 10.195.13.234 with SMTP id fb10mr2277015wjd.50.1392391328792;
	Fri, 14 Feb 2014 07:22:08 -0800 (PST)
Received: from localhost ([2001:610:612:0:21c:42ff:fef0:7f75])
	by mx.google.com with ESMTPSA id n15sm5317824wij.3.2014.02.14.07.22.07
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Feb 2014 07:22:07 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: meta-intel@lists.yoctoproject.org
Date: Fri, 14 Feb 2014 16:21:53 +0100
Message-Id: <1392391313-2901-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.8.5.3
Cc: yocto@lists.yoctoproject.org
Subject: [meta-intel][common][dora][PATCH] emgd-driver-bin: limit build to x86*
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
X-List-Received-Date: Fri, 14 Feb 2014 15:22:11 -0000

When building GL apps for non-x86 machines (e.g. raspberrypi) emgd-driver-bin is being
dragged in as a valid provider. To avoid build breakage fix it at the
source by limiting emgd-driver-bin to x86 architectures.

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb | 2 ++
 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
index c8ca726..8cb088e 100644
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
@@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.16 & Intel-user-space-graphics-driver-b
 LICENSE_FLAGS = "license_${PN}_${PV}"
 PR = "r0"
 
+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
+
 EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
 EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
 EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
index b3bf0d2..cf6d855 100644
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
@@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.18 & Intel-user-space-graphics-driver-b
 LICENSE_FLAGS = "license_${PN}_${PV}"
 PR = "r1"
 
+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
+
 EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
 EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
 EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
-- 
1.8.3.4


