Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84F7AE00ED5; Fri, 20 May 2016 01:28:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AE96E00ED0
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 01:28:21 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id 211581C003814;
	Fri, 20 May 2016 10:28:21 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2604.sfr.fr (SMTP Server) with ESMTPSA;
	Fri, 20 May 2016 10:28:19 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Fri, 20 May 2016 16:27:40 +0800
Message-Id: <1463732864-63931-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463732864-63931-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463732864-63931-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 1/5] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Fri, 20 May 2016 08:28:23 -0000

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 classes/linux-raspberrypi-base.bbclass | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 40beef1..2eca037 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -33,7 +33,9 @@ def split_overlays(d, out):
     dts = get_dts(d, None)
     if out:
         overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
     else:
-        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) + \
+                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
 
     return overlays
-- 
2.7.4


