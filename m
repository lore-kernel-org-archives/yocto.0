Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29B95E009E2; Sat, 23 May 2015 08:12:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f53.google.com (mail-yh0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA4A2E00293
	for <yocto@yoctoproject.org>; Sat, 23 May 2015 08:12:43 -0700 (PDT)
Received: by yhrr66 with SMTP id r66so11774791yhr.3
	for <yocto@yoctoproject.org>; Sat, 23 May 2015 08:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=hA4C1KOclnswFpSse5BzmJdURlLZ6waGWQNTuWtvSEQ=;
	b=ThswbDr8ctz5gGc1dKevzO5pDkTXrI91qUuDdVNB+pVFiUfiC5ZIdjnthiby7gmTX8
	/lGLyCeEksesXSjn07N8PpVb29TDHDDZ4pUuT+voh0Mfawq/LWS0n6hiYV+6xgFwtpHX
	f3+enZJGVx+eAzSaRRq/3V6WxNklzMF3MMjzh+rmy8sdj9CyauZEelPp3/gfN4SD5dCH
	DZpX5yqazQatcP2njgn55b/2Tm6MuTpjYP012PVEwH93Z4xNelZuZMoUqALckZ/vCZ1T
	wqQOlnLRp84vxzFCJYMx3RRFjRJGtICYV2m3AjHXnRQ3wcdvKAxwn75cs7HTZDAnD3BR
	Upzw==
X-Received: by 10.236.11.136 with SMTP id 8mr3919078yhx.146.1432393962366;
	Sat, 23 May 2015 08:12:42 -0700 (PDT)
Received: from localhost.localdomain ([97.84.99.160])
	by mx.google.com with ESMTPSA id f50sm978724yhc.40.2015.05.23.08.12.40
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 23 May 2015 08:12:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 23 May 2015 08:12:36 -0700
Message-Id: <1432393958-11105-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/3] libhtp: update to use suricata 2.0.8
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
X-List-Received-Date: Sat, 23 May 2015 15:12:50 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/libhtp_0.5.17.bb | 2 +-
 recipes-security/suricata/suricata.inc     | 7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/recipes-security/suricata/libhtp_0.5.17.bb b/recipes-security/suricata/libhtp_0.5.17.bb
index 7390e20..baa5221 100644
--- a/recipes-security/suricata/libhtp_0.5.17.bb
+++ b/recipes-security/suricata/libhtp_0.5.17.bb
@@ -10,6 +10,6 @@ inherit autotools pkgconfig
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
-S = "${WORKDIR}/suricata-2.0.7/${BPN}"
+S = "${WORKDIR}/suricata-2.0.8/${BPN}"
 
 RDEPENDS_${PN} += "zlib"
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 79622dc..b7d0181 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,7 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-2.0.7.tar.gz"
+PV = "2.0.8"
+SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "43cd7dd958d434c580426020079914d7"
-SRC_URI[sha256sum] = "c5c3ccebeecbace39df0ff2d50ec4515b541103ffaa5e33cd1dc79d4955c0dfd"
+SRC_URI[md5sum] = "a9553ccf942c0c4aa1e1a188ec1f7d93"
+SRC_URI[sha256sum] = "7af6394cb81e464f5c1ac88a1444030e30940caab6e53688a6d9eb652226d1be"
-- 
2.3.5


