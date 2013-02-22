Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCF0DE0071E
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 05:59:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2013 05:59:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,715,1355126400"; d="scan'208";a="266226842"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.142])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2013 05:59:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Feb 2013 13:59:31 +0000
Message-Id: <cover.1361541447.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-baryon][PATCH 0/4] Webmin updates/fixes
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
X-List-Received-Date: Fri, 22 Feb 2013 13:59:39 -0000

The following changes since commit 6c7948d9ca339caa6647b7e3f20ab82508f0793a:

  schroedinger: specify the version of MPL in use (2013-01-03 13:46:02 -0800)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/webmin-update
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/webmin-update

Kevin Strasser (1):
  webmin: correct net-lib.pl patch

Paul Eggleton (3):
  webmin: update to 1.620
  webmin: tidy up recipe
  webmin: fix for changes in OE-Core master

 .../webmin/files/disable-version-check.patch       |   25 +++++---
 recipes-extended/webmin/files/net-lib.pl.patch     |    2 +-
 .../webmin/{webmin_1.590.bb => webmin_1.620.bb}    |   63 +++++++++-----------
 3 files changed, 45 insertions(+), 45 deletions(-)
 rename recipes-extended/webmin/{webmin_1.590.bb => webmin_1.620.bb} (81%)

-- 
1.7.10.4


