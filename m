Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A7A34C80FC6
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 19:55:57 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2011 17:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,532,1304319600"; d="scan'208";a="30520850"
Received: from unknown (HELO localhost) ([10.255.14.7])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2011 17:55:39 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 19:55:28 -0500
Message-Id: <cover.1310689271.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] factor out some common meta-intel settings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jul 2011 00:55:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The meta-intel BSPs have some common settings - this just moves
them out int separate .inc files to simplify them and ease
maintenance.

I compiled and boot-tested into graphics using sato-live images
for each, with the exception of fishriver (I accidentally pulled
out a cable so can't boot into graphics at the moment) and
crownbay-noemgd (same as crownbay, pretty much).

I also didn't touch n450, since it's already factored out and
simplified.

The following changes since commit 92fc07a5f1b98779806cdcc2341487ff5ea5a238:
  Dexuan Cui (1):
        emenlow: fix some .bbappend files' name: poky -> core, etc.

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/mach-cleanup
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/mach-cleanup

Tom Zanussi (6):
  meta-intel: add a couple common .inc files
  meta-sugarbay: use common .inc files
  meta-crownbay: use common .inc files
  meta-fishriver: use common .inc files
  meta-jasperforest: use common .inc files
  meta-emenlow: use common .inc files

 common/common-bsp-mach.inc                       |   13 +++++++++++++
 common/common-bsp-x.inc                          |    4 ++++
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |   19 ++-----------------
 meta-crownbay/conf/machine/crownbay.conf         |   19 ++-----------------
 meta-emenlow/conf/machine/emenlow.conf           |   17 ++---------------
 meta-fishriver/conf/machine/fishriver.conf       |   20 +++-----------------
 meta-jasperforest/conf/machine/jasperforest.conf |   22 +++-------------------
 meta-sugarbay/conf/machine/sugarbay.conf         |   22 +++-------------------
 8 files changed, 32 insertions(+), 104 deletions(-)
 create mode 100644 common/common-bsp-mach.inc
 create mode 100644 common/common-bsp-x.inc


