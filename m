Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C586E006DC
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 15:07:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2013 15:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,555,1355126400"; d="scan'208";a="277693234"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2013 15:07:46 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Jan 2013 15:06:28 -0800
Message-Id: <cover.1359414197.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [yocto-docs][PATCH 0/3] Archiver documentation updates
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
X-List-Received-Date: Mon, 28 Jan 2013 23:07:55 -0000

The following changes since commit 69fa3cc4a07fc471fc869a81ff2545d62b63286e:

  mega-manual: Removed support for old kernel-manual. (2013-01-28 15:14:01 -0600)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/docs_updates
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/docs_updates

Kevin Strasser (3):
  dev-manual: use path independent bblayers.conf example
  dev-manual: fix gpl source release example
  dev-manual: clarify what source is being archived

 .../dev-manual/dev-manual-common-tasks.xml         |   20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
1.7.9.5


