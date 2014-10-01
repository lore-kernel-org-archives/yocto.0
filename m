Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08FB2E00876; Tue, 30 Sep 2014 21:27:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE87AE0079A
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 21:27:09 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id v63so25204oia.13
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 21:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=qZ/8Fiz1jM3rZrOfR97FIWFE6jVPICclGuOzVhXYbjU=;
	b=TLTCfAsJBL+RfxsfK2sM4S/Yv6qVEKaWq10GvKxZGXozIN/t5CXC+lih3JAMzkLY6M
	XUFAbie5xb8qmZYf0jNIxF2XAoM3RjYDa2yIfsH2KM6dKew6hQyLeHKthe2E08XEbHw2
	poUX7qcADyp75CzyY0NH55Oug9c2GoUOxqWIogYNNwdzZBssuA6vwxqx0T0UHRiwiMNi
	FphZvrqdYg1kRpidQfqKdznJwIiyXDXdBxK9Ble2eM9jAqmv1tCeNyoeCXdT9h4hHWUa
	jtNCAthfm6oyy8B6ZHN9GxYDffHuaWoDhF7R7t51+PWtsPtD4L1ek5vOtIMPpnOehI0u
	4jxA==
X-Received: by 10.182.19.195 with SMTP id h3mr52673263obe.43.1412137628612;
	Tue, 30 Sep 2014 21:27:08 -0700 (PDT)
Received: from localhost.localdomain (75-163-154-89.clsp.qwest.net.
	[75.163.154.89]) by mx.google.com with ESMTPSA id
	ls8sm10722922obb.13.2014.09.30.21.27.06 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 30 Sep 2014 21:27:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Sep 2014 21:26:58 -0700
Message-Id: <1412137618-11056-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH v2] packagegroups: add a few more catagories
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
X-List-Received-Date: Wed, 01 Oct 2014 04:27:13 -0000

Add tripwire, samhain and checksec packages
fix ccs-tools to exclude if no kernel support

v2:
 fixed missing "}"

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bb            | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 25f9f1f..ef8f707 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -9,15 +9,20 @@ PACKAGES = "\
     packagegroup-core-security \
     packagegroup-security-utils \
     packagegroup-security-scanners \
+    packagegroup-security-ids  \
+    packagegroup-security-mac  \
     "
 
 RDEPENDS_packagegroup-core-security = "\
     packagegroup-security-utils \
     packagegroup-security-scanners \
+    packagegroup-security-ids  \
+    packagegroup-security-mac  \
     "
 
 SUMMARY_packagegroup-security-utils = "Security utilities"
 RDEPENDS_packagegroup-security-utils = "\
+    checksec \
     nmap \
     libseccomp \
     pinentry \
@@ -41,3 +46,13 @@ RDEPENDS_packagegroup-security-hardening = " \
     bastille \
     "
 
+SUMMARY_packagegroup-security-ids = "Security Intrusion Detection systems"
+RDEPENDS_packagegroup-security-ids = " \
+    tripwire \
+    samhain-client \
+    "
+
+SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
+RDEPENDS_packagegroup-security-mac = " \
+    ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
+    "
-- 
1.9.1


