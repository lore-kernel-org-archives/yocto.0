Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26250E00C2A; Thu, 12 May 2016 22:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D4BE00C2A
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 22:43:15 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id zy2so9159520pac.2
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 22:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yiLhzsaV5yXqgo4OhKvd4+F+94HYRN7+xAmsMXskJJw=;
	b=AU2lBj+Iv+olIB+FNTv5JDmkefwuYpT1kLCJeeDVLw3TI1q8bhEHNKxwKaQ5F6zDcp
	Z30UorDBKnr+BZ8Z98C8Y+I7YXGpP65xaL0gNgSVAqct/oiMCX59By5PrRKjT2Gc/hGx
	mHVyjLuvIWo04UbNDdy9AvfUGVzd08JPTETYmnGZZw2vX0kksgDk7oWGxV5CowEIdeqk
	Jellj2BlwHNxWWb7QKdvm1rHQufmwAAcJGLGM+pihXJDzDb+zXl4v6sxGfyykOAI5IK6
	nEIRKB2v8RjprRSTH4KAGL5RF9MWRAyOdPBysABLJk0ri7a29zy3ehh4iM/IVuAFHmBV
	LW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yiLhzsaV5yXqgo4OhKvd4+F+94HYRN7+xAmsMXskJJw=;
	b=G3n5twxc6sfLW+kA1eyTKtxsMq2QZlIsnGKCOWq63tIZ0zLcyzlllK3ZQM9hisMeja
	Mo6noDYy3kW8M4B706HYKU6pMgkEm9T5uaNmiKZWvSoNo4QW//CsVhIv6zgAGFrAj4wp
	xqxol9/BIApOwk7Tj/NIMII8pfzYoBl4hR1A3/ARIksVavukbOtpKi1siGLfChIGQ4hT
	ZfEXosXfKrVRnSg02C7AHPhoIpoKPt4MG8dX+fEXYUgCATxDfNKfm1+RRcwq3NO9qb87
	00IbcCJOtfvIErR95UKrduqzFoaw6HZqmrUmAJzVfS7ACJ88kNHFyk9WAQjx9de8y0XJ
	izzA==
X-Gm-Message-State: AOPr4FVAMMj2PAOMdS9DtQvPeDiiSOadIiKwkVCEdlnj7qtGmw1uqxldzG/+gqtKbHyA+A==
X-Received: by 10.66.149.194 with SMTP id uc2mr20280024pab.116.1463118195234; 
	Thu, 12 May 2016 22:43:15 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	i6sm23900209pfc.65.2016.05.12.22.43.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 12 May 2016 22:43:14 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 12 May 2016 22:43:04 -0700
Message-Id: <1463118184-2174-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.8.2
In-Reply-To: <1463118184-2174-1-git-send-email-raj.khem@gmail.com>
References: <1463118184-2174-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi_4.4.bb: Upgrade to 4.4.9
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
X-List-Received-Date: Fri, 13 May 2016 05:43:18 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index f6e1005..ba47b22 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.8"
+LINUX_VERSION ?= "4.4.9"
 
-SRCREV = "fe7ad6aa5c6940817fe971d80a7b2a1d6052190a"
+SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
 "
 require linux-raspberrypi.inc
-- 
2.8.2


