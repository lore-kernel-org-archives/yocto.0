Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBF21E00A39; Wed, 29 Aug 2018 06:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69568E0097D
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 06:30:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 06:30:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,303,1531810800"; d="scan'208";a="87312200"
Received: from centaurus01.png.intel.com ([10.221.183.13])
	by orsmga002.jf.intel.com with ESMTP; 29 Aug 2018 06:30:45 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org,
	paul.eggleton@intel.com, aaron.chun.yew.chan@intel.com
Date: Wed, 29 Aug 2018 21:25:54 +0800
Message-Id: <20180829132555.23054-5-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
References: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
Subject: [yocto-autobuilder-helper][PATCH 5/6] publish-artefacts: Add deployment BSP support on x86_64
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
X-List-Received-Date: Wed, 29 Aug 2018 13:30:46 -0000

Add in the support to publish images into the designated path.
BSP packages of the previous build will be cleaned up before
new BSP packages are copied over. This ensures the previous
image will not be retained and causes conflicts before image
is loaded into x86_64 (MTURBOT64) hardware.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/publish-artefacts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index 83a4094..3418de2 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -137,6 +137,14 @@ case "$target" in
         md5sums $TMPDIR/deploy/images/genericx86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86-64/*genericx86-64* $DEST/machines/genericx86-64-lsb
         ;;
+    "nightly-x86-64-bsp")
+        rm -rf $DEST/$target/images/intel-corei7-64/*
+        mkdir -p $DEST/$target/images/intel-corei7-64
+        md5sums $TMPDIR/deploy/images/intel-corei7-64
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/intel-corei7-64/bzImage* $DEST/$target/images/intel-corei7-64
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/intel-corei7-64/*core-image-sato-sdk-intel-corei7-64*tar* $DEST/$target/images/intel-corei7-64
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/intel-corei7-64/*modules-* $DEST/$target/images/intel-corei7-64
+        ;;
     "nightly-x86")
         mkdir -p $DEST/machines/qemu/qemux86
         md5sums $TMPDIR/deploy/images/qemux86
-- 
2.11.0


