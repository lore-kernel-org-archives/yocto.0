Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4003E0049F; Tue, 29 Nov 2016 08:05:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A950E00498
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 08:05:10 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id j92so30370013ioi.0
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 08:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=3UzsJ3mYohptBDpyvWf+O+50eoEMBEcNcv65zRJqNAw=;
	b=ZAW/D3zvY4k2xY/45smpDQ6UilXqe71+WJXTpa2FtFs5880aTLnLumeGXi1Pid3cWF
	bcglM1tfeiRZ0XSPU7mSzP1pY3TIjQST9XGYBzGBi3vXwChLbv+q36RGUtz+Wz2yO0zh
	Wrj4ygRsDc/rRvoMHmHX4LcmGqEojjq0iH5ThtkNaHeKbw8oY6BuDidLg1DjYI7AC0OC
	8gf82aMYN9hqSag300OOyOQJjPS1Ltyg/Kql5I+cwZsgFHumWs9pvm4xzFmv+CfL1CXm
	ZP3909cG9sp88fjuwV1vsYXHzjV6URQeGTzOycpSWRbhDho8c0pNTXVUYxQWXCGlcPis
	HckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=3UzsJ3mYohptBDpyvWf+O+50eoEMBEcNcv65zRJqNAw=;
	b=MPVKVJ///UWwXxCmzP1qbyKHBSSxLUEzxrGqZ1xX/OFPtVik5tJpSfb/794fgkX2NE
	B1Jbzv0Xfa180+5TXcuB6SW/xNk5k96FKhiK57+/Vj8PMhrIc4j7pKt4dq0acYXm+BYN
	S5f7o4sivxRtrNNmWj93JurYOoJw3QR9ZjNQzkvMCYXP6Sa/xXQRo/pV/aMSUIKjybeF
	7EGD8nGGuwPqqAlJJwHFVasn8gCoAyQ4uEBEMzD27RZ8qeKe5p2jWreHzorOGyiLDsxG
	C9UmhNQr6jVMndAOAgy6DPAXBpiKqnONZX0I5i0XZGfD6ac8YS1jEHDbPFTRA38OI0bh
	PQ+A==
X-Gm-Message-State: AKaTC03w6NYxb2+ZbRWovETUhlZgNCkscEO0GApauRW1FO/cmPgTBjdEpYU0ONGuvmeu+g==
X-Received: by 10.107.18.96 with SMTP id a93mr24362179ioj.144.1480435508969;
	Tue, 29 Nov 2016 08:05:08 -0800 (PST)
Received: from openSUSE-i7.site (65-110-221-106.cpe.pppoe.ca. [65.110.221.106])
	by smtp.gmail.com with ESMTPSA id
	e143sm1047272itc.9.2016.11.29.08.05.08 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 29 Nov 2016 08:05:08 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Nov 2016 11:04:59 -0500
Message-Id: <20161129160459.813-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.10.0.129.g35f6318
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.35
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
X-List-Received-Date: Tue, 29 Nov 2016 16:05:15 -0000

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 19e8552..35a72d7 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.28"
+LINUX_VERSION ?= "4.4.35"
 
-SRCREV = "5afda48c3408e15742d4569459a4ff668e2857f7"
+SRCREV = "5d765c8b5782de7ed49f623c107f1b395429b560"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.10.2


