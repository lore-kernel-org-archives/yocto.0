Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF32FE00AC0; Thu, 23 Feb 2017 09:45:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D62CE00924
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 09:44:59 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20170223174458004_0685;
	Thu, 23 Feb 2017 09:44:58 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=23426 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cgxRj-0004av-NA; Thu, 23 Feb 2017 12:44:51 -0500
Date: Thu, 23 Feb 2017 12:44:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1702231240090.25959@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Darren Hart <darren.hart@intel.com>
Subject: [PATCH v2] yocto-docs: kernel-dev, Aesthetic/formatting/clarification fixes
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
X-List-Received-Date: Thu, 23 Feb 2017 17:45:02 -0000
Content-Type: text/plain; charset=US-ASCII


A variety of tweaks to kernel-dev manual, section
kernel-dev-common.xml, which include:

* adding extra text in places to clarify possibly ambiguous content
* some formatting changes related to font and overly long lines
* update some old version numbers that don't even exist anymore

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index a9aafd3..cb186c9 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -25,10 +25,10 @@
             If you are going to be modifying kernel recipes, it is recommended
             that you create and prepare your own layer in which to do your
             work.
-            Your layer contains its own
+            Your layer would typically contain its own
             <ulink url='&YOCTO_DOCS_DEV_URL;#bitbake-term'>BitBake</ulink>
             append files
-            (<filename>.bbappend</filename>) and provides a convenient
+            (<filename>.bbappend</filename>) and would provide a convenient
             mechanism to create your own recipe files
             (<filename>.bb</filename>).
             For details on how to create and work with layers, see the following
@@ -59,9 +59,9 @@
         <para>
             Modifying an existing recipe can consist of the following:
             <itemizedlist>
-                <listitem><para>Creating the append file</para></listitem>
-                <listitem><para>Applying patches</para></listitem>
-                <listitem><para>Changing the configuration</para></listitem>
+                <listitem><para>Creating an append file</para></listitem>
+                <listitem><para>Applying some local patches</para></listitem>
+                <listitem><para>Changing the kernel configuration</para></listitem>
             </itemizedlist>
         </para>

@@ -81,14 +81,14 @@

             <para>
                 You create this file in your custom layer.
-                You also name it accordingly based on the linux-yocto recipe
-                you are using.
+                You also name it accordingly based on the version of the
+                linux-yocto recipe you are modifying.
                 For example, if you are modifying the
-                <filename>meta/recipes-kernel/linux/linux-yocto_3.19.bb</filename>
-                recipe, the append file will typically be located as follows
-                within your custom layer:
+                <filename>meta/recipes-kernel/linux/linux-yocto_4.4.bb</filename>
+                recipe, the corresponding append file will typically be located
+                as follows within your custom layer:
                 <literallayout class='monospaced'>
-     <replaceable>your-layer</replaceable>/recipes-kernel/linux/linux-yocto_3.19.bbappend
+     <replaceable>your-layer</replaceable>/recipes-kernel/linux/linux-yocto_4.4.bbappend
                 </literallayout>
                 The append file should initially extend the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-FILESPATH'><filename>FILESPATH</filename></ulink>
@@ -133,12 +133,14 @@

             <para>
                 For example, you can apply a three-patch series by adding the
-                following lines to your linux-yocto
-                <filename>.bbappend</filename> file in your layer:
+                following lines to the linux-yocto
+                <filename>.bbappend</filename> file in your custom layer:
                 <literallayout class='monospaced'>
-     SRC_URI += "file://0001-first-change.patch"
-     SRC_URI += "file://0002-second-change.patch"
-     SRC_URI += "file://0003-third-change.patch"
+     SRC_URI += " \
+                file://0001-first-change.patch \
+                file://0002-second-change.patch \
+                file://0003-third-change.patch \
+                "
                 </literallayout>
                 The next time you run BitBake to build the Linux kernel,
                 BitBake detects the change in the recipe and fetches and
@@ -158,11 +160,12 @@
             <para>
                 You can make wholesale or incremental changes to the final
                 <filename>.config</filename> file used for the eventual
-                Linux kernel configuration by including a
-                <filename>defconfig</filename> file and by specifying
+                Linux kernel configuration by including a local
+                <filename>defconfig</filename> file, as well as by specifying
                 configuration fragments in the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink>
-                to be applied to that file.
+                to be applied to the configuration defined by that
+                <filename>defconfig</filename> file.
             </para>

             <para>
@@ -204,10 +207,10 @@

             <para>
                 Generally speaking, the preferred approach is to determine the
-                incremental change you want to make and add that as a
-                configuration fragment.
-                For example, if you want to add support for a basic serial
-                console, create a file named <filename>8250.cfg</filename> in
+                incremental changes you want to make and add each of those changes
+                using a separate configuration fragment.
+                For example, if you want to add support for a basic (8250 UART-based) serial
+                console, create a file named, for example, <filename>8250.cfg</filename> in
                 the <filename>${PN}</filename> directory with the following
                 content (without indentation):
                 <literallayout class='monospaced'>
@@ -219,7 +222,7 @@
      CONFIG_SERIAL_CORE=y
      CONFIG_SERIAL_CORE_CONSOLE=y
                 </literallayout>
-                Next, include this configuration fragment and extend the
+                Next, include this configuration fragment and (as before) extend the
                 <filename>FILESPATH</filename> variable in your
                 <filename>.bbappend</filename> file:
                 <literallayout class='monospaced'>
@@ -231,6 +234,17 @@
                 new configuration before building the kernel.
             </para>

+            <note>
+                Depending on the kernel config fragment you are adding, it might not be
+                necessary to specify every single setting related to what you want.
+                For instance, in the above example, once you select
+                <varname>CONFIG_SERIAL_8250=y</varname>, some of the subsequent config
+                settings might be set based on default values in the kernel's
+                corresponding <varname>Kconfig</varname>
+                file. However, some developers prefer to list everything related to
+                the selected feature for the sake of completeness and clarity.
+            </note>
+
             <para>
                 For a detailed example showing how to configure the kernel,
                 see the
@@ -270,7 +284,7 @@
                 edit the recipe that builds your kernel so that it has the
                 following command form:
                 <literallayout class='monospaced'>
-     KBUILD_DEFCONFIG_KMACHINE ?= <replaceable>defconfig_file</replaceable>
+     KBUILD_DEFCONFIG_<replaceable>KMACHINE</replaceable> ?= <replaceable>defconfig_file</replaceable>
                 </literallayout>
                 You need to append the variable with
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-KMACHINE'><filename>KMACHINE</filename></ulink>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


