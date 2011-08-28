Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44FF0E00777
	for <yocto@yoctoproject.org>; Sun, 28 Aug 2011 04:02:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Aug 2011 04:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="42678140"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.157])
	by orsmga002.jf.intel.com with ESMTP; 28 Aug 2011 04:02:15 -0700
From: Yu Ke <ke.yu@intel.com>
To: tom.zanussi@linux.intel.com,
	yocto@yoctoproject.org
Date: Sun, 28 Aug 2011 19:10:48 +0800
Message-Id: <cover.1314529271.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] fix for emenlow lsb bug 1395
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
X-List-Received-Date: Sun, 28 Aug 2011 11:02:16 -0000

this patch fix the bug 1395 http://bugzilla.yoctoproject.org/show_bug.cgi?id=1395
the root cause is that: lsb image rdepends on libglu, and xpsb does not provide it.
so mesa-dri will be built for libglu. then there will be warning message because
both mesa-dri and xpsb will provide virtual/libgl, and cause conflict.

to fix it, xpsb should also provide split package libglu.

Signed-off-by: Yu Ke <ke.yu@intel.com>

The following changes since commit dc00302411d9384deb0c61b34240aa43f108a736:
  Tom Zanussi (1):
        meta-intel: update meta-emenlow kernel SRCREVs

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib kyu3/bug1395-libglu
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug1395-libglu

Yu Ke (1):
  emenlow xpsb-glx: add package libglu to fix lsb image build warning

 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)


