Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9C58E0076F; Wed, 16 Jul 2014 01:59:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EAC0E006C4
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:04 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id b13so564235wgh.30
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=fcwY5U9iEFBQ9GRqvug0PkXevg/VlNz9y+Sy9lQReps=;
	b=JELB4YF8JAFgaYEUMor97LC9bbYVZM04/MHcUTvxdIH2X/10YvAFYroGiYiqiwY1rn
	PKEgxt/SWkqO8y/KWEMbSApmrvT9B4mAdxs6VlqmRTtqtIJsKCbrhfamfPl6J9TzaaWh
	PxeMNJqk8GQiMoFwbyC6bN2G1heouF4bAEL53ViNCjGeTKGVUtjybsUrTFXT/3WJusCb
	px6BBXGR/m61krV8HnbhtlAtOyRuwNH0Gh0aeORR4cg/kskboqTWq4a/evNYnfwY0vCf
	spryRZ0Qn0KFwKQ5rSsIj4ufAVOo8KEmfCGaIgrHLCq3D/u3V87pUI9LHgGPg1TOYjrD
	GGqw==
X-Gm-Message-State: ALoCoQlLRHIw2XLu8mTATOAnOYxCEmO07KOH8Ta71Z340UmTcRMOtd0Pu561jtiAniTd5pnafPLe
X-Received: by 10.194.61.47 with SMTP id m15mr34744848wjr.63.1405501143059;
	Wed, 16 Jul 2014 01:59:03 -0700 (PDT)
Received: from localhost ([2001:610:612:0:beee:7bff:fe9e:ae56])
	by mx.google.com with ESMTPSA id
	ub11sm54065027wib.1.2014.07.16.01.59.01 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Jul 2014 01:59:01 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 16 Jul 2014 10:58:43 +0200
Message-Id: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.9.0
Subject: [meta-raspberrypi][for-daisy][PATCH 1/7] rpi-default-versions: Use 3.12.X as default kernel version
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
X-List-Received-Date: Wed, 16 Jul 2014 08:59:13 -0000

From: Andrei Gherzan <andrei@gherzan.ro>

Change-Id: Ief7949be4b9726b5b6ba58e6280f6b6ca3fdfdc4
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index 04297ba..1ca9701 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
-- 
1.9.0


