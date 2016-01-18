Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E86E0088B; Mon, 18 Jan 2016 14:05:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81D4AE00803
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 14:05:32 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id o6so16869085qkc.2
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 14:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=bNU68BHpGosuVzjZvpAH7M9CYbtl0jfTSJLpKo1q7yY=;
	b=zw/RrLplGC7re2Jo086GokWjVnNvLdh1M0kH7/Vrj1xb5Hi87d08pyLpoFpXS3vqj8
	HYNfh4EnN3ACBRMIoy57x9DSatfhhsZb05AuPiXC8W35CqHbIUACZ/7ps0Da/m9+GMzd
	rlYCVI9v6h1lsVlHJ7BQrtf7Irt0Ffr9TQJpGxO4Ltfz/TLkLXOGeG5CgjMhel9eBGXM
	R1+PMszo6JxibglR7xnZ2ZgiD22w7cpsNvrR8apKtA1yoKRQYQvhr0o8ZCPyhFBGsimb
	bc8wi2spFhYJ8HLUEglii18lcHSOxFxyh/anmmFGGjStQMnllHfrl3YodemFN8PZqNW1
	lIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=bNU68BHpGosuVzjZvpAH7M9CYbtl0jfTSJLpKo1q7yY=;
	b=LKUAkbquYdMP6X/XSMQkOudbopFJlARghJFQodrg/OPTRug2zRMSB0PmXvoMiOJKG2
	8VAbUnY2YT7D2squXRI2BycE9z28u7KeLTmfocatTJI9TpZdqWJwe//2qwweA7yjDAyZ
	6qlgMjk9s7IQf6eGsZgtcs+y5P55BdWspePbcCxCYEVIoGlmtjHRWQYUtzZSqGvQo3jx
	zS96QpNScd4McGB32hZB06CbTovZpD/MFlJgIvT6dIrsGUOoIh4eqV9h6IuO56n5zg3B
	wnhGzm4C8aFGP2kUoSq7UG1KmPr6n/lSKtak4vWkaMjNW/IOK5+XhHrDw+VUV/tPeTVU
	btjw==
X-Gm-Message-State: ALoCoQk/NttbKThs0/QMdhn+I6ZWg7thLIhaqyPCkFgu5ieA06qdndOHOkwvYTl8RMwnY+nJ62KxSf4lhuM9ll6f2SaVU0JoXA==
X-Received: by 10.55.215.91 with SMTP id m88mr34358997qki.8.1453154732457;
	Mon, 18 Jan 2016 14:05:32 -0800 (PST)
Received: from ip-96-114-220-84.ae.ccp.cable.comcast.com ([96.114.220.84])
	by smtp.gmail.com with ESMTPSA id
	l139sm10865975qhc.24.2016.01.18.14.05.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Jan 2016 14:05:31 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Jan 2016 22:05:25 +0000
Message-Id: <1453154725-47452-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Subject: [poky][PATCH] poky.conf: Delete BB_SIGNATURE_HANDLER settings
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
X-List-Received-Date: Mon, 18 Jan 2016 22:05:38 -0000

'OEBasicHash' is default in OE-Core, this setting can be leverages from
core defaults

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-yocto/conf/distro/poky.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e62ad4d..39419d5 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -85,9 +85,6 @@ SANITY_TESTED_DISTROS ?= " \
             Debian-8.* \n \
             openSUSE-project-13.2 \n \
             "
-
-# Default hash policy for distro
-BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
 #
 # OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in 
 # an incompatible way. Such changes should usually be detailed in the commit
-- 
2.7.0


