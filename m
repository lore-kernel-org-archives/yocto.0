Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11D23E00D91; Thu,  7 Sep 2017 06:24:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5E2E00D8C
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 06:24:54 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id p37so2345438wrb.5
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 06:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Y2jeRe7kO+3Dj1K2kTHUaf3kyFCvp3ZnH13afyMmlrQ=;
	b=LE/DFQ+cI3c6lbr90lGhYuOiuLrzbjcoilaRe8ezSfrAGXP3rznphvwxByCK8A0fm3
	Ct4/uBFa2/5Xdl1xJHOqmRn4Z17wFk6I/vKI5rqVHGfuEvtfnCrXUfrH7lP9BAe1V7Dd
	r785hP8EYKXsRka7kYC3Rkqw4Z1CBU/mWvtFSDbWafNSsqkx3bhBFsMOng7ymN7FAUfm
	VNfPyaVTxDb5UOsfyFyVhhfaaiJPd2etHTaLi7OaVyf89AlokYavFMwiR6qkDOaseSjT
	mPz8a2dvFxuHJP2MjAJBza7cq0hT9UrdXgtUiWVbNarwJ1nsitRHr3d4hAENJ2o77dzQ
	TFaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=Y2jeRe7kO+3Dj1K2kTHUaf3kyFCvp3ZnH13afyMmlrQ=;
	b=IPO945CfP4Stw7NdGEktL1O2+TYqEXtUTtkhlRBU4tHt88Z89/wB+p5yuHhztuicE/
	flufZzeX6nvQL1qLRcSX3Q8f+APnNj08xhsjKJiZHtLfpNJ0VBdRuBYoff2e2c6khewR
	tiQnI6IYpndRAG3r6ucgqHT0hZYzlfpQUo5p3wy3ATGtVTiEN2LzrKb2BoOXEoF9hyzY
	ZuBUoEbDw6sMTymDm8vMhq/H9ol4lFMTXqmn56ZwqHoOnUL0lVMyPmxRwd2kXRMYjvf/
	lK5IuAIQBmOVhh72yAnItV4EhWwprtZg/3xFyUHXJs/g8TJmXfaAoX67eRneMmXMvaMn
	neSw==
X-Gm-Message-State: AHPjjUhQJZ0ZAsL7viked5aoIjAt5V1hagSBbAVyCCeUn/OW8R4voPP8
	PYa5Utw0G0ByHxHbSa9OsQ==
X-Google-Smtp-Source: ADKCNb6aLkrEF+EDjCkSPx6ref/QdlcyxVBQYXznitMCOqm2PXBjjp+oXnQyx00898z/9CEe3xURUA==
X-Received: by 10.223.139.212 with SMTP id w20mr2131563wra.275.1504790693253; 
	Thu, 07 Sep 2017 06:24:53 -0700 (PDT)
Received: from localhost.localdomain
	(host109-150-130-236.range109-150.btcentralplus.com.
	[109.150.130.236]) by smtp.gmail.com with ESMTPSA id
	z108sm2581622wrc.49.2017.09.07.06.24.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Sep 2017 06:24:52 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Sep 2017 14:24:40 +0100
Message-Id: <1504790680-20783-5-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
References: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [PATCH 5/5] userland: Update to current master HEAD
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
X-List-Received-Date: Thu, 07 Sep 2017 13:24:56 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 8ff1411..1fc0717 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "^rpi$"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "50d3cb5f4ee95a9513bb9f94d661947e9e6ac085"
+SRCREV = "3caf0cd4a61f46b71eff49422c36e1cd2727ab45"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.7.4


