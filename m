Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27D20E00D83; Tue,  5 Jan 2016 05:07:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 929E9E00D55
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 05:07:51 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 05 Jan 2016 05:07:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,525,1444719600"; d="scan'208";a="720550045"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga003.jf.intel.com with ESMTP; 05 Jan 2016 05:07:29 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 90D1D6A4004;
	Tue,  5 Jan 2016 05:55:25 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 13:10:49 +0200
Message-Id: <cover.1451991988.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 0/7] Update wic related documentation
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
X-List-Received-Date: Tue, 05 Jan 2016 13:07:57 -0000

Hi,

Synchronized output of 'wic help kickstart' with the dev manual.
Updated list of image types in ref-variables.


The following changes since commit 2cd061a29a94fdcdfec86732e6bcbb71c12c4afc:

  bluez5: include the patch only for 5.36 (2015-12-28 13:02:11 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ed/wic/documentation-8821
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ed/wic/documentation-8821

Ed Bartosh (7):
  dev-manual: describe creation of empty partition
  dev-manual: add description of --no-table option
  dev-manual: add description of --extra-space option
  dev-manual: add description of --overhead-factor option
  dev-manual: add description of UUID options
  dev-manual: add description of --configfile option
  ref-variables: update list of image types

 .../dev-manual/dev-manual-common-tasks.xml         | 39 +++++++++++++++++++-
 documentation/ref-manual/ref-variables.xml         | 41 ++++++++++++++--------
 2 files changed, 65 insertions(+), 15 deletions(-)

--
Regards,
Ed


