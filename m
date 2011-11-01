Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0342CE0054F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 16:37:50 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RLNtp-0001Nd-Gs; Tue, 01 Nov 2011 19:37:45 -0400
Date: Tue, 1 Nov 2011 19:37:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1111011933390.6424@localhost6.localdomain6>
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
Subject: [PATCH] Small number of obvious fixes to BSP appendix in dev manual
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
X-List-Received-Date: Tue, 01 Nov 2011 23:37:51 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  Some fairly straightforward to Appendix A: BSP Development Example
in the Yocto Project Development Manual:

* Remove obsolete commands
* Fix spelling mistakes.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  there are more changes i want to make, but this first pass should
represent changes that are absolute no-brainers.

diff --git a/documentation/dev-manual/dev-manual-bsp-appendix.xml b/documentation/dev-manual/dev-manual-bsp-appendix.xml
index 485064d..32cd62d 100644
--- a/documentation/dev-manual/dev-manual-bsp-appendix.xml
+++ b/documentation/dev-manual/dev-manual-bsp-appendix.xml
@@ -232,7 +232,6 @@
                 the remaining one that doesn't support EMGD.
                 These commands take care of the <filename>recipes-bsp</filename> recipes:
                 <literallayout class='monospaced'>
-     $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/*emgd*
      $ mv meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-noemgd/ \
      meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine
                 </literallayout>
@@ -248,7 +247,6 @@
                 be sure to rename remaining directories appropriately.
                 The following commands clean up the <filename>recipes-graphics</filename> directory:
                 <literallayout class='monospaced'>
-     $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-emgd*
      $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay
      $ mv meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd \
         meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/mymachine
@@ -420,7 +418,7 @@
             statements that do not support your targeted hardware in addition to the inclusion
             of any new recipes you might need.
             In this example, it was simply a matter of ridding the new layer
-            <filename>meta-machine</filename> of any code that supported the EMGD features
+            <filename>meta-mymachine</filename> of any code that supported the EMGD features
             and making sure we were identifying the kernel that supports our example, which
             is the <filename>atom-pc-standard</filename> kernel.
             We did not introduce any new recipes to the layer.
@@ -455,7 +453,7 @@
                 Thus, entering the previous command created the <filename>yocto-build</filename> directory.
                 If you do not provide a name for the build directory it defaults to
                 <filename>build</filename>.
-                The <filename>yocot-build</filename> directory contains a
+                The <filename>yocto-build</filename> directory contains a
                 <filename>conf</filename> directory that has
                 two configuration files you will need to check:  <filename>bblayers.conf</filename>
                 and <filename>local.conf</filename>.</para></listitem>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

