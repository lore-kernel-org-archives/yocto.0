Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3670D4C811D9
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 06:05:19 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 04:05:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="583178656"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 04:05:04 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PS7FF-00034N-OF; Mon, 13 Dec 2010 20:11:09 +0800
Message-Id: <cover.1292242072.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Mon, 13 Dec 2010 20:07:52 +0800
To: yocto@yoctoproject.org
Subject: [PATCH 0/1] bug#565: adding environment files
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
X-List-Received-Date: Mon, 13 Dec 2010 12:05:19 -0000

I rebased the previous patch of adding package of environment files to
be compatible with the new cross-canadian.bbclass

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug565
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug565

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  Fix bug #565.

 meta/classes/toolchain-scripts.bbclass         |   32 ++++++++++
 meta/recipes-core/meta/meta-environment.bb     |   74 ++++++++++++++++++++++++
 meta/recipes-core/tasks/task-cross-canadian.bb |    1 +
 3 files changed, 107 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/meta/meta-environment.bb


