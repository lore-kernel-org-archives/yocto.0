Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 018D9E0074B; Sat, 13 Sep 2014 13:54:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E21F5E00514
	for <yocto@yoctoproject.org>; Sat, 13 Sep 2014 13:54:41 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id kx10so3794756pab.10
	for <yocto@yoctoproject.org>; Sat, 13 Sep 2014 13:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Oh30XCA7G6e9fZYZIbaZ0xwH7ZC6xDNaQ7R3FAn+4fk=;
	b=sDhZ+s2xXoTSMHHeIrx3pt2h3oUZcJ5TqNch7sKBiuhrbOrTjqkUJWWYZze6OzsCIB
	7y8F2xd7UBAlYNAjXrDsypxDNcPuog8ABfbQioiWaiWi4D9OFnddZEao+XNLDI9jj15K
	U950VwvehdE1+JmwZ1Nc/+5eRLFtPQhaaI52u4bl1w1r7ovx76VYGRsgrElAoXlMkr35
	JU0KQcMDVqIcKBgyLdt3DurPFMihJD/QzioHJhGZuiIzeJ/MFm+iYTomQ7zx6HqskdGy
	L2WgdV6cah89hOW7na6hfBT4W2qpUhc5E5NaeWFZOkE+qc79E8+360+XVMq/DBuZQdgY
	lcdQ==
X-Received: by 10.70.52.41 with SMTP id q9mr7880936pdo.39.1410641680588;
	Sat, 13 Sep 2014 13:54:40 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id ka1sm7303260pbd.70.2014.09.13.13.54.38
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 13 Sep 2014 13:54:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 13 Sep 2014 13:54:35 -0700
Message-Id: <1410641675-26473-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] packagegroup: ccs-tools exlude if no kernel support
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
X-List-Received-Date: Sat, 13 Sep 2014 20:54:49 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index c635b28..ef8f707 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -54,5 +54,5 @@ RDEPENDS_packagegroup-security-ids = " \
 
 SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
 RDEPENDS_packagegroup-security-mac = " \
-    ccs-tools \
+    ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
     "
-- 
1.9.1


