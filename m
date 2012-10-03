Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC7DBE011C5
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 21:06:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Oct 2012 21:06:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,527,1344236400"; d="scan'208";a="229283547"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by fmsmga001.fm.intel.com with ESMTP; 02 Oct 2012 21:06:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  2 Oct 2012 23:06:31 -0500
Message-Id: <cover.1349236664.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] meta-intel: 'universe' build fix
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
X-List-Received-Date: Wed, 03 Oct 2012 04:06:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes a build problem seen in a meta-intel-gpl build.

The following changes since commit 97bf8bacd0e0e1fd67f4dcc5dff4237f7ff1ccbf:

  meta-cedartrail: add missing dependency on EXA module to X driver (2012-10-02 17:21:26 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/make-gst-va-intel-commercial
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/make-gst-va-intel-commercial

Tom Zanussi (1):
  gst-va-intel: incude gst-ffmpeg only if 'commercial' is whitelisted

 common/recipes-multimedia/gstreamer/gst-va-intel.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
1.7.11.4


