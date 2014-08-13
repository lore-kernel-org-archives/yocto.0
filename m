Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69E1CE007DB; Wed, 13 Aug 2014 06:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E52CE00796
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 06:29:20 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2014 06:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371867199"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2014 06:25:58 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 16:32:01 +0300
Message-Id: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/7] AUH: buildhistory-diff support
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
X-List-Received-Date: Wed, 13 Aug 2014 13:29:25 -0000

The maintainer will received the output given by 
buildhistory-diff. If no diff is found the attachement
will not be created.

A branch with the changes included in this patcheset
can also be found here:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mavram/buildhistory-diff

Marius Avram (7):
  Add buildhistory-diff as attachment to email
  Fixed bug of selected attachements for email
  Added error message when buildhistory not active
  README: Added buildhistory configuration
  Info messages start with upper case
  Fix adding new files to recipe bug
  Add missing import

 README           |    8 ++++++++
 bitbake.py       |   36 ++++++++++++++++++++++++++++++++++++
 recipe.py        |   11 ++++++++---
 upgradehelper.py |   29 ++++++++++++++++++-----------
 4 files changed, 70 insertions(+), 14 deletions(-)

-- 
1.7.9.5


