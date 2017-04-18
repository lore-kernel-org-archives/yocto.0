Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB027E00A9A; Tue, 18 Apr 2017 11:13:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E00FFE00A38
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:29 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id o81so881475wmb.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=JnrSB+71DpvwyKyXbhd4UcUh3P924CcCmmDsJuNiBjw=;
	b=XHRsjod1KzBxoUP2lXkK5O27kV38qWKq8qE0b0+wYI/lYGBwiOmtNp9bnl7q3h7lNi
	xHy0mCr/OsY3aqtsAgUCfzH9yVLkgUCzMtx+amkRbjFNW7Lkx9Kh7EWQmsq3Waba9luQ
	mCIyb6bAZy+2H6v0lmD9BK/9yt+pyEeP91w+Gj392mvbayj8nfbpXqwB4XAcJSyp3YCX
	eDuf+gRqiAoqBmtL+0VNEe/SxlQVqR0oyLZYtcE9mpVOsYUN4jMgvz3sVb3hYUAxP43i
	etDR1eblcLRVIjAYwunn09CESZTMce9863B1mPkrYfJMgbX9bI0MjCh8+uyCoi4dJHFD
	V+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=JnrSB+71DpvwyKyXbhd4UcUh3P924CcCmmDsJuNiBjw=;
	b=VYLzeBUNiXZyzkTLGbG+xBKNYkJuLbwzW9dIdN61n0bU9C892a2smaWRdjkqzaoRQe
	JmYjGOx0Ut3rHewBOlMJ2y0xy/JOvPX8js8/jnQNixorx8jJ/8u6UlhOe43VhqRFGtVr
	a6zC/W1paccsHT1gz/XhhwkB4yZz0PfA7OiaB6xh4hbGqSbNnYn9Cg1WdBCYjzA/npUy
	8Jt6uau8LhdzzN0YcQ+3a+fUpYySDi80GctcvOlvQC+plxnfYvJegODOJZpylwzghIFL
	aFuv6M296hfIMb0gSfioHIhq7V9TEHekvUfr6UHJX6AWiT+wd2iced7gnkFI+AzjoI/P
	mPag==
X-Gm-Message-State: AN3rC/4yJvOPSnrlJdX7Fa5eH2DwUMXwPMZoXmZZfL8DPPt6lLFrmvzk
	CVj9ICZYzVLI+ZEqbWw=
X-Received: by 10.28.45.213 with SMTP id t204mr3275853wmt.35.1492539208061;
	Tue, 18 Apr 2017 11:13:28 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id k4sm365104wmf.12.2017.04.18.11.13.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Apr 2017 11:13:27 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 19:13:21 +0100
Message-Id: <20170418181322.14588-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170418181322.14588-1-andrei@gherzan.ro>
References: <20170418181322.14588-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/3] rpi-base.inc: Recommend udev-rules-rpi
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
X-List-Received-Date: Tue, 18 Apr 2017 18:13:31 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index dc98099..50eebb4 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -57,3 +57,6 @@ IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE
 # The kernel image is installed into the FAT32 boot partition and does not need
 # to also be installed into the rootfs.
 RDEPENDS_kernel-base = ""
+
+# Extra udev rules
+MACHINE_EXTRA_RRECOMMENDS += "udev-rules-rpi"
-- 
2.12.2


