Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16DA8E00820; Wed, 13 May 2015 06:47:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7161CE00820
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:31 -0700 (PDT)
Received: by qkgx75 with SMTP id x75so28228945qkg.1
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=TyAxJK4nwMe7zDbJSKoPSMU9/XZYnYY45/6ndygS64I=;
	b=u2RzNOSZDzybPLfWoZwrYHwDv62IZkowgZrKYHOd0pTDYMxyj5I4RCI9wyiJl1RQPu
	J9TOC6oyKtv9vHEOCb1zg3YX4sX8E11PZ7zpHYpIZjh3n3tkGAeSWachdnXrhG5l/T4F
	jY1/lUcER3/us4MPIN+/1iRecGyVMjuGTlC0/fUOHityL+uYLZvYH1ZPsnUXrCmwsfZt
	B3A+PsgJqxYKBnR5uU7sYHEXDUhZ8DxO1HMAMoRTTnU+5XkAub/NyeqCJvZRV1oysfyC
	jU5wuA67gDqp3Iq1rzdKvPj6cagt349vjNseHdIZvvhLV83kNR0ox3jE9g0PRw1+OYnk
	0niw==
X-Received: by 10.229.249.6 with SMTP id mi6mr27877580qcb.24.1431524851073;
	Wed, 13 May 2015 06:47:31 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id
	f33sm15571513qkh.23.2015.05.13.06.47.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 May 2015 06:47:30 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Wed, 13 May 2015 10:48:34 -0300
Message-Id: <1431524917-9859-3-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
References: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH v2 3/6] oracle-jse: RPROVIDES java2-runtime
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
X-List-Received-Date: Wed, 13 May 2015 13:47:34 -0000

Move RPROVIDES_${PN} = "java2-runtime" from oracle-jse-ejre.inc and
from oracle-jse-jre.inc to oracle-jse.inc.

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 1 -
 recipes-devtools/oracle-java/oracle-jse-jre.inc  | 2 --
 recipes-devtools/oracle-java/oracle-jse.inc      | 1 +
 3 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index 875964c..9a1fdfe 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -15,4 +15,3 @@ LIC_FILES_CHKSUM = "\
        file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
        file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
        "
-RPROVIDES_${PN} += "java2-runtime"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre.inc b/recipes-devtools/oracle-java/oracle-jse-jre.inc
index b8b0ed8..32cfac3 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre.inc
@@ -10,5 +10,3 @@ DESCRIPTION = "This is the proprietary JRE from Sun/Oracle, with the Hotspot JVM
 
 JDK_JRE = "jre"
 require oracle-jse.inc
-
-RPROVIDES_${PN} += "java2-runtime"
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 483e9d5..d4c33fb 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -29,3 +29,4 @@ INSANE_SKIP_${PN} = "${ERROR_QA} ${WARN_QA}"
 INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 
 FILES_${PN} = "/usr/"
+RPROVIDES_${PN} = "java2-runtime"
-- 
2.1.4


