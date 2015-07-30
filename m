Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE009E00B47; Thu, 30 Jul 2015 06:37:27 -0700 (PDT)
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
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C94FE00B0B
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:01 -0700 (PDT)
Received: by pdjr16 with SMTP id r16so25298302pdj.3
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=5UKztP54Ixqg4It8lDQH9ypV9XbdWKA3YcJJTJHIZg4=;
	b=PsaRoyFykgjlD7+m33o/EDDHpYmqEhaO8jcsAAFYWnXFfHkOYt7EPj5IVkqRnum1h1
	COj1ymEcOwXVeGbsVItfxxQGP1jwK8A7TldWW8nTL7Li6FLVK1Rc+92rHPGS4llXGyo9
	Xur68YtB6sPDzoZd0CLcNo1EbhyJKLOhvVZHQP/g7rXurhcKp9KGCL2c286HRdra8nxX
	cbaDX3dqC2Bs3+wmjvk7Eh5ljKYRAKaudjnU5vpyjkBoeZf5f3mnQlKGT+O4uX6KEbAz
	br9YtL5BPeq67L+fIUqxFbbOXalPI0pSu5buBxg0YvxjGxkSNnE/bg2znqYsR+hJD3qY
	wWgA==
X-Received: by 10.70.103.145 with SMTP id fw17mr107878124pdb.1.1438263361869; 
	Thu, 30 Jul 2015 06:36:01 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	nh3sm2303993pdb.72.2015.07.30.06.36.00
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 06:36:01 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 19:06:42 +0530
Message-Id: <1438263402-14452-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 4/7] refpolicy-mcs: update base refpolicy 20141203
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
X-List-Received-Date: Thu, 30 Jul 2015 13:37:27 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-mcs to use the 20141203
base refpolicy.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-mcs_2.20141203.bb          |   11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20141203.bb

diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20141203.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20141203.bb
new file mode 100644
index 0000000..062727b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-mcs_2.20141203.bb
@@ -0,0 +1,11 @@
+SUMMARY = "MCS (Multi Category Security) variant of the SELinux policy"
+DESCRIPTION = "\
+This is the reference policy for SE Linux built with MCS support. \
+An MCS policy is the same as an MLS policy but with only one sensitivity \
+level. This is useful on systems where a hierarchical policy (MLS) isn't \
+needed (pretty much all systems) but the non-hierarchical categories are. \
+"
+
+POLICY_TYPE = "mcs"
+
+include refpolicy_${PV}.inc
-- 
1.7.9.5


