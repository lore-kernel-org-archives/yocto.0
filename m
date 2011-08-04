Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4C83E011A7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 06:03:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Aug 2011 06:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,316,1309762800"; d="scan'208";a="37820731"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.66])
	by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2011 06:03:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Aug 2011 14:03:11 +0100
Message-Id: <cover.1312462806.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2] [meta-intel] Fix meta-intel BSPs for tune file changes
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
X-List-Received-Date: Thu, 04 Aug 2011 13:03:16 -0000

Two patches to fix "TUNE_ARCH unset" and "PACKAGE_ARCHS variable does not
contain TUNE_PKGARCH" on the autobuilder for sugarbay and jasperforest.

The following changes since commit 567c3b6436b4cb9551c23845c15ab544542b5083:

  meta-crownbay: remove obsolete dir (2011-08-03 12:14:39 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib paule/tune
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=paule/tune

Paul Eggleton (2):
  meta-sugarbay: update machine configuration for recent tune file
    changes
  meta-jasperforest: update machine configuration for recent tune file
    changes

 meta-jasperforest/conf/machine/jasperforest.conf |    5 +++--
 meta-sugarbay/conf/machine/sugarbay.conf         |    5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

-- 
1.7.4.4


