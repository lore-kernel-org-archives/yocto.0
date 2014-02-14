Return-Path: <koen@dominion.thruhere.net>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D398E007C0
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Feb 2014 10:24:49 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id t61so8729794wes.8
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Feb 2014 10:24:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=La1CHXNeRRMinTInlCF8DfcIfpXzrW2LQbyFJk+2ID8=;
	b=S/80qDVYqI2q084oWW80xAjEFdM+KtP+O/60mgeNfGNU1822YaZa0974jAg/ejmdpV
	+s9UJe4vOePfWiPtQN15ylMQtiToxw6l1V9clmoyMZ9GIK4JuOSvhUFu1zM+rVu/+PPW
	Z1s0zVvuYE+7/LYyLpNXar4xJLilSBDjiuLxH+iXIa7DnXdcm6ErMiADLb0tlukoo4/G
	4XT2QX5PJePh+WmaHXyeO3mTfo6q3oSrcg3X3BJr6hbsUlsGTu3YQuX8rgXkZdzpvj5L
	mXVVPBQ7DTd7x5GO85ERcia1n/a0q/pVWVCPReT/k+DplF6F6MtcX/XCyRXvNvS7Z4eL
	WAKQ==
X-Gm-Message-State: ALoCoQkBW7ox8ciNZqHf9Y3uGedW0TtgNnuwhRrG3WCgS0zMgzlFMXYMqupOeqXvbcTpBnaEwees
X-Received: by 10.180.106.40 with SMTP id gr8mr3385997wib.31.1392402288002;
	Fri, 14 Feb 2014 10:24:48 -0800 (PST)
Received: from localhost ([2001:610:612:0:21c:42ff:fef0:7f75])
	by mx.google.com with ESMTPSA id
	q15sm14545238wjw.18.2014.02.14.10.24.46 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Feb 2014 10:24:47 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: meta-intel@lists.yoctoproject.org
Date: Fri, 14 Feb 2014 19:24:46 +0100
Message-Id: <1392402286-32663-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.8.5.3
Cc: yocto@lists.yoctoproject.org
Subject: [meta-intel][common][dora][PATCHv2] emgd-driver-bin: limit build to x86
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
X-List-Received-Date: Fri, 14 Feb 2014 18:24:52 -0000

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
 
+COMPATIBLE_HOST = "(i.86).*-linux"
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
 
+COMPATIBLE_HOST = "(i.86).*-linux"
+
 EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
 EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
 EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
-- 
1.8.3.4


