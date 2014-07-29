Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3ADBE0080D; Tue, 29 Jul 2014 12:34:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3578E00559
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 12:34:00 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Jul 2014 12:33:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,759,1400050800"; d="scan'208";a="462820270"
Received: from unknown (HELO localhost) ([10.255.12.245])
	by azsmga001.ch.intel.com with ESMTP; 29 Jul 2014 12:33:58 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 14:33:53 -0500
Message-Id: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1406662265.git.tom.zanussi@linux.intel.com>
References: <cover.1406662265.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/5] dev-manual: Add 'Creating Partitioned Images/Plugins' subsection
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
X-List-Received-Date: Tue, 29 Jul 2014 19:34:03 -0000

Add a new section discussing plugins, taken directly from the
corresponding wic help section.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         | 158 +++++++++++++++++++++
 1 file changed, 158 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index c4c3d9f..c3df8b3 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -3916,6 +3916,164 @@
             </section>
         </section>
 
+        <section id='openembedded-kickstart-plugins'>
+            <title>Plugins</title>
+
+            <para>
+	      Plugins allow <filename>wic</filename> functionality to
+	      be extended and specialized by users.  This section
+	      documents the plugin interface, which is currently
+	      restricted to 'source' plugins.
+            </para>
+
+            <para>
+	      'Source' plugins provide a mechanism to customize
+	      various aspects of the image generation process in
+	      <filename>wic</filename>, mainly the contents of
+	      partitions.
+            </para>
+
+            <para>
+	      Source plugins provide a mechanism for mapping values
+	      specified in <filename>.wks</filename> files using the
+	      <filename>--source</filename> keyword to a particular
+	      plugin implementation that populates a corresponding
+	      partition.
+            </para>
+
+            <para>
+	      A source plugin is created as a subclass of
+	      <filename>SourcePlugin</filename> (see
+	      <filename>scripts/lib/mic/pluginbase.py</filename>) and
+	      the plugin file containing it is added to
+	      <filename>scripts/lib/mic/plugins/source/</filename> to
+	      make the plugin implementation available to the
+	      <filename>wic</filename> implementation.
+            </para>
+
+            <para>
+	      Source plugins can also be implemented and added by
+	      external layers - any plugins found in a
+	      <filename>scripts/lib/mic/plugins/source/</filename>
+	      directory in an external layer will also be made
+	      available.
+            </para>
+
+            <para>
+	      When the <filename>wic</filename> implementation needs
+	      to invoke a partition-specific implementation, it looks
+	      for the plugin that has the same name as the
+	      <filename>--source</filename> param given to that
+	      partition.  For example, if the partition is set up like
+	      this:
+            </para>
+
+            <para>
+                <literallayout class='monospaced'>
+     part /boot --source bootimg-pcbios   ...
+                </literallayout>
+            </para>
+
+            <para>
+	      then the methods defined as class members of the plugin
+	      having the matching <filename>bootimg-pcbios
+	      .name</filename> class member would be used.
+            </para>
+
+            <para>
+	      To be more concrete, here's the plugin definition that
+	      would match a <filename>'--source
+	      bootimg-pcbios'</filename> usage, along with an example
+	      method that would be called by the
+	      <filename>wic</filename> implementation when it needed
+	      to invoke an implementation-specific
+	      partition-preparation function:
+            </para>
+
+            <para>
+                <literallayout class='monospaced'>
+    class BootimgPcbiosPlugin(SourcePlugin):
+        name = 'bootimg-pcbios'
+
+    @classmethod
+        def do_prepare_partition(self, part, ...)
+                </literallayout>
+            </para>
+
+            <para>
+	      If the subclass itself doesn't implement a function, a
+	      'default' version in a superclass will be located and
+	      used, which is why all plugins must be derived from
+	      <filename>SourcePlugin</filename>.
+            </para>
+
+            <para>
+	      The <filename>SourcePlugin</filename> class defines the
+	      following methods, which is the current set of methods
+	      that can be implemented/overridden by
+	      <filename>--source</filename> plugins.  Any methods not
+	      implemented by a <filename>SourcePlugin</filename>
+	      subclass inherit the implementations present in the
+	      <filename>SourcePlugin</filename> class (see the
+	      <filename>SourcePlugin</filename> source for details):
+            </para>
+
+            <para>
+            <itemizedlist>
+                <listitem><para><emphasis><filename>do_prepare_partition()</filename>:</emphasis>
+                Called to do the actual content population for a
+                partition.  In other words, it 'prepares' the final
+                partition image which will be incorporated into the
+                disk image.  </para></listitem>
+
+                <listitem><para><emphasis><filename>do_configure_partition()</filename>:</emphasis>
+                Called before
+                <filename>do_prepare_partition()</filename>, typically
+                used to create custom configuration files for a
+                partition, for example syslinux or grub config files.
+                </para></listitem>
+
+                <listitem><para><emphasis><filename>do_install_disk()</filename>:</emphasis>
+                Called after all partitions have been prepared and
+                assembled into a disk image.  This provides a hook to
+                allow finalization of a disk image, for example to
+                write an MBR to it.  </para></listitem>
+
+                <listitem><para><emphasis><filename>do_stage_partition()</filename>:</emphasis>
+                Special content-staging hook called before
+                <filename>do_prepare_partition()</filename>, normally
+                empty.
+                <para>
+		  Typically, a partition will just use the passed-in
+		  parameters, for example the unmodified value of
+		  <filename>bootimg_dir</filename>.  In some cases,
+		  however, things may need to be more tailored.  As an
+		  example, certain files may additionally need to be
+		  taken from <filename>bootimg_dir + /boot</filename>.
+		  This hook allows those files to be staged in a
+		  customized fashion.  Note that
+		  <filename>get_bitbake_var()</filename> allows you to
+		  access non-standard variables that you might want to
+		  use for this.
+		</para>
+		</para></listitem>
+             </itemizedlist>
+            </para>
+
+            <para>
+	      This scheme is extensible - adding more hooks is a
+	      simple matter of adding more plugin methods to
+	      <filename>SourcePlugin</filename> and derived classes.
+	      The code that then needs to call the plugin methods uses
+	      <filename>plugin.get_source_plugin_methods()</filename>
+	      to find the method(s) needed by the call; this is done
+	      by filling up a dict with keys containing the method
+	      names of interest - on success, these will be filled in
+	      with the actual methods. Please see the implementation
+	      for examples and details.
+            </para>
+        </section>
+
         <section id='openembedded-kickstart-wks-reference'>
             <title>OpenEmbedded Kickstart (.wks) Reference</title>
 
-- 
1.8.3.1


