Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E11EFE00292
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:50:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2012 10:50:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="210824594"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2012 10:50:38 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 25 Oct 2012 10:49:39 -0700
Message-Id: <cover.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [Patch v3 0/7] meta-intel README updates
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
X-List-Received-Date: Thu, 25 Oct 2012 17:50:48 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This is v3 of the pull request based on the latest feedback from Tom.

Thanks,
Nitin

The following changes since commit 49a8eb06bd75bb898a1b9bc4212b3db3a6d26b97:

  meta-crystalforest: update kernel SRCREVs (2012-10-25 09:44:26 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (7):
  MAINTAINERS: correct pathname
  chiefriver: add WEBTITLE & Compliance information
  crownbay: add WEBTITLE & Compliance information
  emenlow: add WEBTITLE & Compliance information
  jasperforest: add WEBTITLE & Compliance information
  sugarbay: add WEBTITLE & Compliance information
  crownbay: add more information in README

 MAINTAINERS                                      |    2 +-
 meta-chiefriver/README                           |    8 ++++++++
 meta-chiefriver/conf/machine/chiefriver.conf     |    2 ++
 meta-crownbay/README                             |   12 +++++++++++-
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |    2 ++
 meta-crownbay/conf/machine/crownbay.conf         |    2 ++
 meta-emenlow/README                              |    8 ++++++++
 meta-emenlow/conf/machine/emenlow.conf           |    2 ++
 meta-jasperforest/README                         |    7 +++++++
 meta-jasperforest/conf/machine/jasperforest.conf |    2 ++
 meta-sugarbay/README                             |    8 ++++++++
 meta-sugarbay/conf/machine/sugarbay.conf         |    2 ++
 12 files changed, 55 insertions(+), 2 deletions(-)

-- 
1.7.3.4


