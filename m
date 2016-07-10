Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D5FEE00D55; Sun, 10 Jul 2016 16:18:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD95E00D4E
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:10 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id o80so2602742wme.0
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=N4QJd8MRmb72d3mAnsmqvPjIJFCg/FDazT5acULZrLw=;
	b=iPkiOD4Jxk4Z5pIWNoregzrcCjBjZ11bExYA+nOuGzJzmyuTHg7L4vdr9E2LAUYw5j
	8ZtLRgKTzmsxw9tws7sqGva5TZCufOB13zdwJqxAOoW6uaX8zYRO4gDw0UrFtkY7VhoQ
	R0pSkSJjtH3k3wwYoJdwq1WJNVXdWZ2ohEm++p8kY5c0gnbT10371Xnm1IQ49Vq9b2II
	R2JXfy8QBRE3HfHJZwixprYM0py2HpPhud1mqns0sotxcbl9zl8KniG625vBdp2Kmq0p
	qgYS6zCrbI5NoTB5ucxitDkd1fWbGu4EmUYWtjK5hpkeswizHLfqOTE045zZ0IWYwsvC
	YTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=N4QJd8MRmb72d3mAnsmqvPjIJFCg/FDazT5acULZrLw=;
	b=m0VAaIRbK/SwyNsfNEWwc6RipyGlK/ylbIxpsqFXYIMdabEVxAc4Pkcx9hUOF5/UMy
	Vj8nE90PSqYI4smvVv3n+gWpzjuf4UQ++kvZb3ChSAzNYHrAC/GjRA78lRDRlDeJX2Un
	drDZoZgtANXWHQzMQTbCnw4ZQyL2fkGRdHLBgYUF8ODVbirxZQlT0+HRVLDEDNiV5zSm
	jlIPpk+VH8/0q5BhQyBqDwJ8ql7oHRwm1A9sEiFfyCqgLDRdqk5QiMxM201jKOzl+hMA
	t4lfzsHE9Cj+Q643L+QolLv8hAQAyRS+igx+6lo7B7IN1tEsZpOTdZoDieAO/Y2Q9amR
	B3Ww==
X-Gm-Message-State: ALyK8tKyUis3AWdCdwp04/96IF8kLK5IC4MN0vrD/eZ5K3nhkGPw6XqwyJnqYLV4r0Y7rw==
X-Received: by 10.28.63.214 with SMTP id m205mr13982770wma.72.1468192689448;
	Sun, 10 Jul 2016 16:18:09 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	x83sm17787086wmx.9.2016.07.10.16.18.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jul 2016 16:18:08 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 00:17:54 +0100
Message-Id: <1468192676-22030-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
References: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 1/3] rpi-base.inc: Don't install kernel image into rootfs
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
X-List-Received-Date: Sun, 10 Jul 2016 23:18:13 -0000

The kernel image is installed into the FAT32 boot partition and does not need to
also be installed into the rootfs.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 conf/machine/include/rpi-base.inc | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 56ca83e..98c047a 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -51,3 +51,9 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
 SPLASH = "psplash-raspberrypi"
 
 IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
+
+# Don't install kernel image into rootfs
+#
+# The kernel image is installed into the FAT32 boot partition and does not need
+# to also be installed into the rootfs.
+RDEPENDS_kernel-base = ""
-- 
2.1.4


