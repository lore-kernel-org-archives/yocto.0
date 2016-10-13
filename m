Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D0A9E00E17; Thu, 13 Oct 2016 01:15:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48690E00DF1
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:15:40 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i85so1139178pfa.0
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=pnR2KWSxEUlyKs7KfXM0Mn7aHRYS0DuOE3YsBTR0d3k=;
	b=oNbrBH1zZ8OuljaZbr/s/woFwZHSI+4XL5zlEWKyAWhf9c8iMcjHXofR+3OAylmuCA
	SoaN/evQwCpmQEXKymxKscdVMOQG3EYethx4+k+LOZ7IF7PYgzThh8y36fmiP4ayKgUR
	2UlzQhzSZtQCSMtlvBfhiMM6fyzZS/jtshPhqo8Z/w+dBCpqi9Yla9qj/Hh+B8uGb2IQ
	gD8XOlbrEMFOPL1LcICuL8ZsyeTeYtLps5jkRfJ1JCLpUEZinRDXee80xMv5yDxMN0np
	Vfc2yPFPIXtFOB3fSjwu1ycWMhXKrjOOo3wTqPZrlALKSix5wrl+NtBLdSgfPI8+bFbH
	9Mqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=pnR2KWSxEUlyKs7KfXM0Mn7aHRYS0DuOE3YsBTR0d3k=;
	b=CgchPBszancNybKo8fTSe+ABWKxIK+2ZF7PLD+xUaOsS1UUZknfT/35n1janZXI7zJ
	6mn7ZVPGXnb1s+bX5CslJHA1ezyWicggSv++gegoF2kKrFEB2XeUtNJx8JSS2dZTLbWc
	0aBegoIrufIhPUDh9q5EXtXJJiiAW3oET5BZ9lNtx8RGeoPoZZMOxxlEUaTCY/3zVVoA
	VFMjmYqfjkQWfWrylLUGFik32j6S1g5R2HS3i4X/JURQwRJ1I38l5Avwy3UMIekvQzMV
	S17Z/cP2mviaDqO+fKczXxd7f2SplZPsQvRFpC3sTzUDZsfRbkZp/SCal5nq7ChiXwei
	PdxA==
X-Gm-Message-State: AA6/9Rn91PXY4Yao24MmAo4BMy9bNcwP3nHUhh0rLNjak/jbqV46ar4Q3QtNZ5sA+o8irg==
X-Received: by 10.98.19.208 with SMTP id 77mr8343382pft.102.1476346540402;
	Thu, 13 Oct 2016 01:15:40 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t128sm4179701pfd.65.2016.10.13.01.15.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 13 Oct 2016 01:15:39 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2016 01:15:31 -0700
Message-Id: <20161013081532.22457-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-raspberrypi][PATCH V2 1/2] linux-raspberrypi: Add recipe for 4.8 release
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
X-List-Received-Date: Thu, 13 Oct 2016 08:15:56 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
new file mode 100644
index 0000000..02623f4
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.8.1"
+
+SRCREV = "5b7970b19bbb2ea1620591bfb6517848696ed0b9"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
+"
+require linux-raspberrypi.inc
-- 
2.10.0


