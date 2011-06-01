Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C7094C804E4
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 17:15:01 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jun 2011 15:15:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; d="scan'208";a="12205602"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2011 15:15:00 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 17:12:51 -0500
Message-Id: <cover.1306966282.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: fishriver updates
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
X-List-Received-Date: Wed, 01 Jun 2011 22:15:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Updates to make use of the Ericsson 3G and new fishriver branch.

The following changes since commit e94dba8309874a82a570db60223d18b2c723c3a5:
  Darren Hart (1):
        linux-yocto*: correct FILESEXTRAPATHS assignment in all layers

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/fishriver-updates
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/fishriver-updates

Tom Zanussi (1):
  meta-fishriver: remove crownbay specifics

 meta-fishriver/README                              |   13 -------------
 meta-fishriver/conf/machine/fishriver.conf         |    4 ++--
 .../linux/linux-yocto-stable_git.bbappend          |    4 ++--
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 +--
 4 files changed, 5 insertions(+), 19 deletions(-)


