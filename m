Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE436E01304
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 15:28:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2012 15:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="159422194"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by orsmga001.jf.intel.com with ESMTP; 28 Jun 2012 15:27:59 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, nitin.a.kamble.com,
	kishore.k.bodke@intel.com
Date: Thu, 28 Jun 2012 15:17:20 -0700
Message-Id: <cover.1340920814.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][meta-intel] Cover letter for enabling gstreamer-vaapi in meta-cedartrail
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
X-List-Received-Date: Thu, 28 Jun 2012 22:28:35 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter for enabling gstreamer with vaapi based hardware acceleration 

Please pull into master branch.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>

--
The following changes since commit 8f4eb72ee349858cf9b768c97aca70d82319f978:

  meta-emenlow: prefer 1.10.2 cairo (2012-06-14 23:48:34 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-master
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-master

Rahul Saxena (1):
  meta-cedartrail: add gstreamer-vaapi support

 meta-cedartrail/conf/machine/cedartrail.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

-- 
1.7.4.1


