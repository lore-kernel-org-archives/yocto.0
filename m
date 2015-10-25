Return-Path: <erik.boto@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09012E00B94; Sun, 25 Oct 2015 12:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B99D4E00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:05:49 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so87906924wic.0
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pelagicore_com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=9NzbykMLdKoog5faWsTYYQw1jvJRVRK5mCbTJ7z/X28=;
	b=E/tPqK3o2stni6V2rXU5GG4Rs/ygkcuJtO/ImMWI01R2Pe5myhRdozqxiCiTBfu5SU
	a4oE30jFYWug1SEebr5i2TyqyluCYimfSO4jZBAMDbkcOimOLelm0KJex0ysFRQiFYAy
	HkMerIbGRuU8OJW5uL3D3mkvQTcGLOCEQ7xGotV20hMkVpXtQhw2i1yxY2cr+RILCDfy
	xbbZJAxVWZOKJBKjtKRBLjkm7Q7p1YuUIJP9DKTvSB3rtpj7CcaiMElqn/4+EzhHZOmO
	2XScIEmCJLWQP89BzfXIiLw2jnS+hCtwOi7DcAe523lC2lntlDLYoKRt4K3N9U4apDxG
	do/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-type:content-transfer-encoding;
	bh=9NzbykMLdKoog5faWsTYYQw1jvJRVRK5mCbTJ7z/X28=;
	b=ajkXz8cdAqQoG+mlggkI8Q926m3pVtFJYkpYCGRXbyQsNItTq6yuuI8UKIyGAtIHj9
	QQzr9WGrkVocd22jtMfM3cLJwv3FygW3z7HBi/jN9OjiPcDGkXMdHI0QYvl6z/V/hzy3
	hmrK0oNfn7xWzVExcqV4QvVwGEcjmq2ssCJq+PiqaNJUyOtsWVv9xBqtkfyfh2rMx2QP
	dJ/WGd66uU7xJWD4LxYDrFTnEa4vzRrBoX1FoyqQQA9xgRiOHZnaer+q+KPpBffJ5vsh
	rzwIVVmNAThl4vOViAYOC/Q9lg78qshrojPiCjIMs4UYNaThll3Q5o0jrRxhVRJF5QnC
	q0sQ==
X-Gm-Message-State: ALoCoQmJGOXvnWqNdcdpODZDM+fhDUOSenRbJYdZRbWlN//I/WvjOu/7ha9MCDkZvwq+gxI0/USg
X-Received: by 10.180.91.40 with SMTP id cb8mr12835583wib.22.1445799948592;
	Sun, 25 Oct 2015 12:05:48 -0700 (PDT)
Received: from erik-ubuntu.lan (h211n14-g-hn-a11.ias.bredband.telia.com.
	[78.73.133.211]) by smtp.gmail.com with ESMTPSA id
	ld5sm34872990wjc.18.2015.10.25.12.05.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 25 Oct 2015 12:05:47 -0700 (PDT)
From: =?UTF-8?q?Erik=20Bot=C3=B6?= <erik.boto@pelagicore.com>
To: yocto@yoctoproject.org
Date: Sun, 25 Oct 2015 20:05:25 +0100
Message-Id: <1445799925-3758-1-git-send-email-erik.boto@pelagicore.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] rpi-base.inc: Add rpi-ft5406-overlay to KERNEL_DEVICETREE
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
X-List-Received-Date: Sun, 25 Oct 2015 19:05:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This is DTB overlay is needed for the official 7" touchscreen.

Signed-off-by: Erik Botö <erik.boto@pelagicore.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 8caa5ba..97c7465 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/iqaudio-dacplus-overlay.dtb \
     overlays/lirc-rpi-overlay.dtb \
     overlays/pps-gpio-overlay.dtb \
+    overlays/rpi-ft5406-overlay.dtb \
     overlays/w1-gpio-overlay.dtb \
     overlays/w1-gpio-pullup-overlay.dtb \
     "
-- 
2.1.4


