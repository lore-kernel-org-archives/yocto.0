Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B481EE01619
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:07:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2013 06:04:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,962,1371106800"; d="scan'208";a="399711485"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.20])
	by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2013 06:07:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Sep 2013 14:06:59 +0100
Message-Id: <cover.1379941403.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [meta-baryon][PATCH 0/4] Build fixes for master
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
X-List-Received-Date: Mon, 23 Sep 2013 13:07:21 -0000

Some fixes for building baryon against master. 

Note that this drops ffmpeg but not the other recipes that were there
to support it; cleanup of those will happen at a later date.


The following changes since commit 360456720a48f882ca1443519b3e8a9d238e1a93:

  samba: sync with meta-oe (2013-03-25 11:44:47 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/baryon-build-fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/baryon-build-fixes

Paul Eggleton (4):
  linux-yocto: remove version 3.2 bbappend
  mediatomb: add support for building against libav
  ffmpeg: remove
  samba: fix QA error due to volatiles presence

 recipes-connectivity/samba/samba_3.6.8.bb          |   6 ++
 recipes-kernel/linux/linux-yocto_3.2.bbappend      |   3 -
 recipes-multimedia/ffmpeg/ffmpeg.inc               | 114 ---------------------
 recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb          |  44 --------
 .../mediatomb/files/libav_0.7_support.patch        |  70 +++++++++++++
 recipes-multimedia/mediatomb/mediatomb_0.12.1.bb   |   3 +-
 6 files changed, 78 insertions(+), 162 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.2.bbappend
 delete mode 100644 recipes-multimedia/ffmpeg/ffmpeg.inc
 delete mode 100644 recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb
 create mode 100644 recipes-multimedia/mediatomb/files/libav_0.7_support.patch

-- 
1.8.1.2


