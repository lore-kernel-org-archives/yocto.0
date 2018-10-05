Return-Path: <Awais_Belal@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB85AE006AF; Thu,  4 Oct 2018 23:34:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB21EE0053F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 23:34:22 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-MBX-03.mgc.mentorg.com)
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1g8Jgr-0005Pq-NB from Awais_Belal@mentor.com 
	for yocto@yoctoproject.org; Thu, 04 Oct 2018 23:34:21 -0700
Received: from P7520.pkl.mentorg.com (137.202.0.90) by
	SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Fri, 5 Oct 2018 07:34:17 +0100
From: Awais Belal <awais_belal@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Oct 2018 11:34:00 +0500
Message-ID: <1538721240-17988-1-git-send-email-awais_belal@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
X-Mailman-Approved-At: Fri, 05 Oct 2018 00:53:07 -0700
Subject: [meta-selinux][PATCH] refpolicy_git.inc: lock SRCREVs on the actual version hashes
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
X-List-Received-Date: Fri, 05 Oct 2018 06:34:23 -0000
Content-Type: text/plain

Using AUTOREV in the main repository has its downsides.
1. The checked out version isn't actually the version depicted
   by PV.
2. Breaks builds in scenarios where network isn't available
   or BB_NO_NETWORK is used even after sources are already
   fetched.

1 is self explanatory, for 2 whenever SRCREV is set to AUTOREV and
SRCPV is used in PV the fetcher tries to access the network in order
to determine SRCPV (bb.fetch2.get_srcrev) and fails for obvious
reasons during parsing even when versioned recipes are used as
PREFERRED_VERSION because parsing still happens for recipes that are
in BB's search paths and we see.
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception NetworkAccess: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c core.fsyncobjectfiles=0 ls-remote git://github.com/TresysTechnology/refpolicy.git  (for url git://github.com/TresysTechnology/refpolicy.git)

So we lock the REVs and do that with a soft assignment which
allows overriding the REVs from elsewhere.

Signed-off-by: Awais Belal <awais_belal@mentor.com>
---
 recipes-security/refpolicy/refpolicy_git.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index f71eb35..6c318ab 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -3,8 +3,8 @@ PV = "2.20170805+git${SRCPV}"
 SRC_URI = "git://github.com/TresysTechnology/refpolicy.git;protocol=git;branch=master;name=refpolicy;destsuffix=refpolicy"
 SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git;branch=master;name=refpolicy-contrib;destsuffix=refpolicy/policy/modules/contrib"
 
-SRCREV_refpolicy = "${AUTOREV}"
-SRCREV_refpolicy-contrib = "${AUTOREV}"
+SRCREV_refpolicy ?= "794ed7efd0eca19d0353659a1ec9d4ef4e4b751c"
+SRCREV_refpolicy-contrib ?= "a393275a6ecb76311323726a029767a3a01e109e"
 SRCREV_FORMAT = "refpolicy.refpolicy-contrib"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
-- 
2.7.4


