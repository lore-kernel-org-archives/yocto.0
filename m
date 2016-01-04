Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71B55E00B9E; Mon,  4 Jan 2016 10:31:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC4FE00908
	for <yocto@yoctoproject.org>; Mon,  4 Jan 2016 10:31:13 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id b14so197757689wmb.1
	for <yocto@yoctoproject.org>; Mon, 04 Jan 2016 10:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=TY/ZehIB/PSd9ABWICUjNSb8BMtkAxWM3QGXN4IL1q4=;
	b=bjm61y0U1cLiUu73GUPipnWfYzTqwdqY4XfD8uzVFgap9o6dVToloGIrUo5oBqT0J1
	mPr/4lTkWFIspEKiRR3Nb+Vzd65TgKCXERkEjoGCq8auKZF972ztjSpLH9oYhJpVK6M6
	lAuR7fwBZCTmrrtWuOUUtuRKtxkY8WsOpvLWUIKLfzvW7Mo1giSF9ZQezVU10ohWhf9M
	pASpsK76s4JQCTl+pQvertnGFUGJuZj2kk9sgISxd+IGUkRouhKwEH2QTzE3EMMszqw0
	1q+Jki1KNS/g/qqNHEFJI+9dFEAu8Lm4zkq31kRg4MhGR7GLCoggeqyBf3v8OUFc3IR5
	jxfw==
X-Received: by 10.195.11.101 with SMTP id eh5mr99123723wjd.104.1451932272555; 
	Mon, 04 Jan 2016 10:31:12 -0800 (PST)
Received: from sgxcmp131.intra.sigfox.io ([217.114.201.133])
	by smtp.gmail.com with ESMTPSA id
	gj2sm87109001wjb.40.2016.01.04.10.31.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 04 Jan 2016 10:31:11 -0800 (PST)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Mon,  4 Jan 2016 19:31:08 +0100
Message-Id: <1451932268-25264-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.1.4
Subject: [meta-security][PATCH] Remove recipe for the kernel 3.14 from master branch, to fix a build error. ERROR: No recipes available for: meta-security/recipes-kernel/linux/linux-yocto_3.14.bbappend
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
X-List-Received-Date: Mon, 04 Jan 2016 18:31:16 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 recipes-kernel/linux/linux-yocto_3.14.bbappend | 4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.14.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.14.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index b46419c..0000000
--- a/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# Tomoyo kernel support
-SRC_URI += "${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)}"
-- 
2.1.4


