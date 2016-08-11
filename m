Return-Path: <figiel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30A09E01022; Thu, 11 Aug 2016 05:27:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (figiel[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 398D3E01015
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 05:27:55 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id i138so1078862wmf.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 05:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=qT1KuH1AWCCo1GdVyU+bqGOSwMi0RLyTNOz1r0J9myk=;
	b=ag1Fvs5r5o90tQlrbZWJQEb8j0F/urBW/Tjd+TC/zIfZCD282C8gHaqicAycn+FqAW
	JEmCIFKVCKwvkeDrz+ieFsBQd1BLbFPapcjlqK30KVCoKHnMnJdmV9ouQ1slyrgMmD5A
	oNN3aQ6Jv+wS/eoQ/n+3lTLfo8tdhmV5zEGK2aSwI5pbYpDPMApGAgc+hYxFfwvyx+wO
	B9TxzQi0MQrAIiIJ3/H3v7na2+8oNsiyC0Arcz9+lEj2dB7C/Z6TxtbPbEt9DyKt17Eo
	safcrf0gJqfMl6m0BogCYZDsnAQrZvxT9uES4wzk1Tjb60X/IkFuATorQ784iuwkYw6B
	BEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=qT1KuH1AWCCo1GdVyU+bqGOSwMi0RLyTNOz1r0J9myk=;
	b=EZ7RDTWY928lVReDUMdG7y3usV5JFBMjs7XhnCDvlKx2GZkdM4ZKxWgoJ3JoNSJBcq
	InduWp++1IjvSWabLq+ZhAzKK2i5iyvspCmMjWpQ+Hk/5AJn3qrW8qjgDNQ+Fk8aP4r8
	Cu8UkFw78Vt4v2YEDPX8oClLAnUfHMr25MTUS1eDAMNcJYzjF3qrM74Ho1e8ZItr55DE
	1Lxt+bZw90eck74q2fsq1mKgmniw8hfUf62zTn8WlR41MBbyz7BSeIsVp+ADST6C4Tww
	h4e0gCNT48+6hHz9jEXozp5TD8HbHTKlYR7MKxopZj7N8QWFv+TfP1niZ2Pm8AzumDgQ
	+FKg==
X-Gm-Message-State: AEkoouttVr98KTrhrxNvdzHi/5f3zXcrkTXElVG2d+kzst13t3X0vFT+pK6QDjXocqTzpQ==
X-Received: by 10.25.212.5 with SMTP id l5mr1740611lfg.73.1470918473949;
	Thu, 11 Aug 2016 05:27:53 -0700 (PDT)
Received: from localhost.localdomain ([95.143.242.242])
	by smtp.gmail.com with ESMTPSA id h30sm526107lji.39.2016.08.11.05.27.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 11 Aug 2016 05:27:53 -0700 (PDT)
From: Piotr Figiel <figiel@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 14:27:45 +0200
Message-Id: <1470918465-6002-1-git-send-email-figiel@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-swupd][PATCH] swupd-image: Fix files ownership if IMAGE_BASENAME is not default
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
X-List-Received-Date: Thu, 11 Aug 2016 12:27:58 -0000

From: Piotr Figiel <p.figiel@camlintechnologies.com>

In case IMAGE_BASENAME is set on image recipe level the files ownership on
target rootfs is incorrect for recipes inheriting swupd-image.bbclass.
Depending on the context swupd-image.bbclass used either PN (PN_BASE) or
IMAGE_BASENAME when generating path to pseudo shared state directory. This
seems correct only when IMAGE_BASENAME is not set as it defaults to PN.

This patch resolves above problem.

Addresses [YOCTO #10108].

Signed-off-by: Piotr Figiel <p.figiel@camlintechnologies.com>
---
 classes/swupd-image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/swupd-image.bbclass b/classes/swupd-image.bbclass
index 08ab3f5..ed9bd24 100644
--- a/classes/swupd-image.bbclass
+++ b/classes/swupd-image.bbclass
@@ -81,7 +81,7 @@ python () {
         # Because real image building via SWUPD_IMAGES can happen also after
         # the initial "bitbake <core image>" invocation, we have to keep that
         # pseudo database around and cannot delete it.
-        pseudo_state = d.expand('${TMPDIR}/work-shared/${PN_BASE}/pseudo')
+        pseudo_state = d.expand('${TMPDIR}/work-shared/${IMAGE_BASENAME}/pseudo')
         d.setVar('PSEUDO_LOCALSTATEDIR', pseudo_state)
 
         # Non mega virtual images must depend on the mega image having been
-- 
1.9.1


