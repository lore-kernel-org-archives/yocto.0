Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4DC2E007CE; Tue, 26 Aug 2014 07:21:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8773EE00655
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 07:21:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Aug 2014 07:21:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,404,1406617200"; d="scan'208";a="593495637"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2014 07:21:44 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 26 Aug 2014 17:24:51 +0300
Message-Id: <1409063092-17040-1-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] USB not mounted.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Aug 2014 14:21:50 -0000

I also created a bug on the gnome bugtracker, in case it is a general problem
and not simply yocto related:

https://bugzilla.gnome.org/show_bug.cgi?id=735447

Marius Avram (1):
  Fix USB not mounted in file manager

 ...un-media-sdX-drive-mount-if-username-root.patch |   44 ++++++++++++++++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.40.0.bb      |    2 +-
 2 files changed, 45 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-core/glib-2.0/glib-2.0/allow-run-media-sdX-drive-mount-if-username-root.patch

-- 
1.7.9.5


