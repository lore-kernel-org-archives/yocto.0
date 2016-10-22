Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91CE8E00839; Sat, 22 Oct 2016 12:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A51E00839
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:21 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id d128so3737217wmf.0
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=u8NxLmhIvJP4cJaCfu64iVIlGfxxmOpMUaXLXeg/Wu8=;
	b=w//klgE+xZUsZuZ4Js7U8H2+HXWj6oT4fgvqX713KixsJvTz8XXDbCT4Rn4z6D7FnK
	cdDzMJnSRW8x1LFXBKHAHrhsv6KDsjQx4clZfupF90u05q7CaX3abSJEdYdGpHxDekXW
	tiIDkwZWG++JYNIwdYaPZ1Xm9zWpn4qECAFOxnBuc/Nz8h8L/60JTHjUq+OfuiJs/hea
	txcQs0o2Ijew3ghUu9Oboc3YCjLwnjJCfzh7420yoiROjW6ut7aGSK1V2N9PE/Fzo8UJ
	9+CXdjdo0Gt4V8M+5qxQ9hIyPVgXbri40Jd9OagFUQp7ryU/R++Dbsg7+tWA1xsjpOX+
	AtKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=u8NxLmhIvJP4cJaCfu64iVIlGfxxmOpMUaXLXeg/Wu8=;
	b=NzmckPD7iQJLc9c+AWzXZNcvboed04NRSAo9Tn0ipP/kr9PX2btAW7Q1Sx81aTwcIx
	OUJet+NifDzR8uuF4tEf5Y1Sa7NJ2h9oNcBUpF4vQLPzpTmSFP/NgU5Cpl+ycV/XhGF4
	0B4LLmwFi08BBmizwWBAeDkSoVLZqkMppQ2+B5NNXDPaHXAj9/jBTxDNiHEZs3Fr09oT
	qMo6v87OlIYeQ0YiV9ZYVO6zc98vj/ZHLbKGA6e29Jw6CtKzz+cRjkP1eKJtDywmMZDf
	k8hFFLBHhvnUoGK30ZmLwsQCkRb+natfuUh0maA4x5sTs6BSEgPX0aAw3GK4S6i67cLX
	DyFA==
X-Gm-Message-State: AA6/9Rlp6BHRKCPFe7YaiOdfz9hFr0VxX69YaFbGvTs+XvF5RUobUgNdRmyg66WeTLhJ2w==
X-Received: by 10.28.130.138 with SMTP id e132mr15626698wmd.110.1477165820680; 
	Sat, 22 Oct 2016 12:50:20 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	yo1sm9896023wjc.16.2016.10.22.12.50.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 12:50:19 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sat, 22 Oct 2016 20:49:54 +0100
Message-Id: <1477165797-27121-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
References: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 1/4] rpi-base.inc: Don't install kernel image into rootfs
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
X-List-Received-Date: Sat, 22 Oct 2016 19:50:26 -0000

The kernel image is installed into the FAT32 boot partition and does not need to
also be installed into the rootfs.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 conf/machine/include/rpi-base.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 69774f4..995b62a 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -52,3 +52,7 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
 SPLASH = "psplash-raspberrypi"
 
 IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
+
+# The kernel image is installed into the FAT32 boot partition and does not need
+# to also be installed into the rootfs.
+RDEPENDS_kernel-base = ""
-- 
2.1.4


