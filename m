Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38ACEE01385
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 16:42:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Oct 2012 16:42:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,675,1344236400"; d="scan'208";a="210964508"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by azsmga001.ch.intel.com with ESMTP; 29 Oct 2012 16:42:40 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Mon, 29 Oct 2012 16:44:04 -0700
Message-Id: <cover.1351553989.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2][meta-intel] CrystalForest: Add WEBTITLE and update README
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
X-List-Received-Date: Mon, 29 Oct 2012 23:42:47 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This Adds the WEBTITLE and Compliance information for the Crystal Forest
and update the README for the instructions to build the custom Image.

Please pull them into meta-intel/master.

Thanks
Kishore.

The following changes since commit 20c289289ef1fa84bbef323c77d2c39e9e8a9882:

  romley: add WEBTITLE & Compliance information (2012-10-29 14:59:37 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib kishore/crf-webtitle
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/crf-webtitle

Kishore Bodke (2):
  crystalforest: add WEBTITLE & Compliance information
  crystalforest: Update the README Instructions.

 meta-crystalforest/README                          |   25 +++++++++++++++++---
 .../conf/machine/crystalforest-gladden.conf        |    8 +++++--
 .../conf/machine/crystalforest-server.conf         |    8 +++++--
 3 files changed, 34 insertions(+), 7 deletions(-)

-- 
1.7.9.5


