Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2FC9E00346
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 14:57:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Oct 2012 14:57:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="237817643"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2012 13:26:49 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Wed, 24 Oct 2012 13:25:50 -0700
Message-Id: <cover.1351110208.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH v2 0/6] meta-intel: README updates
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
X-List-Received-Date: Wed, 24 Oct 2012 21:57:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Changed the commits based on the feedback from Tom & Darren. We also need similar changes
for other BSPs for 1.3 release.

Thanks,
Nitin

The following changes since commit 62aa4ca25a943c864838b2910c5b506cca0c9323:

  fri2: Add grub-efi workaround for USB keyboard initialization (2012-10-24 13:16:00 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (6):
  MAINTAINERS: correct pathname
  chiefriver: add WEBTITLE & Compliance information
  crownbay: add WEBTITLE & Compliance information
  emenlow: add WEBTITLE & Compliance information
  jasperforest: add WEBTITLE & Compliance information
  sugarbay: add WEBTITLE & Compliance information

 MAINTAINERS                                      |    2 +-
 meta-chiefriver/README                           |    8 +++++++-
 meta-chiefriver/conf/machine/chiefriver.conf     |    2 ++
 meta-crownbay/README                             |   10 ++++++++--
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |    2 ++
 meta-crownbay/conf/machine/crownbay.conf         |    2 ++
 meta-emenlow/README                              |    8 +++++++-
 meta-emenlow/conf/machine/emenlow.conf           |    2 ++
 meta-jasperforest/README                         |    8 +++++++-
 meta-jasperforest/conf/machine/jasperforest.conf |    2 ++
 meta-sugarbay/README                             |    8 +++++++-
 meta-sugarbay/conf/machine/sugarbay.conf         |    2 ++
 12 files changed, 49 insertions(+), 7 deletions(-)

-- 
1.7.3.4


