Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36360E00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 15:18:21 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45719 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1StnQp-000408-8K; Tue, 24 Jul 2012 18:18:19 -0400
Date: Tue, 24 Jul 2012 18:18:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1207241817090.5365@oneiric>
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
Subject: bsp-guide: a few more semantic tweaks to the BSP guide
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
X-List-Received-Date: Tue, 24 Jul 2012 22:18:21 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 914c391..3699984 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -402,8 +402,8 @@
                 For example, the Crown Bay BSP <filename>crownbay.conf</filename> has the
                 following statements:
                 <literallayout class='monospaced'>
-     include conf/machine/include/tune-atom.inc
-     include conf/machine/include/ia32-base.inc
+     require conf/machine/include/tune-atom.inc
+     require conf/machine/include/ia32-base.inc
                 </literallayout>
             </para>
             </section>
@@ -769,7 +769,7 @@
                             <itemizedlist>
                                 <listitem><para>A brief description about the hardware the BSP
                                     targets.</para></listitem>
-                                <listitem><para>A list of all the dependencies a
+                                <listitem><para>A list of all the dependencies
                                     on which a BSP layer depends.
                                     These dependencies are typically a list of required layers needed
                                     to build the BSP.
@@ -817,14 +817,14 @@
                             using the BSP layer.
                             Multiple machine configuration files define variations of machine
                             configurations that are supported by the BSP.
-                            If a BSP supports more multiple machine variations, you need to
+                            If a BSP supports multiple machine variations, you need to
                             adequately describe each variation in the BSP
                             <filename>README</filename> file.
                             Do not use multiple machine configuration files to describe disparate
                             hardware.
                             Multiple machine configuration files should describe very similar targets.
-                            If you do have very different targets, you should create a separate
-                            BSP.
+                            If you do have very different targets, you should create separate
+                            BSP layers for each target.
                             <note>It is completely possible for a developer to structure the
                             working repository as a conglomeration of unrelated BSP
                             files, and to possibly generate specifically targeted 'release' BSPs

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

