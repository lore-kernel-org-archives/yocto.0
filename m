Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06ED1E00777; Wed, 29 Mar 2017 00:04:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2672FE00777
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 00:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490771069; x=1522307069;
	h=subject:references:to:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=e2fIFrwVP6p3aXd4p4iPWJBmyU3pBQWVFfECxzlnLfY=;
	b=FtlKRwsUPOLiq6MyRwo1PKv6hRSA3D5isML0XiXHGsVwVgACp0hTweHE
	CpKsNCRd62SZTzrKyQ8f2y3wiHXkcWR7xoHlaLJBSY8LbnxIDmvKACYdh
	gbfYesdwg+IXeTBg+9B1igHoeeq+RO3vNHlFrQTuj5Y6L2PDvba+ciNaZ s=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 29 Mar 2017 09:03:27 +0200
References: <1490732744-25547-3-git-send-email-jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
From: Jaap de Jong <jaap.dejong@nedap.com>
X-Forwarded-Message-Id: <1490732744-25547-3-git-send-email-jaap.dejong@nedap.com>
Message-ID: <ef20f394-3eba-8c88-c166-d670ade15ee2@nedap.com>
Date: Wed, 29 Mar 2017 09:03:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490732744-25547-3-git-send-email-jaap.dejong@nedap.com>
Subject: [meta-oracle-java][PATCH 3/6] oracle-jse-ejre: Add recipe for arm softfloat jvm
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
X-List-Received-Date: Wed, 29 Mar 2017 07:04:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

---

  .../oracle-jse-ejre-arm-sflt-client-headless.inc   | 10 +++++++++
  .../oracle-java/oracle-jse-jre_1.8.0.bb            | 24 +++++++++++++---------
  2 files changed, 24 insertions(+), 10 deletions(-)
  create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc
new file mode 100644
index 0000000..321afee
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc
@@ -0,0 +1,10 @@
+PV_UPDATE = "121"
+BUILD_NUMBER = "13"
+LICENSE_DIR = "ejdk${PV}_${PV_UPDATE}/linux_arm_sflt/jre"
+
+require oracle-jse-ejre.inc
+
+SRC_URI = "http://download.oracle.com/otn/java/ejdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/e9e7ea248e2c4826b92b3f075a80e441/ejdk-8u${PV_UPDATE}-linux-arm-sflt.tar.gz"
+
+SRC_URI[md5sum] = "11041e7eedd897d70cabe54f29d10587"
+SRC_URI[sha256sum] = "9ad72839dba09e336954c7653778a2517e6d0e56a9524f4c11ff008ad3eb4637"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
index 7c8e351..ebf0265 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre_1.8.0.bb
@@ -1,16 +1,20 @@
  # Automatically choose java package based on target architecture
  def get_java_pkg(d):
-       TA = d.getVar('TARGET_ARCH', True)
-       if TA == "arm":
-               javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
-       elif TA == "i586":
-               javaPkg = "oracle-jse-jre-i586"
-       elif TA == "x86_64":
-               javaPkg = "oracle-jse-jre-x86-64"
-       else:
-               raise bb.parse.SkipPackage("Target architecture '%s' is not supported by the meta-oracle-java layer" %TA)
+	TA = d.getVar('TARGET_ARCH', True)
+	if TA == "arm":
+		FPU = d.getVar('TARGET_FPU', True)
+		if FPU == "soft":
+			javaPkg = "oracle-jse-ejre-arm-sflt-client-headless"
+		else:
+			javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
+	elif TA == "i586":
+		javaPkg = "oracle-jse-jre-i586"
+	elif TA == "x86_64":
+		javaPkg = "oracle-jse-jre-x86-64"
+	else:
+		raise bb.parse.SkipPackage("Target architecture '%s' is not supported by the meta-oracle-java layer" %TA)
  
-       return javaPkg
+	return javaPkg
  
  JAVA_PKG = "${@get_java_pkg(d)}"
  
-- 
2.7.4


