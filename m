Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0A3CE01398
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 21:49:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Nov 2011 21:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="70507424"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by orsmga002.jf.intel.com with ESMTP; 02 Nov 2011 21:49:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, rpjday@crashcourse.ca,
	scott.m.rifenbark@linux.intel.com, jfabernathy@gmail.com
Date: Wed,  2 Nov 2011 23:49:38 -0500
Message-Id: <d1e372132a9cb40f48ed4b96f5893a3acba78787.1320295198.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1320295198.git.tom.zanussi@intel.com>
References: <cover.1320295198.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] documentation/dev-manual: BSP Development Example changes
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
X-List-Received-Date: Thu, 03 Nov 2011 04:49:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch contains a set of changes to The Yocto Project Development
Manual's 'Appendix A. BSP Development Example' to reflect input from
several users and to add some changes for problems and opportunities
for enhancement that I noted when doing my own testing.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../dev-manual/dev-manual-bsp-appendix.xml         |  188 ++++++++++++++++----
 1 files changed, 154 insertions(+), 34 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-bsp-appendix.xml b/documentation/dev-manual/dev-manual-bsp-appendix.xml
index 485064d..00f5edf 100644
--- a/documentation/dev-manual/dev-manual-bsp-appendix.xml
+++ b/documentation/dev-manual/dev-manual-bsp-appendix.xml
@@ -11,7 +11,8 @@
     <itemizedlist>
         <listitem><para>No previous preparation or use of the Yocto Project.</para></listitem>
         <listitem><para>Use of the Crown Bay Board Support Package (BSP) as a base BSP from 
-            which to work from.</para></listitem>  
+            which to work from (we'll be starting with the Crown Bay BSP but will be building
+            a new 'atom-pc' BSP using the Crown Bay as as starting point).</para></listitem>  
         <listitem><para>Shell commands assume <filename>bash</filename></para></listitem>
         <listitem><para>Example was developed on an Intel-based Core i7 platform running 
             Ubuntu 10.04 LTS released in April of 2010.</para></listitem>        
@@ -29,6 +30,24 @@
         "<link linkend='local-yp-release'>Yocto Project Release</link>" 
         for information on how to get these files.
     </para>
+    <para>
+        For example, one way to get the Yocto Project files using git is to clone the poky repo:
+        <literallayout class='monospaced'>
+     $ git clone git://git.yoctoproject.org/poky
+     $ cd poky
+        </literallayout> 
+    </para>
+    <para>
+        Alternatively, you can start with the downloaded poky edison tarball:
+        <literallayout class='monospaced'>
+     $ tar xfj poky-edison-6.0.tar.bz2
+     $ cd poky
+        </literallayout> 
+        Note that if you're using the tarball method, you can ignore all the steps below that
+        ask you to carry out git operations - you already have the results of those operations
+        in the form of the edison release tarballs, and there's nothing left to do other than
+        extract those tarballs into the proper locations.
+    </para>
 
     <para>
         Once you have the local <filename>poky</filename> Git repository set up, 
@@ -44,7 +63,6 @@
         These commands create a local branch named <filename>edison</filename>
         that tracks the remote branch of the same name.
         <literallayout class='monospaced'>
-     $ cd poky
      $ git checkout -b edison origin/edison
      Switched to a new branch 'edison'
         </literallayout>
@@ -58,7 +76,10 @@
         For this example, the base BSP is the <trademark class='registered'>Intel</trademark>
         <trademark class='trade'>Atom</trademark> Processor E660 with Intel Platform 
         Controller Hub EG20T Development Kit, which is otherwise referred to as "Crown Bay."
-        The BSP layer is <filename>meta-crownbay</filename>.
+        The BSP layer is <filename>meta-crownbay</filename>.  The Base BSP is simply the BSP
+        we'll be using as a starting point, so don't worry if you don't actually have Crown Bay
+        hardware - using the steps below, we'll be transforming it into a BSP that should be
+        able to boot on generic atom-pc (netbook) hardware.
     </para>
 
     <para>
@@ -73,27 +94,48 @@
     <para>
         You need to have the base BSP layer on your development system.  
         Similar to the local Yocto Project files, you can get the BSP 
-        layer one of two ways:  
+        layer in one of two ways:  
         download the BSP tarball and extract it, or set up a local Git repository that 
         has the Yocto Project BSP layers.  
         You should use the same method that you used to get the local Yocto Project files earlier.
         See "<link linkend='getting-setup'>Getting Setup</link>" for information on how to get 
         the BSP files.
     </para>
-        
     <para>
-        This example assumes the local <filename>meta-intel</filename> Git repository is
-        inside the local <filename>poky</filename> Git repository.
-        The <filename>meta-intel</filename> Git repository contains all the metadata 
-        that supports BSP creation.
+        This example assumes the BSP layer will be located within a directory named
+        <filename>meta-intel</filename> contained within the <filename>poky</filename>
+        parent directory.  The steps below will automatically create the
+        <filename>meta-intel</filename> directory and the contained meta-crownbay
+        starting point in both the git and the tarball cases.
     </para>
-
     <para>
+        If you're using the git method, you could do the following to create
+        the starting layout (you should make sure you've already cd'ed into
+        the poky directory in the steps above):
+        <literallayout class='monospaced'>
+     $ git clone git://git.yoctoproject.org/meta-intel.git
+     $ cd meta-intel
+        </literallayout> 
+    </para>
+    <para>
+        Alternatively, you can start with the downloaded meta-intel edison tarball
+        (again, you should make sure you've already cd'ed into the poky directory
+        in the steps above):
+        <literallayout class='monospaced'>
+     $ tar xfj crownbay-noemgd-edison-6.0.0.tar.bz2
+     $ cd meta-intel
+        </literallayout> 
+    </para>
+        
+    <para>
+        The <filename>meta-intel</filename> directory contains all the metadata 
+        that supports BSP creation.  If you're using the git method, the following
+        step will make switch to the edison metadata; if you're using the tarball
+        method, you already have the correct metadata and can skip to the next step.
         Because <filename>meta-intel</filename> is its own Git repository, you will want
         to be sure you are in the appropriate branch for your work.
         For this example we are going to use the <filename>edison</filename> branch. 
         <literallayout class='monospaced'>
-     $ cd meta-intel
      $ git checkout -b edison origin/edison
      Switched to a new branch 'edison'
         </literallayout>
@@ -112,15 +154,12 @@
 
     <para>  
         For this example, the new layer will be named <filename>meta-mymachine</filename>.  
-        The name must follow the BSP layer naming convention, which is 
+        The name should follow the BSP layer naming convention, which is 
         <filename>meta-&lt;name&gt;</filename>.  
-        The following example assumes your working directory is <filename>meta-intel</filename> 
+        The following assumes your working directory is <filename>meta-intel</filename> 
         inside the local Yocto Project files.  
-        If you downloaded and expanded a Crown Bay tarball then you simply copy the resulting 
-        <filename>meta-crownbay</filename> directory structure to a location of your choice.
-        Good practice for a Git repository, however, is to just copy the new layer alongside 
-        the existing
-        BSP layers in the <filename>meta-intel</filename> Git repository:
+        To start your new layer, just copy the new layer alongside the existing
+        BSP layers in the <filename>meta-intel</filename> directory:
         <literallayout class='monospaced'>
      $ cp -a meta-crownbay/ meta-mymachine 
         </literallayout>
@@ -162,9 +201,13 @@
         </para>
 
         <para>
-            The next step makes changes to <filename>mymachine.conf</filename> itself.  
-            The only changes needed for this example are changes to the comment lines.
-            Here we simply substitute the Crown Bay name with an appropriate name.
+            The next step is to make changes to the <filename>mymachine.conf</filename> itself.
+            The only changes we want to make for this example are to the comment lines.  Changing
+            comments of course is never strictly necessary, but it's alway good form to make
+            them reflect reality as far as possible.
+
+            Here simply substitute the Crown Bay name with an appropriate name for the BSP (mymachine
+            in this case) and change the description to something that describes your hardware.
         </para>
 
         <para>
@@ -176,7 +219,8 @@
         </para>
 
         <para>
-            The next configuration file in the new BSP layer we need to edit is <filename>layer.conf</filename>.
+            The next configuration file in the new BSP layer we need to edit is
+            <filename>meta-mymachine/conf/layer.conf</filename>.
             This file identifies build information needed for the new layer.  
             You can see the 
             "<ulink url='http://www.yoctoproject.org/docs/1.1/bsp-guide/bsp-guide.html#bsp-filelayout-layer'>Layer Configuration File</ulink>" section in  
@@ -232,7 +276,7 @@
                 the remaining one that doesn't support EMGD.  
                 These commands take care of the <filename>recipes-bsp</filename> recipes:
                 <literallayout class='monospaced'>
-     $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/*emgd*
+     $ rm -rf meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay
      $ mv meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-noemgd/ \
      meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine
                 </literallayout>
@@ -248,7 +292,6 @@
                 be sure to rename remaining directories appropriately.  
                 The following commands clean up the <filename>recipes-graphics</filename> directory:
                 <literallayout class='monospaced'>
-     $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-emgd*
      $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay
      $ mv meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd \
         meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/mymachine   
@@ -304,6 +347,9 @@
                 The <filename>SRCREV_machine</filename> and <filename>SRCREV_meta</filename>
                 statements point to the exact commits used by the Yocto Project development team
                 in their source repositories that identify the right kernel for our hardware.
+                The SRCREV values are simply git commit ids that identify which commit on each
+                of the kernel branches (machine and meta) will be checked out and used to build
+                the kernel.
             </para>
  
             <para>
@@ -323,12 +369,12 @@
      SRCREV_machine_pn-linux-yocto_crownbay ?= \
         "2247da9131ea7e46ed4766a69bb1353dba22f873"
      SRCREV_meta_pn-linux-yocto_crownbay ?= \
-        "67a46a608f47c19f16995be7de7b272025864b1b"
+        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
 
      SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= \
         "2247da9131ea7e46ed4766a69bb1353dba22f873"
      SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= \
-        "67a46a608f47c19f16995be7de7b272025864b1b"
+        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
                 </literallayout>
             </para>
 
@@ -350,17 +396,33 @@
                 and insert the commit identifiers to identify the kernel in which we 
                 are interested, which will be based on the <filename>atom-pc-standard</filename>
                 kernel.
+                In this case, because we're working with the edison branch of everything, we
+                need to use the SRCREVs for the atom-pc branch which are associated with the
+                edison release.  To find those, we need to find the SRCREVs that edison uses
+                for the atom-pc branch, which we find in the
+                <filename>poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend</filename>
+                file.  The machine SRCREV we want is in the SRCREV_machine_atom-pc variable.  The
+                meta SRCREV isn't specified in this file, so it must be specified in the base
+                kernel recipe in the
+                <filename>poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb</filename>
+                file, in the SRCREV_meta variable found there.  It happens to be the same
+                as the value we already inherited from the meta-crownbay BSP.
                 Here are the final <filename>SRCREV</filename> statements:
                 <literallayout class='monospaced'>
      SRCREV_machine_pn-linux-yocto_mymachine ?= \ 
-        "06c798f25a19281d7fa944b14366dd75820ba009"
+        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
      SRCREV_meta_pn-linux-yocto_mymachine ?= \ 
-        "67a46a608f47c19f16995be7de7b272025864b1b"
+        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
                 </literallayout>
             </para>
 
             <para>
-                If you are familiar with Git repositories you probably won’t have trouble locating the 
+                Note that in this example, we're using the SRCREVs we found already captured
+                in the edison release because we're creating a BSP based on edison.  If instead
+                we had based our BSP on the master branches, we'd want to use the most recent
+                SRCREVs taken directly from the kernel repo.  We won't be doing that for this
+                example, but if you do base a future BSP on master and
+                if you are familiar with Git repositories you probably won’t have trouble locating the 
                 exact commit strings in the Yocto Project source repositories you need to change 
                 the <filename>SRCREV</filename> statements.  
                 You can find all the <filename>machine</filename> and <filename>meta</filename> 
@@ -394,19 +456,25 @@
                 Because we are not interested in supporting EMGD those three can be deleted.
                 The remaining three must be changed so that <filename>mymachine</filename> replaces
                 <filename>crownbay-noemgd</filename> and <filename>crownbay</filename>.
+                Note that since we're using the atom-pc branch for this new BSP, we can also find
+                the exact branch we need for the KMACHINE variable in our new BSP from the value
+                we find in the
+                <filename>poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend</filename>
+                file we looked at in a previous step.  In this case, the value we want is in
+                the KMACHINE_atom-pc variable in that file.
                 Here is the final <filename>linux-yocto_3.0.bbappend</filename> file after all 
                 the edits:
                 <literallayout class='monospaced'>
      FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
      COMPATIBLE_MACHINE_mymachine = "mymachine"
-     KMACHINE_mymachine  = "yocto/standard/mymachine"
+     KMACHINE_mymachine  = "yocto/standard/common-pc/atom-pc"
      KERNEL_FEATURES_append_mymachine += " cfg/smp.scc"
 
      SRCREV_machine_pn-linux-yocto_mymachine ?= \
-        "06c798f25a19281d7fa944b14366dd75820ba009"
+        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
      SRCREV_meta_pn-linux-yocto_mymachine ?= \
-        "67a46a608f47c19f16995be7de7b272025864b1b"
+        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
                 </literallayout>
             </para>
         </section>
@@ -455,7 +523,7 @@
                 Thus, entering the previous command created the <filename>yocto-build</filename> directory.  
                 If you do not provide a name for the build directory it defaults to 
                 <filename>build</filename>.  
-                The <filename>yocot-build</filename> directory contains a 
+                The <filename>yocto-build</filename> directory contains a 
                 <filename>conf</filename> directory that has 
                 two configuration files you will need to check:  <filename>bblayers.conf</filename>
                 and <filename>local.conf</filename>.</para></listitem>
@@ -492,7 +560,7 @@
 </section>
 
 <section id='building-the-image-app'>
-    <title>Building the Image</title>
+    <title>Building and Booting the Image</title>
 
     <para>
         To build the image for our <filename>meta-mymachine</filename> BSP enter the following command 
@@ -513,6 +581,58 @@
         If the build results in any type of error you should check for misspellings in the 
         files you changed or problems with your host development environment such as missing packages.
     </para>
+
+    <para>
+        Finally, once you have an image, you can try booting it from e.g a USB device.
+        To prepare a bootable USB device, insert a USB flash drive into your build system and
+        copy the .hddimage, located in the <filename>poky/build/tmp/deploy/images</filename>
+        directory after a successful to the flash drive.  Assuming the USB flash drive
+        takes device /dev/sdf, use dd to copy the live image to it.  For
+        example:
+    </para>
+
+        <literallayout class='monospaced'>
+        # dd if=core-image-sato-mymachine-20111101223904.hddimg of=/dev/sdf
+        # sync
+        # eject /dev/sdf
+        </literallayout>
+
+    <para>
+        This should give you a bootable USB flash device.  Insert the device
+        into a bootable USB socket on the target, and power on.  This should
+        result in a system booted to the Sato graphical desktop.
+    </para>
+
+    <para>
+        For reference, the sato image produced by the above steps for edison looked
+        like this in terms of size.  If your sato image is much different from this,
+        you probably made a mistake in one of the above steps:
+    </para>
+
+        <literallayout class='monospaced'>
+        358715392 2011-11-01 19:11 core-image-sato-mymachine-20111101223904.hddimg
+        </literallayout>
+
+    <para>
+        Note that the above instructions are also present in the README that was copied
+        from meta-crownbay, which should also be updated to reflect the specifics of your
+        new BSP.  That file and the README.hardware file in the top-level poky directory
+        also provides some suggestions for things to try if booting fails with strange
+        error messages.
+    </para>
+
+    <para>
+        Note also that because this new image is not in any way tailored to the system you're
+        booting it on, which is assumed to be some sort of atom-pc (netbook) system for this
+        example, it may not be completely functional though it should at least boot to a text
+        prompt.  Specifically, it may fail to boot into graphics without some tweaking.  One
+        possible next step if that ends up being the case would be to replace the mymachine.conf
+        contents with the contents of atom-pc.conf and replace xorg.conf with the atom-pc xorg.conf
+        in meta-yocto see if it fares any better.  In any case, following the above steps should
+        give you a buildable and probably bootable image.  Getting things working like you want
+        them to for your hardware will normally require some amount of experimentation with
+        configuration settings.
+    </para>
 </section>
 </appendix>
 
-- 
1.7.0.4


