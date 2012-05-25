Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 847E8E00746
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 13:59:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2012 13:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="144768916"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2012 13:59:39 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, kishore.k.bodke@intel.com, dvhart@linux.intel.com,
	rahul.saxena@intel.com
Date: Fri, 25 May 2012 16:00:12 -0500
Message-Id: <cover.1337979215.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: update README.sources for all BSPs
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
X-List-Received-Date: Fri, 25 May 2012 20:59:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

I took the liberty of updating all the BSPs in meta-intel with the denzil
sources URL.

To those on the To list: please let me know if you don't want this for
your BSP(s).

The following changes since commit a62c485edffed30ea95658760948fd50925adfb0:
  Darren Hart (1):
        linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice with new kerntools

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/denzil-README.sources-update
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/denzil-README.sources-update

Tom Zanussi (1):
  meta-intel: update README.sources with denzil link

 meta-cedartrail/README.sources   |    2 +-
 meta-crownbay/README.sources     |    2 +-
 meta-emenlow/README.sources      |    2 +-
 meta-fishriver/README.sources    |    2 +-
 meta-fri2/README.sources         |    2 +-
 meta-jasperforest/README.sources |    2 +-
 meta-n450/README.sources         |    2 +-
 meta-romley/README.sources       |    2 +-
 meta-sugarbay/README.sources     |    2 +-
 meta-sys940x/README.sources      |    3 +--
 10 files changed, 10 insertions(+), 11 deletions(-)


