Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1299E00B77; Wed, 24 Oct 2018 23:27:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD9FBE00AD8
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:27:51 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id y144-v6so237247wmd.4
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=XkLjfz1rgREliS93lp/XcLF4Qo9WuVSWPBo7/QkauOY=;
	b=JTqkc7nSYF4CHvV+QlSYCjcuZBddLB2s+5n8OQEJNJfDfomfSZD5xcj86lQsqN/jLq
	Wg0XRkAlwYEwVrB8JEGSMNRYG5C7mJCNrp5M9ado3Z8jAzjwMPsMKiJarYAxmtXw26C5
	Oi8+nq3NRkhwZA4ZcxLpfYzGn4R92mvPrfPbzfaPVLXkOhFHiva8++FjwZ20IHcIJWn5
	4IdTbaw6pT6z7Lbtmicteb1s2SJZ6ZkWfJdAadmI8k9FI9MpAR3rihggayxb9ekCiL6C
	hsZdChtG3fHLrvm5y8s61F0z+ipY3l4gqHBpGX/aQLVoNI6UKwahan9bt/8zCNf5egtN
	dwNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=XkLjfz1rgREliS93lp/XcLF4Qo9WuVSWPBo7/QkauOY=;
	b=CzT8VWABRI30KKRuhGQFQ4cfQqSTJfaQF5KsoA3D/Or2Ec3EU3uqlTWJwPwKv0GOWm
	Y+ChOOK7iehctcyVMl2JRP6pVlm7lwMAuVCjOctuhgjQrOxPIl429xJmdzhvLEwCUoG9
	1b50BTCkOAAs8A21Bq4NI3U1nrHKCMLqZ4cCLg3JN0V7XHLidhY4Kgs732cpkgB9U009
	L+FEl20KjY2//1NdVNDP8S8ocWThCr57RHsQtll/CeTmZvUz6vmtIAKYN9Qkva9eJ9Hk
	SGovf33svXpqCdwwFzbPMnwk9h6ButTlZWcIzd/Bm4YY6Piq6Su5ziFoAfv2Xp9VFf6N
	ww4g==
X-Gm-Message-State: AGRZ1gIwBnhh6O1hlvHz7gxJWKMy3bvYUMn2q8ra0wuQ6o/i7IUXMmwO
	Z8ihUglBp8qOqG6Zu5Ga67O9lnkwOXs=
X-Google-Smtp-Source: AJdET5dVGRjCh457sVNJXUdqS/yffQOxO1tVTLHybMabqs7G8er/Q5ZHRWlhto2gS2kia/EVGlvbCg==
X-Received: by 2002:a1c:bce:: with SMTP id 197-v6mr374009wml.15.1540448870212; 
	Wed, 24 Oct 2018 23:27:50 -0700 (PDT)
Received: from localhost.localdomain ([109.144.208.247])
	by smtp.gmail.com with ESMTPSA id
	z18-v6sm2170193wrh.33.2018.10.24.23.27.49
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 24 Oct 2018 23:27:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Oct 2018 07:27:46 +0100
Message-Id: <1540448867-12695-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540448867-12695-1-git-send-email-akuster808@gmail.com>
References: <1540448867-12695-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] packagegroup-core-security: add ptest capable packages
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
X-List-Received-Date: Thu, 25 Oct 2018 06:27:53 -0000

and favor python-scapy

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bb             | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 718ea5a..653d87b 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -12,6 +12,7 @@ PACKAGES = "\
     packagegroup-security-ids  \
     packagegroup-security-mac  \
     ${@bb.utils.contains("MACHINE_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-security-ptest", "", d)} \
     "
 
 RDEPENDS_packagegroup-core-security = "\
@@ -20,6 +21,7 @@ RDEPENDS_packagegroup-core-security = "\
     packagegroup-security-ids  \
     packagegroup-security-mac  \
     ${@bb.utils.contains("MACHINE_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-security-ptest", "", d)} \
     "
 
 SUMMARY_packagegroup-security-utils = "Security utilities"
@@ -27,7 +29,7 @@ RDEPENDS_packagegroup-security-utils = "\
     checksec \
     nmap \
     pinentry \
-    python3-scapy \
+    python-scapy \
     ding-libs \
     xmlsec1 \
     keyutils \
@@ -66,3 +68,13 @@ RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
     "
+
+SUMMARY_packagegroup-security-ptest = "Security packages with ptests"
+RDEPENDS_packagegroup-security-ptest = " \
+    samhain-standalone-ptest \
+    xmlsec1-ptest \
+    keyutils-ptest \
+    libseccomp-ptest \
+    python-scapy-ptest \
+    ptest-runner \
+    "
-- 
2.7.4


