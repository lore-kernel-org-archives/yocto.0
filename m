Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A490DE00A7B; Wed, 14 Oct 2015 05:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC98CE0086D
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:51:23 -0700 (PDT)
Received: by lfaz124 with SMTP id z124so10723559lfa.1
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=hhHroDBzLlvI0Sk/qgvckTQTOGIgNkydQ1C69cM/1v8=;
	b=fReX+bB66qDK/RAiaBHmS2D+52LDfbZOA0rGcutN+YuaK1dH7Bv46QoZBE7RTJIrWl
	+un3iib9YFV8+tUTrzQxTcVhRyAMOfi0Dh7ZVehjLY/f98Kr78hZKRoTPRpBLp9R2A4n
	TcdjO8Uk+igW9QelRSPjudwEfVwqrwDOBPvZdHioIjUBZOw75Ud3X8ea4keW10vT5j5V
	l1OAEQg5GpqLEKjd5xJHIqLEn0kdLt2vH8dSXPprcUEh49LU1pWd1GgIqsxv/ZCGEEo5
	pYRfCOxdQEEGvIKAjrBq93elyT50qoUqVPLC3+DdrrspMUvjnoA5z6uBhxPPouA0CgQr
	N1vg==
X-Received: by 10.25.157.15 with SMTP id g15mr984497lfe.113.1444827082045;
	Wed, 14 Oct 2015 05:51:22 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id
	b193sm1326801lfb.46.2015.10.14.05.51.21
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Oct 2015 05:51:21 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Pavel Shumeika <Pavel_Shumeika@epam.com>,
	"Maxin B . John" <maxin.john@intel.com>,
	Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Date: Wed, 14 Oct 2015 14:51:17 +0200
Message-Id: <1444827079-13679-1-git-send-email-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.6.1
Subject: [PATCH 1/2] oracle-jse.inc: Make LIC_FILES_CHKSUM path relative
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
X-List-Received-Date: Wed, 14 Oct 2015 12:51:24 -0000

If the path is absolute, it invalidates the SSTATE, which also
invalidates all the recipes depending on this package.

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index e657a45d9105..6219d0081bb3 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -1,9 +1,9 @@
 LICENSE_FLAGS = "oracle_java"
 LICENSE = "Oracle_Binary_Code_License_Agreement"
 LIC_FILES_CHKSUM = "\
-	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=98f46ab6481d87c4d77e0e91a6dbc15f \
-	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
-	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=98f46ab6481d87c4d77e0e91a6dbc15f \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
 	"
 
 FETCHCMD_wget_append = " --header=Cookie:oraclelicense=a "
-- 
2.6.1


