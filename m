Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42081E00839; Mon, 31 Oct 2016 09:52:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 947B9E00803
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:19 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id n85so9175294pfi.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=iVdn8tMavgLrJGV6nTvb98rARke+H2rZ7qPJF7BCrcY=;
	b=kgzMLbffWu4c5VNtGvHj5B2BFCvLY/lfbzFpRQqjuXMcdxk7qAeZ3nLAEFugjIftm6
	Yb2MP/T8b7oA8z2zHfCTulXJRj2hUeiBBzjuuMSPEKl5e4qnQZF66J1GX+kQe47V75nR
	zehvUcpmAeFyBKKRYztQvAfDFArHFLcE3G/ABsK8udmLwossGcZ4PAzoKWkGIwFPpIxy
	0CE40ZDVQytF+mkc3Zx9dJ7YTQQmy4ECJ/KnK7u5JY9zLFDZI87a8qXJC9VZ2b5pqERG
	+Mdou0YdwHXJnShlhzhOGS7SNR5XnE3Dyl1Jk0v2/RAvBYTgc68/p/6PTqUTL1FEh18G
	/41w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=iVdn8tMavgLrJGV6nTvb98rARke+H2rZ7qPJF7BCrcY=;
	b=Yz3jyt8jM6/g5/YQ1wsKKwL9Tt2WIzRl6pAG5M/7MYYduUjsV/rfzHb2kFPg1jPp++
	VdG/bcGM57i176AOt87pPfVdZLkze4hMvZjels2xqlnjKmQgFsD/IDH/H9cyBTsLOaAB
	vkx+7lvknAejheAVIOGcr9WMoXp38sIYcvP+Ym1cM/cXz2YCed7gxIHb99jUxm+sjfJj
	Atdf6cMPiXIIpHCVIPjJVxTH69dX/huiiLV8zPMvZTSCF+e7yLo39bOKOJ9itYthwCvT
	/Phi6fCxG7Zyb5dOSRolP5bUFbjfo4vmxtp27mjzdpPaXzNud7ssxnla87TkVuXwYk5n
	38Dw==
X-Gm-Message-State: ABUngvd/gPu4O9XxmKCWiZcn+BI7yU6iadKWGRbgVggPLCrL5y6ZNsaz4eWEqVNn3kZ+9w==
X-Received: by 10.98.207.195 with SMTP id b186mr8759389pfg.40.1477932738921;
	Mon, 31 Oct 2016 09:52:18 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	r2sm14653100pfi.67.2016.10.31.09.52.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:52:18 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 09:52:06 -0700
Message-Id: <20161031165208.16286-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.1
In-Reply-To: <20161031165208.16286-1-raj.khem@gmail.com>
References: <20161031165208.16286-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/6] userland: Update to latest master tip
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
X-List-Received-Date: Mon, 31 Oct 2016 16:52:21 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 3c63f94..7558851 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "2350bf2511fa49e177fb35c9613eef1b657a7506"
+SRCREV = "2852d9ff5a9038021f1c22d95e8a9e3aad09893f"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.10.1


