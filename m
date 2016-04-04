Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 510AAE00B6F; Sun,  3 Apr 2016 17:22:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18358E00A9C
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 17:22:02 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1amsFp-0002qF-P4; Mon, 04 Apr 2016 00:20:30 +0000
From: Philip Tricca <flihp@twobit.us>
To: mark.hatle@windriver.com, Joe_MacDonald@mentor.com, yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 00:21:32 +0000
Message-Id: <1459729295-79553-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 0/3] refpolicy virtual package
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
X-List-Received-Date: Mon, 04 Apr 2016 00:22:06 -0000

We currently require each image to depend on the policy (or multiple
policies) that they want installed and the selinux-config package
enables the DEFAULT_POLICY. Since only one policy can be in effect at a
time, and we're targeting "embedded" systems it makes sense (to me at
least) that we would treat the policy much like we do the kernel and use
a virtual provider.

Feedback would be much appreciated,
Philip

Philip Tricca (3):
  refpolicy: Setup virtual/refpolicy provider.
  Integrate selinux-config into refpolicy_common.
  refpolicy_common: Sanity test DEFAULT_ENFORCING value and set default.

 conf/distro/oe-selinux.conf                        |  1 +
 .../packagegroups/packagegroup-core-selinux.bb     |  4 +-
 .../packagegroups/packagegroup-selinux-minimal.bb  |  3 +-
 recipes-security/refpolicy/refpolicy_common.inc    | 43 +++++++++++++++++++++-
 recipes-security/selinux/selinux-config_0.1.bb     | 41 ---------------------
 5 files changed, 44 insertions(+), 48 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb

-- 
2.1.4


