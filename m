Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09843E006D9
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 02:54:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Jul 2012 02:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187435172"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.227])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2012 02:54:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Jul 2012 10:54:19 +0100
Message-Id: <cover.1341222778.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [yocto-docs] [PATCH 0/5] Documentation fixes
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
X-List-Received-Date: Mon, 02 Jul 2012 09:54:28 -0000

The following changes since commit d62747ca1d42cae703d1cd307dfe16bb9682b741:

  documentation/bsp-guide/bsp.xml: Yocto term paring (2012-06-29 06:58:01 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/doc-fixes-3
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/doc-fixes-3

Paul Eggleton (5):
  poky-ref-manual: update mailing list info in ref manual
  dev-manual: tidy up "How to Submit a Change" section
  dev-manual: correct SMP_CONFIG
  shared state memory -> shared state cache
  dev-manual: menuconfig now works properly

 .../dev-manual/dev-manual-common-tasks.xml         |    2 +-
 .../dev-manual/dev-manual-kernel-appendix.xml      |   13 +--
 documentation/dev-manual/dev-manual-newbie.xml     |  119 ++++++++++----------
 documentation/poky-ref-manual/resources.xml        |   30 +++--
 .../poky-ref-manual/technical-details.xml          |    2 +-
 documentation/poky.ent                             |    1 +
 6 files changed, 82 insertions(+), 85 deletions(-)

-- 
1.7.9.5


