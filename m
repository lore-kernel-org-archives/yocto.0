Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3C19E00D68; Thu,  2 Nov 2017 08:51:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2501AE00D85
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:51:30 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id g90so5440166wrd.6
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 08:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=1Be/hQieLoX5PbC9oMYMYI2DK4WmxWrvC3Xn6md/c0o=;
	b=TH7sJ6hAwAKVCFTc9W1Q/0UzbBfSGYiGkuF8JUKDsDGil/BYPjh0JTcI5o8dS6FSqh
	s4OGF3e6GToshGlerQkL+BdSq0XKI0REQe3DCrOgLeEcMRPxOUFsQo3WhURwPyG3metb
	fVyr5xM+Rq3iAxV8qy7Pvl03roBNGK+nNV11NA1Zo9BqYwLheQ8VpdBMvueRi83R/fn/
	rxJWhR30d84hpDqWtMZaflDQfh3z/w2mg05sruaZH3g4Nc1YTPtakr6YfI0/wS4Nv5zs
	D0mA8QZtDzZ8PMa5cu1bzwJyRYlkGJNX2tVE3gcxrApsXCVazJlZZUKBb4O64hyFfgso
	ilHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=1Be/hQieLoX5PbC9oMYMYI2DK4WmxWrvC3Xn6md/c0o=;
	b=RJKwam+JRKop4NUn0FBqRC+ZSHdWQ2hwTkTjsNsIOYmFxbXKUHjHgbnJWJA4gGGom7
	z03MkdaHYwcfK/4kqveyrNasH+mx2N4+03IX05VY9j01jYJtsXpZjQLSh0zTH8pFNPnK
	a/f6uhzukyCwsfEeM2Eqzo8/9DtKTuzv6tSocJBCXgiiDSViCDcV4owpmbiiWN/UMtxV
	9GSxTbfACac6FlAt61uypTHKvpK8hGSTttofpZodlQ3Zy7UxFrPtd47Y32q82v5JgZQC
	Ak5cj6SzugMzNOaqAvXH9MFB4qvv5z+0xKbjGD6292xWo7cHuZfMPttmjCjSDfVKUQu0
	jT4w==
X-Gm-Message-State: AMCzsaVTcK0giKpSPdLiFJwiSYEq8BtUkngiyEJY1ao9+ypTWC9H8hqw
	ELhfvb7x915H1ctbH8TyQ+ubZzfmbUA=
X-Google-Smtp-Source: ABhQp+SOEKGWU7SSph90ZIinCC9rEQT55uTJjGpt1cmad0UdadsDOq5MGMtLHcKzIUC88Y0a3iOkHg==
X-Received: by 10.223.129.228 with SMTP id 91mr3519441wra.233.1509637889810;
	Thu, 02 Nov 2017 08:51:29 -0700 (PDT)
Received: from localhost.localdomain
	(host86-154-149-85.range86-154.btcentralplus.com. [86.154.149.85])
	by smtp.gmail.com with ESMTPSA id 89sm1481975wri.79.2017.11.02.08.51.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Nov 2017 08:51:29 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Nov 2017 15:51:06 +0000
Message-Id: <1509637869-29982-2-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
References: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH 2/5] linux-raspberrypi: Update 4.9 recipe to 4.9.59
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
X-List-Received-Date: Thu, 02 Nov 2017 15:51:36 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index dd9afe2..061e893 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.50"
+LINUX_VERSION ?= "4.9.59"
 
-SRCREV = "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
+SRCREV = "e7976b2affa8c05bd299ead0ad9c36ddaf135b9d"
 SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
 
 require linux-raspberrypi.inc
-- 
2.7.4


