Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B34E8E00A18; Fri,  3 Mar 2017 04:01:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60BCAE009C2
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 04:01:23 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20170303120120388_0485
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 12:01:20 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=40942 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cjlta-0008EV-7K
	for yocto@yoctoproject.org; Fri, 03 Mar 2017 07:01:14 -0500
Date: Fri, 3 Mar 2017 07:01:12 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703030656330.9943@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [PATCH] yocto-docs: Various cleanup/tweaking to BSP Guide
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
X-List-Received-Date: Fri, 03 Mar 2017 12:01:34 -0000
Content-Type: text/plain; charset=US-ASCII


Collection of minor cleanups to BSP Guide:

* Standardize on spelling of "BSP layer" rather than "BSP Layer"
* Describe YP reference boards in more detail (architecture, ...)
* Bump up several references to kernel "4.4" to "4.9"
* Replace meaningless "bsp_name.conf" with "machine.conf"
* Add a few more sample components to the BSP layer structure

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 4d0ace0..d81cb46 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -19,7 +19,7 @@
         </para>

         <para>
-            This guide presents information about BSP Layers, defines a structure for components
+            This guide presents information about BSP layers, defines a structure for components
             so that BSPs follow a commonly understood layout, discusses how to customize
             a recipe for a BSP, addresses BSP licensing, and provides information that
             shows you how to create and manage a
@@ -33,7 +33,7 @@
             <para>
                 A BSP consists of a file structure inside a base directory.
                 Collectively, you can think of the base directory, its file structure,
-                and the contents as a BSP Layer.
+                and the contents as a BSP layer.
                 Although not a strict requirement, layers in the Yocto Project use the
                 following well-established naming convention:
                 <literallayout class='monospaced'>
@@ -77,8 +77,10 @@
                 <filename>meta-yocto-bsp</filename> layer is part of the
                 shipped <filename>poky</filename> repository.
                 The <filename>meta-yocto-bsp</filename> layer maintains several
-                BSPs such as the Beaglebone, EdgeRouter, and generic versions of
-                both 32 and 64-bit IA machines.
+                BSPs such as the ARM-based Beaglebone,
+                MIPS64-based Ubiquiti Networks EdgeRouter,
+                PowerPC-based Freescale MPC8315E-RDB,
+                and generic versions of both 32 and 64-bit IA machines.
             </para>

             <para>
@@ -94,7 +96,7 @@
             <para>
                 The layer's base directory
                 (<filename>meta-<replaceable>bsp_name</replaceable></filename>)
-                is the root of the BSP Layer.
+                is the root of the BSP layer.
                 This root is what you add to the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-BBLAYERS'><filename>BBLAYERS</filename></ulink>
                 variable in the <filename>conf/bblayers.conf</filename> file found in the
@@ -189,7 +191,7 @@

             <para>
                 Below is the common form for the file structure inside a BSP Layer.
-                While you can use this basic form for the standard, realize that the actual structures
+                While you can use this basic form as your standard, realize that the actual structures
                 for specific BSPs could differ.

                 <literallayout class='monospaced'>
@@ -200,6 +202,9 @@
      meta-<replaceable>bsp_name</replaceable>/binary/<replaceable>bootable_images</replaceable>
      meta-<replaceable>bsp_name</replaceable>/conf/layer.conf
      meta-<replaceable>bsp_name</replaceable>/conf/machine/*.conf
+     meta-<replaceable>bsp_name</replaceable>/conf/machine/include/*
+     meta-<replaceable>bsp_name</replaceable>/files/*
+     meta-<replaceable>bsp_name</replaceable>/classes/*
      meta-<replaceable>bsp_name</replaceable>/recipes-bsp/*
      meta-<replaceable>bsp_name</replaceable>/recipes-core/*
      meta-<replaceable>bsp_name</replaceable>/recipes-graphics/*
@@ -663,21 +668,21 @@
                 the <filename>meta-<replaceable>bsp_name</replaceable>/recipes-kernel/linux</filename> directory).
             </para>
             <para>
-                Suppose you are using the <filename>linux-yocto_4.4.bb</filename> recipe to build
+                Suppose you are using the <filename>linux-yocto_4.9.bb</filename> recipe to build
                 the kernel.
                 In other words, you have selected the kernel in your
-                <replaceable>bsp_name</replaceable><filename>.conf</filename> file by adding these types
+                <replaceable>machine</replaceable><filename>.conf</filename> file by adding these types
                 of statements:
                 <literallayout class='monospaced'>
      PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-     PREFERRED_VERSION_linux-yocto ?= "4.4%"
+     PREFERRED_VERSION_linux-yocto ?= "4.9%"
                 </literallayout>
                 <note>
                     When the preferred provider is assumed by default, the
                     <filename>PREFERRED_PROVIDER</filename> statement does not appear in the
-                    <replaceable>bsp_name</replaceable><filename>.conf</filename> file.
+                    <replaceable>machine</replaceable><filename>.conf</filename> file.
                 </note>
-                You would use the <filename>linux-yocto_4.4.bbappend</filename>
+                You would then create a <filename>linux-yocto_4.9.bbappend</filename>
                 file to append specific BSP settings to the kernel, thus
                 configuring the kernel for your particular BSP.
             </para>
@@ -686,7 +691,7 @@
                 As an example, consider the following append file
                 used by the BSPs in <filename>meta-yocto-bsp</filename>:
                 <literallayout class='monospaced'>
-     meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+     meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
                 </literallayout>
                 The following listing shows the file.
                 Be aware that the actual commit ID strings in this

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


