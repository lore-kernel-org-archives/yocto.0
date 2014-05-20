Return-Path: <kangkai.yin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B1D5E00B74; Mon, 19 May 2014 19:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6169EE00B6A
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 19:11:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2014 19:11:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,870,1392192000"; d="scan'208";a="534552852"
Received: from kai-fedora.bj.intel.com ([10.238.154.79])
	by fmsmga001.fm.intel.com with ESMTP; 19 May 2014 19:11:14 -0700
From: Yin Kangkai <kangkai.yin@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 May 2014 10:16:57 +0800
Message-Id: <1400552217-15047-3-git-send-email-kangkai.yin@intel.com>
X-Mailer: git-send-email 1.8.2.1
In-Reply-To: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
References: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
Subject: [PATCH 3/3] GetDistroVersion: also support clanton distro
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
X-List-Received-Date: Tue, 20 May 2014 02:11:22 -0000

Otherwise, step GetDistroVersion will just fail.

Signed-off-by: Yin Kangkai <kangkai.yin@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
index 3d4f314..c60a786 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDistroVersion.py
@@ -36,6 +36,8 @@ class GetDistroVersion(ShellCommand):
             distroconf=self.slaveworkdir + "/" + buildername + "/build/meta-yocto/conf/distro/poky.conf|grep 'DISTRO_VERSION = \"'"
         elif 'oecore' in self.distro:
             distroconf=self.slaveworkdir + "/" + buildername + "/build/meta/conf/distro/include/default-distrovars.inc|grep 'DISTRO_VERSION '"
+        elif 'clanton' in self.distro:
+            distroconf=self.slaveworkdir + "/" + buildername + "/build/meta-yocto/conf/distro/poky.conf|grep 'DISTRO_VERSION = \"'"
         else:
             self.finished(FAILURE)
         cmd = 'cat ' + distroconf
-- 
1.8.2.1


