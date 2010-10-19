Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F92A4C801BF
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 09:22:52 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Oct 2010 07:22:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,350,1283756400"; d="scan'208";a="565424205"
Received: from kyu3-hedt.bj.intel.com (HELO localhost) ([172.16.182.108])
	by orsmga002.jf.intel.com with ESMTP; 19 Oct 2010 07:22:51 -0700
From: ke.yu@intel.com
To: yocto@yoctoproject.org
Date: Tue, 19 Oct 2010 22:26:48 +0800
Message-Id: <1287498409-12928-1-git-send-email-ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PULL] sklogd: correct the syslog link and conf file (bug 482)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 14:22:53 -0000

 meta/recipes-core/busybox/busybox.inc            |   13 +++-
 meta/recipes-core/busybox/busybox_1.16.2.bb      |    2
 meta/recipes-extended/sysklogd/files/syslog.conf |   70 +++++++++++++++++++++++
 meta/recipes-extended/sysklogd/sysklogd.inc      |    3
 meta/recipes-extended/sysklogd/sysklogd_1.5.bb   |    2
 5 files changed, 86 insertions(+), 4 deletions(-)

Yu Ke (1):
      sysklogd: correct the syslog link and conf file

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug482


