Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D13BCE0034C;
	Fri,  8 Feb 2013 17:03:13 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Feb 2013 17:03:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="254605141"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.178])
	by azsmga001.ch.intel.com with ESMTP; 08 Feb 2013 17:03:12 -0800
From: rahul.saxena@intel.com
To: dvhart@linux.intel.com, tom.zanussi@intel.com, nitin.a.kamble@intel.com,
	meta-intel@yoctoproject.org, yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 16:48:37 -0800
Message-Id: <cover.1360369778.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][meta-intel]meta-cedartrail:Update README for workaround for bug # 3607
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
X-List-Received-Date: Sat, 09 Feb 2013 01:03:14 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Please pull into danny-next 
--
The following changes since commit 9615c24f9d5326805537fd01d1fc5ea51d0d85db:

  libva-intel-driver: workaround for concurrent VC1 and H264 playback issue (2012-12-20 14:49:46 -0600)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib danny-next-rsaxena1
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=danny-next-rsaxena1

Rahul Saxena (1):
  meta-cedartrail: Update README with workaround for Yocto Bugzilla
    #3607     The PVR driver has a issue that for some systems it
    causes     it to incorrectly assume that a LVDS display is
    connected     while infact a VGA display is connected and Vice
    Versa.     The README file is updated with the work-around for this
    issue.

 meta-cedartrail/README |   27 ++++++++++++++++++++++++++-
 1 files changed, 26 insertions(+), 1 deletions(-)

-- 
1.7.4.1


