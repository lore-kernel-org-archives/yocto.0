Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 548D0E00345
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:52:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2012 10:52:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191364473"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.253])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2012 10:52:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 18:51:56 +0100
Message-Id: <cover.1342029029.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon] [PATCH 0/4] Baryon build fixes
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
X-List-Received-Date: Wed, 11 Jul 2012 17:52:05 -0000

Some fixes for issues preventing successful builds with master and
edison. It includes a sync of the samba recipe with the current version
in meta-oe - it's still not completely in sync, hopefully that can be
done as a separate exercise in the near future.


The following changes since commit 1784e3a18f8e5b56568d971fcce0521172007f90:

  meta-baryon: update proftpd SRC_URI (2012-07-10 18:37:44 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/baryon-fixes1
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/baryon-fixes1

Paul Eggleton (4):
  faad2: split out staticdev files
  faac: split out staticdev files
  samba: merge with meta-oe
  baryon-image: use IMAGE_INSTALL instead of CORE_IMAGE_EXTRA_INSTALL

 recipes-connectivity/samba/samba-basic.inc |   12 ++++--------
 recipes-connectivity/samba/samba_3.5.6.bb  |   18 +++++++-----------
 recipes-extended/images/baryon-image.bb    |    5 +++--
 recipes-multimedia/faac/faac_1.24.bb       |    5 +++--
 recipes-multimedia/faad2/faad2_2.7.bb      |   10 ++++++----
 5 files changed, 23 insertions(+), 27 deletions(-)

-- 
1.7.9.5


