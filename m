Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB844E00A38; Wed, 14 Oct 2015 05:49:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37744E007FE
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:49:11 -0700 (PDT)
Received: by lffy185 with SMTP id y185so10713918lff.2
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=hhHroDBzLlvI0Sk/qgvckTQTOGIgNkydQ1C69cM/1v8=;
	b=AzQwUhuKo+AsxwCRCLQxwUWvVugvZ4HxUoicwQtZRui8ngpAaw+/IPAfoEIs09B25p
	ta9Qwx9DKVJOqZnr8KaZJaHK1Qjtos79czI/O5/KLQDj6QZf1Wois5c+00dYXmdIQHMS
	GPXi+02neidmyBJc6vPAzmU4POF4bqBYEbtj+rloBw84I9M5dEcJln3Ad5ymraKyETre
	2cZMrS1vvNh7sfXYfIp2IqL91byJ41hAaOkFJWp/CloQH4FxizvlIercQCIrzzamN9jp
	YqvdXF4XTzAzp9AE1xJDKiRTZTVyMs+Dz2O0c9CteZaCVBfrGQpL0KLe11w8uap1y7sH
	r8og==
X-Received: by 10.25.89.141 with SMTP id n135mr968446lfb.87.1444826949918;
	Wed, 14 Oct 2015 05:49:09 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id
	l201sm1337329lfl.13.2015.10.14.05.49.08
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Oct 2015 05:49:09 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Oct 2015 14:49:05 +0200
Message-Id: <1444826947-13462-1-git-send-email-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.6.1
X-Mailman-Approved-At: Mon, 19 Oct 2015 09:31:39 -0700
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
X-List-Received-Date: Wed, 14 Oct 2015 12:49:14 -0000

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


