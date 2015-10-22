Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D272FE00AB0; Thu, 22 Oct 2015 04:50:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA8E3E00A92
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 04:50:38 -0700 (PDT)
Received: by wijp11 with SMTP id p11so27955359wij.0
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 04:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=zbRZbNgjA0qIPkqGllzB/nqJ4j9I33y9NOSejKCvwAw=;
	b=gdovDF2psjxSOHFStzTqpG49lLlYifhs7B7HwsaXuDhU2SyleSW5LIbTIrc4QDOR0z
	h/SfeeW5lUTkOoqiG+dStO5XHUD5Wbj6Eooa6BDYR4gO2xA0f0BPtuMMJ+mpUkZR8vwz
	hMcD7PU1Gu1uPW5zoOIddAHT91h+UmeMc2DzUwN86pH0PkW+EYh1L4iEmXYADbnOGCVo
	YXNQE7FEdEVmu6DSynyB2hNHD0Yzioz3zN7KGT+Z/36iROxm8S61l67BztSFpTFrCnuS
	8Q6zPJ3fy4CE5rhwdH/b+303U2meJbsDKa1aQ9UtJqWEq+L1SWSxcZzVS4NMajULFVap
	WCuw==
X-Received: by 10.180.73.46 with SMTP id i14mr16088336wiv.49.1445514637775;
	Thu, 22 Oct 2015 04:50:37 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	fx19sm9069722wic.2.2015.10.22.04.50.36 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 22 Oct 2015 04:50:36 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 22 Oct 2015 12:50:12 +0100
Message-Id: <1445514612-10204-3-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445514612-10204-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1445514612-10204-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 2/2] libepoxy: add needed include paths for RPi
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
X-List-Received-Date: Thu, 22 Oct 2015 11:50:40 -0000

ref: https://github.com/raspberrypi/firmware/issues/34

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-graphics/libepoxy/libepoxy_git.bbappend | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-graphics/libepoxy/libepoxy_git.bbappend

diff --git a/recipes-graphics/libepoxy/libepoxy_git.bbappend b/recipes-graphics/libepoxy/libepoxy_git.bbappend
new file mode 100644
index 0000000..e6a428c
--- /dev/null
+++ b/recipes-graphics/libepoxy/libepoxy_git.bbappend
@@ -0,0 +1,2 @@
+EXTRA_OECONF_append_raspberrypi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads'"
+EXTRA_OECONF_append_raspberrypi2 = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads'"
-- 
1.9.1


