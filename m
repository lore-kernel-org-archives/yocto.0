Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E9EE00970; Fri, 24 Mar 2017 07:26:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23D7E004E5
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 07:26:37 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20170324142625224_0684;
	Fri, 24 Mar 2017 14:26:25 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=45190 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1crQAT-0000m4-Ob; Fri, 24 Mar 2017 10:26:17 -0400
Date: Fri, 24 Mar 2017 10:26:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703241021130.22469@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Saul Wold <saul.wold@intel.com>
Subject: [PATCH][yocto-docs] BSP Guide: Numerous aesthetic tweaks/clarifications
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
X-List-Received-Date: Fri, 24 Mar 2017 14:26:39 -0000
Content-Type: text/plain; charset=US-ASCII

* Outside of a title, use "BSP layer", not "BSP Layer"
* Add details about YP reference boards.
* Minor grammatical clarification in places.
* Add <para> to even single paragraph notes for consistency.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 4d0ace0..63848ad 100644
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
@@ -77,8 +77,9 @@
                 <filename>meta-yocto-bsp</filename> layer is part of the
                 shipped <filename>poky</filename> repository.
                 The <filename>meta-yocto-bsp</filename> layer maintains several
-                BSPs such as the Beaglebone, EdgeRouter, and generic versions of
-                both 32 and 64-bit IA machines.
+                Yocto Project "reference" BSPs such as the ARM-based Beaglebone,
+                MIPS-based Ubiquiti EdgeRouter, PowerPC-based MPC8315E-RDB,
+                and generic versions of both 32 and 64-bit IA machines.
             </para>

             <para>
@@ -94,7 +95,7 @@
             <para>
                 The layer's base directory
                 (<filename>meta-<replaceable>bsp_name</replaceable></filename>)
-                is the root of the BSP Layer.
+                is the root of the BSP layer.
                 This root is what you add to the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-BBLAYERS'><filename>BBLAYERS</filename></ulink>
                 variable in the <filename>conf/bblayers.conf</filename> file found in the
@@ -179,7 +180,7 @@
             </para>

             <para>
-                Before looking at the common form for the file structure inside a BSP Layer,
+                Before looking at the common form for the file structure inside a BSP layer,
                 you should be aware that some requirements do exist in order for a BSP to
                 be considered compliant with the Yocto Project.
                 For that list of requirements, see the
@@ -188,7 +189,7 @@
             </para>

             <para>
-                Below is the common form for the file structure inside a BSP Layer.
+                Below is the common form for the file structure inside a BSP layer.
                 While you can use this basic form for the standard, realize that the actual structures
                 for specific BSPs could differ.

@@ -572,7 +573,8 @@
             </para>

             <para>
-                To use an include file, you simply include them in the
+                To use an include file, you simply <filename>include</filename> or
+                <filename>require</filename> it in the
                 machine configuration file.
                 For example, the Raspberry Pi BSP
                 <filename>raspberrypi3.conf</filename> contains the
@@ -956,28 +958,28 @@
                                 <listitem><para>Instructions on how to boot the BSP build from
                                     the BSP layer.</para></listitem>
                                 <listitem><para>Instructions on how to boot the binary images
-                                    contained in the <filename>binary</filename> directory,
+                                    contained in the <filename>binary/</filename> directory,
                                     if present.</para></listitem>
                                 <listitem><para>Information on any known bugs or issues that users
                                     should know about when either building or booting the BSP
                                     binaries.</para></listitem>
                             </itemizedlist></para></listitem>
                         <listitem><para><emphasis>README.sources File:</emphasis>
-                            You must include a <filename>README.sources</filename> in the
-                            <filename>meta-<replaceable>bsp_name</replaceable></filename> directory.
-                            This file specifies exactly where you can find the sources used to
-                            generate the binary images contained in the
-                            <filename>binary</filename> directory, if present.
+                            If your BSP layer includes a <filename>binary/</filename> directory
+                            with at least one binary image, then it must also include a top-level
+                            <filename>README.sources</filename> file that explains exactly
+                            where you can find the sources used to generate those binary images.
                             </para></listitem>
                         <listitem><para><emphasis>Layer Configuration File:</emphasis>
-                            You must include a <filename>conf/layer.conf</filename> in the
+                            You must include a <filename>conf/layer.conf</filename> file in the
                             <filename>meta-<replaceable>bsp_name</replaceable></filename> directory.
                             This file identifies the <filename>meta-<replaceable>bsp_name</replaceable></filename>
                             BSP layer as a layer to the build system.</para></listitem>
                         <listitem><para><emphasis>Machine Configuration File:</emphasis>
                             You must include one or more
-                            <filename>conf/machine/<replaceable>bsp_name</replaceable>.conf</filename>
-                            files in the <filename>meta-<replaceable>bsp_name</replaceable></filename> directory.
+                            <filename>conf/machine/<replaceable>machine</replaceable>.conf</filename>
+                            machine definition files in the
+                            <filename>meta-<replaceable>bsp_name</replaceable></filename> directory.
                             These configuration files define machine targets that can be built
                             using the BSP layer.
                             Multiple machine configuration files define variations of machine
@@ -989,12 +991,22 @@
                             hardware.
                             If you do have very different targets, you should create separate
                             BSP layers for each target.
-                            <note>It is completely possible for a developer to structure the
-                            working repository as a conglomeration of unrelated BSP
-                            files, and to possibly generate BSPs targeted for release
-                            from that directory using scripts or some other mechanism
-                            (e.g. <filename>meta-yocto-bsp</filename> layer).
-                            Such considerations are outside the scope of this document.</note>
+                            <note>
+                              <para>
+                                It is completely possible for a developer to structure the
+                                working repository as a conglomeration of unrelated BSP
+                                files, and to possibly generate BSPs targeted for release
+                                from that directory using scripts or some other mechanism
+                                (e.g. <filename>meta-yocto-bsp</filename> layer).
+                                Such considerations are outside the scope of this document.
+                              </para>
+                              <para>
+                                In any event, the <filename>meta-yocto-bsp</filename> layer should be
+                                considered a special case as it defines the family of Yocto Project
+                                reference boards, which necessarily cover the set of supported
+                                architectures.
+                              </para>
+                            </note>
                             </para></listitem>
                     </itemizedlist>
                 </para>
@@ -1025,16 +1037,20 @@
                             purposes, you should put the images and artifacts within a
                             <filename>binary/</filename> subdirectory located in the
                             <filename>meta-<replaceable>bsp_name</replaceable></filename> directory.
-                            <note>If you do include a bootable image as part of the BSP and the image
-                            was built by software covered by the GPL or other open source licenses,
-                            it is your responsibility to understand
-                            and meet all licensing requirements, which could include distribution
-                            of source files.</note></para></listitem>
+                            <note>
+                              <para>
+                                If you do include a bootable image as part of the BSP and the image
+                                was built by software covered by the GPL or other open source licenses,
+                                it is your responsibility to understand and meet all licensing
+                                requirements, which could include distribution of source files.
+                              </para>
+                            </note>
+                          </para></listitem>
                         <listitem><para><emphasis>Use a Yocto Linux Kernel:</emphasis>
                             Kernel recipes in the BSP should be based on a Yocto Linux kernel.
                             Basing your recipes on these kernels reduces the costs for maintaining
                             the BSP and increases its scalability.
-                            See the <filename>Yocto Linux Kernel</filename> category in the
+                            See the "Yocto Linux Kernel" category in the
                             <ulink url='&YOCTO_GIT_URL;/cgit.cgi'>Source Repositories</ulink>
                             for these kernels.</para></listitem>
                     </itemizedlist>
@@ -1056,7 +1072,7 @@
                        section in the Yocto Project Development Manual.
                        </para></listitem>
                    <listitem><para>
-                       Ensure your directory structure in the BSP layer
+                       Ensure that the directory structure in the BSP layer
                        that supports your machine is such that it can be found
                        by the build system.
                        See the example later in this section for more information.
@@ -1083,40 +1099,40 @@

            <para>
                Following is a specific example to help you better understand the process.
-               Consider an example that customizes a recipe by adding
+               Consider an example that customizes a single recipe by adding
                a BSP-specific configuration file named <filename>interfaces</filename> to the
-               <filename>init-ifupdown_1.0.bb</filename> recipe for machine "xyz" where the
-               BSP layer also supports several other machines.
+               <filename>init-ifupdown_1.0.bb</filename> recipe exclusively for machine "xyz",
+               where the BSP layer supports several other machines.
+            </para>
+            <para>
                Do the following:
                <orderedlist>
-                   <listitem><para>Edit the <filename>init-ifupdown_1.0.bbappend</filename> file so that it
-                       contains the following:
+                   <listitem><para>In the <filename>meta-xyz/recipes-core/init-ifupdown/</filename>
+                       directory, create the <filename>init-ifupdown_1.0.bbappend</filename> file
+                       so that it contains the following:
                        <literallayout class='monospaced'>
      FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
                        </literallayout>
-                       The append file needs to be in the
-                       <filename>meta-xyz/recipes-core/init-ifupdown</filename> directory.
                        </para></listitem>
                    <listitem><para>Create and place the new <filename>interfaces</filename>
-                       configuration file in the BSP's layer here:
-                       <literallayout class='monospaced'>
-     meta-xyz/recipes-core/init-ifupdown/files/xyz-machine-one/interfaces
-                       </literallayout>
+                       configuration file in the BSP layer at
+                       <filename>meta-xyz/recipes-core/init-ifupdown/files/xyz-machine-one/interfaces</filename>.
                        <note>
+                         <para>
                            If the <filename>meta-xyz</filename> layer did not support
-                           multiple machines, you would place the
+                           multiple machines, or this customization applied to all of the
+                           machines defined by this BSP layer, you could place the
                            <filename>interfaces</filename> configuration file in the
-                           layer here:
-                           <literallayout class='monospaced'>
-     meta-xyz/recipes-core/init-ifupdown/files/interfaces
-                           </literallayout>
+                           layer at
+                           <filename>meta-xyz/recipes-core/init-ifupdown/files/interfaces</filename>.
+                         </para>
                        </note>
                        The
                        <ulink url='&YOCTO_DOCS_REF_URL;#var-FILESEXTRAPATHS'><filename>FILESEXTRAPATHS</filename></ulink>
                        variable in the append files extends the search path
                        the build system uses to find files during the build.
                        Consequently, for this example you need to have the
-                       <filename>files</filename> directory in the same location
+                       <filename>files/</filename> directory in the same location
                        as your append file.</para></listitem>
                </orderedlist>
             </para>
@@ -1227,6 +1243,7 @@
             </para>

             <note>
+              <para>
                 Pre-compiled images are bundled with
                 a time-limited kernel that runs for a
                 predetermined amount of time (10 days) before it forces
@@ -1234,6 +1251,7 @@
                 This limitation is meant to discourage direct redistribution
                 of the image.
                 You must eventually rebuild the image if you want to remove this restriction.
+              </para>
             </note>
         </section>

@@ -1367,11 +1385,13 @@
                     necessary to create a BSP and perform basic kernel maintenance on that BSP using
                     the tools.
                     <note>
+                      <para>
                         You can also use the <filename>yocto-layer</filename> tool to create
                         a "generic" layer.
                         For information on this tool, see the
                         "<ulink url='&YOCTO_DOCS_DEV_URL;#creating-a-general-layer-using-the-yocto-layer-script'>Creating a General Layer Using the yocto-layer Script</ulink>"
                         section in the Yocto Project Development Guide.
+                      </para>
                     </note>
                 </para>



-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


