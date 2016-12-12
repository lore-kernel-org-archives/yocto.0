Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86DF9E00B96; Mon, 12 Dec 2016 02:53:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.196 listed in dnsbl.sorbs.net]
Received: from mail-wj0-f196.google.com (mail-wj0-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3298CE00B2B
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 02:53:22 -0800 (PST)
Received: by mail-wj0-f196.google.com with SMTP id he10so10849722wjc.2
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 02:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eVvq1CZN4okWJa2eQZmbsbAq68j9bf+PPaZVrYmbMps=;
	b=Y9pXfzh2/63bWPpwCmtZsUcnEHw3XnoVjV6FzhJXf0gzUrmENvV09rvMrZMLr0qPzL
	2So2Me/JSmWoetd4Dob0kF7iwM4WyopPO/BGmSxvwUdGVR5mTi/b5QPKBmSpZd3oARBW
	7JIcawjNZM2RpSVqJwYldooFEW6ZGDLiDz2M03zN2dZ7ZoNyu639EqyxDZh2ZG9t+Mnz
	ONEEOvlTBglAnAknCVl7DFArT9fcBLZRr4kEFq9VCSY+fATZ/VGen963cFAGz+Djpu1C
	4ub7skgrcR0zIeT14M787PKd8L8z5OvVqSbot8dfCbz2duReUgK+7Tr9TKu/fPoK7FXM
	rTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eVvq1CZN4okWJa2eQZmbsbAq68j9bf+PPaZVrYmbMps=;
	b=aNz7xBjT3eLFfpNGkrqXSUdr5NBff2aOvwlcUXpypy1IDdPAjf2z3vYZD3EtZf6IEL
	MoFKIwAKkUhgDmjgQRBDR6NHLBuizlL1mdLGpSFeDxlV3932Ci11bRSnDuYxwKYS67Tp
	tkei0sOraklvwyUAAeRLOXaG2YtJH7VOE/laMn3xs/XmQaR2sA6Ehse/UAhdJ3w6snHH
	IjBRX5pvZKOBO45fQsWshh4c7vUwOA2iSvEOyuKiHoZ5h2zOhWFYtdstEgnC/wzRBZP9
	qUBvpKHM2EUl78H/8vaJ3qt23qvAMZRY5xshP65E9jwKmvTgHYbDiwbTBCFy2MIydEP7
	TRKQ==
X-Gm-Message-State: AKaTC02uG1sdxeYNUzlFtVz18HsKfTyv80ssQ59UGpSToQ2Idtepw3NquWs12sgUUcodxA==
X-Received: by 10.194.125.114 with SMTP id mp18mr76209646wjb.106.1481540000996;
	Mon, 12 Dec 2016 02:53:20 -0800 (PST)
Received: from mueller-a-nb-linux.zera.local
	(ip-109-90-226-171.hsi11.unitymediagroup.de. [109.90.226.171])
	by smtp.googlemail.com with ESMTPSA id
	d184sm34940995wmd.8.2016.12.12.02.53.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Dec 2016 02:53:20 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Dec 2016 11:53:08 +0100
Message-Id: <1481539989-27626-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/2] rpi-base.inc: add xserver-xorg-extension-glx to XSERVER for vc4 enabled
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
X-List-Received-Date: Mon, 12 Dec 2016 10:53:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

make glxinfo/glggears/.. work

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 497dd29..9ce647d 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -9,6 +9,7 @@ IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
 
 XSERVER = " \
     xserver-xorg \
+    ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xserver-xorg-extension-glx", "", d)} \
     xf86-input-evdev \
     xf86-input-mouse \
     xf86-input-keyboard \
-- 
2.7.4


