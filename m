Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E5CEE00779; Mon, 16 Feb 2015 15:29:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54B38E0076B
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 15:29:30 -0800 (PST)
Received: by padfb1 with SMTP id fb1so1698973pad.8
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 15:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=+iMXZn+ok6oZpF1CeuvoI2U1CKtsTrEnkTKlI7AqdOQ=;
	b=TKBUAlOux+XHEMouE6mnqoY9CkmwL12hIhCvOmNOV+1IXYzXDNA8ml7N8gsk+D4Fvd
	VYQe+g8egAN8Bla+FQNpF7JSZn74X8y91n62luNIwen8FXzRCCbcsmSq73QYxo2ePcCe
	+zkir91ViG6fQOUCPWGD5PCE0IUCGJf90hcQUOg676oIb0diJAEFa2eLzujdt/ZQMe6G
	vBrX2/hZ596lLv7qdtHIdYlMoXNgxs0LJW5VOi6bDDNaglbePYanICSwihJMgh2UmfNK
	jXwCXTpw1YhaIetrQRGk2GWvttmsORkWrC5u3lz6enuLaG3ToUIBZOaIvFni4dtwWoeM
	IGYA==
X-Received: by 10.68.200.36 with SMTP id jp4mr43611567pbc.153.1424129370443;
	Mon, 16 Feb 2015 15:29:30 -0800 (PST)
Received: from localhost.localdomain ([76.14.1.153])
	by mx.google.com with ESMTPSA id
	in3sm15762489pbb.12.2015.02.16.15.29.28
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 16 Feb 2015 15:29:29 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Feb 2015 15:29:25 -0800
Message-Id: <1424129365-4365-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-cgl][PATCH] heartbeat: Fix incorrect licence logic
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
X-List-Received-Date: Mon, 16 Feb 2015 23:29:32 -0000

From: Armin Kuster <akuster@mvista.com>

It should be and "&" (and) not "|" (or).

thanks Chris.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
index 7ec7c5d..369bd23 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
@@ -22,7 +22,7 @@ It implements the following kinds of heartbeats: \
 "
 HOMEPAGE = "http://linux-ha.org/"
 SECTION = "System Environment/Daemons"
-LICENSE = "GPLv2 | LGPLv2+"
+LICENSE = "GPLv2 & LGPLv2+"
 LIC_FILES_CHKSUM = " \
     file://doc/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
     file://doc/COPYING.LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
-- 
1.9.1


