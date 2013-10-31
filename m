Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A21ABE017BE
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 17:33:26 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1VbgCQ-0006wk-9L; Thu, 31 Oct 2013 00:33:23 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VbgCc-0000eB-8C; Thu, 31 Oct 2013 00:33:34 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 31 Oct 2013 00:33:31 +0000
Message-Id: <1383179614-2457-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 0/3] Small dependency clean up.
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
X-List-Received-Date: Thu, 31 Oct 2013 00:33:31 -0000

This series adds the necessary run-time dependencies to the
selinux-config package. Some clean up follows removing the selinux
lib* packages from the packagegroups as they get pulled in by the
utilities anyways.

Philip Tricca (3):
  Add RDEPENDS to selinux-config recipe.
  Remove unnecessary dependencies from minimal packagegroup.
  Remove unnecessary packages from packagegroup-core-selinux.

 recipes-security/packagegroups/packagegroup-core-selinux.bb    |    7 -------
 recipes-security/packagegroups/packagegroup-selinux-minimal.bb |    8 --------
 recipes-security/selinux/selinux-config_0.1.bb                 |    8 ++++++++
 3 files changed, 8 insertions(+), 15 deletions(-)

-- 
1.7.10.4


