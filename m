Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEDCCE00AAB; Sun,  8 Nov 2015 11:01:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1845 seconds by postgrey-1.32 at yocto-www;
	Sun, 08 Nov 2015 11:00:57 PST
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 865B7E00927
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 11:00:57 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZvVAD-000128-2r; Sun, 08 Nov 2015 18:58:08 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com
Date: Sun,  8 Nov 2015 19:00:36 +0000
Message-Id: <1447009240-14783-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 0/4] Reorganize SELinux early boot scripts.
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
X-List-Received-Date: Sun, 08 Nov 2015 19:01:03 -0000

With file system labeling support in the build now the init script in the
selinux-config recipe has a lot of unnecessary checks / fixes. This patch
set factors this script out into 3 new recipes:

selinux-labeldev: The first init script that a system needs to run in order
to get devices nodes labeled properly.
selinux-autorelabel: A boot script to detect the existance of the
/.autorelabel file and relabel the file system accordingly.
selinux-init: The remaining functionality. This is effectively a debugging
script that detects system misconfiguration at boot time.

Some of the bonus features I've added: 
Proper use of RDEPENDS in the recipes for dependency tracking.
Packagegroups have been updated. core-selinux group is kept the same
and the minimal system package group has only thge labeldev script which
is all that's needed to boot.

Philip Tricca (4):
  selinux-config: Separate init script into new recipe.
  selinux-init: Move script logic into include.
  selinux-init: Break labeling of /dev out into separate script.
  selinux-init: Break handling of /.autorelabel out into separate
    script.

 .../packagegroups/packagegroup-core-selinux.bb     |  3 +
 .../packagegroups/packagegroup-selinux-minimal.bb  |  1 +
 .../selinux-autorelabel/selinux-autorelabel.sh     | 22 +++++++
 .../selinux/selinux-autorelabel_0.1.bb             | 17 ++++++
 .../selinux/selinux-config/selinux-init.sh         | 71 ----------------------
 recipes-security/selinux/selinux-config_0.1.bb     | 14 +----
 .../selinux/selinux-init/selinux-init.sh           | 50 +++++++++++++++
 recipes-security/selinux/selinux-init_0.1.bb       | 20 ++++++
 recipes-security/selinux/selinux-initsh.inc        | 25 ++++++++
 .../selinux/selinux-labeldev/selinux-labeldev.sh   | 24 ++++++++
 recipes-security/selinux/selinux-labeldev_0.1.bb   | 16 +++++
 11 files changed, 179 insertions(+), 84 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
 create mode 100644 recipes-security/selinux/selinux-autorelabel_0.1.bb
 delete mode 100644 recipes-security/selinux/selinux-config/selinux-init.sh
 create mode 100644 recipes-security/selinux/selinux-init/selinux-init.sh
 create mode 100644 recipes-security/selinux/selinux-init_0.1.bb
 create mode 100644 recipes-security/selinux/selinux-initsh.inc
 create mode 100644 recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh
 create mode 100644 recipes-security/selinux/selinux-labeldev_0.1.bb

-- 
2.1.4


