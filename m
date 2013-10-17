Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48C25E01684
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:06:20 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>) id 1VWstn-0004tx-2M
	for yocto@yoctoproject.org; Thu, 17 Oct 2013 19:06:19 +0000
Received: from flihp by longhaul.twobit.us with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>) id 1VWsti-0007x1-LL
	for yocto@yoctoproject.org; Thu, 17 Oct 2013 19:06:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2013 19:06:06 +0000
Message-Id: <1382036771-30531-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux][PATCH 0/5] Resend: Remove python dependency from refpol.
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
X-List-Received-Date: Thu, 17 Oct 2013 19:06:26 -0000

This is a resend of an earlier patch set that never made it to the list
AFAIK.

The reference policy package currently pulls in a lot of python stuff
that isn't strictly necessary to boot an SELinux system and load a
policy. AFAIK this is caused by the mix of python and C utilities in
policycoreutils.

This patch set breaks the policycoreutils recipe up into multiple
packages, one for each utility. In this way we can have the refpol etc
pull in only the utilities necessary for normal operation. This happens
to be only the utilities written in C and thus we can remove python
completely in a minimal image.

I've attempted to localize these changes as much as possible so this
patch set should have minimal impact on recipes outside of the
policycoreutils. An example image reicpe is added to demonstrate a
minimal image with only the utilities required to load a policy and
manipulate the policy store (add / remove policy modules) at runtime.

Regards,
- Philip

Philip Tricca (5):
 Break policycoreutils out into separate
 Remove unnecessary RDEPENDS_${BPN}.
 Remove runtime dependency on
 Add packagegroup and image recipe for
 Add packagegroup for policycoreutils

 .../images/core-image-selinux-minimal.bb           |   15 ++
 .../packagegroups/packagegroup-core-selinux.bb     |    4 +-
 .../packagegroups/packagegroup-selinux-minimal.bb  |   26 +++
 .../packagegroup-selinux-policycoreutils.bb        |   36 ++++
 recipes-security/refpolicy/refpolicy_common.inc    |    2 +-
 recipes-security/selinux/policycoreutils.inc       |  179 +++++++++++++++++--
 6 files changed, 245 insertions(+), 17 deletions(-)


