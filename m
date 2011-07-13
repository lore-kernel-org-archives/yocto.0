Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0BF1C4C803E4
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 13:07:30 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jul 2011 11:07:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,526,1304319600"; d="scan'208";a="29946347"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.14.33])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jul 2011 11:07:30 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2011 11:07:23 -0700
Message-Id: <cover.1310580346.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] Add CONNECTIVITY_CHECK_URIS to Poky derived distros
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
X-List-Received-Date: Wed, 13 Jul 2011 18:07:31 -0000

Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test
against http, https and git sources for Poky derived distrbutions.

The following changes since commit 068839698fe192d8846c0ed4db65861448e8e524:

  eglibc: fix runtime assertion failure (2011-07-13 12:34:30 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib josh/sanity
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/sanity

Joshua Lock (1):
  poky.conf: perform network sanity check by default for poky distros

 meta-yocto/conf/distro/poky.conf |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

-- 
1.7.6


