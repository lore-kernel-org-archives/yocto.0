Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3771.1581584689670169199
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 01:04:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E57EBE0159B; Thu, 13 Feb 2020 01:04:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D966E007D4
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 01:04:47 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:48388 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2AQO-002PEC-Hz
	for yocto@yoctoproject.org; Thu, 13 Feb 2020 04:04:47 -0500
Date: Thu, 13 Feb 2020 04:04:41 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [PATCH] overview-manual: minor editing, rendering, wording changes
Message-ID: <alpine.LFD.2.21.2002130402440.1757620@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/overview-manual/overview-manual-concepts.xml b/documentation/overview-manual/overview-manual-concepts.xml
index f085dd710..6ab783ce7 100644
--- a/documentation/overview-manual/overview-manual-concepts.xml
+++ b/documentation/overview-manual/overview-manual-concepts.xml
@@ -144,11 +144,11 @@

             <para>
                 Files that have the <filename>.bb</filename> suffix are
-                "recipes" files.
+                "recipe" files.
                 In general, a recipe contains information about a single piece
-                of software.
-                This information includes the location from which to download
-                the unaltered source, any source patches to be applied to that
+                of software,
+                including the location from which to download
+                the pristine source, any (local) source patches to be applied to that
                 source (if needed), which special configuration options to
                 apply, how to compile the source files, and how to package the
                 compiled output.
@@ -189,9 +189,9 @@
                 various configuration variables that govern the OpenEmbedded
                 build process.
                 These files fall into several areas that define machine
-                configuration options, distribution configuration options,
-                compiler tuning options, general common configuration options,
-                and user configuration options in
+                configuration, distribution configuration,
+                compiler tuning, general common configuration,
+                and user configuration in
                 <filename>conf/local.conf</filename>, which is found in the
                 <ulink url='&YOCTO_DOCS_REF_URL;#build-directory'>Build Directory</ulink>.
             </para>
@@ -336,7 +336,7 @@
                 complete a build.
                 These files are <filename>*.conf</filename> files.
                 The minimally necessary ones reside as example files in the
-                <filename>build/conf</filename> directory of the
+                <filename>meta/conf</filename> directory of the
                 <ulink url='&YOCTO_DOCS_REF_URL;#source-directory'>Source Directory</ulink>.
                 For simplicity, this section refers to the Source Directory as
                 the "Poky Directory."
@@ -555,7 +555,7 @@
                 reads the configuration files in a specific order:
                 <filename>site.conf</filename>, <filename>auto.conf</filename>,
                 and <filename>local.conf</filename>.
-                And, the build system applies the normal assignment statement
+                In addition, the build system applies the normal assignment statement
                 rules as described in the
                 "<ulink url='&YOCTO_DOCS_BB_URL;#bitbake-user-manual-metadata'>Syntax and Operators</ulink>"
                 chapter of the BitBake User Manual.
@@ -584,7 +584,7 @@
             </para>

             <para>
-                In general, three types of layer input exists.
+                In general, three types of layer input exist.
                 You can see them below the "User Configuration" box in the
                 <link linkend='general-workflow-figure'>general workflow figure</link>:
                 <itemizedlist>
@@ -613,6 +613,9 @@
                         is the
                         <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-yocto-bsp'><filename>meta-yocto-bsp</filename></ulink>
                         layer.
+                        Individual hardware manufacturers, such as Intel,
+                        Xilinx, Altera, NXP and so on will typically provide
+                        BSP layers for their own products as well.
                         </para></listitem>
                     <listitem><para>
                         <emphasis>Policy Configuration:</emphasis>
@@ -620,14 +623,14 @@
                         following figure) providing top-level or general
                         policies for the images or SDKs being built for a
                         particular distribution.
-                        For example, in the Poky Reference Distribution the
+                        For example, in the Poky Reference Distribution, the
                         distro layer is the
                         <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky'><filename>meta-poky</filename></ulink>
                         layer.
                         Within the distro layer is a
                         <filename>conf/distro</filename> directory that
                         contains distro configuration files (e.g.
-                        <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky.conf'><filename>poky.conf</filename></ulink>
+                        <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky.conf'><filename>poky.conf</filename></ulink>)
                         that contain many policy configurations for the
                         Poky distribution.
                         </para></listitem>
@@ -748,7 +751,7 @@
                 <title>BSP Layer</title>

                 <para>
-                    The BSP Layer provides machine configurations that
+                    The BSP layer provides machine configurations that
                     target specific hardware.
                     Everything in this layer is specific to the machine for
                     which you are building the image or the SDK.
@@ -763,8 +766,8 @@
                 </para>

                 <para>
-                    The BSP Layer's configuration directory contains
-                    configuration files for the machine
+                    A BSP layer's configuration directory contains
+                    configuration files for the corresponding machines
                     (<filename>conf/machine/<replaceable>machine</replaceable>.conf</filename>)
                     and, of course, the layer
                     (<filename>conf/layer.conf</filename>).
@@ -798,8 +801,8 @@
                 </para>

                 <para>
-                    This layer contains any recipes, append files, and
-                    patches, that your project needs.
+                    This layer contains any recipes, append files and
+                    patches that your project needs.
                 </para>
             </section>
         </section>
@@ -913,7 +916,7 @@
                     project is to use the
                     <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-externalsrc'><filename>externalsrc</filename></ulink>
                     class to include that local project.
-                    You use either the <filename>local.conf</filename> or a
+                    You use either the <filename>local.conf</filename> file or a
                     recipe's append file to override or set the
                     recipe to point to the local directory on your disk to pull
                     in the whole source tree.
@@ -1739,7 +1742,7 @@
                 <para>
                     The <filename>do_populate_sdk_ext</filename> task helps
                     create the extensible SDK and handles host and target parts
-                    differently than its counter part does for the standard SDK.
+                    differently than its counterpart does for the standard SDK.
                     For the extensible SDK, the task encapsulates the build
                     system, which includes everything needed (host and target)
                     for the SDK.
@@ -2449,7 +2452,7 @@
             parts are built fresh and no possibility of stale data exists that
             can cause problems.
             When developers hit problems, they typically default back to
-            building from scratch so they have a know state from the
+            building from scratch so they have a known state from the
             start.
         </para>

@@ -2665,9 +2668,9 @@
                 Thus far, this section has limited discussion to the direct
                 inputs into a task.
                 Information based on direct inputs is referred to as the
-                "basehash" in the code.
+                <firstterm>basehash</firstterm> in the code.
                 However, the question of a task's indirect inputs still
-                exits - items already built and present in the
+                exists - items already built and present in the
                 <ulink url='&YOCTO_DOCS_REF_URL;#build-directory'>Build Directory</ulink>.
                 The checksum (or signature) for a particular task needs to add
                 the hashes of all the tasks on which the particular task

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
