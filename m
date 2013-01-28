Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56267E0072F
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 15:08:06 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2013 15:08:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,555,1355126400"; d="scan'208";a="277693380"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2013 15:08:05 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Jan 2013 15:06:50 -0800
Message-Id: <5a25da55eb962317743c302bb2972e584c0984ef.1359414197.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <0301e122e348ccd40a7627be35c230dc5bc20a77.1359414197.git.kevin.strasser@linux.intel.com>
References: <0301e122e348ccd40a7627be35c230dc5bc20a77.1359414197.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1359414197.git.kevin.strasser@linux.intel.com>
References: <cover.1359414197.git.kevin.strasser@linux.intel.com>
Subject: [yocto-docs][PATCH 2/3] dev-manual: fix gpl source release example
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
X-List-Received-Date: Mon, 28 Jan 2013 23:08:06 -0000

The example doesn't account for an extra level of directories
that organise the sources by machine type.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index e7d5d02..30751e3 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -2968,7 +2968,7 @@
                 <literallayout class='monospaced'>
      $ cd poky/build/tmp/deploy/sources
      $ mkdir ~/gpl_source_release
-     $ for x in `ls|grep GPL`; do cp -R $x/* ~/gpl_source_release; done
+     $ for dir in */*GPL*; do cp -r $dir ~/gpl_source_release; done
                 </literallayout>
                 At this point, you could create a tarball from the
                 <filename>gpl_source_release</filename> directory and
-- 
1.7.9.5


