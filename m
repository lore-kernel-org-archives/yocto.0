Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32A52E00348
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 09:20:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Oct 2012 09:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,680,1344236400"; d="scan'208";a="211306107"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.102])
	by azsmga001.ch.intel.com with ESMTP; 30 Oct 2012 09:20:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Oct 2012 16:20:40 +0000
Message-Id: <cover.1351613968.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 0/1] proftpd cleanup
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
X-List-Received-Date: Tue, 30 Oct 2012 16:20:45 -0000

This tidies up the proftpd recipe in preparation for submitting it for
merging into meta-networking.


The following changes since commit 6aebac39997b0fdd4df62ad85c5b14457e0d940c:

  ffmpeg: add LICENSE_FLAGS (2012-10-12 09:59:56 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/proftpd
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/proftpd

Paul Eggleton (1):
  proftpd: add initscript and tidy up recipe

 recipes-extended/proftpd/files/basic.conf.patch   |    2 +-
 recipes-extended/proftpd/files/contrib.patch      |    4 +
 recipes-extended/proftpd/files/default            |    9 +
 recipes-extended/proftpd/files/proftpd-basic.init |  220 +++++++++++++++++++++
 recipes-extended/proftpd/proftpd_1.3.4b.bb        |   72 +++----
 5 files changed, 273 insertions(+), 34 deletions(-)
 create mode 100644 recipes-extended/proftpd/files/default
 create mode 100644 recipes-extended/proftpd/files/proftpd-basic.init

-- 
1.7.9.5


