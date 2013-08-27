Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 222E8E013DF
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 08:28:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Aug 2013 08:25:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,968,1367996400"; d="scan'208";a="394177604"
Received: from dvhart-mobl4.jf.intel.com (HELO localhost) ([10.7.201.55])
	by orsmga002.jf.intel.com with ESMTP; 27 Aug 2013 08:28:38 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 27 Aug 2013 08:28:32 -0700
Message-Id: <494f84f3f852df75bf90436617bf5ae83b656f15.1377617310.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] yocto-docs: Replace atom-pc with genericx86 in the manuals
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
X-List-Received-Date: Tue, 27 Aug 2013 15:28:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update the manuals to reflect the recent replacement of atom-pc with
genericx86.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Ross Burton <ross.burton@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 documentation/dev-manual/dev-manual-model.xml             |  2 +-
 documentation/ref-manual/ref-variables.xml                |  2 +-
 documentation/ref-manual/technical-details.xml            |  2 +-
 presentations/automotive-linux-summit-2012/automotive.pin | 10 +++++-----
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
index a59a447..efa50b0 100644
--- a/documentation/dev-manual/dev-manual-model.xml
+++ b/documentation/dev-manual/dev-manual-model.xml
@@ -156,7 +156,7 @@
                     "<ulink url='&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP Layers</ulink>" section in the
                     Yocto Project Board Support Package (BSP) Developer's Guide.</para>
                     <note>Four BSPs exist that are part of the
-                    Yocto Project release: <filename>atom-pc</filename>, <filename>beagleboard</filename>,
+                    Yocto Project release: <filename>genericx86</filename>, <filename>beagleboard</filename>,
                     <filename>mpc8315e</filename>, and <filename>routerstationpro</filename>.
                     The recipes and configurations for these four BSPs are located and dispersed
                     within the <link linkend='source-directory'>Source Directory</link>.
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 040c386..a9d1c1d 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -2784,7 +2784,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
      MACHINE ?= "qemuppc"
      MACHINE ?= "qemux86"
      MACHINE ?= "qemux86-64"
-     MACHINE ?= "atom-pc"
+     MACHINE ?= "genericx86"
      MACHINE ?= "beagleboard"
      MACHINE ?= "mpc8315e-rdb"
      MACHINE ?= "routerstationpro"
diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index cad9458..db368b0 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -1885,7 +1885,7 @@
       DEFAULTTUNE = "x86-64-x32"
       baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) \
          or 'INVALID'), True) or 'lib'}"
-      #MACHINE = "atom-pc"
+      #MACHINE = "genericx86"
       #DEFAULTTUNE = "core2-64-x32"
                     </literallayout></para></listitem>
                 <listitem><para>As usual, use BitBake to build an image that supports the x32 psABI.
diff --git a/presentations/automotive-linux-summit-2012/automotive.pin b/presentations/automotive-linux-summit-2012/automotive.pin
index c5292fb..e6aaaa1 100644
--- a/presentations/automotive-linux-summit-2012/automotive.pin
+++ b/presentations/automotive-linux-summit-2012/automotive.pin
@@ -187,7 +187,7 @@ $ <b>cd poky-denzil-7.0</b></tt>
  …
  #MACHINE ?= "qemuarm"
  #MACHINE ?= "qemumips"
- #MACHINE ?= "atom-pc"
+ #MACHINE ?= "genericx86"
  #MACHINE ?= "beagleboard"</tt>
 # Just a small fragment of the options available.  Defaults are all
 # reasonable and it will successfully build out of the box.
@@ -227,10 +227,10 @@ $ <b>cd poky-denzil-7.0</b></tt>
 -- [corridor.jpg] [center] [duration=33.001926]
 <tt>$ <b>ls tmp/deploy/images/</b>
 …
-core-image-minimal-atom-pc-20120918205848.hddimg
-core-image-minimal-atom-pc-20120918205848.iso
-core-image-minimal-atom-pc-20120918205848.rootfs.cpio.gz
-core-image-minimal-atom-pc-20120918205848.rootfs.ext3
+core-image-minimal-genericx86-20120918205848.hddimg
+core-image-minimal-genericx86-20120918205848.iso
+core-image-minimal-genericx86-20120918205848.rootfs.cpio.gz
+core-image-minimal-genericx86-20120918205848.rootfs.ext3
 </tt>
 # When it finishes building the results are in the deploy directory
 # Here we can see the constructed root file system as a cpio archive,
-- 
1.8.3.1


