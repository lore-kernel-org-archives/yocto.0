Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 732C1E00345
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 11:11:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2012 11:11:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="170600606"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by orsmga002.jf.intel.com with ESMTP; 11 Jul 2012 11:11:45 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 11 Jul 2012 11:00:23 -0700
Message-Id: <cover.1342027864.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][meta-intel] Cover letter to rename ogg-CC-BY-3.0-music-samples_0.1.bb
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
X-List-Received-Date: Wed, 11 Jul 2012 18:11:45 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter to rename ogg-CC-BY-3.0-music-samples_0.1.bb to ogg-cc-by-3.0-music-samples_0.1.bb
Capital letters in receipe name generate error when ipk package types are used for build

Please pull into Edison branch.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit f3040cf1559e631a03f61bab2de99d485bce21df:

  conf/layer.conf: Fix naming (2012-07-05 13:49:08 +0100)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-edison
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-edison

Rahul Saxena (1):
  meta-cedartrail: rename ogg-CC-BY-3.0-music-samples_0.1.bb to
    ogg-cc-by-3.0-music-samples_0.1.bb

 ...s_0.1.bb => ogg-cc-by-3.0-music-samples_0.1.bb} |    0
 .../images/core-image-sato-dev.bbappend            |    2 +-
 .../images/core-image-sato-sdk.bbappend            |    2 +-
 .../recipes-sato/images/core-image-sato.bbappend   |    2 +-
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename meta-cedartrail/recipes-mediasamples/music-samples/{ogg-CC-BY-3.0-music-samples_0.1.bb => ogg-cc-by-3.0-music-samples_0.1.bb} (100%)

-- 
1.7.4.1


