Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A00ACE008CC; Wed, 28 Jan 2015 07:36:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1EB3E007C1
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 07:36:22 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YGUdR-0006AH-I2; Wed, 28 Jan 2015 15:34:30 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 28 Jan 2015 15:36:01 +0000
Message-Id: <1422459365-22900-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][ 0/4] More whack-a-mole with version numbers.
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
X-List-Received-Date: Wed, 28 Jan 2015 15:36:28 -0000

This is another round of renaming the meta-selinux bbappends to use
wild cards. The three recipes renamed here had no patches to port.
They're basically 3-4 line recipes that enable SELinux or add a 
config file. Per previous guidance I've removed PRs so hopefully
this is still the right thing to do.

One oddity here is the change made to the ustr recipe. It was using
a variable I've never seen before and failing to fetch the SRC_URI.
I think this variable was a typo and after changing ${BPV} -> ${PV}
the expected behavior was restored.

Philip Tricca (4):
  sysklogd: Use wildcard for version and remove PR.
  dhcp: Use wildcard for version number.
  coreutils: Use wildcard for version and remove PR.
  ustr: Fix use of bad variable in SRC_URI.

 recipes-connectivity/dhcp/dhcp_%.bbappend       |    3 +++
 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend   |    3 ---
 recipes-core/coreutils/coreutils_%.bbappend     |    1 +
 recipes-core/coreutils/coreutils_8.22.bbappend  |    3 ---
 recipes-extended/sysklogd/sysklogd_%.bbappend   |    1 +
 recipes-extended/sysklogd/sysklogd_1.5.bbappend |    3 ---
 recipes-extended/ustr/ustr_1.0.4.bb             |    2 +-
 7 files changed, 6 insertions(+), 10 deletions(-)
 create mode 100644 recipes-connectivity/dhcp/dhcp_%.bbappend
 delete mode 100644 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
 create mode 100644 recipes-core/coreutils/coreutils_%.bbappend
 delete mode 100644 recipes-core/coreutils/coreutils_8.22.bbappend
 create mode 100644 recipes-extended/sysklogd/sysklogd_%.bbappend
 delete mode 100644 recipes-extended/sysklogd/sysklogd_1.5.bbappend

-- 
1.7.10.4


