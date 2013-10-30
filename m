Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A0CE0179A
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 18:11:35 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1VbKJj-00065C-Eq; Wed, 30 Oct 2013 01:11:32 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VbKJs-0001hI-Fk; Wed, 30 Oct 2013 01:11:36 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 30 Oct 2013 01:11:34 +0000
Message-Id: <1383095496-6487-3-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1383095496-6487-1-git-send-email-flihp@twobit.us>
References: <1383095496-6487-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=ALL_TRUSTED,URI_HEX
	autolearn=no version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 2/4] refpolicy-mcs: Use default variables from refpolicy_common.inc
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
X-List-Received-Date: Wed, 30 Oct 2013 01:11:38 -0000


Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb |   10 ----------
 1 file changed, 10 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
index 38b78f1..adb8e4a 100644
--- a/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
@@ -8,16 +8,6 @@ needed (pretty much all systems) but the non-hierarchical categories are. \
 
 PR = "r0"
 
-POLICY_NAME = "mcs"
 POLICY_TYPE = "mcs"
-POLICY_DISTRO = "redhat"
-POLICY_UBAC = "n"
-POLICY_UNK_PERMS = "allow"
-POLICY_DIRECT_INITRC = "n"
-POLICY_MONOLITHIC = "n"
-POLICY_CUSTOM_BUILDOPT = ""
-POLICY_QUIET = "y"
-
-POLICY_MCS_CATS = "1024"
 
 include refpolicy_${PV}.inc
-- 
1.7.10.4


