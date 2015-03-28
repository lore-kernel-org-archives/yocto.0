Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A6EE0096F; Sat, 28 Mar 2015 08:34:14 -0700 (PDT)
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
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 697ACE007A0
	for <yocto@yoctoproject.org>; Sat, 28 Mar 2015 08:34:10 -0700 (PDT)
Received: by iecvj10 with SMTP id vj10so90238343iec.0
	for <yocto@yoctoproject.org>; Sat, 28 Mar 2015 08:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=KT1lmigN/grGhGAy+IE566E8epcULAuiaqsEXCdJDks=;
	b=Ds4S3lc6KYok01XjoI/YkV0E6AHlOpnSHRswlP/WT0n9K3U00M2WC+GxosBPMd4jzn
	kVpHExZ57rWJNcPsUurzmxoJPWgFVm+Mh1hovjNGiw6B8zpXR2hpriVS5BPnMQaYF5pq
	R02zbcxWD0SKqn37hjGQFPM0quTXD3R7VNSBKLX/Z39R5iaY6bV+OLQgauucCf1XlUki
	U1Vzalt6ZwlSWg3g4uyQFsQjJSjcAYAqhf3nmILBu/m0zyeQSO4hOGiRLWkmwd5Tqxoe
	QAcn3aP3hHXDqecQCHnczm5CT/hWovkKb1uagsxehwcVGL8A+ulk2RDt+FdpAjnAiJmz
	uZuA==
X-Received: by 10.50.43.167 with SMTP id x7mr5997541igl.28.1427556849810;
	Sat, 28 Mar 2015 08:34:09 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id t7sm3618804igz.17.2015.03.28.08.34.07
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 28 Mar 2015 08:34:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 28 Mar 2015 08:33:57 -0700
Message-Id: <1427556837-23382-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] samhain: update client and server to 3.1.5
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
X-List-Received-Date: Sat, 28 Mar 2015 15:34:14 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>

fix missing bash depends in server recipe
---
 .../samhain/{samhain-client_3.1.3.bb => samhain-client_3.1.5.bb}      | 0
 .../samhain/{samhain-server_3.1.3.bb => samhain-server_3.1.5.bb}      | 2 +-
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/samhain/{samhain-client_3.1.3.bb => samhain-client_3.1.5.bb} (100%)
 rename recipes-security/samhain/{samhain-server_3.1.3.bb => samhain-server_3.1.5.bb} (97%)

diff --git a/recipes-security/samhain/samhain-client_3.1.3.bb b/recipes-security/samhain/samhain-client_3.1.5.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_3.1.3.bb
rename to recipes-security/samhain/samhain-client_3.1.5.bb
diff --git a/recipes-security/samhain/samhain-server_3.1.3.bb b/recipes-security/samhain/samhain-server_3.1.5.bb
similarity index 97%
rename from recipes-security/samhain/samhain-server_3.1.3.bb
rename to recipes-security/samhain/samhain-server_3.1.5.bb
index 50e8d8a..fd6da3d 100644
--- a/recipes-security/samhain/samhain-server_3.1.3.bb
+++ b/recipes-security/samhain/samhain-server_3.1.5.bb
@@ -47,4 +47,4 @@ FILES_${PN}-dbg += " \
     ${sbindir}/.debug/* \
     "
 
-DEPENDS_${PN} += "gmp"
+DEPENDS_${PN} += "gmp bash"
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 3c54c28..869e959 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -10,8 +10,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
        file://add_aarch64_to_configure.patch \
 	  "
 
-SRC_URI[md5sum] = "64572a4dbfdc8065d6e9f7ca0eab0a34"
-SRC_URI[sha256sum] = "c234afaf9ba3c6b7d240858b74423f935185de66e996405b3016ec4a288a7e1e"
+SRC_URI[md5sum] = "b72b526c6ee504317981e6dba1673b9d"
+SRC_URI[sha256sum] = "2d7d93992d1737b72ff7c835b4c90a2d4d46e448d9265c0c3341544f6b1ffcdb"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
1.9.1


