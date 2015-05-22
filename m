Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F1F6E009F8; Fri, 22 May 2015 07:31:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BB3E009A1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 07:31:06 -0700 (PDT)
Received: by igcau1 with SMTP id au1so33979230igc.1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 07:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ClgBnqIc5wJsp9BwHRof5G98S7GYc5V8nE1NUqvw4+k=;
	b=nY5clkngLVExERqzAvk5RuRz3V00rw0G4s8vacKONjFTzYaiTLk2GmVjHtqLFuzO4A
	G5RwnsajBAvt5EwBbg/vgp5Kd+nMnaAyS3GDyFOxtMMHDChC35YJtr77PcEiOxn3qdiu
	U6dHxhEEtNQQiKBkvTWTm9YvYi4U0q2cFptKQCawzfz6sXwIr5hdS5JcmsLgMxuPMeHX
	OxWj3pFd5Mjqkasj73uzUMQg5m0s6+WmNQLSvCepg6Hhc6KD/iTBZQx5j4qycpQxcDM2
	BvO8+5irCKZEelQkPo0OULlIxeHF6AYQVIwERUQHZdMsikTXPBWWRaeYHN9VaQ0Ixa94
	v2Cw==
X-Received: by 10.50.43.227 with SMTP id z3mr4374505igl.12.1432305066181;
	Fri, 22 May 2015 07:31:06 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	h33sm1906658iod.12.2015.05.22.07.31.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 May 2015 07:31:05 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 22 May 2015 09:47:40 -0400
Message-Id: <1432302460-13086-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.4.0.194.gc518059
Subject: [meta-raspberrypi][PATCH] bcm2835: update SRC_URI
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
X-List-Received-Date: Fri, 22 May 2015 14:31:23 -0000

It appears as though the location of this tarball has changed. The current
SRC_URI works but is redirected to this new location.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-devtools/bcm2835/bcm2835_1.38.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/bcm2835/bcm2835_1.38.bb b/recipes-devtools/bcm2835/bcm2835_1.38.bb
index 71395af..316d7b5 100644
--- a/recipes-devtools/bcm2835/bcm2835_1.38.bb
+++ b/recipes-devtools/bcm2835/bcm2835_1.38.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
+SRC_URI = "http://www.airspayce.com/mikem/bcm2835/bcm2835-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "22d431f7402b9c7f93baef348a459cb1"
 SRC_URI[sha256sum] = "90c993559ea273ae2e0587f6b815f7c80f19f47ee7f8aa7799b883f975196dbe"
-- 
2.4.0.194.gc518059


