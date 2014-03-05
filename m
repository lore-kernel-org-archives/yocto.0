Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8496FE00AA3
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200400"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id B47775F82A4A; Wed,  5 Mar 2014 10:23:30 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:54 -0800
Message-Id: <60198294855571725c0b3dea2c9b53f3c1b4d7e9.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 03/27] nightly-world-uclibc: uclibc target
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

[Yocto #5433]

This should add a uclibc world build (which will probably have
some issues at first)

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 buildset-config.master/nightly-world-uclibc.conf | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 buildset-config.master/nightly-world-uclibc.conf

diff --git a/buildset-config.master/nightly-world-uclibc.conf b/buildset-config.master/nightly-world-uclibc.conf
new file mode 100644
index 0000000..533bba6
--- /dev/null
+++ b/buildset-config.master/nightly-world-uclibc.conf
@@ -0,0 +1,18 @@
+[nightly-world-uclibc]
+builders: 'builder1'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/meta-qt3',
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64', 'multilib': True, 'distro': 'poky', 'atextappend' : '\nTCLIBC="uclibc"\n' }},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'world'}},
+        {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
+
-- 
1.8.1.2


