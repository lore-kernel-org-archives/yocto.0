Return-Path: <peter.lei@ieee.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DA59E00B58; Thu, 18 May 2017 21:30:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [96.114.154.160 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 May 2017 21:30:55 PDT
Received: from resqmta-po-01v.sys.comcast.net (resqmta-po-01v.sys.comcast.net
	[96.114.154.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 141BEE00B47
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 21:30:55 -0700 (PDT)
Received: from resomta-po-09v.sys.comcast.net ([96.114.154.233])
	by resqmta-po-01v.sys.comcast.net with SMTP
	id BZY2dEiwWge2xBZY2dbFyM; Fri, 19 May 2017 04:29:54 +0000
Received: from p710.lei.chicago.il.us
	([IPv6:2601:246:4301:94f0:8a53:f774:bfa6:ef93])
	by resomta-po-09v.sys.comcast.net with SMTP
	id BZXydJALmapZ8BZY1dAn63; Fri, 19 May 2017 04:29:54 +0000
From: Peter Lei <peter.lei@ieee.org>
To: yocto@yoctoproject.org
Date: Thu, 18 May 2017 23:29:49 -0500
Message-Id: <20170519042949.7646-1-peter.lei@ieee.org>
X-Mailer: git-send-email 2.9.4
X-CMAE-Envelope: MS4wfLmRguyUJlvNsWiYdqqaEb3YlpQXw4jo5mqSOX3Oz17Ll2H378rDc0gjhPTSlmlVeidYNKg/LpGZZNlQJFZ0dL0YmXpfUq2nmZg+t2Cdy5BNLgydeC71
	LuDMtAUj3c5I8RQAbG/3/66FLTvwrpZNYCJAczOlc5mhPsuZOSZbzoY4sQVha8ru6PIoJuVVexcMKw==
Subject: [meta-security][PATCH] packagegroup-security-tpm-i2c: fix syntax
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
X-List-Received-Date: Fri, 19 May 2017 04:30:56 -0000

Fix "ERROR: ExpansionError during parsing" when building with multilib.

Signed-off-by: Peter Lei <peter.lei@ieee.org>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
index d3d9ebc..2d93aca 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
@@ -10,7 +10,7 @@ PACKAGES = "packagegroup-security-tpm-i2c"
 SUMMARY_packagegroup-security-tpm-i2c = "Security TPM i2c support"
 RDEPENDS_packagegroup-security-tpm-i2c = " \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'packagegroup-security-tpm', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2, '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2', '', d)} \
     kernel-module-tpm-i2c-atmel \
     kernel-module-tpm-i2c-infineon \
     kernel-module-tpm-i2c-nuvoton \
-- 
2.9.4


