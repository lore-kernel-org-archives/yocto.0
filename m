Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E15FE013A3
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 20:41:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Mar 2012 20:41:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="131316517"
Received: from unknown (HELO localhost) ([10.255.15.208])
	by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2012 20:41:50 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 20 Mar 2012 22:41:50 -0500
Message-Id: <fdcde6b23f8e55899048764958836e22f44748b4.1332300688.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a38524cb14199352568900b0995c2ced9f539b6e.1332300688.git.tom.zanussi@intel.com>
References: <a38524cb14199352568900b0995c2ced9f539b6e.1332300688.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1332300688.git.tom.zanussi@intel.com>
References: <cover.1332300688.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] documentation/bsp-guide/bsp.xml: update 'BSP Licensing' section
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
X-List-Received-Date: Wed, 21 Mar 2012 03:41:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The LICENSE_FLAGS mechanism can now be used to meet the special
license requirements needed by some BSPs.  Update the documentation to
reflect the current BSP licensing mechanisms.

Also add a new blurb about the time-limited kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/bsp-guide/bsp.xml |  192 ++++++++++++++++++--------------------
 1 files changed, 91 insertions(+), 101 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index a8d571c..40d994a 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -656,135 +656,125 @@
             </section>
         </section>
 
-        <section id='bsp-click-through-licensing'>
-            <title>BSP 'Click-Through' Licensing Procedure</title>
-
-            <note> This section describes how
-		click-through licensing is expected to work.
-                Currently, this functionality is not yet implemented.
-            </note>
-
+        <section id='bsp-licensing'>
+            <title>BSP Licensing Considerations</title>
             <para>
 	      In some cases, a BSP contains separately licensed IP
-	      (Intellectual Property) for a component that imposes
-	      upon the user a requirement to accept the terms of a
-	      'click-through' license.  
-              Once the license is accepted the
-	      Yocto Project build system can then build and include the
-	      corresponding component in the final BSP image.  
-              Some affected components might be essential to the normal
-	      functioning of the system and have no 'free' replacement
-	      (i.e. the resulting system would be non-functional
-	      without them).
-              On the other hand, other components might be simply
-	      'good-to-have' or purely elective, or if essential
-	      nonetheless have a 'free' (possibly less-capable)
-	      version that could be used as a in the BSP recipe.
+	      (Intellectual Property) for a component or components
+	      that impose upon the user a requirement to accept the
+	      terms of a commercial or other type of license that
+	      requires some kind of explicit EULA (End User License
+	      Agreement).  Once the license is accepted the Yocto
+	      Project build system can then build and include the
+	      corresponding component in the final BSP image, or if
+	      the BSP is available in the form of an already built
+	      image, the user will be able to download the image after
+	      agreeing to the license or EULA.
+            </para>
+            <para>
+	      Some affected components might be essential to the
+	      normal functioning of the system and have no 'free'
+	      replacement (i.e. the resulting system would be
+	      non-functional without them).  On the other hand, other
+	      components might be simply 'good-to-have' or purely
+	      elective, or if essential nonetheless have a 'free'
+	      (possibly less-capable) version that could be used as a
+	      in the BSP recipe.
             </para>
 
             <para>
-	      For cases where you can substitute something and still maintain functionality, 
-              the Yocto Project website's  
-              <ulink url='&YOCTO_HOME_URL;/download/all?keys=&amp;download_type=1&amp;download_version='>BSP Download Page</ulink> 
-              makes available 'de-featured' BSPs that are completely free of any IP encumbrances.
-              For these cases you can use the substitution directly and without any further licensing
-              requirements.  
-              If present, these fully 'de-featured' BSPs are named appropriately different 
-              as compared to the names of the respective encumbered BSPs.
-              If available, these substitutions are the simplest and most preferred options.
-              This, of course, assumes the resulting functionality meets requirements.
+	      For cases where you can substitute something and still
+              maintain functionality, the Yocto Project website's
+              <ulink url='&YOCTO_HOME_URL;/download/all?keys=&amp;download_type=1&amp;download_version='>BSP
+              Download Page</ulink> makes available 'de-featured' BSPs
+              that are completely free of any IP encumbrances.  For
+              these cases you can use the substitution directly and
+              without any further licensing requirements.  If present,
+              these fully 'de-featured' BSPs are named appropriately
+              different as compared to the names of the respective
+              encumbered BSPs.  If available, these substitutions are
+              the simplest and most preferred options.  This, of
+              course, assumes the resulting functionality meets
+              requirements.
             </para>
 
             <para>
-	      If however, a non-encumbered version is unavailable or the 'free' version 
-              would provide unsuitable functionality or quality, you can use 
-              an encumbered version.  
+	      If however, a non-encumbered version is unavailable or
+              the 'free' version would provide unsuitable
+              functionality or quality, you can use an encumbered
+              version.
             </para>
 
-            <para>  
-              Several methods exist within the Yocto Project build system to satisfy the licensing
-	      requirements for an encumbered BSP.
-              The following list describes them in preferential order:
+            <para> A couple different methods exist within the Yocto
+              Project build system to satisfy the licensing
+              requirements for an encumbered BSP.  The following list
+              describes them in order of preference:
             </para>
 
 	    <orderedlist>
             <listitem>
-
 		<para>
-		  Get a license key (or keys) for the encumbered BSP by visiting 
-                  a website and providing the name of the BSP and your email address
-                  through a web form.
+		  Yocto recipes that have commercial or other types of
+                  specially-licensed packages define a variable named
+                  LICENSE_FLAGS.  For each of those recipes, a user
+                  can specify a matching license string in a
+                  local.conf variable named LICENSE_FLAGS_WHITELIST.
+                  This signifies that the user agrees to the license,
+                  and the corresponding recipe can then be built and
+                  included in the image.  See Section 3.3.2. in The
+                  Yocto Project Reference Manual for details on these
+                  variables and how to make use of them.
                 </para>
- 
-		<para>
-		  After agreeing to any applicable license terms, the
-		  BSP key(s) will be immediately sent to the address
-		  you gave and you can use them by specifying BSPKEY_&lt;keydomain&gt;
-		  environment variables when building the image:
-		</para>
-
-		<literallayout class='monospaced'>
-     $ BSPKEY_&lt;keydomain&gt;=&lt;key&gt; bitbake core-image-sato
-		</literallayout>
 
 		<para>
-		  These steps allow the encumbered image to be built
-		  with no change at all to the normal build process.
+		  If you build as you normally would, without
+                  specifying any recipes in the
+                  LICENSE_FLAGS_WHITELIST, the build will stop and
+                  provide you with the list of recipes that you've
+                  tried to include in the image which need entries in
+                  the LICENSE_FLAGS_WHITELIST.  Once the appropriate
+                  license flags have been entered into the whitelist,
+                  restart the build to continue where it left off.
+                  During the build the prompt will not appear again
+                  since you have satisfied the requirement.
 		</para>
-
-		<para>
-		  Equivalently and probably more conveniently, a line
-		  for each key can instead be put into the user's
-		  <filename>local.conf</filename> file found in the Yocto Project file's
-                  build directory.
-		</para>
-
+ 
 		<para>
-		  The &lt;keydomain&gt; component of the
-		  BSPKEY_&lt;keydomain&gt; is required because there
-		  might be multiple licenses in effect for a given BSP.
-                  In such cases, a given &lt;keydomain&gt; corresponds to
-		  a particular license.  In order for an encumbered
-		  BSP that encompasses multiple key domains to be built
-		  successfully, a &lt;keydomain&gt; entry for each
-		  applicable license must be present in <filename>local.conf</filename> or
-		  supplied on the command-line.
+		  Once the appropriate license flags are whitelisted
+		  in the LICENSE_FLAGS_WHITELIST variable, the
+		  encumbered image can be built with no change at all
+		  to the normal build process.
 		</para>
               </listitem> 
               <listitem>
 		<para>
-		  Do nothing - build as you normally would.
-                  When a license is needed the build will stop and prompt you with instructions.
-                  Follow the license prompts that originate from the
-		  encumbered BSP.  
-                  These prompts usually take the form of instructions
-		  needed to manually fetch the encumbered package(s)
-		  and md5 sums into the required directory 
-                  (e.g. the <filename>yocto/build/downloads</filename>).
-                  Once the manual package fetch has been
-		  completed, restart the build to continue where
-		  it left off.
-                  During the build the prompt will not appear again since you have satisfied the 
-                  requirement.
-		</para>
-              </listitem>
-              <listitem>
-		<para>
-		  Get a full-featured BSP recipe rather than a key.
-                  You can do this by visiting the Yocto Project website's
-                  <ulink url='&YOCTO_HOME_URL;/download'>Download</ulink> page and 
-                  clicking on "BSP Downloads".
-		  BSP tarballs that have proprietary information can be downloaded after agreeing 
-                  to licensing requirements as part of the download process. 
-                  Obtaining the code this way allows you to build an encumbered image with 
-                  no changes at all as compared to the normal build. 
+		  Get a pre-built version of the BSP.  You can do this
+                  by visiting the Yocto Project website's
+                  <ulink url='&YOCTO_HOME_URL;/download'>Download</ulink>
+                  page and clicking on "BSP Downloads".  BSP tarballs
+                  that contain proprietary components can be
+                  downloaded after agreeing to the licensing
+                  requirements of each of the individually encumbered
+                  packages as part of the download process.  Obtaining
+                  the BSP this way allows you to access an encumbered
+                  image immediately after agreeing to the
+                  click-through license agreements presented by the
+                  website.  Note that if you want to build the image
+                  yourself using the recipes contained within the BSP
+                  tarball, you will still need to create an
+                  appropriate LICENSE_FLAGS_WHITELIST to match the
+                  encumbered recipes in the BSP.
                 </para>
               </listitem>
 	    </orderedlist>
 	    <para>
-	      Note that the third method is also the only option available
-	      when downloading pre-compiled images generated from non-free BSPs.  
-              Those images are likewise available at from the Yocto Project website.
+	      Note also that the pre-compiled images are bundled with
+	      a time-limited kernel which will run for only a
+	      predetermined amount of time (10 days) before it forces
+	      the system to reboot.  This is meant as a discouragement
+	      to directly redistributing the image as-is, and means
+	      that you'll have to eventually rebuild the image if you
+	      want to remove that restriction.
             </para> 
         </section>
 
-- 
1.7.0.4


