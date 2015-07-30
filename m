Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A921E00B60; Thu, 30 Jul 2015 06:38:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7314E00B30
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:29 -0700 (PDT)
Received: by pdbbh15 with SMTP id bh15so24634553pdb.1
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=i0hhIQ3/fS4TbwScG12WDws74OL1RPw3O2qVA0osAVc=;
	b=ykosnmVrwMxj1cGOZSDzKWyxfyuV4OoK5kq8WVjs9x33JeGIv4+/tcmyruWCUWVzR2
	93wU1ZVKP0rFuQiejD1MTXV7Hs4TewICj5J1a1mx9b4tSWI2Gfm/MQbqjcDepgsJLFEV
	YufgFalMi04N2KaW9SMM/t/lqRNPjbazkkGAMqXLjS07x0EHa/ZM/dGL4/ZME3PiZqs4
	oN8v4v3+rSx0im2xdSqzQhfvVr0bEnkHnQ9eqB3u6cg+29pTQeICLsl17taYo3J/erC8
	rCYSggMrFhmaFVqrLiC73U1S0qNUsJBcXRmaKCtbN5ZbNn+KW+ZcqL81LJJLwPfR/zF/
	e/Gg==
X-Received: by 10.70.4.3 with SMTP id g3mr95717192pdg.73.1438263389119;
	Thu, 30 Jul 2015 06:36:29 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id q7sm2348132pdj.31.2015.07.30.06.36.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 06:36:28 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 19:07:09 +0530
Message-Id: <1438263429-14515-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 6/7] refpolicy-standard: update base refpolicy 20141203
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
X-List-Received-Date: Thu, 30 Jul 2015 13:38:09 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-standard to use the 20141203
base refpolicy.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-standard_2.20141203.bb     |    8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-standard_2.20141203.bb

diff --git a/recipes-security/refpolicy/refpolicy-standard_2.20141203.bb b/recipes-security/refpolicy/refpolicy-standard_2.20141203.bb
new file mode 100644
index 0000000..3674fdd
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-standard_2.20141203.bb
@@ -0,0 +1,8 @@
+SUMMARY = "Standard variants of the SELinux policy"
+DESCRIPTION = "\
+This is the reference policy for SELinux built with type enforcement \
+only."
+
+POLICY_TYPE = "standard"
+
+include refpolicy_${PV}.inc
-- 
1.7.9.5


