Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ACD1E00A1C; Wed,  8 Feb 2017 21:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC708E00A0C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:27 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 194so16933537pgd.0
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=oW/SWXtid2wrMJgHjU7cJY0PtSTX75e+GCWDpisEIdQ=;
	b=Yrmr4PfSkdLgf1mq8UulAxFjFWvcbDlRaj8TpzB7g2OR6Bd1E9eXSFnkaGT0zP0ATi
	tTIj+FrD5X49/KPrKnpfb0aVekEDD6yHLwiyrOF7xvEnm2rOuYW0xZLUfyJJ5JdnP1dv
	mTas/QUV284St8hZwBWHoNUF+StzsxhNEfiGscKXf6GFpU45z1jPe/+6aEEIgzZof69T
	PMy3DxF4YVBh9wWzdeecB62FScfgIAcvbVqKTloQuaH3+dw2SlZHB86bitDulVEby8hr
	nHsMLFOkFhXoMWO2R6e0wonHRPLQXkkp0r1nExf1a3d2/nwq55rC4iOvm4ZVw7bg+IhD
	D0Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=oW/SWXtid2wrMJgHjU7cJY0PtSTX75e+GCWDpisEIdQ=;
	b=Ve5d5cbqjL+huXANJifkkZaMF8JL+PQ9MdIWHo00ttuaUdOegCxdk75pv3WtUd79Ps
	6gQVsEnAiXtbkzkL3KG95NhOm8KmGLV+KBpb0/D4OWh2ASDkVNwlOu4+pFtAoQo4G1rB
	sz2FKV4FtOB3cTAhcTbMT8xNtUe1eaCMEEkdA4nuXd6pZ+WuO6F2dcZTkmtP99mNf3Mm
	gkdUKtqIFc16DPjbL3ygl9lamYCw3jJ+Rta7xQk/hbqhBSvV05vfnGR8HHixoxg9JTOl
	ALybx806RONr8uVRTkOSAfBsmR9cvWck3qeYeH2lSQogSu9Llv2MyWxJT6qOZMweV/Er
	/GDQ==
X-Gm-Message-State: AMke39kEXpmPrv/PtYSCd5CxxTNWioq4Clkrzh83rjCciVmoWhyY9cVhzDv9vkiqiC81WA==
X-Received: by 10.98.82.216 with SMTP id g207mr1737570pfb.32.1486619367431;
	Wed, 08 Feb 2017 21:49:27 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:26 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:49:01 -0800
Message-Id: <20170209054903.31598-7-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 7/9] linux-raspberrypi_4.9.bb: Upgrade to 4.9.8
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:28 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index 1f8fe11..c59bae5 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.5"
+LINUX_VERSION ?= "4.9.8"
 
-SRCREV = "fd03479116aebe4a9faf64e108b3ab7eeb8cb71a"
+SRCREV = "a5204ea3b15aa8eaaf2c3c7db7dfb177a84af730"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.11.1


