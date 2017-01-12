Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6337E003C1; Thu, 12 Jan 2017 10:29:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DCBBE0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:29:15 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id 127so4548801pfg.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=AUuJhyJqGZKc8RvFsFokLm91hZCYSfelpDWLoiTZIEE=;
	b=TckiqKDaF1AhHzkqpjD5PFux/yIyD8tElP981IOtAWafgDn1hhBKdCqcMrRdSDKizq
	8kVMsKKeInoemkgxlOLOOXaU4ZFuWU6h9WJvQF7IX7Tt52BGc23fV3IzIHhzxzFUdScd
	fECsAQaP3PyDZIKShQEmK/IS/WX7Ro0x35MummMZhbLoWDSOCerE8UYfhkIwjVPB/rCJ
	zYNdmjaPGmYJ7fZR1B7bd0vkcIfdb+cfGWOaCoMUPSqKN0Qs2HRG5p7sefLAQSJS2iru
	TJGB/UuURBSPd7aWrtW2+9WnvrTi+vd33wadtdJzbGM3cnBDyziKLW32iDHlwkWyDWSK
	jPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=AUuJhyJqGZKc8RvFsFokLm91hZCYSfelpDWLoiTZIEE=;
	b=KlsoM0IkTR2z3Y3jJgRK6OHg9hFmJ7TXO/wFGWHy1ijUAOZlB7b0viMSrKSEMFzPiy
	wqWzbYgnjvi9d8bnOC3OY4YHual67thvBC1uFwGwijg27mHFZci2Y5PA6BH8e6+KZcW5
	mNjpwHA3L3XD/3ju/3wn5d//cl7oDNerP3DmnaiSPx9xc/g3LQQKZCyq0Qbpqa/DKiI0
	uco8azu/geySaXLb62IyAJFGrOzE+bFMwZfTvm1fGa+nSvtocaJZx8NKn+zGHK0sGvDw
	QekgLATz3zAAgDTP8dg7ZbfPWS2tBrEqWbs6SeZokGIHrq57g+YZk5uIEllP4Yjwrxf2
	Tl+Q==
X-Gm-Message-State: AIkVDXK5yS7OgqiuAm2XNsd8edLPdsMXQz0VPhqeKNeERNQtITj7lotFGQMS581qj5ThBQ==
X-Received: by 10.84.218.3 with SMTP id q3mr23359470pli.80.1484245755151;
	Thu, 12 Jan 2017 10:29:15 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z77sm23376751pfk.47.2017.01.12.10.29.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Jan 2017 10:29:14 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Jan 2017 10:29:04 -0800
Message-Id: <20170112182905.15203-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.8.bb: Upgrade to 4.8.16
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
X-List-Received-Date: Thu, 12 Jan 2017 18:29:17 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
index 7511f93..be25e65 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.8.15"
+LINUX_VERSION ?= "4.8.16"
 
-SRCREV = "c8af0c2f515556ef052913d552b6b11501c71996"
+SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
 "
 require linux-raspberrypi.inc
-- 
2.11.0


