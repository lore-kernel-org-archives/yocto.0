Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA450E00C90; Wed, 13 Apr 2016 10:06:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
Received: from mail-ig0-f195.google.com (mail-ig0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AAEDE007C5
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 10:06:26 -0700 (PDT)
Received: by mail-ig0-f195.google.com with SMTP id fn8so7371255igb.2
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=jETZfIAh68ax9uSNzh7lg86l70SI/Bn4rNjEZB6JKfM=;
	b=iNeEnEp/YtlhUme+dXpZwS/Q7+JxHrwDMOf41khkoXKIvF+Vwcj3OzxJ169ouKowLH
	bLbZ50Tal9HpdhKNOnk+gx3cBPKJagAKsPSjYhKBatOtn9mgvkepIbeKBTAo/qBQmERV
	WBaMlPO1FBcLEItbXdy37BtFLDnzTWAjCx+ocWNM/AJJ36A0pzYdxAGH5Vgr0doiIvYK
	ECFuXwmVfvmZasNRd9fsuN4+FbcnG0qSOxL1yi4K8MgDM79h3R6bi6iWHifi01fObYZk
	tMIiOzoKWmNezCOkHA7frP0MiD/PqLuXTLdZ5Yxkytgk5dTU+1BWKQCTTcTFmyVn41PQ
	uBxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=jETZfIAh68ax9uSNzh7lg86l70SI/Bn4rNjEZB6JKfM=;
	b=ZinhiXJbv9/w5cthzZJ02bETjDlMxsioJiQ5MxWSMaKKfJgSw4MT17+kNuKP+WlSSv
	ksjUhkp08fWL5WWn0yIIJ5ImVXS8T2x2fkd9Dxfoq3xOxO6IQ+IE+hUVQmdeFJMYzmP/
	GmZZubgZf9meTzFDbrMBpQuTW+zJKrtpi3WnV55nuuFEeHSGEVO3aBrDLHXvXZjnPRjO
	867KAS3GGJLS5AUnj18aNpAicCNXcnV4nO98rFf25Zcdb7YEkWKTUFnnHwPsMZbxV7EG
	QQxkjrsXVg0EwQ9L9YKcGIk6LmXSDI9gca+aJ/P9FdbxCKqXHtJoIhNS1crUSPlXJ97v
	65nQ==
X-Gm-Message-State: AOPr4FUR98MXVZTLPQ5vcfr5M2FH9+qh/tHj61tV5bA5caKSr5mVH0xNWdpgajbQ/qOLUw==
X-Received: by 10.50.109.138 with SMTP id hs10mr11887772igb.76.1460567185241; 
	Wed, 13 Apr 2016 10:06:25 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	v21sm24060082iov.4.2016.04.13.10.06.21 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 13 Apr 2016 10:06:24 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Apr 2016 13:06:21 -0400
Message-Id: <1460567181-3241-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.8.1
Subject: [meta-raspberrypi][PATCH] serial console definition split
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
X-List-Received-Date: Wed, 13 Apr 2016 17:06:28 -0000

The latest raspberrypi3 puts its console on ttyS0 instead of ttyAMA0 (like all
the preceding boards). Therefore pull this definition out of the common
include file and add it separately for each MACHINE.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rpi-base.inc | 2 --
 conf/machine/raspberrypi.conf     | 2 ++
 conf/machine/raspberrypi0.conf    | 2 ++
 conf/machine/raspberrypi2.conf    | 2 ++
 conf/machine/raspberrypi3.conf    | 2 ++
 5 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 34eb774..f64bc9d 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -7,8 +7,6 @@ include conf/machine/include/soc-family.inc
 
 IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
 
-SERIAL_CONSOLE = "115200 ttyAMA0"
-
 XSERVER = " \
     xserver-xorg \
     xf86-input-evdev \
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index e8516e7..0f95f1a 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -6,3 +6,5 @@ DEFAULTTUNE ?= "arm1176jzfshf"
 
 require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyAMA0"
diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
index 58468ed..ccf9ae7 100644
--- a/conf/machine/raspberrypi0.conf
+++ b/conf/machine/raspberrypi0.conf
@@ -4,3 +4,5 @@
 
 MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
 include conf/machine/raspberrypi.conf
+
+SERIAL_CONSOLE = "115200 ttyAMA0"
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 30edae3..b6346e6 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -6,3 +6,5 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 
 require conf/machine/include/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyAMA0"
diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1b73f2f..cb6056e 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 
 include conf/machine/raspberrypi2.conf
+
+SERIAL_CONSOLE = "115200 ttyS0"
-- 
2.7.0.rc3


