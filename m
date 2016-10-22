Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90C09E00BC1; Sat, 22 Oct 2016 12:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5848FE0095F
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:23 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id o81so3714844wma.2
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=LqhGZZsW/0seKOpiyZKk89dsqoljijruki7p77qYRtM=;
	b=f4UD9iqPYQcingXYow9JjTIjU46cGWzUQlFEYWyNFUkMw4jFyPTc186nQP1TXthJx9
	QX6NwY3Wbp8anrEZc+3gizZJqVAH1oDkFWYx3V/vvG8jxWelxxZjY6M18FcJ6IwMOqIu
	TynW56KIk6nkWhaw1qyoqOrH4KcZD+DVqgTVIknvo05h/x0GH7vQdCb5fc+8yF8mbJlC
	dY+EoxwAhe7pqLy+wFUfARzAaI8ZzQhkIcSsgb60kbRl9MWn14a8tpXnSCN8gAQlDwdn
	Wz0g/S2D8fUtXYifp4UsrMsgyYfd1ug7IaQfkFCNAvf/b0u0Tv3gLp39d2EwFRx0SFoM
	YoiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=LqhGZZsW/0seKOpiyZKk89dsqoljijruki7p77qYRtM=;
	b=SsTfkfTh/IW0eeGvkL9QLn3rgf60+0cVShY3KKndI8mG3a+Fid395OBwYXIW+SETCc
	hOhwJ6+HqagkTSXT5OtHNvPR6t3TTZ3cecpLasVYHjYy37KXbWkuqJIoUtmb3q5J3A7p
	v44rW7c5/eLmxpcVo1DLDJGfbCNIwhb6VOq+hwHm+YURNCoQ5QYi/3r0zMwx0fTU6Y/C
	+CpmIDsY8IJ/rCPc/8quv5LyUGpyEdm51C1Ahd8rWf2oYFB2WS7FtUONBJMK9uu8h6sx
	ImVJ+DhJLmUsqEDWDfUTkFAAT6GcC1PpcX9O1Gu1X+QQaGUnAXrxM0kCn3BV3dDxEjF0
	k0Mg==
X-Gm-Message-State: ABUngvdOykYyAhRFSRy5CQ4QR9gbwV6K2tU1dOs/xZpGq1Z402PFRSwGmc2UL/p9fdO0Ow==
X-Received: by 10.194.119.233 with SMTP id kx9mr6747559wjb.112.1477165822540; 
	Sat, 22 Oct 2016 12:50:22 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	yo1sm9896023wjc.16.2016.10.22.12.50.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 12:50:21 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sat, 22 Oct 2016 20:49:56 +0100
Message-Id: <1477165797-27121-4-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
References: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 3/4] u-boot: Add RDEPENDS on rpi-u-boot-scr
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

The boot.cmd file created by rpi-u-boot-scr is needed for u-boot to
automatically boot a RaspberryPi.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-bsp/u-boot/u-boot_2016.03.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-bsp/u-boot/u-boot_2016.03.bbappend

diff --git a/recipes-bsp/u-boot/u-boot_2016.03.bbappend b/recipes-bsp/u-boot/u-boot_2016.03.bbappend
new file mode 100644
index 0000000..35dfc37
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot_2016.03.bbappend
@@ -0,0 +1 @@
+RDEPENDS_${PN}_rpi += "rpi-u-boot-scr"
-- 
2.1.4


