Return-Path: <yuanc.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21DA0E00DE6; Wed, 28 Aug 2019 22:41:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF8E7E00C78
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 22:41:25 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.64,442,1559491200"; d="scan'208";a="74507455"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 29 Aug 2019 13:41:24 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 1922C4CE087F
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 13:41:22 +0800 (CST)
Received: from localhost.localdomain (10.167.225.21) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Thu, 29 Aug 2019 13:41:24 +0800
From: Yuan Chao <yuanc.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Aug 2019 14:41:08 +0900
Message-ID: <20190829054108.12642-1-yuanc.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.167.225.21]
X-yoursite-MailScanner-ID: 1922C4CE087F.AF6CC
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: yuanc.fnst@cn.fujitsu.com
Subject: [meta-selinux] [PATCH] python-scapy: upgrade 2.4.2 -> 2.4.3
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
X-List-Received-Date: Thu, 29 Aug 2019 05:41:27 -0000
Content-Type: text/plain

License file changed from bin/scapy to LICENSE

Signed-off-by: Yuan Chao <yuanc.fnst@cn.fujitsu.com>
---
 recipes-security/scapy/python-scapy.inc                       | 4 ++--
 .../scapy/{python-scapy_2.4.2.bb => python-scapy_2.4.3.bb}    | 0
 .../scapy/{python3-scapy_2.4.2.bb => python3-scapy_2.4.3.bb}  | 0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/scapy/{python-scapy_2.4.2.bb => python-scapy_2.4.3.bb} (100%)
 rename recipes-security/scapy/{python3-scapy_2.4.2.bb => python3-scapy_2.4.3.bb} (100%)

diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
index baa69b2..28e13f2 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -3,11 +3,11 @@ DESCRIPTION = "Scapy is a powerful interactive packet manipulation program. It i
 SECTION = "security"
 LICENSE = "GPLv2"
 
-LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 S = "${WORKDIR}/git"
 
-SRCREV = "bad14cb1a5aee29f8107fbe8ad008d4645f14da7"
+SRCREV = "3047580162a9407ef05fe981983cacfa698f1159"
 SRC_URI = "git://github.com/secdev/scapy.git"
 
 inherit ptest
diff --git a/recipes-security/scapy/python-scapy_2.4.2.bb b/recipes-security/scapy/python-scapy_2.4.3.bb
similarity index 100%
rename from recipes-security/scapy/python-scapy_2.4.2.bb
rename to recipes-security/scapy/python-scapy_2.4.3.bb
diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-security/scapy/python3-scapy_2.4.3.bb
similarity index 100%
rename from recipes-security/scapy/python3-scapy_2.4.2.bb
rename to recipes-security/scapy/python3-scapy_2.4.3.bb
-- 
2.17.1




