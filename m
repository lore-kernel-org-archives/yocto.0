Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E17A8E009AD; Thu, 26 Jan 2017 22:28:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CAA3E00992
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 22:28:21 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 75so24254887pgf.3
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 22:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=gPUnizSi9JxfHgnFNeDt9QXnJKQv0hKnM65yl45DwSY=;
	b=PzTLFw6HxS64AtxXYVCToHhNKAOE99bU45bHUKgPrvETgbuKOEKQmGMlcFODrqvIkk
	VDO1psK4IxEkCOoZo2CDRrtgcS5pwdLvL5ZZc2HTmyCpoSfedDb3kv+5L3haxKQllwUd
	YG0OcT6/mAWRTL873RzGHmz/WQAXln1cNWJNCRZ3a+BE0Hv26BFE6geueBA8dtWuGb2j
	ROzeFEhDpZ+LQRZLCWTnlW2FwYUXsJWi1S5ekDl43fGYpx/Cc9gKpRreVHiBByzS7sc7
	tSCMQmIyOnA/5EUY9yQeXMgTw941Cvv5h/Uz9ggD59KEw1I/BfBaEIzZaRc+fEWwAJEe
	0DZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=gPUnizSi9JxfHgnFNeDt9QXnJKQv0hKnM65yl45DwSY=;
	b=cihK4vlRqNW3FsjYI7l5xCqO3mIFjtukAr/Z4ZzYo70XAqZXnGxYvojbc8+X1+XZ5m
	/6zuVf0ic3n1jggjgrGUS9+d0AhNoWoA2PHv2z4kuT+b55OGqVqCD+LT0uW8eX4dyAoQ
	FVMlgI8+DMHtumSYj3gN7JOELIjHp1nq/1a9xjOOl6190eU/gd/XyKSpPOSX/EIx2GzI
	jF9v/E4Pmi/UqpXOsuf2QCmYXhhn8Ur9twzHS2ex4ZLxw96oUr6VR3DDIhVtp+k1rmPM
	P7CaAetKkgMMYsfdu/6S9fOTouVfqJwphiV+kNdg44g2uPkD8JEN2wdmbrdClxLX+pz6
	u44g==
X-Gm-Message-State: AIkVDXKZmKUyJi8/S5AxCoHhQMOI7qXdtDqKd/40BS6AdElsYvDyc43XGUI/9GBdF+jMWQ==
X-Received: by 10.84.232.133 with SMTP id i5mr9807331plk.79.1485498501478;
	Thu, 26 Jan 2017 22:28:21 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m20sm7809221pgd.17.2017.01.26.22.28.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jan 2017 22:28:20 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 26 Jan 2017 22:28:06 -0800
Message-Id: <20170127062807.7564-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.9.bb: Upgrade to 4.9.5
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
X-List-Received-Date: Fri, 27 Jan 2017 06:28:24 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index cffea1a..1f8fe11 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.4"
+LINUX_VERSION ?= "4.9.5"
 
-SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
+SRCREV = "fd03479116aebe4a9faf64e108b3ab7eeb8cb71a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.11.0


