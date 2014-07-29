Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3C5DE006B5; Tue, 29 Jul 2014 12:34:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36558E00805
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 12:34:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jul 2014 12:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,759,1400050800"; d="scan'208";a="569067894"
Received: from unknown (HELO localhost) ([10.255.12.245])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2014 12:33:56 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 14:33:54 -0500
Message-Id: <cover.1406662265.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/5] dev-manual updates for wic
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
X-List-Received-Date: Tue, 29 Jul 2014 19:34:06 -0000

This patchset updates the wic documentation in the dev-manual for
master.

The following changes since commit 2d1660112e54653f7bb763939d0416472c49fe01:

  populate_sdk_base: Fix grep command usage on old hosts (2014-07-29 09:58:27 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/dev-manual-wic-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/dev-manual-wic-updates

Tom Zanussi (5):
  dev-manual: Add 'Creating Partitioned Images/Plugins' subsection
  dev-manual: Add squashfs to --fstypes documentation
  dev-manual: Add documentation for --fsoptions
  dev-manual: Various updates to the 'Creating Partitioned Images'
    section
  dev-manual: Various minor fixes for 'Creating Partitioned Images'
    section

 .../dev-manual/dev-manual-common-tasks.xml         | 399 ++++++++++++++++-----
 1 file changed, 308 insertions(+), 91 deletions(-)

-- 
1.8.3.1


