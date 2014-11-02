Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9DE4E008B5; Sat,  1 Nov 2014 21:13:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE7E0E0085A
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 21:13:21 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id z10so9566334pdj.15
	for <yocto@yoctoproject.org>; Sat, 01 Nov 2014 21:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=3vmSmepnClTxTmBYEcHZe0x0+HveJtUhvK1B9gPLVGo=;
	b=ePV7TYIpCy609yf+1j0ZtMJR0xbqL6t+FC1RUtS7Wqzm1x/PbakXX/rzX9ZwoObWKm
	LAyIB9YCULhGFJDE2Y7Vo2pwYS+Bt7vvgh6GVnZL6zjuabUSYQPU1lfgV6FMEDNgaaxK
	AL6fvMnvCJqhVRMJt2VgD/tK3Hj/vwU74Fk3xKZcn5491+pfjLdgNpVAnHyCwpM/x9nV
	1wTL5Db26kcLinlAPmhQ054aS7Z+QyB+VLOXuFqRGMmKtjIhtrTDEMIQoGikgNGD0mRH
	qL71hYszENvsyprD4Qj89Ytu1FDzxcDywnN2r0lnnTrEMMLzjH48edgxbj7SQMGWCKZO
	4xWw==
X-Received: by 10.66.241.239 with SMTP id wl15mr35564363pac.15.1414901601083; 
	Sat, 01 Nov 2014 21:13:21 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id pi2sm2224397pdb.14.2014.11.01.21.13.18
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 01 Nov 2014 21:13:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  1 Nov 2014 21:13:16 -0700
Message-Id: <1414901596-6220-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] samhain: update to 3.1.3
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
X-List-Received-Date: Sun, 02 Nov 2014 04:13:24 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/{samhain-client_3.1.2.bb => samhain-client_3.1.3.bb}      | 0
 .../samhain/{samhain-server_3.1.2.bb => samhain-server_3.1.3.bb}      | 0
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_3.1.2.bb => samhain-client_3.1.3.bb} (100%)
 rename recipes-security/samhain/{samhain-server_3.1.2.bb => samhain-server_3.1.3.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_3.1.2.bb b/recipes-security/samhain/samhain-client_3.1.3.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_3.1.2.bb
rename to recipes-security/samhain/samhain-client_3.1.3.bb
diff --git a/recipes-security/samhain/samhain-server_3.1.2.bb b/recipes-security/samhain/samhain-server_3.1.3.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_3.1.2.bb
rename to recipes-security/samhain/samhain-server_3.1.3.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index cd5862b..b914cb1 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
 
-SRC_URI[md5sum] = "48c663707899dca4f3853c3192e9862c"
-SRC_URI[sha256sum] = "840218137a4c77970fa9f61c5f79d05de4bb2b287736a55d771125c94f9a51fc"
+SRC_URI[md5sum] = "64572a4dbfdc8065d6e9f7ca0eab0a34"
+SRC_URI[sha256sum] = "c234afaf9ba3c6b7d240858b74423f935185de66e996405b3016ec4a288a7e1e"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
1.9.1


