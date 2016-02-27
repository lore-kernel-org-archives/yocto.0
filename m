Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29803E00C55; Sat, 27 Feb 2016 07:27:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56F29E0086B
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:21 -0800 (PST)
Received: by mail-qg0-f48.google.com with SMTP id y9so87797557qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=xyAQ/bVsUv91Xv6kcjFTZrU3AydEAT641pNd14d8SNs=;
	b=Tv9BGZwGc5hU4fL6x1MtMLSTLcI4c3tamIpd3cD2IVyGMfA/oBnVZ9TqkAWxuq+Ja1
	+IW5t1KOx9qvIiEjmUqR0V//4Ny6aTywOuu9L6aXlUkeBGqI4/GUIVtY6EBUBz85eLEk
	pCFDcQyYra0stlhrHDUzyVBmBKQXhK+0bFlz1m8kKK3m+KzHFeZLo0c2TgfGD5/TQbk+
	szbMrw326Xt2l/T2SAPcV5f5Lof6W5dIJ635BNJrINMlGaqmWpusAaRhawhETj/KRZ49
	PtfFfyVGkjr/bSZv4v9QTtaq23JHlttDhvCVgeRklLSeph6lZX5OC0PFlHbFm+Y4BooO
	rgwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=xyAQ/bVsUv91Xv6kcjFTZrU3AydEAT641pNd14d8SNs=;
	b=W68d7rWvohnMfRnHv/jSHvQwrI9Wsm34m1NmbWndeVOUO3ZkiPBuTrpp4kBy5U1Nn0
	NJJakj0HKF5nDC7cggikLOF/8IggWVjTecagxtmhmybHHZGEFVQdWdPMPt9NLZvTe1U1
	QYiAJcD7DdtRU5FJ4Be/tCMWkDu/uDXYJc1jf0dXfH1bLTHMpc/jDRKvBDDmN1O2KZUX
	HYrfCsloix3VsxfHYcoU5/pSauW4CnFQNvpT7VmILcM8fx2SuI1W8Q2SoegLq6cAYmy/
	2rD5I060CWcTx5EHT72yE+SaA09NLZxSNy9dDQ+Rk1dHIOUMkUe7xElN2kjxt55QnPCe
	26QQ==
X-Gm-Message-State: AD7BkJKvPCd0Y4aP8jFKimTrL6ZxMMRjPtK07O4C0lt1Pjzztes2glJZXjrIvMTnSUUlBw==
X-Received: by 10.140.132.149 with SMTP id 143mr9008325qhe.7.1456586840995;
	Sat, 27 Feb 2016 07:27:20 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:20 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:27:01 +0000
Message-Id: <aeaaa262267bceb5793ce4b8693ca3d5249545c9.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 22/23] linux-raspberrypi: Upgrade 4.4.1 -> 4.4.2
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:30 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 47084e4..3503a1f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,6 +1,6 @@
-LINUX_VERSION ?= "4.4.1"
+LINUX_VERSION ?= "4.4.2"
 
-SRCREV = "52d3149aba3c684db1b6c739ca794dc330d92929"
+SRCREV = "8941fe4985a1cc8f800be00224c6a2e741789d03"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y"
 
 require linux-raspberrypi.inc
-- 
1.9.1


