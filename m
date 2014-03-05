Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69380E00A80
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:51 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606559"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 64FEA5F803F2; Wed,  5 Mar 2014 10:23:32 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:01 -0800
Message-Id: <d9a8cea8786c34877d7adeb478735aa375fd61c7.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 10/27] BuildSet.py: Remove more debug code.
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:51 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

Removed some log.msg code.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/BuildSet.py | 2 --
 1 file changed, 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/BuildSet.py b/lib/python2.7/site-packages/autobuilder/BuildSet.py
index c913e93..7973a23 100644
--- a/lib/python2.7/site-packages/autobuilder/BuildSet.py
+++ b/lib/python2.7/site-packages/autobuilder/BuildSet.py
@@ -59,11 +59,9 @@ class BuildSet():
                     for layer in layers:
                         kwargs=stepOrder[step]
                         layername=layer.iterkeys().next()
-                        log.msg(type(Property('commit_resolvedhead_'+layername)))
                         if os.environ.get("RESOLVE_TRIGGERED_HEAD") == "True":
                             m = __import__ ("ResolveLayerHead")
                             func = getattr(m, "ResolveLayerHead")
-                            log.msg(layer[layer.iterkeys().next()])
                             factoryFN(func(locals()['f'+name],
                                       layername=layername,
                                       scheduler=name,
-- 
1.8.1.2


