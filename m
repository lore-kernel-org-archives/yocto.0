Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A763CE00B23; Tue, 17 Nov 2015 09:18:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F06C5E00B04
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 09:18:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2015 09:18:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,308,1444719600"; d="scan'208";a="853093284"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2015 09:18:10 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Nov 2015 11:18:55 -0600
Message-Id: <1447780735-13736-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: srifenbark@gmail.com
Subject: [PATCH][yocto-docs] dev-manual-qemu.xml: Add kvm-vhost option.
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
X-List-Received-Date: Tue, 17 Nov 2015 17:18:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Since 2.0 release KVM mode don't require VHOST enablement [1]
and a new option was added to support the old mode.

[1] http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=eebcbe19b7

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 documentation/dev-manual/dev-manual-qemu.xml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-qemu.xml b/documentation/dev-manual/dev-manual-qemu.xml
index ccc915f..68d60e3 100644
--- a/documentation/dev-manual/dev-manual-qemu.xml
+++ b/documentation/dev-manual/dev-manual-qemu.xml
@@ -219,6 +219,13 @@
                             The  build host <filename>/dev/kvm</filename>
                             directory has to be both writable and readable.
                             </para></listitem>
+                    </itemizedlist>
+                    </para></listitem>
+                <listitem><para><filename>kvm-vhost</filename>:
+                    Enables KVM with VHOST support when running "qemux86" or "qemux86-64"
+                    QEMU architectures.
+                    For KVM with VHOST to work, the conditions from kvm option must be met also:
+                    <itemizedlist>
                         <listitem><para>
                             The build host <filename>/dev/vhost-net</filename>
                             directory has to be either readable or writable
-- 
2.1.4


