Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 242E8E00B43; Thu, 30 Jul 2015 06:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AFD5E00A7E
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:35:49 -0700 (PDT)
Received: by pachj5 with SMTP id hj5so23752441pac.3
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=0N1TJgXRP4Hhlv2W4sKsKyRyjaouLPJyKRaOlQxH/rQ=;
	b=F0IHjdeWJZ7Jvq2XTAIfH65xO7mUg+vpPCHA0eMN//DIDKi1MgCzsc5oYGPc+8GbZe
	uPDIo2aCwrqOwzp+8uCAsXzKK+3LZ83E93KR9ikmn17EjWoUGjDZVV0cqTi6xCaKa0ha
	NIQfhGFecuuv31PV+nCZ5tBaExHzxX45oUGpZ1wzKdORF2FZtyJeN3Qx/hVrXNoj+S35
	O8wgAPQKHX25+i53T8wpounUDthjCUuFEfCjHaY4hhtspa1y6AAcgTEA4xaFfVzOqAk5
	K5RvfnYcLxukle6QbUJf8ffn8DafvM3U6oKnTrI8Lgu6rvGH4fx4fucGssyWqBtBjw61
	lkdA==
X-Received: by 10.66.157.195 with SMTP id wo3mr105829977pab.17.1438263349024; 
	Thu, 30 Jul 2015 06:35:49 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	wc8sm2277579pab.45.2015.07.30.06.35.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 06:35:48 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 19:06:29 +0530
Message-Id: <1438263389-14421-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 3/7] refpolicy-targeted: update base refpolicy 20141203
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
X-List-Received-Date: Thu, 30 Jul 2015 13:37:20 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-targeted to use the 20141203
base refpolicy.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-targeted_2.20141203.bb     |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20141203.bb

diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20141203.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20141203.bb
new file mode 100644
index 0000000..b169604
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-targeted_2.20141203.bb
@@ -0,0 +1,20 @@
+SUMMARY = "SELinux targeted policy"
+DESCRIPTION = "\
+This is the targeted variant of the SELinux reference policy.  Most service \
+domains are locked down. Users and admins will login in with unconfined_t \
+domain, so they have the same access to the system as if SELinux was not \
+enabled. \
+"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-${PV}:"
+
+POLICY_NAME = "targeted"
+POLICY_TYPE = "mcs"
+POLICY_MLS_SENS = "0"
+
+include refpolicy_${PV}.inc
+
+SRC_URI += " \
+            file://refpolicy-fix-optional-issue-on-sysadm-module.patch \
+            file://refpolicy-unconfined_u-default-user.patch \
+           "
-- 
1.7.9.5


