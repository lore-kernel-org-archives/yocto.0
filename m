Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 992EFE00533
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 15:23:25 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2012 15:22:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,209,1355126400"; d="scan'208";a="251340578"
Received: from wrk.jf.intel.com ([10.7.202.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Dec 2012 15:23:12 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Dec 2012 15:22:30 -0800
Message-Id: <cover.1354575672.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 0/1] proftpd fix
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
X-List-Received-Date: Mon, 03 Dec 2012 23:23:25 -0000

This change fixes a breakage introduced when the value of libexecdir was 
changed to "${libdir}/${BPN}".

The proftpd recipe in meta-networking will likely need a similar patch.

The following changes since commit ad1dfa139195f39a72b8e0fb47de5c3339397b8b:

  proftpd: add initscript and tidy up recipe (2012-10-28 01:47:32 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-proftpd
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/poky-contrib

Kevin Strasser (1):
  proftpd: conditionally remove /usr/libexec

 recipes-extended/proftpd/proftpd_1.3.4b.bb |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
1.7.9.5


