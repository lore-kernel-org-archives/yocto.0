Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9013E009D6; Mon,  3 Aug 2015 06:35:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC755E009A7
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:34:35 -0700 (PDT)
Received: by padck2 with SMTP id ck2so90378532pad.0
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=FWduaXuNCIuMjUQy5MrErnN86o7tI8MPZr88xLleWys=;
	b=tqj455wGWwaNyKG/5hFqgvGv2CC+y1qGCpEdrUujuAY1YPJwDf9kHz6dpY4pzyamLe
	CyS+B7tm/KO5aJdKecwUGGbsymCFGFn6aZEpmEFKZIQHCzfq6ioOIS24290CVDo1p8Ny
	vGOMI6G3gcGg3GtYi19qIiC/GmrElu65Fy66RQKAYjWX+RynuKGlI73s221lyDe8AWsP
	Xp1z2brJ8S6PpVUm6zRBlsIUYUBrMIQevYaYKenBGl6CaQA3sa5Nq+zejWCf+trud1vG
	yEJmx3x8a4eG0NyRtc4awIAVewqAo7965rl0T5BeYc8qI7qcxZCwNHDLCGmUNGBsIXtK
	u4Pg==
X-Received: by 10.66.131.101 with SMTP id ol5mr15563097pab.0.1438608875219;
	Mon, 03 Aug 2015 06:34:35 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	y2sm17559326pdi.80.2015.08.03.06.34.33
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:34:34 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:05:39 +0530
Message-Id: <1438608939-9925-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 4/8] refpolicy-mcs: update base refpolicy to git repo
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
X-List-Received-Date: Mon, 03 Aug 2015 13:35:45 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-mcs to use the
refpolicy from git repository.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/refpolicy/refpolicy-mcs_git.bb |   11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-mcs_git.bb

diff --git a/recipes-security/refpolicy/refpolicy-mcs_git.bb b/recipes-security/refpolicy/refpolicy-mcs_git.bb
new file mode 100644
index 0000000..062727b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-mcs_git.bb
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


