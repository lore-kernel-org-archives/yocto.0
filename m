Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9105E00AA6
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200407"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 0D6C45F82AA1; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:08 -0800
Message-Id: <80bef6e23bd58f61d515b64820e9caa63ec56fd0.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 17/27] BuildSet.py: Set workdir based on layer not order
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:09 -0000

workdir needs to be build/ for poky,oecore and build/layername
for everything else. doing if via location in list is bad.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/BuildSet.py | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/BuildSet.py b/lib/python2.7/site-packages/autobuilder/BuildSet.py
index 7973a23..19fbb00 100644
--- a/lib/python2.7/site-packages/autobuilder/BuildSet.py
+++ b/lib/python2.7/site-packages/autobuilder/BuildSet.py
@@ -55,7 +55,6 @@ class BuildSet():
                                       argdict=layer[layer.iterkeys().next()]))
                 elif step=="CheckOutLayers":
                 # All steps need the factory passed as the first param
-                    passed=0
                     for layer in layers:
                         kwargs=stepOrder[step]
                         layername=layer.iterkeys().next()
@@ -76,17 +75,15 @@ class BuildSet():
                             mode='full'
                             srcdir = 'source'                       
                             if str(os.environ.get('OPTIMIZED_GIT_CLONE')) == "True":
-                                if passed==0:
+                                if 'poky' in layername or 'oecore' in layername or 'eclipse' in layername:
                                     method='movecopy'
                                     storedir=os.environ.get('OGIT_TRASH_DIR')
                                     mirrordir=os.environ.get('OGIT_MIRROR_DIR')
-                                    passed=1                              
                                 else:
                                     method='barecopy'
                                     storedir=os.environ.get('OGIT_TRASH_DIR')
                                     mirrordir=os.environ.get('OGIT_MIRROR_DIR')
-                                    passed=1                              
-                            if layername == "poky" or layername == 'oecore':
+                            if 'poky' in layername or 'oecore' in layername:
                                 workdir = 'build'
                             elif "eclipse-poky" in layername:
                                 workdir="build/" + layername
-- 
1.8.1.2


