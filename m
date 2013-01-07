Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E43EE01454
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 13:06:44 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 13:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,425,1355126400"; d="scan'208";a="268859026"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga002.jf.intel.com with ESMTP; 07 Jan 2013 13:06:43 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Jan 2013 13:05:37 -0800
Message-Id: <cover.1357591796.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 0/4] baryon updates
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
X-List-Received-Date: Mon, 07 Jan 2013 21:06:44 -0000

This patch set contains a change which will not work with versions of poky 
prior to commit 51cbb5ae76a22d465e2f6c5ef923ec2682624e3b, and therefor should
not be applied until after cutting a danny branch.

The following changes since commit 9a80f62b1874bbb0819068cf394e9fd920bb84b7:

  proftpd: conditionally remove /usr/libexec (2012-12-05 16:27:36 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-updates
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-updates

Kevin Strasser (4):
  webmin: remove perl-module-warnings-register RDEPENDS
  ffmpeg: build position independent code where possible
  baryon-image: use parted instead of util-linux
  schroedinger: specify the version of MPL in use

 recipes-extended/images/baryon-image.bb          |    2 +-
 recipes-extended/webmin/webmin_1.590.bb          |    4 ++--
 recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb        |    3 ++-
 recipes-multimedia/schroedinger/schroedinger.inc |    2 +-
 4 files changed, 6 insertions(+), 5 deletions(-)

-- 
1.7.9.5


