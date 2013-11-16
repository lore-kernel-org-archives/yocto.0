Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CF0BE017EB
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 11:04:19 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Vhl9y-0002Ip-8x; Sat, 16 Nov 2013 19:03:59 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VhlAA-0003v1-2j; Sat, 16 Nov 2013 19:04:10 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat, 16 Nov 2013 19:04:03 +0000
Message-Id: <1384628650-15034-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH v2 0/6] Bump versions to catch up with oe-core master.
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
X-List-Received-Date: Sat, 16 Nov 2013 19:04:20 -0000

This series includes the low impact changes necessary to bring meta-selinux
up to speed with a few upgrades in oe-core master. The bulk of this is just
renaming bbappends and minor tweaks to existing patches. I've omitted the
work necessary to get tar from 1.26 to 1.27 on account of the addition of
support for attrs/xattrs/acls in the new version. ACLs don't look to work
out of the box so that new work should be in a separate patch.

Philip Tricca (6):
  glib-2.0: rename bbappend from 2.38.0 to 2.38.1
  mesa: rename bbappend from 9.1.6 to 9.2.2
  gnupg: rename bbappend from 2.0.21 to 2.0.22
  openssh: rename bbappend from 6.2p2 to 6.4p1
  sudo: rename bbappend from 1.8.7 to 1.8.8
  at: bump from 3.1.13 to 3.1.14

 recipes-connectivity/openssh/openssh_6.2p2.bbappend |   13 -------------
 recipes-connectivity/openssh/openssh_6.4p1.bbappend |   13 +++++++++++++
 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend      |    1 -
 recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend      |    1 +
 recipes-extended/at/at/at-3.1.13-selinux.patch      |    4 ++--
 recipes-extended/at/at_3.1.13.bbappend              |    7 -------
 recipes-extended/at/at_3.1.14.bbappend              |    7 +++++++
 recipes-extended/sudo/sudo_1.8.7.bbappend           |    3 ---
 recipes-extended/sudo/sudo_1.8.8.bbappend           |    3 +++
 recipes-graphics/mesa/mesa_9.1.6.bbappend           |    1 -
 recipes-graphics/mesa/mesa_9.2.2.bbappend           |    1 +
 recipes-support/gnupg/gnupg_2.0.21.bbappend         |    5 -----
 recipes-support/gnupg/gnupg_2.0.22.bbappend         |    5 +++++
 13 files changed, 32 insertions(+), 32 deletions(-)
 delete mode 100644 recipes-connectivity/openssh/openssh_6.2p2.bbappend
 create mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend
 delete mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
 create mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend
 delete mode 100644 recipes-extended/at/at_3.1.13.bbappend
 create mode 100644 recipes-extended/at/at_3.1.14.bbappend
 delete mode 100644 recipes-extended/sudo/sudo_1.8.7.bbappend
 create mode 100644 recipes-extended/sudo/sudo_1.8.8.bbappend
 delete mode 100644 recipes-graphics/mesa/mesa_9.1.6.bbappend
 create mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend
 delete mode 100644 recipes-support/gnupg/gnupg_2.0.21.bbappend
 create mode 100644 recipes-support/gnupg/gnupg_2.0.22.bbappend

-- 
1.7.10.4


