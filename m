Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E252DE00294
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 06:30:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Oct 2012 06:30:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,639,1344236400"; d="scan'208";a="208454562"
Received: from unknown (HELO localhost) ([10.255.14.143])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2012 06:30:48 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Wed, 24 Oct 2012 08:30:47 -0500
Message-Id: <cover.1351085269.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] VA_FEATURES typo fix
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
X-List-Received-Date: Wed, 24 Oct 2012 13:30:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes a problem introduced by a recent commit and noticed by
Paul Eggleton.

The following changes since commit f502e7493694c487767f60df232055bc7b854e69:

  gstreamer-vaapi: add missing build dependencies (2012-10-23 07:43:46 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/va-features-assign-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/va-features-assign-fix

Tom Zanussi (1):
  meta-intel: fix VA_FEATURES assignment in machine configs

 meta-cedartrail/conf/machine/cedartrail.conf | 2 +-
 meta-chiefriver/conf/machine/chiefriver.conf | 2 +-
 meta-crownbay/conf/machine/crownbay.conf     | 2 +-
 meta-fri2/conf/machine/fri2.conf             | 2 +-
 meta-sugarbay/conf/machine/sugarbay.conf     | 2 +-
 meta-sys940x/conf/machine/sys940x.conf       | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.11.4


