Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A82F0E017A2
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 10:06:32 -0800 (PST)
Received: from [173.34.6.101] (port=34675 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Ve7Ur-0004wA-JJ; Wed, 06 Nov 2013 13:06:29 -0500
Date: Wed, 6 Nov 2013 13:06:21 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311061304520.25303@oneiric>
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
Subject: [PATCH] Documentation: Various tweaks/fixes for ch 4, ref manual
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
X-List-Received-Date: Wed, 06 Nov 2013 18:06:33 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index be9c387..33abc27 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -60,9 +60,9 @@
             and is responsible for parsing the
             <ulink url='&YOCTO_DOCS_DEV_URL;#metadata'>Metadata</ulink>,
             generating a list of tasks from it, and then executing those tasks.
-            To see a list of the options BitBake supports, use the following
-            help command:
+            To see a list of the options BitBake supports, use either of:
             <literallayout class='monospaced'>
+     $ bitbake -h
      $ bitbake --help
             </literallayout>
         </para>
@@ -72,7 +72,7 @@
             <filename>packagename</filename> is the name of the package you want to build
             (referred to as the "target" in this manual).
             The target often equates to the first part of a <filename>.bb</filename> filename.
-            So, to run the <filename>matchbox-desktop_1.2.3.bb</filename> file, you
+            So, to process the <filename>matchbox-desktop_1.2.3.bb</filename> recipe file, you
             might type the following:
             <literallayout class='monospaced'>
      $ bitbake matchbox-desktop
@@ -111,14 +111,15 @@
         <para>
             The <filename>.bb</filename> files are usually referred to as "recipes."
             In general, a recipe contains information about a single piece of software.
-            The information includes the location from which to download the source patches
+            This information includes the location from which to download the
+            pristine source, any source patches to be applied to that source
             (if any are needed), which special configuration options to apply,
             how to compile the source files, and how to package the compiled output.
         </para>

         <para>
-            The term "package" can also be used to describe recipes.
-            However, since the same word is used for the packaged output from the OpenEmbedded
+            The term "package" is sometimes (confusingly) used to refer to recipes. However,
+            since the word "package" is used for the packaged output from the OpenEmbedded
             build system (i.e. <filename>.ipk</filename> or <filename>.deb</filename> files),
             this document avoids using the term "package" when referring to recipes.
         </para>
@@ -162,7 +163,7 @@
         <ulink url='&YOCTO_DOCS_DEV_URL;#cross-development-toolchain'>cross-development toolchains</ulink>.
         This section provides some technical background information on how
         cross-development toolchains are created and used.
-        For more information on these toolchain, you can also see the
+        For more information on toolchains, you can also see the
         <ulink url='&YOCTO_DOCS_ADT_URL;'>the Yocto Project Application Developer's Guide</ulink>.
     </para>

@@ -347,7 +348,7 @@
         As mentioned in the previous paragraph, building from scratch ensures that
         everything is current and starts from a known state.
         However, building from scratch also takes much longer as it generally means
-        rebuilding things that do not necessarily need rebuilt.
+        rebuilding things that do not necessarily need to be rebuilt.
     </para>

     <para>
@@ -355,10 +356,11 @@
         The implementation of the shared state code answers the following questions that
         were fundamental roadblocks within the OpenEmbedded incremental build support system:
         <itemizedlist>
-            <listitem>What pieces of the system have changed and what pieces have not changed?</listitem>
-            <listitem>How are changed pieces of software removed and replaced?</listitem>
-            <listitem>How are pre-built components that do not need to be rebuilt from scratch
-                used when they are available?</listitem>
+            <listitem><para>What pieces of the system have changed and what pieces have
+                not changed?</para></listitem>
+            <listitem><para>How are changed pieces of software removed and replaced?</para></listitem>
+            <listitem><para>How are pre-built components that do not need to be rebuilt from scratch
+                used when they are available?</para></listitem>
         </itemizedlist>
     </para>

@@ -397,16 +399,16 @@

         <para>
             When determining what parts of the system need to be built, BitBake
-            uses a per-task basis and does not use a per-recipe basis.
+            works on a per-task basis rather than a per-recipe basis.
             You might wonder why using a per-task basis is preferred over a per-recipe basis.
             To help explain, consider having the IPK packaging backend enabled and then switching to DEB.
             In this case, <filename>do_install</filename> and <filename>do_package</filename>
-            output are still valid.
+            outputs are still valid.
             However, with a per-recipe approach, the build would not include the
             <filename>.deb</filename> files.
             Consequently, you would have to invalidate the whole build and rerun it.
-            Rerunning everything is not the best situation.
-            Also in this case, the core must be "taught" much about specific tasks.
+            Rerunning everything is not the best solution.
+            Also, in this case, the core must be "taught" much about specific tasks.
             This methodology does not scale well and does not allow users to easily add new tasks
             in layers or as external recipes without touching the packaged-staging core.
         </para>
@@ -512,17 +514,18 @@
             dependent task hashes can be influenced.
             Within the BitBake configuration file, we can give BitBake some extra information
             to help it construct the basehash.
-            The following statements effectively result in a list of global variable
+            The following statement effectively results in a list of global variable
             dependency excludes - variables never included in any checksum:
             <literallayout class='monospaced'>
-  BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH"
-  BB_HASHBASE_WHITELIST += "DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS"
-  BB_HASHBASE_WHITELIST += "FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
-  BB_HASHBASE_WHITELIST += "FILESPATH USERNAME STAGING_DIR_HOST STAGING_DIR_TARGET"
+     BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR \
+         SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM \
+         USER FILESPATH STAGING_DIR_HOST STAGING_DIR_TARGET COREBASE PRSERV_HOST \
+         PRSERV_DUMPDIR PRSERV_DUMPFILE PRSERV_LOCKDOWN PARALLEL_MAKE \
+         CCACHE_DIR EXTERNAL_TOOLCHAIN CCACHE CCACHE_DISABLE LICENSE_PATH SDKPKGSUFFIX"
             </literallayout>
-            The previous example actually excludes
+            The previous example excludes
             <link linkend='var-WORKDIR'><filename>WORKDIR</filename></link>
-            since it is actually constructed as a path within
+            since that variable is actually constructed as a path within
             <link linkend='var-TMPDIR'><filename>TMPDIR</filename></link>, which is on
             the whitelist.
         </para>
@@ -541,7 +544,7 @@
             <filename>OE-Core</filename> uses the "OEBasicHash" signature handler by default
             through this setting in the <filename>bitbake.conf</filename> file:
             <literallayout class='monospaced'>
-  BB_SIGNATURE_HANDLER ?= "OEBasicHash"
+     BB_SIGNATURE_HANDLER ?= "OEBasicHash"
             </literallayout>
             The "OEBasicHash" <filename>BB_SIGNATURE_HANDLER</filename> is the same as the
             "OEBasic" version but adds the task hash to the stamp files.
@@ -550,7 +553,7 @@
             change that changes the task hash, automatically
             causing the task to be run again.
             This removes the need to bump <link linkend='var-PR'><filename>PR</filename></link>
-            values and changes to Metadata automatically ripple across the build.
+            values, and changes to Metadata automatically ripple across the build.
         </para>

         <para>
@@ -558,10 +561,10 @@
             make some dependency and hash information available to the build.
             This information includes:
             <literallayout class='monospaced'>
-  BB_BASEHASH_task-&lt;taskname&gt; - the base hashes for each task in the recipe
-  BB_BASEHASH_&lt;filename:taskname&gt; - the base hashes for each dependent task
-  BBHASHDEPS_&lt;filename:taskname&gt; - The task dependencies for each task
-  BB_TASKHASH - the hash of the currently running task
+     BB_BASEHASH_task-&lt;taskname&gt; - the base hashes for each task in the recipe
+     BB_BASEHASH_&lt;filename:taskname&gt; - the base hashes for each dependent task
+     BBHASHDEPS_&lt;filename:taskname&gt; - The task dependencies for each task
+     BB_TASKHASH - the hash of the currently running task
             </literallayout>
         </para>
     </section>
@@ -571,7 +574,7 @@

         <para>
             Checksums and dependencies, as discussed in the previous section, solve half the
-            problem.
+            problem of supporting a shared state.
             The other part of the problem is being able to use checksum information during the build
             and being able to reuse or rebuild specific components.
         </para>
@@ -581,7 +584,7 @@
             is a relatively generic implementation of how to "capture" a snapshot of a given task.
             The idea is that the build process does not care about the source of a task's output.
             Output could be freshly built or it could be downloaded and unpacked from
-            somewhere - the build process does not need to worry about its source.
+            somewhere - the build process does not need to worry about its origin.
         </para>

         <para>
@@ -598,7 +601,7 @@
             <filename>sstate.bbclass</filename>.
             From a user's perspective, adding shared state wrapping to a task
             is as simple as this <filename>do_deploy</filename> example taken from
-            <filename>do_deploy.bbclass</filename>:
+            <filename>deploy.bbclass</filename>:
             <literallayout class='monospaced'>
      DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
      SSTATETASKS += "do_deploy"
@@ -610,8 +613,9 @@
          sstate_setscene(d)
      }
      addtask do_deploy_setscene
+     do_deploy[dirs] = "${DEPLOYDIR} ${B}"
             </literallayout>
-            In the example, we add some extra flags to the task, a name field ("deploy"), an
+            In this example, we add some extra flags to the task, a name field ("deploy"), an
             input directory where the task sends data, and the output
             directory where the data from the task should eventually be copied.
             We also add a <filename>_setscene</filename> variant of the task and add the task
@@ -752,7 +756,7 @@
                 To avoid these problems during the build, you need to understand the effects of any
                 change you make.
                 Note that any changes you make directly to a function automatically are factored into
-                the checksum calculation and thus, will invalidate the associated area of sstate cache.
+                the checksum calculation and thus will invalidate the associated area of sstate cache.
                 You need to be aware of any implicit changes that are not obvious changes to the
                 code and could affect the output of a given task.
                 Once you are aware of such changes, you can take steps to invalidate the cache
@@ -868,7 +872,7 @@

     <para>
         <ulink url='http://en.wikipedia.org/wiki/Wayland_(display_server_protocol)#Weston'>Wayland</ulink>
-        is a computer display server protocol that when implemented
+        is a computer display server protocol that
         provides a method for compositing window managers to communicate
         directly with applications and video hardware and expects them to
         communicate with input hardware using other libraries.
@@ -879,7 +883,7 @@

     <para>
         The Yocto Project provides the Wayland protocol libraries and the
-        reference Weston compositor as part of it release.
+        reference Weston compositor as part of its release.
         This section describes what you need to do to implement Wayland and
         use the compositor when building an image for a supporting target.
     </para>
@@ -974,7 +978,7 @@
         <para>
             Alternatively, you can run Weston through the command-line
             interpretor (CLI), which is better suited for development work.
-            To run Weston under the CLI you need to do the following after
+            To run Weston under the CLI, you need to do the following after
             your image is built:
             <orderedlist>
                 <listitem><para>Run these commands to export
@@ -1163,7 +1167,7 @@
             </literallayout>
 	        As a convenience, you do not need to specify the complete license string
 	        in the whitelist for every package.
-            you can use an abbreviated form, which consists
+            You can use an abbreviated form, which consists
 	        of just the first portion or portions of the license string before
 	        the initial underscore character or characters.
             A partial string will match
@@ -1185,10 +1189,10 @@
 		        License flag matching allows you to control what recipes the
                 OpenEmbedded build system includes in the build.
                 Fundamentally, the build system attempts to match
-                <filename>LICENSE_FLAG</filename> strings found in
+                <filename>LICENSE_FLAGS</filename> strings found in
                 recipes against <filename>LICENSE_FLAGS_WHITELIST</filename>
                 strings found in the whitelist.
-                A match, causes the build system to include a recipe in the
+                A match causes the build system to include a recipe in the
                 build, while failure to find a match causes the build system to
                 exclude a recipe.
             </para>
@@ -1249,7 +1253,7 @@

             <para>
                 This scheme works even if the
-                <filename>LICENSE_FLAG</filename> string already
+                <filename>LICENSE_FLAGS</filename> string already
                 has <filename>_${PN}</filename> appended.
                 For example, the build system turns the license flag
                 "commercial_1.2_foo" into "commercial_1.2_foo_foo" and would

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

