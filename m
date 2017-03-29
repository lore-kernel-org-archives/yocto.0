Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C8B1E00726; Wed, 29 Mar 2017 00:04:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225AFE006CD
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 00:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490771064; x=1522307064;
	h=subject:references:to:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=yt2dC5or+OgTKo4JATDSYzgL8kOosR4Hb8QPPT3/0GU=;
	b=eEBSQNMtVtxJ565/+zExTgDfjJHRHDIFM0me9rPohLOvb3ZyHbSUKprg
	SpuqBgceWrGbrSy3kNXLjc/hzSBS6h5XHFVxSaWg0P6gp/uZuI2LzKNCu
	Qt+lR3yglg7Qcua8FGUb+bEWXZVw+UVjrccf+5eTY29moCbzZjqKFW44K Q=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 29 Mar 2017 09:03:22 +0200
References: <1490732744-25547-2-git-send-email-jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
From: Jaap de Jong <jaap.dejong@nedap.com>
X-Forwarded-Message-Id: <1490732744-25547-2-git-send-email-jaap.dejong@nedap.com>
Message-ID: <60212613-0fa2-c907-a03e-1f0e6d02fb87@nedap.com>
Date: Wed, 29 Mar 2017 09:03:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490732744-25547-2-git-send-email-jaap.dejong@nedap.com>
Subject: [meta-oracle-java][PATCH 2/6] oracle-java: upgrade to 8u121
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
X-List-Received-Date: Wed, 29 Mar 2017 07:04:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

---

  .../oracle-jse-ejre-arm-vfp-hflt-client-headless.inc       | 11 ++++++-----
  recipes-devtools/oracle-java/oracle-jse-ejre.inc           | 14 +++++++++++---
  recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb  | 10 +++++-----
  .../oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb             | 10 +++++-----
  recipes-devtools/oracle-java/oracle-jse-jre-i586.inc       | 11 +++++------
  recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc     | 10 +++++-----
  recipes-devtools/oracle-java/oracle-jse.inc                |  3 ++-
  7 files changed, 39 insertions(+), 30 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
index bfa8011..8554754 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
@@ -1,9 +1,10 @@
-PV_UPDATE = "60"
-BUILD_NUMBER = "19"
+PV_UPDATE = "121"
+BUILD_NUMBER = "13"
+LICENSE_DIR = "ejdk${PV}_${PV_UPDATE}/linux_armv6_vfp_hflt/jre"
  
  require oracle-jse-ejre.inc
  
-SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
+SRC_URI = "http://download.oracle.com/otn/java/ejdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/ejdk-8u${PV_UPDATE}-linux-armv6-vfp-hflt.tar.gz"
  
-SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
-SRC_URI[sha256sum] = "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
+SRC_URI[md5sum] = "e03ede35c89bd856ecec74c2f2f5f8f9"
+SRC_URI[sha256sum] = "f67a6f0ee384b51badb1073078f6ead98e0949e6b983a0652a4ad06b4effab38"
diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index 65de848..bea4a03 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -11,7 +11,15 @@ DESCRIPTION = "This is the proprietary JRE from Sun/Oracle, with the Hotspot JVM
  JDK_JRE = "ejre"
  require oracle-jse.inc
  
+DEPENDS = "virtual/java-native"
+
  LIC_FILES_CHKSUM = "\
-       file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
-       file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
-       "
+	file://${LICENSE_DIR}/COPYRIGHT;md5=3dc1bfbd5bed75d650ad0506a0df5930 \
+	file://${LICENSE_DIR}/THIRDPARTYLICENSEREADME.txt;md5=745d6db5fc58c63f74ce6a7d4db7e695 \
+	"
+
+do_compile() {
+	DEST=${S}/ejre${PV}_${PV_UPDATE}
+	rm -rf ${DEST}
+	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --dest ${DEST}
+}
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
index 5f0d189..06c0381 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb
@@ -1,11 +1,11 @@
-PV_UPDATE = "91"
-BUILD_NUMBER = "14"
+PV_UPDATE = "121"
+BUILD_NUMBER = "13"
  
  require oracle-jse-jdk.inc
  
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-linux-i586.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u${PV_UPDATE}-linux-i586.tar.gz"
  
-SRC_URI[md5sum] = "f18cbe901f2c77630f1e301cea32b259"
-SRC_URI[sha256sum] = "5ecd05b5e566cbe688fc1e3159f04004ccad14d4faa3f50d15ffba1d50b4cd52"
+SRC_URI[md5sum] = "9e0e84f36427ce258abfca35fbeb0c55"
+SRC_URI[sha256sum] = "f7d6cf1468c5e71ff097bec0189caccdd8e709a2a88a2c9849ad6200c0f33d4c"
  
  COMPATIBLE_HOST = "(i586.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
index 2f4290f..c7903ce 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb
@@ -1,11 +1,11 @@
-PV_UPDATE = "91"
-BUILD_NUMBER = "14"
+PV_UPDATE = "121"
+BUILD_NUMBER = "13"
  
  require oracle-jse-jdk.inc
  
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-linux-x64.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u${PV_UPDATE}-linux-x64.tar.gz"
  
-SRC_URI[md5sum] = "3f3d7d0cd70bfe0feab382ed4b0e45c0"
-SRC_URI[sha256sum] = "6f9b516addfc22907787896517e400a62f35e0de4a7b4d864b26b61dbe1b7552"
+SRC_URI[md5sum] = "91972fb4e753f1b6674c2b952d974320"
+SRC_URI[sha256sum] = "97e30203f1aef324a07c94d9d078f5d19bb6c50e638e4492722debca588210bc"
  
  COMPATIBLE_HOST = "(x86_64.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc b/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
index a90d780..ead7f4e 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586.inc
@@ -1,10 +1,9 @@
-PV_UPDATE = "91"
-BUILD_NUMBER = "14"
+PV_UPDATE = "121"
+BUILD_NUMBER = "13"
  
  require oracle-jse-jre.inc
  
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-i586.tar.gz"
-
-SRC_URI[md5sum] = "705521705f0ddaa150f64090e56ae96c"
-SRC_URI[sha256sum] = "02071642f1628136516c88c11e46664a8cc363e685e9f066123b41d741567f43"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jre-8u${PV_UPDATE}-linux-i586.tar.gz"
  
+SRC_URI[md5sum] = "b3c499fd4be692e22e5d849177bcfa3f"
+SRC_URI[sha256sum] = "1b28662780c98b3233e8dacaa07c505a70c53463d3b00720baa59f955ab1e1bb"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
index 3385edc..27e978d 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc
@@ -1,9 +1,9 @@
-PV_UPDATE = "91"
-BUILD_NUMBER = "14"
+PV_UPDATE = "121"
+BUILD_NUMBER = "13"
  
  require oracle-jse-jre.inc
  
-SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-x64.tar.gz"
+SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/jre-8u${PV_UPDATE}-linux-x64.tar.gz"
  
-SRC_URI[md5sum] = "cc48b4cacfeda1f699b43ea77ddfaa95"
-SRC_URI[sha256sum] = "66d8971b240bbd03d114308958fff0fb8068d0589122885d9591727e5472137f"
+SRC_URI[md5sum] = "093e22e4f0a55420780a0e437ab9fcd4"
+SRC_URI[sha256sum] = "30bf5fbac0cfbc9201cac1d6973dbc96e5f55043ab315eda8c7aeb23df4f2644"
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 488bce2..a3701a2 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -2,8 +2,9 @@ LICENSE_FLAGS = "oracle_java"
  LICENSE = "Oracle_Binary_Code_License_Agreement"
  LIC_FILES_CHKSUM = "\
  	file://${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=98f46ab6481d87c4d77e0e91a6dbc15f \
-	file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=89f660d2b7d58da3efd2fecd9832da9c \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3dc1bfbd5bed75d650ad0506a0df5930 \
  	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=745d6db5fc58c63f74ce6a7d4db7e695 \
+	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME-JAVAFX.txt;md5=ab9db8d553033c0326bd2d38d77f84c1 \
  	"
  
  FETCHCMD_wget_append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
-- 
2.7.4


