Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EBB5E00C17; Thu,  6 Oct 2016 19:09:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B329E00B58
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 19:09:15 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id t25so1994820pfg.2
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 19:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Xm0QM1kRELki409wyLRy5Q74+fJItqOYkehIyR5eEK4=;
	b=qS0Ox7deXjIOgfsG/x4d10vRjqmRLyWaE4aA2PrXmaMTHcNp5pHZlMo7KZzOlNE12L
	QNoIIdHLCNHM+5NjvQKdzGCsbonmoytl98XCXaXh3z66hdv4ABPtzlLqzqcbcbwr1JHW
	JjB0f3nfPH0CApbBEJE99BUrv0s1nCJQ5HioKujepGoDz7rE+twyOwgTeWA5TFL4C1HF
	UIlwOlaE+Y9px1K0pdzAohduLefSl6Z12EJI6fXydksmp6SZP0fb8edRa52eeWfm/prX
	5uXg30x48Ed307fBn1F1FphPMMIPzONPepgyvL9aqr93MSlaWp9UVoF/Jupnv3gfRMhN
	wAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Xm0QM1kRELki409wyLRy5Q74+fJItqOYkehIyR5eEK4=;
	b=imItXjchos72I1Qum/bR1O9RxRK5gIeriRztjfSqbbIunEF0i3gfBZFCfglYPemUQi
	fidZeGfUMaRO//k71CLIxGFhEsSEyqzA4uAlduS4mst0tfd5HB8mq6lct8KlkUdRa8yS
	QKTeEBcDe4QWCCKnvd/qOSHh+n3HmdniLoKyqfYxjLnwmmoJFItBdjzxb/Pxi3iHJxBw
	8PBadKo3cIBv+J788YMWNVVOXUPKLjao8BELf4Ysh/SMqaKiXNt8nVj4dErhVmQgundD
	wsr4jsVLVC8F+CpXGSjSeMtenXbMVJcnKNX1AqSsIye01p8qAlVJvHxzeV/YifKo9Rkb
	wN8Q==
X-Gm-Message-State: AA6/9RlsRUOpkYqiLADQiphD07F0mSKTYQRDMyl/fLhDBSwpQBOlw4jRTEbnN4R57KCMNQ==
X-Received: by 10.98.208.195 with SMTP id p186mr22667026pfg.90.1475806155662; 
	Thu, 06 Oct 2016 19:09:15 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	wd7sm25932607pab.2.2016.10.06.19.09.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Oct 2016 19:09:15 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Oct 2016 19:09:05 -0700
Message-Id: <20161007020906.32228-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
In-Reply-To: <20161007020906.32228-1-raj.khem@gmail.com>
References: <20161007020906.32228-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/4] firmware: Upgrade to latest
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
X-List-Received-Date: Fri, 07 Oct 2016 02:09:16 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index a9d2327..29f9c01 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "1205048f037098b1532bb947d1f4b823bcdebdf7"
-RPIFW_DATE ?= "20160726"
+RPIFW_SRCREV ?= "ec63df146f454e8cab7080380f9138246d877013"
+RPIFW_DATE ?= "20161005"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.10.0


