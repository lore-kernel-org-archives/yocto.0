Return-Path: <romain.bazile@ubiant.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA2F2E009AA; Fri, 28 Apr 2017 11:07:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.105.63.121 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 1.mo2.mail-out.ovh.net (1.mo2.mail-out.ovh.net [46.105.63.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18EE9E009A0
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 11:07:33 -0700 (PDT)
Received: from player770.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with ESMTP id 61C4981DE1
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 20:07:30 +0200 (CEST)
Received: from UBI-2016-10.ubiant.me
	(LMontsouris-657-1-193-111.w90-63.abo.wanadoo.fr [90.63.225.111])
	(Authenticated sender: romain.bazile@ubiant.com)
	by player770.ha.ovh.net (Postfix) with ESMTPSA id 46E7D3C006E;
	Fri, 28 Apr 2017 20:07:29 +0200 (CEST)
From: Romain Bazile <romain.bazile@ubiant.com>
To: yocto@yoctoproject.org
Date: Fri, 28 Apr 2017 20:07:25 +0200
Message-Id: <20170428180725.26804-1-romain.bazile@ubiant.com>
X-Mailer: git-send-email 2.12.2
X-Ovh-Tracer-Id: 9575215759074220969
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeliedrgeekgdduvddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: [meta-oracle-java][PATCH v2] Update version to 8u131-b11 for all recipes Checksum change for license file following update to 8u131 b11
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
X-List-Received-Date: Fri, 28 Apr 2017 18:07:35 -0000

Signed-off-by: Romain Bazile <romain.bazile@ubiant.com>
---
 .../oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc   | 10 +++++-----
 .../oracle-jse-ejre-arm-vfp-hflt-client-headless.inc           | 10 +++++-----
 recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb      | 10 +++++-----
 recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb    | 10 +++++-----
 recipes-devtools/oracle-java/oracle-jse-jre-i586.inc           | 10 +++++-----
 recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc         | 10 +++++-----
 recipes-devtools/oracle-java/oracle-jse.inc                    |  2 +-
 7 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc
index 321afee..343004f 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc
@@ -1,10 +1,10 @@
-PV_UPDATE = "121"
-BUILD_NUMBER = "13"
+PV_UPDATE = "131"
+BUILD_NUMBER = "11"
 LICENSE_DIR = "ejdk${PV}_${PV_UPDATE}/linux_arm_sflt/jre"
 
 require oracle-jse-ejre.inc
 
-SRC_URI = "http://download.oracle.com/otn/java/ejdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/ejdk-8u${PV_UPDATE}-linux-arm-sflt.tar.gz"
+SRC_URI = "http://download.oracle.com/otn/java/ejdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/d54c1d3a095b4ff2b6607d096fa80163/ejdk-8u${PV_UPDATE}-linux-arm-sflt.tar.gz"
 
-SRC_URI[md5sum] = "11041e7eedd897d70cabe54f29d10587"
-SRC_URI[sha256sum] = "9ad72839dba09e336954c7653778a2517e6d0e56a9524f4c11ff008ad3eb4637"
+SRC_URI[md5sum] = "131b2f7eff8835c13ceddc0c4a01e8fd"
+SRC_URI[sha256sum] = "5e341af9f6feb5343d6acf182444ac8d50687852ca3477aa8d83f7f92552cd53"
diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
index 8554754..d0dea15 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
@@ -1,10 +1,10 @@
-PV_UPDATE = "121"
-BUILD_NUMBER = "13"
+PV_UPDATE = "131"
+BUILD_NUMBER = "11"
 LICENSE_DIR = "ejdk${PV}_${PV_UPDATE}/linux_armv6_vfp_hflt/jre"
 
 require oracle-jse-ejre.inc
 
-SRC_URI = "http://download.oracle.com/otn/java/ejdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/ejdk-8u${PV_UPDATE}-linux-armv6-vfp-hflt.tar.gz"
+SRC_URI = "http://download.oracle.com/otn/java/ejdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/d54c1d3a095b4ff2b6607d096fa80163/ejdk-8u${PV_UPDATE}-linux-armv6-vfp-hflt.tar.gz"
 
-SRC_URI[md5sum] = "e03ede35c89bd856ecec74c2f2f5f8f9"
-SRC_URI[sha256sum] = "f67a6f0ee384b51badb1073078f6ead98e0949e6b983a0652a4ad06b4effab38"
+SRC_URI[md5sum] = "85ceb493211d05ec7cbc8258eaee023e"
+SRC_URI[sha256sum] = "5dcc644c999e7109efe46669ac717f3b96f3bbdeac3cb66f072ca4dfbc405b8e"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
index 06c0381..318d0f7 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
@@ -1,11 +1,11 @@
-PV_UPDATE = "121"
-BUILD_NUMBER = "13"
+PV_UPDATE = "131"
+BUILD_NUMBER = "11"
 
 require oracle-jse-jdk.inc
 
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u${PV_UPDATE}-linux-i586.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u${PV_UPDATE}-linux-i586.tar.gz"
 
-SRC_URI[md5sum] = "9e0e84f36427ce258abfca35fbeb0c55"
-SRC_URI[sha256sum] = "f7d6cf1468c5e71ff097bec0189caccdd8e709a2a88a2c9849ad6200c0f33d4c"
+SRC_URI[md5sum] = "a6741fd674372366546bd8480be735c7"
+SRC_URI[sha256sum] = "0069a2b1b1cddbefa45f1ff12933fca3b114b6544d536ec0e2d4861a830d7154"
 
 COMPATIBLE_HOST = "(i586.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
index c7903ce..e69fa58 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
@@ -1,11 +1,11 @@
-PV_UPDATE = "121"
-BUILD_NUMBER = "13"
+PV_UPDATE = "131"
+BUILD_NUMBER = "11"
 
 require oracle-jse-jdk.inc
 
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u${PV_UPDATE}-linux-x64.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u${PV_UPDATE}-linux-x64.tar.gz"
 
-SRC_URI[md5sum] = "91972fb4e753f1b6674c2b952d974320"
-SRC_URI[sha256sum] = "97e30203f1aef324a07c94d9d078f5d19bb6c50e638e4492722debca588210bc"
+SRC_URI[md5sum] = "75b2cb2249710d822a60f83e28860053"
+SRC_URI[sha256sum] = "62b215bdfb48bace523723cdbb2157c665e6a25429c73828a32f00e587301236"
 
 COMPATIBLE_HOST = "(x86_64.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc b/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
index ead7f4e..1afa2af 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
@@ -1,9 +1,9 @@
-PV_UPDATE = "121"
-BUILD_NUMBER = "13"
+PV_UPDATE = "131"
+BUILD_NUMBER = "11"
 
 require oracle-jse-jre.inc
 
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jre-8u${PV_UPDATE}-linux-i586.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/d54c1d3a095b4ff2b6607d096fa80163/jre-8u${PV_UPDATE}-linux-i586.tar.gz"
 
-SRC_URI[md5sum] = "b3c499fd4be692e22e5d849177bcfa3f"
-SRC_URI[sha256sum] = "1b28662780c98b3233e8dacaa07c505a70c53463d3b00720baa59f955ab1e1bb"
+SRC_URI[md5sum] = "c88bb459288ee336a0f6109be169bc8c"
+SRC_URI[sha256sum] = "a773f2fe17061ef637ed2094b06313a99c0b45ba3d3cb7f8f1ebf18448495aeb"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
index 27e978d..205420d 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
@@ -1,9 +1,9 @@
-PV_UPDATE = "121"
-BUILD_NUMBER = "13"
+PV_UPDATE = "131"
+BUILD_NUMBER = "11"
 
 require oracle-jse-jre.inc
 
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jre-8u${PV_UPDATE}-linux-x64.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/d54c1d3a095b4ff2b6607d096fa80163/jre-8u${PV_UPDATE}-linux-x64.tar.gz"
 
-SRC_URI[md5sum] = "093e22e4f0a55420780a0e437ab9fcd4"
-SRC_URI[sha256sum] = "30bf5fbac0cfbc9201cac1d6973dbc96e5f55043ab315eda8c7aeb23df4f2644"
+SRC_URI[md5sum] = "9864b3b90840a2bc4604fba513e87453"
+SRC_URI[sha256sum] = "355e5cdb066d4cada1f9f16f358b6fa6280ff5caf7470cf0d5cdd43083408d35"
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 18ef411..c812cf7 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "\
 	file://${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=98f46ab6481d87c4d77e0e91a6dbc15f \
 	file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3dc1bfbd5bed75d650ad0506a0df5930 \
 	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=745d6db5fc58c63f74ce6a7d4db7e695 \
-	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME-JAVAFX.txt;md5=ab9db8d553033c0326bd2d38d77f84c1 \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME-JAVAFX.txt;md5=4f31cd1a5d86744d5f00666d9a57ad2a \
 	"
 
 FETCHCMD_wget_append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
-- 
2.12.2


