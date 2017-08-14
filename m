Return-Path: <s.steiger@megatec.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBBACE00CFF; Mon, 14 Aug 2017 01:46:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 202 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Aug 2017 01:46:03 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AB9FE00B8D
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 01:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1502700362;
	l=1400; s=domk; d=megatec.info; h=Date:Subject:Cc:To:From;
	bh=oZ0G5q1Ntx0FtfgDpeSuQ8gPI9aQOXNbxpAwWk/D90M=;
	b=Oc1gTWDCiHJr8OQ2VmSOWicRAKBdlc4qPYcJaJWPbPrc/9f/bR54iHSxf4Vno63bvG
	3ZHF+WbwLJVRqzIX0we+ynv1GS0sfJQErixClwwkfn/jes1N2h8iFIVS7yFc8dWhGSHs
	p3kxxHzYzU9q8V8om8WyGoyO8gp0VujwdL1V0=
X-RZG-AUTH: :P2UBcka6cvqfFo60rJWGrNpMdJzHCeK1Jhx9Q061pdJ8lt5e+hpMM0Hcj2B7jUZyGYK/1U/wqnbxakm0XfiL
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain ([109.199.162.184])
	by smtp.strato.de (RZmta 41.1 AUTH) with ESMTPSA id g043a8t7E8gdnkS
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1
	with 521 ECDH bits, eq. 15360 bits RSA))
	(Client did not present a certificate);
	Mon, 14 Aug 2017 10:42:39 +0200 (CEST)
From: Siegfried Steiger <s.steiger@megatec.info>
To: yocto@yoctoproject.org
Date: Mon, 14 Aug 2017 10:42:48 +0200
Message-Id: <20170814084248.4817-1-s.steiger@megatec.info>
X-Mailer: git-send-email 2.11.0
X-Mailman-Approved-At: Mon, 14 Aug 2017 08:17:38 -0700
Cc: Siegfried Steiger <s.steiger@megatec.info>
Subject: [meta-oracle-java][PATCH] Fix build for intel 32 bit systems
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
X-List-Received-Date: Mon, 14 Aug 2017 08:46:05 -0000

---
 recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb | 2 +-
 recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
index 318d0f7..05be622 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
@@ -8,4 +8,4 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_N
 SRC_URI[md5sum] = "a6741fd674372366546bd8480be735c7"
 SRC_URI[sha256sum] = "0069a2b1b1cddbefa45f1ff12933fca3b114b6544d536ec0e2d4861a830d7154"
 
-COMPATIBLE_HOST = "(i586.*-linux)"
+COMPATIBLE_HOST = "(i[56]86.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
index ebf0265..19ace5b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
@@ -7,7 +7,7 @@ def get_java_pkg(d):
 			javaPkg = "oracle-jse-ejre-arm-sflt-client-headless"
 		else:
 			javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
-	elif TA == "i586":
+	elif TA == "i586" or TA == "i686":
 		javaPkg = "oracle-jse-jre-i586"
 	elif TA == "x86_64":
 		javaPkg = "oracle-jse-jre-x86-64"
-- 
2.11.0


