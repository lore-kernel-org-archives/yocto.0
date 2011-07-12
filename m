Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B78F74C803E4
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 21:49:05 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jul 2011 19:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,517,1304319600"; d="scan'208";a="26757131"
Received: from unknown (HELO [10.255.14.4]) ([10.255.14.4])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2011 19:49:04 -0700
Message-ID: <4E1BB620.6040301@linux.intel.com>
Date: Mon, 11 Jul 2011 19:49:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: [PATCH][poky-extras] meta-kernel-dev: allow for dangling bbappend files
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
X-List-Received-Date: Tue, 12 Jul 2011 02:49:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

With the bitbake commit:
7a2a24de094ce8f2e2068bbee6709dfc2cdc69b9
missing base recipe files for bbappends became an error. Rather than creating a
separate kernel development layer for every layer containing a new kernel recipe
name, conditionally set BB_DANGLINGAPPENDS_WARNONLY.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Jeff Mitchell <jmitchell@ll.mit.edu>
---
 meta-kernel-dev/conf/layer.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-kernel-dev/conf/layer.conf b/meta-kernel-dev/conf/layer.conf
index 33f1ca5..01e5b15 100644
--- a/meta-kernel-dev/conf/layer.conf
+++ b/meta-kernel-dev/conf/layer.conf
@@ -1,3 +1,7 @@
+# Avoid having to split this into multiple layers
+# Allow missing base recipe files for our bbappends
+BB_DANGLINGAPPENDS_WARNONLY ?= "true"
+
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-- 
1.7.1
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

