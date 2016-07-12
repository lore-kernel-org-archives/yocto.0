Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FC7CE00F14; Tue, 12 Jul 2016 05:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC7CE00EBF
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 05:06:21 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jul 2016 05:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,351,1464678000"; d="scan'208";a="137748579"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 12 Jul 2016 05:06:20 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 26D3E6A4080;
	Tue, 12 Jul 2016 05:06:11 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jul 2016 15:06:31 +0300
Message-Id: <1468325191-27407-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Cc: Pavel_Shumeika@epam.com
Subject: [meta-oracle-java][PATCH] oracle-java: upgrade to 8u91
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
X-List-Received-Date: Tue, 12 Jul 2016 12:06:23 -0000

Update JDK and JRE to latest Critical Patch Update release - 8u91

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb     | 11 -----------
 recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb     | 11 +++++++++++
 recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb   | 11 -----------
 recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb   | 11 +++++++++++
 recipes-devtools/oracle-java/oracle-jse-jre-i586.inc          | 11 ++++++-----
 recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc        | 10 +++++-----
 .../{oracle-jse-jre_1.7.0.bb => oracle-jse-jre_1.8.0.bb}      |  0
 recipes-devtools/oracle-java/oracle-jse.inc                   |  4 ++--
 8 files changed, 35 insertions(+), 34 deletions(-)
 delete mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
 create mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
 delete mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
 create mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
 rename recipes-devtools/oracle-java/{oracle-jse-jre_1.7.0.bb => oracle-jse-jre_1.8.0.bb} (100%)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
deleted file mode 100644
index 6f90d48..0000000
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-PV_UPDATE = "67"
-BUILD_NUMBER = "01"
-
-require oracle-jse-jdk.inc
-
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-i586.tar.gz"
-
-SRC_URI[md5sum] = "715b0e8ba2a06bded75f6a92427e2701"
-SRC_URI[sha256sum] = "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348b9a01e9ebaa85c"
-
-COMPATIBLE_HOST = "(i586.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
new file mode 100644
index 0000000..5f0d189
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
@@ -0,0 +1,11 @@
+PV_UPDATE = "91"
+BUILD_NUMBER = "14"
+
+require oracle-jse-jdk.inc
+
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-linux-i586.tar.gz"
+
+SRC_URI[md5sum] = "f18cbe901f2c77630f1e301cea32b259"
+SRC_URI[sha256sum] = "5ecd05b5e566cbe688fc1e3159f04004ccad14d4faa3f50d15ffba1d50b4cd52"
+
+COMPATIBLE_HOST = "(i586.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
deleted file mode 100644
index 45853c3..0000000
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-PV_UPDATE = "67"
-BUILD_NUMBER = "01"
-
-require oracle-jse-jdk.inc
-
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-x64.tar.gz"
-
-SRC_URI[md5sum] = "81e3e2df33e13781e5fac5756ed90e67"
-SRC_URI[sha256sum] = "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f4538c863049e346335"
-
-COMPATIBLE_HOST = "(x86_64.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
new file mode 100644
index 0000000..2f4290f
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
@@ -0,0 +1,11 @@
+PV_UPDATE = "91"
+BUILD_NUMBER = "14"
+
+require oracle-jse-jdk.inc
+
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-linux-x64.tar.gz"
+
+SRC_URI[md5sum] = "3f3d7d0cd70bfe0feab382ed4b0e45c0"
+SRC_URI[sha256sum] = "6f9b516addfc22907787896517e400a62f35e0de4a7b4d864b26b61dbe1b7552"
+
+COMPATIBLE_HOST = "(x86_64.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc b/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
index d0a9300..a90d780 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
@@ -1,9 +1,10 @@
-PV_UPDATE = "67"
-BUILD_NUMBER = "01"
+PV_UPDATE = "91"
+BUILD_NUMBER = "14"
 
 require oracle-jse-jre.inc
 
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-i586.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-i586.tar.gz"
+
+SRC_URI[md5sum] = "705521705f0ddaa150f64090e56ae96c"
+SRC_URI[sha256sum] = "02071642f1628136516c88c11e46664a8cc363e685e9f066123b41d741567f43"
 
-SRC_URI[md5sum] = "2a256eb2a91f0084e58c612636342c2b"
-SRC_URI[sha256sum] = "eadec83a54d3a9d09248a8d16b21c03da9afffc7317e775fb8db962620a0781d"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
index 0d5f157..3385edc 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
@@ -1,9 +1,9 @@
-PV_UPDATE = "67"
-BUILD_NUMBER = "01"
+PV_UPDATE = "91"
+BUILD_NUMBER = "14"
 
 require oracle-jse-jre.inc
 
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-x64.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-x64.tar.gz"
 
-SRC_URI[md5sum] = "9007c79167be0177fb47e5313c53d5cb"
-SRC_URI[sha256sum] = "726c37c07bb389b5b96674b7bcbc288e39fb8fbcd42369afa364a18e66248b1f"
+SRC_URI[md5sum] = "cc48b4cacfeda1f699b43ea77ddfaa95"
+SRC_URI[sha256sum] = "66d8971b240bbd03d114308958fff0fb8068d0589122885d9591727e5472137f"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
similarity index 100%
rename from recipes-devtools/oracle-java/oracle-jse-jre_1.7.0.bb
rename to recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 6219d00..5df93d4 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -2,8 +2,8 @@ LICENSE_FLAGS = "oracle_java"
 LICENSE = "Oracle_Binary_Code_License_Agreement"
 LIC_FILES_CHKSUM = "\
 	file://${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=98f46ab6481d87c4d77e0e91a6dbc15f \
-	file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
-	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=89f660d2b7d58da3efd2fecd9832da9c \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=745d6db5fc58c63f74ce6a7d4db7e695 \
 	"
 
 FETCHCMD_wget_append = " --header=Cookie:oraclelicense=a "
-- 
2.4.0


