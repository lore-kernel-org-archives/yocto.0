Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63B42E00DF4; Thu, 20 Oct 2016 22:10:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D78E00DE6
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 22:10:03 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id r16so7490802pfg.3
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 22:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=FpFXTOaNj1unZpVbqd8iVO8lEN71B2tmxHNvAJnTrn0=;
	b=KTaMgllfGZATy3ID8O83kHKSB1aHYcy1OZeuGtX/26dvhpBAEQSD/tXZnCs/NtTmsB
	Nk4vrg476l9AkPqsD+uZgnzxvN6x3771ELTsfJRwXYhSn22nLHnhyAWUAj2yZliq3yDN
	vMxkUA1Kpay13AVej96JnQonIi2G/G586Zd1hMnHLuZFwAMHB0RQ2twL+Zre0tx8MyUL
	3GJHyzbfoq5DN4JVxKHIxSu1OLg7ex30m2gpkbxBqqs6dStkDMBMXDnMuPEV6/FmqJBG
	RCgnsV4IwC6nkP96LtEGZiPm5fbnDAh0e0/dB7e/ML6XikuLmz3omXB7a41fhvVaqP8g
	b8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FpFXTOaNj1unZpVbqd8iVO8lEN71B2tmxHNvAJnTrn0=;
	b=EW5V1EgJzfplH+Adi/2a2BFG8Ll3O9K3f9i896TaCZIaYu9W7f/wmuNzOpe/CLgjdt
	Vll+NO1A3pKC+UyYdvR9exnPFgH9CNqdE/RKPs9XGtWht176gw7VzuTgOkjHEaV7EHS5
	47n8sXxu1zvpvnUXO2ilOwWfV0KyYhKK2ONpx7KFIgUH41rw4MQUatMPMXaRQyotacaV
	1q0b8uw/UfZQZcsCiMfzFIGyo++ysVfO7YQsTPOX2qBD7U0dUDrZbNkEm9OSsfW93fvw
	6JQdKleOAvBbuDlVoW/ZhKPM5nTfKAckwx81b17zaOIJEhn4w5qNsRfxuAp6pIKBrBeY
	ZWww==
X-Gm-Message-State: AA6/9RlIvTNC3T4nN2iBUerZwECIo0Cc+0YO1NDD5+mH7pN/73R/b87uBNBbOwXTidi2Iw==
X-Received: by 10.98.90.130 with SMTP id o124mr7898993pfb.53.1477026603488;
	Thu, 20 Oct 2016 22:10:03 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m62sm1113803pfi.10.2016.10.20.22.10.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Oct 2016 22:10:02 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Oct 2016 22:09:56 -0700
Message-Id: <20161021050957.26429-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-raspberrypi][PATCH 1/2] firmware: Update to latest
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
X-List-Received-Date: Fri, 21 Oct 2016 05:10:07 -0000

Fixes issues with display not starting with weston

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 29f9c01..6ce89a5 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "ec63df146f454e8cab7080380f9138246d877013"
-RPIFW_DATE ?= "20161005"
+RPIFW_SRCREV ?= "ec5a517ed6051974a5a09f7b7811d21c443a7c74"
+RPIFW_DATE ?= "20161020"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.10.0


