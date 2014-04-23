Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BDE7E006EC
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:09 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3N7g9UN007648
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:09 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Wed, 23 Apr 2014 00:42:08 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Apr 2014 03:42:03 -0400
Message-ID: <cover.1398238471.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/4] some minor fixes to udevd, initscripts, policycoreutils
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
X-List-Received-Date: Wed, 23 Apr 2014 07:42:10 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* udevd: it creates /dev/shm, /dev/pts, restorecon for them as well;
* initscripts: always force to restore file contexts for /var/lib
* policycoreutils:
  get semanage process the ValueError from sepolicy, seobject;
  fix TypeError from seobject.py

The following changes since commit 0362287928bc0a58b755488ebd74441c28eeeee2:
policycoreutils
  audit: Fix lack of a default audit.rules (2014-04-07 09:55:49 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/several-fixes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/several-fixes

Wenzong Fan (4):
  udev init: restorecon for /dev/shm, /dev/pts
  always force to restore file contexts for /var/lib
  semanage: process ValueError for sepolicy, seobject
  policycoreutils: fix TypeError for seobject.py

 recipes-core/initscripts/initscripts_1.0.bbappend  |    2 +-
 recipes-core/udev/udev/init                        |    2 +-
 ...cycoreutils-fix-TypeError-for-seobject.py.patch |   32 +++++++++++++
 ...-process-ValueError-for-sepolicy-seobject.patch |   48 ++++++++++++++++++++
 recipes-security/selinux/policycoreutils_2.2.5.bb  |    2 +
 5 files changed, 84 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch

-- 
1.7.9.5


