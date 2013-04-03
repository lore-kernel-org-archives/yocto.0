Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EFD0E01508
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:01:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2013 10:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="311864262"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2013 11:01:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Apr 2013 19:01:20 +0100
Message-Id: <cover.1365011998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH 0/5] Documentation updates
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
X-List-Received-Date: Wed, 03 Apr 2013 18:01:36 -0000

The following changes since commit 3b1c5858527cba908a5acff1ddc924630cc954b0:

  dev-manual: merged "updating images" into the "working with packages" (2013-04-03 09:12:49 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/docs3
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/docs3

Paul Eggleton (5):
  ref-manual: add buildhistory SDK contents collection
  ref-manual: add info on buildhistory SRCREV value collection
  ref-manual: add preamble to buildhistory section on top-level
    contents
  Update layer.conf examples to reflect current practice
  dev-manual: add new bitbake-layers show-cross-depends subcommand

 documentation/bsp-guide/bsp.xml                    |   10 +-
 .../dev-manual/dev-manual-common-tasks.xml         |   30 ++---
 documentation/ref-manual/ref-variables.xml         |    6 +-
 documentation/ref-manual/usingpoky.xml             |  122 ++++++++++++++++++++
 4 files changed, 144 insertions(+), 24 deletions(-)

-- 
1.7.10.4


