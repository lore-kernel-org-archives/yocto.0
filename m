Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D725AE00874; Fri, 30 Jan 2015 19:02:51 -0800 (PST)
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
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5111E0086F
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 19:02:40 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id fa1so59496275pad.8
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 19:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=AoVFro6GIUf03q0yjYvlVhSwpJi13+JIer7djbarV4Q=;
	b=pUj8HOeKzg1lyAmRQQQH+CA4RnQiYOJga8zRXC5RVMP3kTd2wgV9U1/nTCwIr8m34J
	JX5pk3ZE3tSab4Bg/MWQMldsgny/hkgHEAVhsdSOmKe4UbIUS0+MJITPEwr9sJm9blUH
	jfxlip8DZrAnJkMV+q54Yoq/6JSILmS4Prsxw6+m7zAMd76dwOxe3H/6rMwo4TVItIk5
	/D23f0elOrI0y/bgWMi3kjiu/yT9MeQzwFJXcly6AsK1v4x9X0ZPmGRcKE1Q5AiekDjE
	n5RHRAB1/OtPHPOS2G67KqLruFA5yk2CQopsqcwiZtM2+ighez4ksRTMm2mFvZxwRBZR
	yv7A==
X-Received: by 10.70.98.130 with SMTP id ei2mr12953790pdb.59.1422673360708;
	Fri, 30 Jan 2015 19:02:40 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id q1sm12123471pdq.17.2015.01.30.19.02.38
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 30 Jan 2015 19:02:39 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Jan 2015 19:02:35 -0800
Message-Id: <1422673355-29535-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] ustr: fix typo in SRC_URI
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
X-List-Received-Date: Sat, 31 Jan 2015 03:02:51 -0000

From: Armin Kuster <akuster@mvista.com>

This fixes
ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
http://www.and.org/ustr/$%7BBPV%7D/ustr-1.0.4.tar.bz2:
2015-01-30 18:26:38 ERROR 404: Not Found.

Changed "BPV" to "PV"

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-extended/ustr/ustr_1.0.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/ustr/ustr_1.0.4.bb b/recipes-extended/ustr/ustr_1.0.4.bb
index a0a1e41..cdb78ad 100644
--- a/recipes-extended/ustr/ustr_1.0.4.bb
+++ b/recipes-extended/ustr/ustr_1.0.4.bb
@@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=c79c6e2ae13418d16d7dc82df960a1e7 \
 		    file://LICENSE_MIT;md5=c61e779b782608472bd87593c3c3916f"
 
 SRC_URI = "\
-    http://www.and.org/ustr/${BPV}/${BPN}-${PV}.tar.bz2 \
+    http://www.and.org/ustr/${PV}/${BPN}-${PV}.tar.bz2 \
     file://ustr-makefile-fix.patch;patch=1 \
     file://ustr-fix__va_copy-not-defined.patch;patch=2 \
     file://ustr-c99-inline.patch;patch=3"
-- 
1.9.1


