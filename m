Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A66DE013D3
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 00:11:34 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 15 Aug 2012 00:11:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,772,1336374000"; d="scan'208";a="134462761"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Aug 2012 00:11:33 -0700
From: nitin.a.kamble@intel.com
To: darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Tue, 14 Aug 2012 00:07:31 -0700
Message-Id: <cover.1344927805.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] Fix a dependency issue for sys940x
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
X-List-Received-Date: Wed, 15 Aug 2012 07:11:34 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This is for the denzil branch in the meta-intel repository.

The following changes since commit a1a32b20ee7677f05cc01ab7428f256127657e98:

  fri2: Update README (2012-07-30 16:24:01 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/denzil+work
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/denzil+work

Nitin A Kamble (1):
  sys940x: fix libva dependency issues

 meta-sys940x/conf/machine/sys940x.conf |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

-- 
1.7.3.4


