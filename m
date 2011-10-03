Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AABA4E004E9
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 07:24:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Oct 2011 07:24:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,479,1312182000"; d="scan'208";a="58174796"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2011 07:24:09 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  3 Oct 2011 09:24:36 -0500
Message-Id: <cover.1317651502.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4] meta-intel: README updates
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
X-List-Received-Date: Mon, 03 Oct 2011 14:24:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some minor updates to the meta-intel BSP README files.

The following changes since commit 527d0c90cc37ca988745578e213fb451fd6a6fe4:
  Tom Zanussi (1):
        xpsb-glx: Move the pkgconfig file(s) to the -dev package

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/readme-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/readme-updates

Tom Zanussi (4):
  meta-emenlow: update README
  meta-fishriver: update README
  meta-jasperforest: update README
  meta-sugarbay: update README

 meta-emenlow/README      |   15 ++++++++-------
 meta-fishriver/README    |   28 ++++++++++++++--------------
 meta-jasperforest/README |   15 ++++++++-------
 meta-sugarbay/README     |   18 +++++++++---------
 4 files changed, 39 insertions(+), 37 deletions(-)


