Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E20BE00876; Tue, 30 Sep 2014 20:39:24 -0700 (PDT)
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
	*      [209.85.214.172 listed in list.dnswl.org]
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5A88E0079A
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 20:39:21 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id wo20so258781obc.17
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 20:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=2hjAknq8g8fjNAErugS1ynQTtZSMktvoo8irIARmwOQ=;
	b=rbg8+fmmydht4Z6VXjzgHCkvRpdwFsrQP3FwUkh7P7S5u9HO50RSlNs0Um/QqFL2l7
	2FneHcZQkmzs6AtlvusrXEPkBO7kimriFYWMBV5Lxq777LxndLxzodmJ4A+6drz/IDMP
	hm5Zpx8qSpTaTIwCEhvDHTwvaLqSb8ns9gaVyeoRZ4cq1IgJjZKRGh1VfQRqZWvlkOwu
	MF7quYaAGa13CHzm6hA+hvzBexMjwrfqITAoPMHZtNEhfMZHZUlO6o1Q8tnHuelEKDeU
	9jEG4e7Lhajt10HodGZZhpSD8cIUHXBEfbD36cvTlgHypGrZPobNwRnFYFdSenNJX9Yq
	NZQg==
X-Received: by 10.182.236.65 with SMTP id us1mr53405069obc.38.1412134761159;
	Tue, 30 Sep 2014 20:39:21 -0700 (PDT)
Received: from localhost.localdomain (75-163-154-89.clsp.qwest.net.
	[75.163.154.89])
	by mx.google.com with ESMTPSA id no6sm10667858obb.6.2014.09.30.20.39.19
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 30 Sep 2014 20:39:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Sep 2014 20:39:15 -0700
Message-Id: <1412134755-5215-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] packagegroups: add a few more catagories
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
X-List-Received-Date: Wed, 01 Oct 2014 03:39:24 -0000

Add tripwire, samhain and checksec packages
fix ccs-tools to exclude if no kernel support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bb            | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 25f9f1f..50208d0 100644
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
+    ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d) \
+    "
-- 
1.9.1


