Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA0FBE0125C; Thu, 11 Aug 2016 18:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F2FDE01257
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:37 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id ez1so558664pab.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=kFoxBPoeJYrEIJhI/DxUlOufIoHuaNTRy7J1dEo7jU8=;
	b=Znpf8UUuxnRBzx+vOhnvFp4olKi0M219qj0oSx7EywlVTuWS4aSsAVK3SUUFefpfs/
	zKKSNxEq6jMKw6fje+aGrWSctgZACAwMBJzMHBgT+ONnNtUTJI61R8rPVr2YmCVnv1MO
	NASvM+r+ncUnVYhcUkzTIeUHJmnjRUxhoyE76di/D6/Q9ZpthNiVE2/aUmPczKyODPqJ
	sggEIN7oE/biF2ebT1pjVk8r9HRFDjEIKk51PaKwoO0qdDPjnzoAYXorvMYhgypQXSNY
	A8CeHMt4AvOfdDDRF84692sq16QSyuXdBBw5lH/2xhA8tIQmu8BQq/wpVU0EIgJ85MRs
	XEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=kFoxBPoeJYrEIJhI/DxUlOufIoHuaNTRy7J1dEo7jU8=;
	b=RktOed2bof9bVOmTt47HwyRS1Q0gDo/IxB9d7AiPR9UwfEmOIZcHUwFPwpF8yEas1R
	3+gl/LgxL4Yn+ZNeAydYus1FscX0WJTYW/f9Kr/718EGKvqVj8821uDZWUD6C78PFRsi
	LlHBg3tKOmCvsW9mdgM2j1DK1+aSQ/iuzFMqcikNPZmxzdK75QMGeTM+X2mQHiJFpOys
	k6bsS7oR4PB15/S+syMTJ9jn74kbsyN96JVw4j1iQAq4NCwygZoBQVA/U6p+xxnJJgtM
	XRl7Lo7qgqjcu7uvD9bVekDJ4pN+ygZdqNYGb0UsutCvO7qBWEEro9av7cTj8H3PNc8O
	yWMw==
X-Gm-Message-State: AEkoouvEW35nHDMemmZfRkP//rtEinA4UQbgGbl2XNhHVxcrlp2kudqp2PyHKL27ls4QRA==
X-Received: by 10.66.80.2 with SMTP id n2mr22278675pax.134.1470963997311;
	Thu, 11 Aug 2016 18:06:37 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:36 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:07 -0700
Message-Id: <20160812010608.31182-22-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 22/23] Switch to using 4.4 as default kernel
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:41 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index c879dde..e65a4ae 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "4.1.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "4.4.%"
-- 
2.9.2


