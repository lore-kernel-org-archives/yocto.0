Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 098F3E009D6; Mon,  3 Aug 2015 06:34:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8405AE00973
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:34:17 -0700 (PDT)
Received: by pdrg1 with SMTP id g1so74500479pdr.2
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=kE9i+W3KhjkAXWGvULGUHsWaIg13uY48ihEc+KNDGwM=;
	b=HwMA+1h8bXPpa5hO4g100OelJfXwQlP4veYgjaqxzMLa977WBfxJBjyA8gRpwXH6FC
	z6r6uDDbHCyEbaAwOgqOKB7eZ1hWO2djrW4HbavyHRDT6AmV0ECgNlhEmKA9Cbu7hI+Z
	SBYPO7/4QeGrPsdi8Wmt4Y4wp2eqk3Fk3KH/tP4XojO+aPPYgCHp3dQbDnydsnhNMHdk
	6Wi2RugmRWsJDkfC66o6XHQXM4/lCNJu/CWeS/L7mfKE4rErqn14jECDO/LMmJCOZCTX
	Y4UP0T++TAHnp+FuKlEFCKDB25ebyrIWb+Xb9cKK2JUo1Bk9vTyatNdknFoi8YMAghpz
	upRQ==
X-Received: by 10.70.89.177 with SMTP id bp17mr14905361pdb.148.1438608857012; 
	Mon, 03 Aug 2015 06:34:17 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	bd5sm17613608pdb.41.2015.08.03.06.34.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:34:16 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:05:21 +0530
Message-Id: <1438608921-9881-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 3/8] refpolicy-targeted: update base refpolicy to git repo
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
X-List-Received-Date: Mon, 03 Aug 2015 13:34:58 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-targeted to use the
refpolicy from git repository.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-targeted_git.bb            |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_git.bb

diff --git a/recipes-security/refpolicy/refpolicy-targeted_git.bb b/recipes-security/refpolicy/refpolicy-targeted_git.bb
new file mode 100644
index 0000000..b169604
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-targeted_git.bb
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


