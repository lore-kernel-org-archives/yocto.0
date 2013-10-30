Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2751E01790
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 18:11:35 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1VbKJj-00065A-CK; Wed, 30 Oct 2013 01:11:32 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VbKJs-0001hB-BX; Wed, 30 Oct 2013 01:11:36 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 30 Oct 2013 01:11:32 +0000
Message-Id: <1383095496-6487-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=ALL_TRUSTED,URI_HEX
	autolearn=no version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 0/4] refpolicy: Move common POLICY_* variables to refpolicy_common.inc
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

This is a simple clean-up patch set to move the POLICY_* variables to the
refpolicy_common.inc file. The only variable that needs to be set by the
top level refpolicy recipes now is POLICY_TYPE.

Philip Tricca (4):
  Move common POLICY_* variables to refpolicy_common.inc
  refpolicy-mcs: Use default variables from refpolicy_common.inc
  refpolicy-mls: Use default variables from refpolicy_common.inc
  refpolicy-standard: Use default variables from refpolicy_common.inc

 recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb     |   10 ----------
 recipes-security/refpolicy/refpolicy-mls_2.20130424.bb     |   12 ------------
 .../refpolicy/refpolicy-standard_2.20130424.bb             |    8 --------
 recipes-security/refpolicy/refpolicy_common.inc            |   12 ++++++++++++
 4 files changed, 12 insertions(+), 30 deletions(-)

-- 
1.7.10.4


