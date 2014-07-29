Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 497A3E00849; Tue, 29 Jul 2014 12:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E430E0080D
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 12:34:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jul 2014 12:34:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,759,1400050800"; d="scan'208";a="569067970"
Received: from unknown (HELO localhost) ([10.255.12.245])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2014 12:34:03 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 14:33:56 -0500
Message-Id: <bc5234dbac34496061ac36e89c09cc3b572887c1.1406662265.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
References: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1406662265.git.tom.zanussi@linux.intel.com>
References: <cover.1406662265.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 4/5] dev-manual: Various updates to the 'Creating Partitioned Images' section
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
X-List-Received-Date: Tue, 29 Jul 2014 19:34:07 -0000

This is a set of miscellaneous updates brought over from the wic help
text.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         | 137 +++++++++++++--------
 1 file changed, 86 insertions(+), 51 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index c00c961..e72e983 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -3380,6 +3380,15 @@
         </para>
 
         <para>
+	  The <filename>wic</filename> command and the infrastructure
+	  it's based on is by definition incomplete - its purpose is
+	  to allow the generation of customized images, and as such
+	  was designed to be completely extensible via a plugin
+	  interface (see "<link
+	  linkend='openembedded-kickstart-plugins'>Plugins</link>").
+	  </para>
+
+        <para>
             This section provides some background information on
             <filename>wic</filename>, describes what you need to have in
             place to run the tool, provides instruction on how to use
@@ -3416,12 +3425,13 @@
                         easier-to-use and more flexible replacements for a
                         couple bits of existing functionality in OE Core's
                         <filename>directdisk.bbclass</filename> and
-                        <filename>mkefidisk.sh</filename> script.
-                        The replaced scripts are implemented by a
-                        general-purpose partitioning language based on Red Hat
-                        kickstart syntax.
-                        Underlying code for <filename>wic</filename> succeeded
-                        from several projects over time.</para></listitem>
+                        <filename>mkefidisk.sh</filename> scripts.
+                        The difference between
+                        <filename>wic</filename> and those examples is
+                        that with <filename>wic</filename> the
+                        functionality of those scripts is implemented
+                        by a general-purpose partitioning 'language'
+                        based on Redhat kickstart syntax.</para></listitem>
                 </itemizedlist>
             </para>
         </section>
@@ -3496,6 +3506,19 @@
             </para>
 
             <para>
+                You can also get detailed help on a number of topics
+                from the help system.  The output of <filename>wic
+                --help</filename> displays a list of available help
+                topics under a 'Help topics' heading.  You can have
+                the help system display the help text for a given
+                topic by prefacing the topic with <filename>wic
+                help</filename>:
+                <literallayout class='monospaced'>
+     $ wic help &lt;help topic&gt;
+                </literallayout>
+            </para>
+
+            <para>
                 You can find more out about the images
                 <filename>wic</filename> creates using the provided
                 kickstart files with the following form of the command:
@@ -3512,8 +3535,10 @@
             <title>Operational Modes</title>
 
             <para>
-                You can run <filename>wic</filename> in two modes: Raw and
-                Cooked:
+	      <filename>wic</filename> can be used in two different
+	      modes, depending on how much control the user needs in
+	      specifying the Openembedded build artifacts that will be
+	      used in creating the image: Raw and Cooked:
                 <itemizedlist>
                     <listitem><para><emphasis>Raw Mode:</emphasis>
                         You explicitly specify build artifacts through
@@ -3655,7 +3680,7 @@
      # long-description: Creates a partitioned EFI disk image that the user
      # can directly dd to boot media.
 
-     part /boot &dash;&dash;source bootimg-efi &dash;&dash;ondisk sda &dash;&dash;fstype=efi &dash;&dash;active
+     part /boot &dash;&dash;source bootimg-efi &dash;&dash;ondisk sda &dash;&dash;active
 
      part / &dash;&dash;source rootfs &dash;&dash;ondisk sda &dash;&dash;fstype=ext3 &dash;&dash;label platform
 
@@ -3798,7 +3823,7 @@
                     The example changes the following two lines and leaves the
                     remaining lines untouched:
                     <literallayout class='monospaced'>
-     part /boot --source bootimg --ondisk sdb --fstype=msdos --label boot --active --align 1024
+     part /boot --source bootimg-pcbios --ondisk sdb --label boot --active --align 1024
      part / --source rootfs --ondisk sdb --fstype=ext3 --label platform --align 1024
                     </literallayout>
                     Once the lines are changed, the example generates the
@@ -4129,32 +4154,49 @@
                             You do not need this option if you use
                             <filename>--source</filename>.</para></listitem>
                         <listitem><para><emphasis><filename>--source</filename>:</emphasis>
-                            This option is a wic-specific option that can
-                            currently have one of two values, "bootimg" or
-                            "rootfs".</para>
-                            <para>If <filename>--source rootfs</filename> is
-                            used, it tells the <filename>wic</filename> command
-                            to create a partition as large as needed to fill
-                            with the contents of the root filesystem
-                            (specified by the <filename>-r</filename>
-                            <filename>wic</filename> option) and to fill it
-                            with the contents of <filename>/rootfs</filename>.
-                            </para>
-                            <para>If <filename>--source bootimg</filename>
-                            is used, it tells the <filename>wic</filename>
-                            command to create a partition as large as needed to
-                            fill with the contents of the boot partition
-                            (specified by the <filename>-b</filename>
-                            <filename>wic</filename> option).
-                            Exactly what those contents are depend on the value
-                            of the <filename>--fstype</filename> option for
-                            that partition.
-                            If <filename>--fstype=efi</filename> is specified,
-                            the boot artifacts contained in HDDDIR are used,
-                            and if <filename>--fstype=msdos</filename> is
-                            specified, the boot artifacts found in
-                            <filename>STAGING_DATADIR</filename> are used.
-                            </para></listitem>
+                        This option is a
+                        <filename>wic</filename>-specific option that
+                        names the source of the data that will
+                        populate the partition.  The most common value
+                        for this option is 'rootfs', but can be any
+                        value which maps to a valid 'source plugin'
+                        (see "<link
+                        linkend='openembedded-kickstart-plugins'>Plugins</link>").</para>
+
+                        <para>
+			  If <filename>--source rootfs</filename> is
+			  used, it tells the <filename>wic</filename>
+			  command to create a partition as large as
+			  needed and to fill it with the contents of
+			  the root filesystem pointed to by the
+			  <filename>-r</filename>
+			  <filename>wic</filename> command-line option
+			  (or the equivalent rootfs derived from the
+			  <filename>-e</filename> command-line
+			  option).  The filesystem type that will be
+			  used to create the partition is driven by
+			  the value of the
+			  <filename>--fstype</filename> option
+			  specified for the partition (see
+			  <filename>--fstype</filename> below).
+			</para>
+
+                        <para>
+			  If <filename>--source
+			  &lt;plugin-name&gt;</filename> is used, it
+			  tells the <filename>wic</filename> command
+			  to create a partition as large as needed and
+			  to fill with the contents of the partition
+			  that will be generated by the specified
+			  plugin name using the data pointed to by the
+			  <filename>-r</filename>
+			  <filename>wic</filename> command-line option
+			  (or the equivalent rootfs derived from the
+			  <filename>-e</filename> command-line
+			  option).  Exactly what those contents and
+			  filesystem type end up being are dependent
+			  on the given plugin implementation.  </para>
+			  </listitem>
                         <listitem><para><emphasis><filename>--ondisk</filename> or <filename>--ondrive</filename>:</emphasis>
                             Forces the partition to be created on a particular
                             disk.</para></listitem>
@@ -4162,10 +4204,6 @@
                             Sets the file system type for the partition.
                             Valid values are:
                             <itemizedlist>
-                                <listitem><para><filename>msdos</filename>
-                                </para></listitem>
-                                <listitem><para><filename>efi</filename>
-                                </para></listitem>
                                 <listitem><para><filename>ext4</filename>
                                 </para></listitem>
                                 <listitem><para><filename>ext3</filename>
@@ -4220,17 +4258,14 @@
                             <filename>APPEND</filename> or
                             <filename>grub</filename> kernel command line.
                             </para>
-                            <para>The boot type is determined by the fstype of
-                            the <filename>/boot</filename> mountpoint.
-                            If the fstype is "msdos" the boot type is
-                            "pcbios", otherwise it is the fstype, which
-                            is currently "efi" (more to be added later).
-                            </para>
-                            <para>If the boot type is "efi", the image will
-                            use <filename>grub</filename> and has one
-                            menuentry: "boot".</para>
-                            <para>If the boot type is "pcbios", the image
-                            will use syslinux and has one menu label: "boot".
+                            <para>
+			      Note that bootloader functionality and
+			      boot partitions are implemented by the
+			      various <filename>--source</filename>
+			      plugins that implement bootloader
+			      functionality; the bootloader command
+			      essentially provides a means of
+			      modifying bootloader configuration.
                             </para>
                             <para>Future updates will implement more options.
                             If you use anything that is not specifically
-- 
1.8.3.1


