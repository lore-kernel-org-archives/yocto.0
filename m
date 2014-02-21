Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAA9CE00809
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:25 -0800 (PST)
Received: by mail-qc0-f170.google.com with SMTP id c9so5342805qcz.29
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=vGEIbDZQhaAmQ6CsbABUCx8eqzvTFHwlQydULcoPYWo=;
	b=AVCVg6Oe4uvKPPJ1O77lgtJbCb6gbAo2IFy27W/JWFTp6MT4uTayzXusXrknRAph6h
	tTv7y2QikCO72/c2zaOSTx++d41MzR5p6enRE6+e4Ue4mzKosiHrHv6AvmBk4YxYpLDW
	OV9p5g5LZBjozwSzJZG4YfU/YWr4V4pByQ/aQpF+xgTE0YH1V7WpTOxgAU7deJmSTLpc
	e0rwQYzFo2nFh8afzXCxuJhe4eTpauV6j1VLZACGDQbbaLVDCQLXepBNR0C/Qomsc6Cb
	Nl1vwWGdPuZr0CIoTi7jSeMXOVuxDd8/nq2SzY9/PzFvs6TfmAKXzPXj3qZhVuz/x2NH
	bSRA==
X-Gm-Message-State: ALoCoQnqs+lsv2JchSxAAWc+USCPlVafTDthL2ZvEIqbqM9bSMPjj0wIpXnFgy0HkP2GMg9FA2rt
X-Received: by 10.224.46.130 with SMTP id j2mr8494846qaf.7.1392978564826;
	Fri, 21 Feb 2014 02:29:24 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id
	k61sm11862511qge.12.2014.02.21.02.29.22 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 02:29:23 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 12:29:03 +0200
Message-Id: <1392978548-31880-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/7] linux-raspberrypi: Update v3.10.26 to v3.10.30
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
X-List-Received-Date: Fri, 21 Feb 2014 10:29:25 -0000

Change-Id: Ib15942c4f525c8765d49deda94d2195dc01df14c
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.26.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.10.30.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.26.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.30.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.26.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.26.bb
deleted file mode 100644
index 03f0bd0..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.26.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "8c92f4407b5fa8b2a1c843e6c8c0ccb5c5a0b762"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.30.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.30.bb
new file mode 100644
index 0000000..e1f2a1a
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.30.bb
@@ -0,0 +1,6 @@
+SRCREV = "26d1de2993c81c01f91ebc93a1fad8957c9ece17"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


