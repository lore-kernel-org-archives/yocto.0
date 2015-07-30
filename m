Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31D43E00AEE; Thu, 30 Jul 2015 06:38:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E46E00AE9
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:15 -0700 (PDT)
Received: by padck2 with SMTP id ck2so23862154pad.0
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=dfLkUvWA1Oj/qA1EzOdjgw5A6GUqvCabnWjSm9VSa48=;
	b=ObtaqKY2PDcj+T/Wzkgc6hRPon3ihQXYhfFpIHHs2wvqmr+5Ht944l5x0v3rb0MiZf
	cdcb9djMAf49iPu++dcemSut0g9o6b6fp11cAaFX6z4F0XGP11WNiZrMuW/fX1F7a7zW
	MmwHW97Yry57+HWF3D9Zs4KMAhPeLzYSIDlT0US8+70PJ8oDq6QrzBPurf2S8sW2olBo
	1IJJQROID73gJR+PGdN0epGWLxCo3w4CohyMLb57oVCwi00Rl4MJDJzDxb1ZXRJ26POA
	twTYSkgdhLmpw34rh1GOOzOS4rubDjIJcYVdhQFpGqN22wF7y9ynZ28xxARqKbqgS5ad
	f37g==
X-Received: by 10.67.5.162 with SMTP id cn2mr488361pad.7.1438263375147;
	Thu, 30 Jul 2015 06:36:15 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	fc3sm2349836pab.16.2015.07.30.06.36.13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 06:36:14 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 19:06:56 +0530
Message-Id: <1438263416-14483-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 5/7] refpolicy-mls: update base refpolicy 20141203
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
X-List-Received-Date: Thu, 30 Jul 2015 13:38:02 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-mls to use the 20141203
base refpolicy.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-mls_2.20141203.bb          |   10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-mls_2.20141203.bb

diff --git a/recipes-security/refpolicy/refpolicy-mls_2.20141203.bb b/recipes-security/refpolicy/refpolicy-mls_2.20141203.bb
new file mode 100644
index 0000000..7388232
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-mls_2.20141203.bb
@@ -0,0 +1,10 @@
+SUMMARY = "MLS (Multi Level Security) variant of the SELinux policy"
+DESCRIPTION = "\
+This is the reference policy for SE Linux built with MLS support. \
+It allows giving data labels such as \"Top Secret\" and preventing \
+such data from leaking to processes or files with lower classification. \
+"
+
+POLICY_TYPE = "mls"
+
+include refpolicy_${PV}.inc
-- 
1.7.9.5


