Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30E7E01566
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 03:21:27 -0700 (PDT)
Received: from [173.34.6.101] (port=35062 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VUZqY-0001TA-Co; Fri, 11 Oct 2013 06:21:26 -0400
Date: Fri, 11 Oct 2013 06:21:18 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1310110619550.6807@oneiric>
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
Subject: [PATCH] [yocto-docs] Some innocuous fixes to BSP guide.
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
X-List-Received-Date: Fri, 11 Oct 2013 10:21:28 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1381977516-1381486882=:6807"

--8323329-1381977516-1381486882=:6807
Content-Type: TEXT/PLAIN; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT


* A couple grammatical fixes.
* A couple filename corrections.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index e11eb4f..c85e7e0 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -394,12 +394,13 @@

             <para>
                 To use an include file, you simply include them in the machine configuration file.
-                For example, the Crown Bay BSP <filename>crownbay.conf</filename> has the
+                For example, the Crown Bay BSP <filename>crownbay.conf</filename> contains the
                 following statements:
                 <literallayout class='monospaced'>
      require conf/machine/include/tune-atom.inc
      require conf/machine/include/ia32-base.inc
      require conf/machine/include/meta-intel.inc
+     require conf/machine/include/meta-intel-emgd.inc
                 </literallayout>
             </para>
             </section>
@@ -420,7 +421,7 @@
                 <filename>formfactor_0.0.bbappend</filename> file, which is an
                 append file used to augment the recipe that starts the build.
                 Furthermore, there are machine-specific settings used during the
-                build that are defined by the <filename>machconfig</filename>.
+                build that are defined by the <filename>machconfig</filename> file.
                 In the Crown Bay example, two <filename>machconfig</filename> files
                 exist: one that supports the Intel® Embedded Media and Graphics
                 Driver (Intel® EMGD) and one that does not:
@@ -460,7 +461,7 @@
                 (VESA) graphics):
                 <literallayout class='monospaced'>
      meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
-     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
                 </literallayout>
             </para>
             </section>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-1381977516-1381486882=:6807--
