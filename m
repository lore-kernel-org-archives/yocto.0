Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F40E4E01549
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:01:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2013 10:59:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="311864276"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2013 11:01:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Apr 2013 19:01:22 +0100
Message-Id: <bd94019c0f72860f531f55f4226fa5514723ea85.1365011998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH 2/5] ref-manual: add info on buildhistory SRCREV value collection
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
X-List-Received-Date: Wed, 03 Apr 2013 18:01:38 -0000

Buildhistory now collects information on SRCREV values for recipes
fetched from a version control system e.g. Git; additionally a
buildhistory-collect-srcrevs tool is provided to gather this and
convert it to a format suitable for inclusion in global configuration.
Add information on these new features to the appropriate section.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/ref-manual/usingpoky.xml |   52 ++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-manual/usingpoky.xml
index c8bee36..101411c 100644
--- a/documentation/ref-manual/usingpoky.xml
+++ b/documentation/ref-manual/usingpoky.xml
@@ -545,6 +545,58 @@
         busybox-staticdev busybox-locale
                 </literallayout>
             </para>
+
+            <para>
+                Finally, for those recipes that are fetched from a version control
+                system (such as Git) there is a file that lists the source revision(s)
+                specified in the recipe and the actual revision used when building
+                (which may be different when <filename>SRCREV</filename> is set to
+                <filename>${AUTOREV}</filename> for example). Here is an example
+                of one of these files:
+                <filename>buildhistory/packages/emenlow-poky-linux/linux-yocto/latest_srcrev</filename>):
+                <literallayout class='monospaced'>
+     # SRCREV_machine = "b5c37fe6e24eec194bb29d22fdd55d73bcc709bf"
+     SRCREV_machine = "b5c37fe6e24eec194bb29d22fdd55d73bcc709bf"
+     # SRCREV_emgd = "caea08c988e0f41103bbe18eafca20348f95da02"
+     SRCREV_emgd = "caea08c988e0f41103bbe18eafca20348f95da02"
+     # SRCREV_meta = "c2ed0f16fdec628242a682897d5d86df4547cf24"
+     SRCREV_meta = "c2ed0f16fdec628242a682897d5d86df4547cf24"
+                </literallayout>
+                You can use the <filename>buildhistory-collect-srcrevs</filename>
+                command to collect the stored <filename>SRCREV</filename> values
+                from build history and report them in a format suitable for use in
+                global configuration (for example, local.conf or a distro include
+                file) to override floating AUTOREV values to a fixed set of revisions.
+                Here is some example output from this command:
+                <literallayout class='monospaced'>
+     # emenlow-poky-linux
+     SRCREV_machine_pn-linux-yocto = "b5c37fe6e24eec194bb29d22fdd55d73bcc709bf"
+     SRCREV_emgd_pn-linux-yocto = "caea08c988e0f41103bbe18eafca20348f95da02"
+     SRCREV_meta_pn-linux-yocto = "c2ed0f16fdec628242a682897d5d86df4547cf24"
+     # core2-poky-linux
+     SRCREV_pn-kmod = "62081c0f68905b22f375156d4532fd37fa5c8d33"
+     SRCREV_pn-blktrace = "d6918c8832793b4205ed3bfede78c2f915c23385"
+     SRCREV_pn-opkg = "649"
+                </literallayout>
+                Some notes on using the <filename>buildhistory-collect-srcrevs</filename>
+                command:
+                <itemizedlist>
+                    <listitem><para>By default only values where the SRCREV was
+                        not hardcoded (usually when AUTOREV was used) are reported
+                        - use the <filename>-a</filename> option to see all SRCREV
+                        values.</para></listitem>
+                    <listitem><para>The output statements may not have any effect
+                        in the face of overrides applied elsewhere in the build system
+                        configuration; use the <filename>-f</filename> option to add the
+                        <filename>forcevariable</filename> override to each output line
+                        if you need to work around this.</para></listitem>
+                    <listitem><para>The script does not do any special handling for
+                        building for multiple machines; however it does place a
+                        comment before each set of values specifying which triplet
+                        (for example <filename>emenlow-poky-linux</filename>) that they
+                        belong to as shown above.</para></listitem>
+                </itemizedlist>
+            </para>
         </section>
 
         <section id='build-history-image-information'>
-- 
1.7.10.4


