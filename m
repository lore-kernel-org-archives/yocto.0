Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1A4CE00CE5; Fri, 11 Sep 2015 22:18:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B16DCE00AD2
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:18:32 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=localhost.localdomain)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZadBK-0000yR-0I; Sat, 12 Sep 2015 05:16:59 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 22:18:18 -0700
Message-Id: <1442035106-9671-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux 0/8] Update toolstack to 2.4 release dated 2015-02-02.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:18:36 -0000

Update toolstack to 2.4 release dated 2015-02-02.
Backport patches to setools for compatibility with new toolstack.
Update refpolicy recipe to cope with new policy CIL.

Philip Tricca (8):
  Add common files for 20150202 SELinux userspace release.
  libsepol: Bump version to 2.4.
  libselinux: Bump version to 2.4.
  checkpolicy: Bump version to 2.4.
  libsemanage: Bump version to 2.4.
  policycoreutuils: Bump version to 2.4.
  setools: Add patch to support 2.4 toolstack.
  refpolicy: Update policy install and bootstrap process for CIL.

 recipes-security/refpolicy/refpolicy_common.inc    |  40 +++++---
 recipes-security/selinux/checkpolicy_2.3.bb        |   7 --
 recipes-security/selinux/checkpolicy_2.4.bb        |   7 ++
 recipes-security/selinux/libselinux_2.3.bb         |  15 ---
 recipes-security/selinux/libselinux_2.4.bb         |  15 +++
 ...anage-disable-expand-check-on-policy-load.patch |  20 ++--
 recipes-security/selinux/libsemanage_2.3.bb        |  17 ---
 recipes-security/selinux/libsemanage_2.4.bb        |  18 ++++
 recipes-security/selinux/libsepol_2.3.bb           |   7 --
 recipes-security/selinux/libsepol_2.4.bb           |   7 ++
 recipes-security/selinux/policycoreutils.inc       |  11 +-
 .../policycoreutils-pp-builtin-roles.patch         |  70 +++++++++++++
 recipes-security/selinux/policycoreutils_2.3.bb    |  19 ----
 recipes-security/selinux/policycoreutils_2.4.bb    |  20 ++++
 recipes-security/selinux/selinux_20150202.inc      |   5 +
 ...s-Update-for-2015-02-02-Userspace-release.patch | 114 +++++++++++++++++++++
 ...rect-invalid-prototype-for-lsetfilecon_ra.patch |  34 ------
 recipes-security/setools/setools_3.3.8.bb          |   2 +-
 18 files changed, 301 insertions(+), 127 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_2.3.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.4.bb
 delete mode 100644 recipes-security/selinux/libselinux_2.3.bb
 create mode 100644 recipes-security/selinux/libselinux_2.4.bb
 delete mode 100644 recipes-security/selinux/libsemanage_2.3.bb
 create mode 100644 recipes-security/selinux/libsemanage_2.4.bb
 delete mode 100644 recipes-security/selinux/libsepol_2.3.bb
 create mode 100644 recipes-security/selinux/libsepol_2.4.bb
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch
 delete mode 100644 recipes-security/selinux/policycoreutils_2.3.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.4.bb
 create mode 100644 recipes-security/selinux/selinux_20150202.inc
 create mode 100644 recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
 delete mode 100644 recipes-security/setools/setools/setools-replcon-correct-invalid-prototype-for-lsetfilecon_ra.patch

-- 
2.1.4


