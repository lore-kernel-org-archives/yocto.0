Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7203E00AF2
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2014 10:23:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="494628107"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id C5D1C5F82A96; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:17 -0800
Message-Id: <9e7db7260ac679609c9dd35237f0ba2a6d0a74f9.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 26/27] fs.py: Bump default timeout
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:57 -0000

120 seconds is too little if we're doing a mv across filesystems.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/fs.py          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/fs.py b/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/fs.py
index 3e01568..ae720cd 100644
--- a/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/fs.py
+++ b/lib/python2.7/site-packages/buildbot_slave-0.8.8-py2.7.egg/buildslave/commands/fs.py
@@ -148,7 +148,7 @@ class CopyDirectory(base.Command):
         fromdir = os.path.join(self.builder.basedir, args['fromdir'])
         todir = os.path.join(self.builder.basedir, args['todir'])
 
-        self.timeout = args.get('timeout', 120)
+        self.timeout = args.get('timeout', 1200)
         self.maxTime = args.get('maxTime', None)
 
         if runtime.platformType != "posix":
@@ -197,7 +197,7 @@ class Move(base.Command):
         fromdir = os.path.join(self.builder.basedir, args['fromdir'])
         todir = args['todir']
 
-        self.timeout = args.get('timeout', 120)
+        self.timeout = args.get('timeout', 1200)
         self.maxTime = args.get('maxTime', None)
 
         if runtime.platformType != "posix":
-- 
1.8.1.2


