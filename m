Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C153E014A1
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 09:01:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 08 May 2013 09:01:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,635,1363158000"; d="scan'208";a="330904750"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 08 May 2013 09:01:45 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 5F1746A4083;
	Wed,  8 May 2013 09:01:34 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Wed,  8 May 2013 19:01:48 +0300
Message-Id: <5aa4ae03fceb52a820dca38d98ac4f6a41a912ef.1368028857.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 3/4] PublishLayerTarballs.py: fix command overwrite
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
X-List-Received-Date: Wed, 08 May 2013 16:01:47 -0000

command was overwritten, so the gzip archive was missing.
Also add a trailing slash to the second git archive prefix
otherwise we end up with dirs like poky-revscripts instead of poky-rev/scripts.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../site-packages/autobuilder/buildsteps/PublishLayerTarballs.py      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
index 2930d28..6f676be 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
@@ -44,8 +44,8 @@ class PublishLayerTarballs(ShellCommand):
         command = " git archive --format=tar HEAD "
         command = command + "--prefix=" + self.layername + "-" + revision + "/"
         command = command  +"| gzip > " + self.layername + "-" + revision + ".tar.gz; " 
-        command = " git archive --format=tar HEAD "
-        command = command + "--prefix=" + self.layername + "-" + revision 
+        command = command + " git archive --format=tar HEAD "
+        command = command + "--prefix=" + self.layername + "-" + revision + "/"
         command = command  +"| bzip2 -c > " + self.layername + "-" + revision + ".tar.bz2; " 
         command = command  +"md5sum " + self.layername + "-" + revision + ".tar.bz2 >> "
         command = command  + self.layername + "-" + revision + ".tar.bz2.md5sum; "
-- 
1.8.1.4


