Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEDDEE00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:35:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Oct 2012 13:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="239165242"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 23 Oct 2012 13:25:38 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Tue, 23 Oct 2012 13:24:38 -0700
Message-Id: <cover.1351023743.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/6] meta-intel: README updates
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
X-List-Received-Date: Tue, 23 Oct 2012 20:35:42 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

For the YP 1.3 release, README changes for the BSPs I am maintaining.

Thanks,
Nitin


The following changes since commit f502e7493694c487767f60df232055bc7b854e69:

  gstreamer-vaapi: add missing build dependencies (2012-10-23 07:43:46 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (6):
  MAINTAINERS: corect pathname
  chiefriver README: add WebTitle & Compliance information
  crownbay README: add WebTitle & Compliance information
  emenlow README: add WebTitle & Compliance information
  jasperforest README: add WebTitle & Compliance information
  sugarbay README: add WebTitle & Compliance information

 MAINTAINERS              |    2 +-
 meta-chiefriver/README   |   10 +++++++++-
 meta-crownbay/README     |   13 +++++++++++--
 meta-emenlow/README      |   11 ++++++++++-
 meta-jasperforest/README |   11 ++++++++++-
 meta-sugarbay/README     |    9 ++++++++-
 6 files changed, 49 insertions(+), 7 deletions(-)

-- 
1.7.3.4


