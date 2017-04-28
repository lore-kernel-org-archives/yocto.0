Return-Path: <costamagna.gianfranco@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 673BAE00992; Fri, 28 Apr 2017 08:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (costamagna.gianfranco[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5B28E0095F
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 08:17:12 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id 6so7451084wrb.1
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 08:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=MMCyPVvFZ1APePE+7aXHShyuClfB1wzwC0mv0ANkXvc=;
	b=RMgvXe7m186uYV71Y4/Z+CBl2kBGYdV0MuuQS0ZwTVcuWO+MICYdK0UN0b4MbGb9yP
	iJbTtcspyEqbsuJx58ZPEg8rHxgytXOsR1sPgHP4GPkS3OPNP40dy4R0IcmBVygFKIvy
	s4Da3vY1npyqa6BIK+PeAyQcDNeFpzCxorDFjrxgq7Mtp+SUG/wUUgWKv07vUu7lfn0d
	76Vln3nECwLw9OIw74HsYtLykprvjdiWO4bCk/j/W8J/aQ9qxd6MNJZKyMOBFkBlJ0YZ
	vWbu9P97RE1hLztLp/BFdD1eHhbAYElIrLLwpTRXZXadUvxOBbH7yxTklU19TuLHw4f4
	Eiiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=MMCyPVvFZ1APePE+7aXHShyuClfB1wzwC0mv0ANkXvc=;
	b=Zw1Fk8ktghHqFnX7wf2smCWQcVgJcv+LOSeTOwe3OL6IEg6SEOvu7AmJ5uYi2jCNP8
	k3rE2zkBSmEVvF2jueIaQ2KI/xw+derXjwMYLOtzN2TvFYG1wAik1RSoR5ZyS1BZacxE
	q6NqQ2RB235c9Bx3sjlbH2pkh/kcP/LK5WOwSg++NOSY0rCufBT6+Zg62Txgd5RYJiy5
	zE0eSuOlFesajrXjYsaE+XSzpzdM5XRd202fgL6RaQVIGFLTloFuTsECZVXRZuE9i3gI
	eKKt3cWDUabObeazgP41iaCfz8yKsu+KPl34QrVPdYjtsFjcY6YuxMbYq8msP+7zUmXD
	g+BQ==
X-Gm-Message-State: AN3rC/6ZVEApXGKBKWNeSUfGfSCdz15jJGieUQsU4DMWgocxdC6jT5Jp
	8TMksUp9Ez4+EUVF48M=
X-Received: by 10.223.161.65 with SMTP id r1mr8832039wrr.114.1493392630863;
	Fri, 28 Apr 2017 08:17:10 -0700 (PDT)
Received: from localhost.localdomain ([151.82.83.182])
	by smtp.gmail.com with ESMTPSA id
	e23sm5409808wre.54.2017.04.28.08.17.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 28 Apr 2017 08:17:09 -0700 (PDT)
From: Gianfranco Costamagna <costamagna.gianfranco@gmail.com>
X-Google-Original-From: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
To: yocto@yoctoproject.org
Date: Fri, 28 Apr 2017 17:17:07 +0200
Message-Id: <1493392627-11877-1-git-send-email-costamagnagianfranco@yahoo.it>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 01 May 2017 22:36:03 -0700
Cc: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Subject: [meta-raspberrypi][PATCH] Make CMDLINE overridable from outside
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
X-List-Received-Date: Fri, 28 Apr 2017 15:17:15 -0000

currently there is no way to override the default CMDLINE, lets set if only if not already set from outside

Signed-off-by: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index cf61cce..9265d55 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -21,7 +21,7 @@ KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 KERNEL_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
 
 # CMDLINE for raspberrypi
-CMDLINE = "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
 
 # Add the kernel debugger over console kernel command line option if enabled
 CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
-- 
2.7.4


