Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8D51E00D21; Tue, 23 Feb 2016 12:24:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A8B0E00D1C
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 12:24:05 -0800 (PST)
Received: by mail-lb0-f175.google.com with SMTP id of3so107695565lbc.1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 12:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=m6L4gCTYY3vzQHobxcebF2mr6Oly3K8E5j2dGDS27kE=;
	b=rcuDj/jlu8lbZeZfpIrWkN3Vp0PHYDDFTWj6Z+ZKRkKW2CowN5xFiEbyKoEUNZjPaP
	bZx1q22SJBu0hMu+35W46a3dnHznSMW/PndEl9R8zIpZqzExxJumR8mhMvFm4wNttM+3
	4tui9dp7AkQK9/EEDmKh4QlC/b27tdoeP1Wfbp425IRM6ldq5qG/znbTRKr5hdrNtc7x
	HgGdNwmiv4mxh1bJtU1X//XQ/TjLuXj6jMnAFtu9JZdKrnALqLZAIuKJ/EdfOaUrj9D6
	def7q3xTN/qIp0SqdhiLfQ6XieKieqIsII9uTAvJKZnTsiE3RY+YNPsXKSQ/D8uZldnR
	/DCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=m6L4gCTYY3vzQHobxcebF2mr6Oly3K8E5j2dGDS27kE=;
	b=Qg2sTL5qLMV2O4b4WkpOPMdIzvRtenUo6Z0SdmrElYljX3fHm3MnJiTJt/PROfjbDB
	N3aj8gRGTmmKPSW+/1BHu9Z4q4I6Q+T96isnCMZicfdum+b1YqaL0uJ6f06Oervw94sb
	76RtZPRcJusP7Iozo414sQNThEaX9H01udfmJAuUSZ9ttgiYvLUk4bOjUxHnvp+OrpfL
	WN8TjJey9Xv3r2N7BWGaAGEiSBRVaqCUV2Yz59L95OW34dxe/bsz3DNKbYxEocGfz48v
	pLMbMya4nNtjU/BEE97ifgFSYQojQkJgoBdU1Fu+d2P3kDKDMq2XArUF4iAPGeoJI7ve
	2OWQ==
X-Gm-Message-State: AG10YOSKAMa1i8wvr0T1Qcu6qOi997AdVFmnpMnEqQjK8ydo/jV2WuHzmSvNm3EgaShovw==
X-Received: by 10.112.137.228 with SMTP id ql4mr4186117lbb.49.1456259043974;
	Tue, 23 Feb 2016 12:24:03 -0800 (PST)
Received: from localhost (2.69.41.159.mobile.tre.se. [2.69.41.159])
	by smtp.gmail.com with ESMTPSA id g74sm4401367lfi.1.2016.02.23.12.24.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Feb 2016 12:24:02 -0800 (PST)
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Date: Tue, 23 Feb 2016 21:23:54 +0100
Message-Id: <1456259034-13627-1-git-send-email-anders@chargestorm.se>
X-Mailer: git-send-email 2.7.0
Cc: Anders Darander <anders@chargestorm.se>
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: make a machine defconfig work
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
X-List-Received-Date: Tue, 23 Feb 2016 20:24:09 -0000

If we have a machine specific defconfig 'defconfig' in our meta-data, the install
command fails. OTOH, in that case it's not necessary to copy it into twe WORKDIR
either.

Signed-off-by: Anders Darander <anders@chargestorm.se>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 70e8bfe..0fb3fb3 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -43,7 +43,9 @@ python __anonymous () {
 }
 
 do_kernel_configme_prepend() {
-    install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
+    if test -n "${KERNEL_DEFCONFIG}" ; then
+        install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
+    fi
 }
 
 do_install_prepend() {
-- 
2.7.0


