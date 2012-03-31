Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39794E013BA
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 20:03:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Mar 2012 20:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="125474146"
Received: from unknown (HELO localhost) ([10.255.12.50])
	by azsmga001.ch.intel.com with ESMTP; 30 Mar 2012 20:03:45 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 22:04:32 -0500
Message-Id: <82edddfb02f8da9500d25046374e70d02cadf7e1.1333162852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1333162852.git.tom.zanussi@intel.com>
References: <cover.1333162852.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] documentation/bsp-guide/bsp.xml: Add new section for 'BSP Tools'
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
X-List-Received-Date: Sat, 31 Mar 2012 03:03:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some documentation introducing and helping get people started with the
Yocto BSP Tools (yocto-bsp and yocto-kernel).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/bsp-guide/bsp.xml |  450 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 450 insertions(+), 0 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 8567c26..e4a113a 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -754,4 +754,454 @@
                 You must eventually rebuild the image if you want to remove this restriction.
             </note> 
         </section>
+        <section id='yocto-bsp-tools'>
+            <title>Using the Yocto BSP Tools</title>
+	    <para>
+	      The Yocto Project includes a couple of tools that enable
+	      you to create a BSP from scratch
+	      (<filename>yocto-bsp</filename>) and do basic
+	      configuration and maintenance of the kernel
+	      (<filename>yocto-kernel</filename>) without ever looking at
+	      a Yocto metadata file.
+	    </para>
+	    <para>
+	      The following sections describe each of those tools in
+	      detail, but there are some features common to both that
+	      will be useful to describe before delving into the
+	      details of either.
+	    </para>
+	    <para>
+	      First, a word about how the tools are structured.
+	      Designed to have a 'git-like' command interface, each
+	      tool is structured as a set of sub-commands under a
+	      'top-level' command.  The top-level command
+	      (<filename>yocto-bsp</filename>
+	      or <filename>yocto-kernel</filename>) itself does
+	      nothing but invoke or provide help on the sub-commands
+	      it supports.
+	    </para>
+	    <para>
+	      Secondly, since the tools themselves live in
+	      the <filename>scripts/</filename> subdirectory, in order
+	      to use them, you need to 'source' the environment just
+	      as you would when invoking a build:
+              <literallayout class='monospaced'>
+		$ source oe-init-build-env [build_dir]
+              </literallayout>
+	    </para>
+	    <para>
+	      With that in mind, the most immediately useful function
+	      to describe is the built-in help system common to both
+	      tools.
+	    </para>
+	    <para>
+	      The built-in help system makes it easy to drill down at
+	      any time and remind oneself of the syntax required for
+	      any specific command.
+	    </para>
+	    <para>
+	      Simply entering the name of the command, or the command
+	      along with 'help' will display a list of the available
+	      sub-commands. For example:
+	    </para>
+	    <para>
+              <literallayout class='monospaced'>
+		$ yocto-bsp
+		$ yocto-bsp help
+		
+		Usage:
+		
+		Create a customized Yocto BSP layer.
+		
+		usage: yocto-bsp [--version] [--help] COMMAND [ARGS]
+		
+		The most commonly used 'yocto-bsp' commands are:
+		create            Create a new Yocto BSP
+		list              List available values for options and BSP properties
+		
+		See 'yocto-bsp help COMMAND' for more information on a specific command.
+		
+		
+		Options:
+		--version    show program's version number and exit
+		-h, --help   show this help message and exit
+		-D, --debug  output debug information
+              </literallayout>
+	    </para>
+	    <para>
+	      Similarly, entering just the name of a sub-command will
+	      show the detailed usage for that sub-command:
+	    </para>
+	    <para>
+              <literallayout class='monospaced'>
+		$ yocto-bsp create
+		
+		Usage:
+		
+		Create a new Yocto BSP
+		usage: yocto-bsp create &lt;bsp-name&gt; &lt;karch&gt; [-o &lt;DIRNAME&gt; | --outdir &lt;DIRNAME&gt;]
+			[-i &lt;JSON PROPERTY FILE&gt; | --infile &lt;JSON PROPERTY_FILE&gt;]
+		
+			    This command creates a Yocto BSP based on the specified parameters.
+			    The new BSP will be a new Yocto BSP layer contained by default within
+			    the top-level directory specified as 'meta-bsp-name'.  The -o option
+			    can be used to place the BSP layer in a directory with a different
+			    name and location.
+			    
+			    ...
+	      </literallayout>
+	    </para>
+	    <para>
+	      For any sub-command, you can also use the word 'help'
+	      just before the sub-command to get more extensive
+	      documentation on the sub-command:
+	    </para>
+	    <para>
+              <literallayout class='monospaced'>
+		$ yocto-bsp help create
+		
+		NAME
+		yocto-bsp create - Create a new Yocto BSP
+		
+		SYNOPSIS
+		yocto-bsp create &lt;bsp-name&gt; &lt;karch&gt; [-o &lt;DIRNAME&gt; | --outdir &lt;DIRNAME&gt;]
+			[-i &lt;JSON PROPERTY FILE&gt; | --infile &lt;JSON PROPERTY_FILE&gt;]
+			    
+	        DESCRIPTION
+		This command creates a Yocto BSP based on the specified
+		parameters.  The new BSP will be a new Yocto BSP layer contained
+		by default within the top-level directory specified as
+		'meta-bsp-name'.  The -o option can be used to place the BSP layer
+		in a directory with a different name and location.
+			    
+		The value of the 'karch' parameter determines the set of files
+		that will be generated for the BSP, along with the specific set of
+		'properties' that will be used to fill out the BSP-specific
+		portions of the BSP.
+			    
+		...
+			    
+		NOTE: Once created, you should add your new layer to your
+		bblayers.conf file in order for it to be subsquently seen and
+		modified by the yocto-kernel tool.
+			    
+		NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
+		presence of the of the meta-intel layer, so you should also have a
+		meta-intel layer present and added to your bblayers.conf as well.
+	      </literallayout>
+	    </para>
+	    <para>
+	      With the knowledge that there are two
+	      commands, <filename>yocto-bsp</filename>
+	      and <filename>yocto-kernel</filename> and a built-in
+	      help system available for each, it should be relatively
+	      straightforward to discover the commands necessary to
+	      create a BSP and do basic kernel maintainence of that
+	      BSP using the tools.  The following sections are
+	      provided, however, in order to serve as a concrete
+	      starting point and to expand on a few points that may
+	      not be immediately obvious or that could use further
+	      explanation.
+	    </para>
+            <section id='using-yocto-bsp'>
+            <title>Creating a new BSP using <filename>yocto-bsp</filename></title>
+            <para>
+	      <filename>yocto-bsp</filename> is a Yocto script that
+              allows you to create a new Yocto BSP for any
+              architecture supported Yocto, as well as qemu versions
+              of the same.  The default mode of operation when invoked
+              from the command-line is to prompt the user for
+              information needed to generate the BSP.  For the current
+              set of BSPs, the user is prompted for various important
+              parameters such as which kernel to use, which branch of
+              that kernel to use (or re-use), whether or not to use X,
+              and if so, which drivers to use, whether to turn on SMP,
+              whether the BSP has a keyboard, touchscreen, or anything
+              that happens to be configurable and has an associated
+              input prompt.
+            </para>
+	    <para>
+	      The <filename>yocto-bsp create</filename> sub-command is
+	      the sub-command you use to create a new BSP.  It
+	      requires you to specify a particular architecture to
+	      base the BSP on.  You can use the <filename>yocto-bsp
+	      list karch</filename> sub-command to list the
+	      architectures available for BSP creation:
+	    </para>
+	    <para>
+	      Assuming you've sourced the environment, you can invoke
+	      the <filename>yocto-bsp create</filename> command to
+	      create the BSP.  The example below uses 'myarm' as the
+	      machine name, and tells it to use the 'qemu'
+	      architecture (the specific qemu machine architecture to
+	      use will be prompted for).  You can use the 'yocto-bsp
+	      list karch' command to list the aviailable architectures
+	      for BSP creation:
+	    </para>
+	    <para>
+              <literallayout class='monospaced'>
+		$ yocto-bsp list karch
+		Architectures available:
+    		    arm
+    		    powerpc
+    		    i386
+    		    mips
+    		    x86_64
+    		    qemu
+              </literallayout>
+	    </para>
+	    <para>
+	      For the example output below, we'll use the 'qemu'
+	      architecture, which is a special architecture that is
+	      the only one of the supported architectures that will
+	      prompt you further for a 'real' architecture.  In every
+	      other way, it's representative of how creating a BSP for
+	      a 'real' machine would work; the reason we're using it
+	      here as an example is that since it's an emulated
+	      architecture, it's easy for readers to try out
+	      themselves without having any special hardware
+	      requirements.
+	    </para>
+	    <para>
+	      The 'yocto-bsp create' command for the qemu architecture
+	      will display the following prompts along the way to
+	      gather the input required for BSP generation.  Each
+	      prompt asks for input, but has a default value [in
+	      brackets].  If you press 'enter' (or any invalid value),
+	      the default value will automatically be used.
+	    </para>
+	    <para>
+	      In the case of the qemu architecture, the first prompt
+	      asks which emulated architecture to use.  In this
+	      example, we'll use the 'arm' qemu architecture.
+	    </para>
+	    <para>
+	      It then asks if the default kernel (3.2) is ok, and we
+	      press enter, essentially telling it 'yes'.  If we had
+	      entered 'n', we would have been prompted to choose a
+	      different kernel from a list of available kernels (3.0,
+	      3.2_preempt-rt, etc).
+	    </para>
+	    <para>
+	      Once we've selected the kernel, the next prompt asks
+	      whether we'd like to have a new branch in the Yocto
+	      kernel git repository created especially for this BSP,
+	      or whether we'll just re-use an existing branch.  If we
+	      say 'yes', which is the default, the BSP code generated
+	      will create a new branch specifically for the BSP rather
+	      than a common shared branch; this is the branch that any
+	      patches we add later would be committed.  The reason
+	      creating a new branch is the default is that typically
+	      new BSPs do require BSP-specific patches and so the BSP
+	      tool assumes that most of time a new branch will be
+	      required.  Note that in the current implementation it
+	      doesn't actually matter, since the generated BSPs assume
+	      that patches and configuration live in recipe-space,
+	      which is something that can be done with or without a
+	      dedicated branch.  The BSP that's generated, however,
+	      will be different, and this difference will become
+	      significant once 'publish' functionality is implemented.
+	    </para>
+	    <para>
+	      Regardless of which choice we made in the previous step,
+	      we're then given the opportunity to select a particular
+	      machine branch to base our new BSP-specific machine
+	      branch on (or re-use if we elected not to create a new
+	      branch).  Because we're generating an arm BSP, we choose
+	      #3 at that prompt to select the arm-versatile branch.
+	      The rest of the prompts are routine, and once all the
+	      questions have been completed, the BSP is generated
+	      along with a message telling you so.  The output of the
+	      complete session is shown below:
+	    </para>
+	    <para>
+              <literallayout class='monospaced'>
+$ yocto-bsp create myarm qemu
+Which qemu architecture would you like to use? [default: x86]
+        1) common 32-bit x86
+        2) common 64-bit x86
+        3) common 32-bit ARM
+        4) common 32-bit PowerPC
+        5) common 32-bit MIPS
+3
+Would you like to use the default (3.2) kernel? (Y/n)
+Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [Y/n]
+Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.2...
+Please choose a machine branch to base this BSP on => [default: standard/default/common-pc]
+        1) base
+        2) standard/base
+        3) standard/default/arm-versatile-926ejs
+        4) standard/default/base
+        5) standard/default/beagleboard
+        6) standard/default/cedartrail
+        7) standard/default/common-pc-64/base
+        8) standard/default/common-pc-64/jasperforest
+        9) standard/default/common-pc-64/romley
+        10) standard/default/common-pc-64/sugarbay
+        11) standard/default/common-pc/atom-pc
+        12) standard/default/common-pc/base
+        13) standard/default/crownbay
+        14) standard/default/emenlow
+        15) standard/default/fishriver
+        16) standard/default/fri2
+        17) standard/default/fsl-mpc8315e-rdb
+        18) standard/default/mti-malta32-be
+        19) standard/default/mti-malta32-le
+        20) standard/default/preempt-rt
+        21) standard/default/qemu-ppc32
+        22) standard/default/routerstationpro
+        23) standard/preempt-rt/base
+        24) standard/preempt-rt/qemu-ppc32
+        25) standard/preempt-rt/routerstationpro
+        26) standard/tiny
+3
+Do you need SMP support? (Y/n)
+Does your BSP have a touchscreen? (y/N)
+Does your BSP have a keyboard? (Y/n)
+New qemu BSP created in meta-myarm
+              </literallayout>
+	    </para>
+	    <para>
+	      Now that we have our BSP created, we need to add it to
+	      our bblayers.conf.  This of course is required in order
+	      to build the BSP, but it's also required in order for
+	      the <filename>yocto-kernel</filename> tool to be able to
+	      find the layer and other metadata it needs to operate
+	      on.
+                <literallayout class='monospaced'>
+     BBLAYERS = " \
+        /usr/local/src/yocto/meta \
+        /usr/local/src/yocto/meta-yocto \
+        /usr/local/src/yocto/meta-myarm \
+        "
+                </literallayout>
+	    </para>
+            </section>
+            <section id='using-yocto-kernel'>
+            <title>Managing Kernel Patches and Config Items
+            with <filename>yocto-kernel</filename></title>
+            <para>
+	      Assuming we've created a Yocto BSP layer
+              using <filename>yocto-bsp</filename> and added it to our
+              BBLAYERS, we can now use
+              the <filename>yocto-kernel</filename> command to add
+              patches and config items to the BSP's
+              kernel.  <filename>yocto-kernel</filename> is a Yocto
+              script that allows you to add, remove, and list patches
+              and kernel config settings to a Yocto BSP's kernel
+              .bbappend file.  The easiest way to see exactly what
+              sub-commands are available
+              using <filename>yocto-kernel</filename> is again to make
+              use of the built-in help:
+            </para>
+	    <para>
+                <literallayout class='monospaced'>
+$ yocto-kernel
+Usage:
+
+ Modify and list Yocto BSP kernel config items and patches.
+
+ usage: yocto-kernel [--version] [--help] COMMAND [ARGS]
+
+ The most commonly used 'yocto-kernel' commands are:
+   config list       List the modifiable set of bare kernel config options for a BSP
+   config add        Add or modify bare kernel config options for a BSP
+   config rm         Remove bare kernel config options from a BSP
+   patch list        List the patches associated with a BSP
+   patch add         Patch the Yocto kernel for a BSP
+   patch rm          Remove patches from a BSP
+
+ See 'yocto-kernel help COMMAND' for more information on a specific command.
+                </literallayout>
+	    </para>
+	    <para>
+	      The <filename>yocto-kernel patch add</filename>
+	      sub-command allows us to add a patch to a BSP.  The
+	      following commands add a couple of patches to the
+	      'myarm' BSP:
+                <literallayout class='monospaced'>
+$ yocto-kernel patch add myarm ~/test.patch
+Added patches:
+        test.patch
+
+$ yocto-kernel patch add myarm ~/yocto-testmod.patch
+Added patches:
+        yocto-testmod.patch
+                </literallayout>
+		Note that though we added patches one by one above, we
+		could also add multiple patches at the same time if we
+		wanted to.
+	    </para>
+	    <para>
+	      We can verify that the patches were added by using
+	      the <filename>yocto-kernel patch list</filename>
+	      sub-command:
+                <literallayout class='monospaced'>
+$ yocto-kernel patch list myarm
+The current set of machine-specific patches for myarm is:
+        1) test.patch
+        2) yocto-testmod.patch
+                </literallayout>
+	    </para>
+	    <para>
+	      We can also use <filename>yocto-kernel</filename> to
+	      remove a patch using the <filename>yocto-kernel patch
+	      rm</filename> sub-command:
+                <literallayout class='monospaced'>
+$ yocto-kernel patch rm myarm
+Specify the patches to remove:
+        1) test.patch
+        2) yocto-testmod.patch
+1
+Removed patches:
+        test.patch
+                </literallayout>
+	    </para>
+	    <para>
+	      Again using <filename>yocto-kernel patch list</filename>
+	      we can verify that it was in fact removed:
+                <literallayout class='monospaced'>
+$ yocto-kernel patch list myarm
+The current set of machine-specific patches for myarm is:
+        1) yocto-testmod.patch
+                </literallayout>
+	    </para>
+	    <para>
+	      In a completely similar way, we can use
+	      the <filename>yocto-kernel config add</filename>
+	      sub-command to add one or more kernel config item
+	      settings to a BSP.  The following commands add a couple
+	      of config items to the 'myarm' BSP:
+                <literallayout class='monospaced'>
+$ yocto-kernel config add myarm CONFIG_MISC_DEVICES=y
+Added items:
+        CONFIG_MISC_DEVICES=y
+
+$ yocto-kernel config add myarm KCONFIG_YOCTO_TESTMOD=y
+Added items:
+        CONFIG_YOCTO_TESTMOD=y
+                </literallayout>
+		Note that though we added config items one by one
+		above, we could also add multiple configuration
+		settings at the same time if we wanted to.
+	    </para>
+	    <para>
+	      Finally, we can list the config items now associated
+	      with the BSP and see the config items we added along
+	      with some others.
+                <literallayout class='monospaced'>
+$ yocto-kernel config list myarm
+The current set of machine-specific kernel config items for myarm is:
+        1) CONFIG_MISC_DEVICES=y
+        2) CONFIG_YOCTO_TESTMOD=y
+                </literallayout>
+	    </para>
+	    <para>
+	      Similarly, we can remove one or more config items using
+	      <filename>yocto-kernel config rm</filename> in a manner
+	      completely analogous to <filename>yocto-kernel patch
+	      rm</filename>.
+	    </para>
+            </section>
+        </section>
 </chapter>
-- 
1.7.0.4


