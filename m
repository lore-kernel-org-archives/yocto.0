Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F234AE0086A; Wed, 18 Nov 2015 08:40:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E75AE0049B
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 08:40:47 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Nov 2015 08:40:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,313,1444719600"; d="scan'208";a="854006665"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2015 08:40:32 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Nov 2015 10:41:16 -0600
Message-Id: <1447864876-24667-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: srifenbark@gmail.com
Subject: [PATCH] dev-manual: Fix errata in new kvm-vhost.
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
X-List-Received-Date: Wed, 18 Nov 2015 16:40:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Also /dev/vhost isn't a require condition in kvm only in
kvm-vhost.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 documentation/dev-manual/dev-manual-qemu.xml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-qemu.xml b/documentation/dev-manual/dev-manual-qemu.xml
index 35ae04f..903028f 100644
--- a/documentation/dev-manual/dev-manual-qemu.xml
+++ b/documentation/dev-manual/dev-manual-qemu.xml
@@ -212,10 +212,6 @@ qemux86" or "qemux86-64".
                             <filename>/dev/kvm</filename>.
                             </para></listitem>
                         <listitem><para>
-                            Your build host has to have virtio net device, which
-                            are <filename>/dev/vhost-net</filename>.
-                            </para></listitem>
-                        <listitem><para>
                             The  build host <filename>/dev/kvm</filename>
                             directory has to be both writable and readable.
                             </para></listitem>
@@ -232,6 +228,10 @@ qemux86" or "qemux86-64".
                             conditions must be met.
                             </para></listitem>
                         <listitem><para>
+                            Your build host has to have virtio net device, which
+                            are <filename>/dev/vhost-net</filename>.
+                            </para></listitem>
+                        <listitem><para>
                             The build host <filename>/dev/vhost-net</filename>
                             directory has to be either readable or writable
                             and “slirp-enabled”.
-- 
2.1.4


