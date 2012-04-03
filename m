Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CA2DE0070C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 13:44:28 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFAaZ-0007O7-TP
	for yocto@yoctoproject.org; Tue, 03 Apr 2012 16:44:28 -0400
Date: Tue, 3 Apr 2012 16:44:22 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1204031643440.5406@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] Documentation: little fixes to the BSP Guide.
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
X-List-Received-Date: Tue, 03 Apr 2012 20:44:28 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 8a0e9a4..ef7d88c 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -95,7 +95,7 @@
                 top of the BSP's root layer in order to be functional.
                 For these cases, you also need to add those layers to the
                 <filename>BBLAYERS</filename> variable in order to build the BSP.
-                You must also specify in the "Dependiencies" section of the BSP's
+                You must also specify in the "Dependencies" section of the BSP's
                 <filename>README</filename> file any requirements for additional
                 layers and, preferably, any
                 build instructions that might be contained elsewhere
@@ -124,10 +124,12 @@
      meta-&lt;bsp_name&gt;/
      meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
      meta-&lt;bsp_name&gt;/README
+     meta-&lt;bsp_name&gt;/README.sources
      meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
      meta-&lt;bsp_name&gt;/conf/layer.conf
      meta-&lt;bsp_name&gt;/conf/machine/*.conf
      meta-&lt;bsp_name&gt;/recipes-bsp/*
+     meta-&lt;bsp_name&gt;/recipes-core/*
      meta-&lt;bsp_name&gt;/recipes-graphics/*
      meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto_&lt;kernel_rev&gt;.bbappend
                 </literallayout>
@@ -140,7 +142,7 @@
      meta-crownbay/COPYING.MIT
      meta-crownbay/README
      meta-crownbay/README.sources
-     meta-crownbay/binary
+     meta-crownbay/binary/
      meta-crownbay/conf/
      meta-crownbay/conf/layer.conf
      meta-crownbay/conf/machine/
@@ -154,8 +156,8 @@
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
-     meta-crownbay/recipes-core
-     meta-crownbay/recipes-core/tasks
+     meta-crownbay/recipes-core/
+     meta-crownbay/recipes-core/tasks/
      meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend
      meta-crownbay/recipes-graphics/
      meta-crownbay/recipes-graphics/xorg-xserver/
@@ -211,7 +215,7 @@

             <para>
                 This file provides information on how to boot the live images that are optionally
-                included in the <filename>/binary</filename> directory.
+                included in the <filename>binary/</filename> directory.
                 The <filename>README</filename> file also provides special information needed for
                 building the image.
             </para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

