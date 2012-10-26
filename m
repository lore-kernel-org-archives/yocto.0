Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85008E00294
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 17:34:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2012 17:34:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,650,1344236400"; d="scan'208";a="238547414"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2012 17:32:58 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	nitin.a.kamble@intel.com
Date: Thu, 25 Oct 2012 17:20:06 -0700
Message-Id: <cover.1351210370.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][meta-intel]meta-cedartrail: add WEBTITLE & Compliance information
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
X-List-Received-Date: Fri, 26 Oct 2012 00:34:57 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
Also adding the Yocto Project Compliance information for the 1.3 release.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit c19e9f51ebbdc603124994f3694fc79b0a83cf41:

  sugarbay: add WEBTITLE & Compliance information (2012-10-25 15:05:49 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-webtitle25Oct
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-webtitle25Oct

Rahul Saxena (1):
  cedartrail: add WEBTITLE & Compliance information

 meta-cedartrail/README                             |   16 +++++++++++++---
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |    8 +++++---
 meta-cedartrail/conf/machine/cedartrail.conf       |    8 +++++---
 3 files changed, 23 insertions(+), 9 deletions(-)

-- 
1.7.4.1


