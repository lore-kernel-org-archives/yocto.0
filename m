Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 667ADE006F3; Thu, 10 Jul 2014 09:15:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CBB3E00572
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 09:15:35 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lj1so11437750pab.1
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 09:15:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=hv34iw7s0V/Mr7L2+UIHJTMg+xnf2n59hY6B+f1K+88=;
	b=FCgNs4wjxj4zXjYifPc8OpyA996E0XsUCY6fYW1PAK0BuVJLprWLMPFnAJxfmQWZLS
	Dj0ZUUJhFWuEEKQRNpxL5vgNue3bMpQyZMvnh8otoLIrboVxCckUiqGHvkISRl1Zup5E
	scdhsTI4F0hDWGEKG9J+7W3EHf69akQw9TYMLZPjE4iBk+CFALS+A8HB4ymo/jHFUaJI
	vziiaiB6TyYrVQ9N0dzHG2y9psDCw1w4MbLFTJQb+c7QLF5risgS/jIoeTsgpAwbYe59
	lNCDA0T+MwHqlYMGMRJd0czjk6U4xVahdvwuVSwbpUj3F6I2WQtxGDNfOkKbbQMv+XnE
	yQ6g==
X-Gm-Message-State: ALoCoQmBaZhRbkArKsoz6ba8v6eTH2sWhXsqMmOfQBBN5yfsRajvNxG5PakshMlA0aYu5BCAj5q4
X-Received: by 10.70.36.7 with SMTP id m7mr17691746pdj.91.1405008935161;
	Thu, 10 Jul 2014 09:15:35 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	mt1sm62380625pbb.31.2014.07.10.09.15.33 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 10 Jul 2014 09:15:34 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jul 2014 09:15:31 -0700
Message-Id: <1405008931-3405-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] V2 packagegroup: Add initial set of package groups
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
X-List-Received-Date: Thu, 10 Jul 2014 16:15:38 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../packagegroup/packagegroup-core-security.bb     | 43 ++++++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 recipes-security/packagegroup/packagegroup-core-security.bb

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
new file mode 100644
index 0000000..25f9f1f
--- /dev/null
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -0,0 +1,43 @@
+DESCRIPTION = "Security packagegroup for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-core-security \
+    packagegroup-security-utils \
+    packagegroup-security-scanners \
+    "
+
+RDEPENDS_packagegroup-core-security = "\
+    packagegroup-security-utils \
+    packagegroup-security-scanners \
+    "
+
+SUMMARY_packagegroup-security-utils = "Security utilities"
+RDEPENDS_packagegroup-security-utils = "\
+    nmap \
+    libseccomp \
+    pinentry \
+    ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
+    "
+
+SUMMARY_packagegroup-security-scanners = "Security scanners"
+RDEPENDS_packagegroup-security-scanners = "\
+    nikto \
+    checksecurity \
+	"
+
+SUMMARY_packagegroup-security-audit = "Security Audit tools "
+RDEPENDS_packagegroup-security-audit = " \
+    buck-security \
+    redhat-security \
+    "
+
+SUMMARY_packagegroup-security-hardening = "Security Hardening tools"
+RDEPENDS_packagegroup-security-hardening = " \
+    bastille \
+    "
+
-- 
1.9.1


