Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7D6FE00E96; Fri,  8 Jul 2016 07:52:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 197CFE0073D
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 07:52:27 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id ib6so7581279pad.3
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 07:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=xIuS5zX6u8WNgTOMJMY9CHaeTluxquZOr/SqYFIwuWo=;
	b=C1ii/OCSIewnUowtotq1c/niA5dBWTO6OXQqej6DkIsB0OQvYrWk5qtSX9EqxoQIs/
	5FD/xT+iZoStIsXR3sSiQcghPdrzCZCTIFki+OEmbpFlIl06j8V27BvIZ2r9YOqpJLB0
	wXxjbCe3Ues3rrRI8NcH74qJn/MPyxl3Pb1NwUjTvwp/m7KiHoGZsKW03UZ/3DAxuCer
	Kx0AY3ffyR8OpWqXEn5U1/c3STtxYhuzxswlmuFYatq4pUKia7zv+SQvMJSkwNKhbqfX
	6LUPd7wcQmHzlJyvwAQ08QqJTMmZPMuvyV41a0VFyEYTYyX72bO/bC+742ArxhjCaaTo
	lTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=xIuS5zX6u8WNgTOMJMY9CHaeTluxquZOr/SqYFIwuWo=;
	b=lrylmb+jFTmfMBhhJUsk7yd7a4dKj0xnuEsQg8l6tQICgNoryWp3acx+kMcvZfTLeE
	voL3ELPv6jcSOWwqPgWcrkes5ZBHov1PRW40oV1jM+beB0o7n65dTOp2fMoPapcQCqJS
	LmqV7F3fie4qqVYw3MOBLbypnRwCmXtF7GA8rWu6ztEKoFuRZxOtVdd7s0eHc9nMmhOT
	5S+tIkgvNuD8TU0rgeudch6ivPQXgP8ujqgnhJZ9JbgzWExFPh1LKNRQ4UPCoZjxzWYW
	ACIrbm4HriQFw7xeSEea0IYnU0mn5Jnp9PkOicZgDPtVknbXhFmtnsdveQ6V6KmUDCna
	ylgA==
X-Gm-Message-State: ALyK8tJxdd2yrAAyXdyDYlpcEEizdM3MbAg/8nzE5XK3cfN5clFMksQir42ry9zwkUmJlA==
X-Received: by 10.66.160.199 with SMTP id xm7mr10694921pab.78.1467989547333;
	Fri, 08 Jul 2016 07:52:27 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	o84sm5254050pfj.95.2016.07.08.07.52.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 07:52:26 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Jul 2016 07:52:20 -0700
Message-Id: <20160708145221.15596-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.0
Subject: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Add the vardepexcludes
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
X-List-Received-Date: Fri, 08 Jul 2016 14:52:29 -0000

The problem reappears because we need to add to the variable
and not assign

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 6960aca..57cefea 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -72,8 +72,8 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 FATPAYLOAD ?= ""
 
 IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
-IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
-IMAGE_CMD_rpi-sdimg[vardepsexclude] = "DATETIME"
+IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
+IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
 
 IMAGE_CMD_rpi-sdimg () {
 
-- 
2.9.0


