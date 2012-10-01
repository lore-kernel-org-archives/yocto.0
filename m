Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AFE3E002AC
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:38 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303469"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:21 +0100
Message-Id: <eb5da04bc30919086c786a90bab0c70cf098ef38.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 02/11] documentation/poky-ref-manual: add staticdev-pkgs
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:38 -0000

Document the new staticdev-pkgs IMAGE_FEATURES item.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-features.xml |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/documentation/poky-ref-manual/ref-features.xml b/documentation/poky-ref-manual/ref-features.xml
index 1540475..da54379 100644
--- a/documentation/poky-ref-manual/ref-features.xml
+++ b/documentation/poky-ref-manual/ref-features.xml
@@ -161,6 +161,8 @@
                 <listitem><para><emphasis>nfs-server:</emphasis> Installs an NFS server.</para></listitem>
                 <listitem><para><emphasis>dev-pkgs:</emphasis> Installs development packages (headers and 
                     extra library links) for all packages installed in a given image.</para></listitem>
+                <listitem><para><emphasis>staticdev-pkgs:</emphasis> Installs static development packages (static
+                    libraries i.e .a files) for all packages installed in a given image.</para></listitem>
                 <listitem><para><emphasis>dbg-pkgs:</emphasis> Installs debug symbol packages for all packages 
                     installed in a given image.</para></listitem>
                 <listitem><para><emphasis>doc-pkgs:</emphasis> Installs documentation packages for all packages 
-- 
1.7.9.5


