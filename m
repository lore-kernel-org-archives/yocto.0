Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16915E0096A; Thu,  2 Aug 2018 02:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B07A1E00AC8
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2018 02:34:50 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id y10-v6so974818pfn.8
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2018 02:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=Pdl5SvaihgZXF/p0lsbml9dqcOmDaM+RtzDokEJ0WNc=;
	b=HiL1KK5QP07ZO+gJu/wB8pIL1VQYyEGb1x7H3uMbeW+RYt9A71GxRh5WC8j5s4I5HT
	bGG9Zhg2CkX3BqWRu4KYRg4U85mGzJyagTdzHpqKhdvRZacHoQJExwegEx2qj+QOzRE2
	BzG+DiNIX8AB/rEeltFhCIixzcrjJ8EsFk8MjdUwak+09ACnkbiKsEQiAvqtOowKli8R
	16udiBlTQWh7t6AqkiJNELsq0R0Xn1gE+K18B4Lv1YGczqBXxr+UnnD53yDWaLYAGWSX
	aXqTv+OTX4qMRzvvEiTTqMuSrvndH8wg88BdVHKXgR89LetYwJRce++VdosEEeRvOz6O
	fHrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=Pdl5SvaihgZXF/p0lsbml9dqcOmDaM+RtzDokEJ0WNc=;
	b=VEWBrovjIoG3vPddA5mzuYfESjicKAwo5+d77vt5aQJg9dyxIO/nJMJSibztkABfvq
	e6vbR6HpY0Hsz9tdIsCTomk77bcGjS50wssyP1p7u64IBid9wyKrLZNpHNYouPEDPu33
	FZkigdqjDuAk/vchelRhBcAS0ORiLmE7+kPzuyDatxUKAqfjoqHaz7QoCksbV8lRyQ2C
	YOJ4/u0c6C6aZSaLUhRqoj7lm05FlNChdt8WZP2bktJmaKp8qKis1jamFZ/nv83Ijzqv
	tTTXlMqmtxl7BgOXTsddc3GZR0E5151udp6SyuCk3GsJT8F2iJQbDJ9bW1ouo+v96YsJ
	1RLA==
X-Gm-Message-State: AOUpUlHsdcgNoSJyw8ShMjRCQBE08dgrPmxiw7qTno+S9tfglaYnjm8s
	AxX2dAJ6WA1bHAQPr87chCTu/V5khbA=
X-Google-Smtp-Source: AAOMgpdwD5MdztYe4lDtShuRD8FNXvTBQse3QF8kvZYlRvzMULgrcqDtY3BX0FRq7RK2uLJOzhsOnw==
X-Received: by 2002:a62:b20c:: with SMTP id
	x12-v6mr2184173pfe.64.1533202490022; 
	Thu, 02 Aug 2018 02:34:50 -0700 (PDT)
Received: from [127.0.1.1] ([101.184.120.183])
	by smtp.gmail.com with ESMTPSA id
	x25-v6sm1402670pgv.63.2018.08.02.02.34.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Aug 2018 02:34:49 -0700 (PDT)
Date: Thu, 02 Aug 2018 19:34:35 +1000
Message-Id: <20180802093435.17849-2-nathan@nathanrossi.com>
In-Reply-To: <20180802093435.17849-1-nathan@nathanrossi.com>
References: <20180802093435.17849-1-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: [yocto-docs][RFC PATCH 2/2] bsp-guide: Add "BSP Device Tree Examples" section
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
X-List-Received-Date: Thu, 02 Aug 2018 09:34:57 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Add the "BSP Device Tree Examples" section and sub-sections for
documenting the two options for compiling device trees that are part of
the meta layer. These sections cover examples for the beaglebone-yocto
machine, as well as providing some information around reasons to use one
method over the other or in conjunction with the other.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
This change includes documentation about the devicetree class which is
not yet in oe-core. As such this documentation is just an RFC in order
to get feedback for when the changes are included in oe-core.

The oe-core patch for the devicetree class can be found here:
  https://patchwork.openembedded.org/patch/153268/
---
 documentation/bsp-guide/bsp.xml | 168 ++++++++++++++++++++++++++++++++
 1 file changed, 168 insertions(+)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 0bb0b68ab2..2244cdee59 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -2265,5 +2265,173 @@
             </itemizedlist>
         </para>
     </section>
+
+    <section id='bsp-device-tree-example'>
+        <title>BSP Device Tree Examples</title>
+
+        <para>
+            Certain BSPs (like the BeagleBone) require device tree
+            configuration.
+            There are two common configuration mechanisms to enable
+            compilation and deployment of device trees (and/or
+            overlays).
+            These following configurations for device tree compilation
+            are not mutually exclusive, depending on the BSP both can be
+            used to achieve one or more desired device tree configurations.
+        </para>
+
+        <section id='bsp-device-tree-kernel-example'>
+            <title>BSP Kernel Device Tree Example</title>
+
+            <para>
+                It is common for machines to have their device tree sources
+                maintained in the kernel sources.
+                In order to build these device trees during the kernel build
+                the make targets (e.g. <filename>am335x-bone.dtb</filename>)
+                for the desired device trees should be set in the variable
+                <ulink url='&YOCTO_DOCS_REF_URL;#var-KERNEL_DEVICETREE'><filename>KERNEL_DEVICETREE</filename></ulink>,
+                multiple targets can be set with spaces seperating the target
+                names.
+                For details on how and where to specify this variable see the
+                previous section
+                "<ulink url='&YOCTO_DOCS_BSP_URL;#bsp-machine-configuration-example'>BSP Machine Configuration Example</ulink>".
+            </para>
+
+            <para>
+                The device trees located in the kernel sources are within the
+                <filename>arch/<replaceable>architecture</replaceable>/boot/dts</filename>
+                and or
+                <filename>arch/<replaceable>architecture</replaceable>/boot/dts/<replaceable>vendor</replaceable></filename>
+                directories.
+                Depending on the kernel recipe used the sources will vary and
+                as such the supported/available device trees will differ.
+                This is a limitation of using device trees located in the
+                kernel sources.
+                For custom BSPs this setup may be desired such that the device
+                tree for the custom board can be maintained as patches to the
+                kernel or as part of a forked kernel tree.
+            </para>
+
+            <para>
+                To add device trees for custom BSPs or where the device tree
+                sources are not already located in the kernel source, the
+                target kernel recipe needs to be appended or modified.
+                For more details on how to modify existing recipes and
+                patching the kernel sources see the
+                "<ulink url='&YOCTO_DOCS_KERNEL_DEV_URL;#modifying-an-existing-recipe'>Modifying an Existing Recipe</ulink>".
+            </para>
+        </section>
+
+        <section id='bsp-device-tree-recipe-example'>
+            <title>BSP Device Tree Recipe Example</title>
+
+            <para>
+                BSPs vary greatly is scope, relying on device tree sources
+                being in the kernel sources may be undesired.
+                The
+                <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-devicetree'><filename>devicetree</filename></ulink>
+                class allows for compiling of device tree sources from any
+                location that bitbake can fetch.
+            </para>
+
+            <para>
+                To setup the compilation of device tree sources create a BSP
+                specific recipe.
+                For more details on how to create recipes see the section
+                "<ulink url='&YOCTO_DOCS_DEV_URL;#new-recipe-writing-a-new-recipe'>Writing a New Recipe</ulink>".
+                Inheriting the
+                <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-devicetree'><filename>devicetree</filename></ulink>
+                class provides all the setup for compilation, preprocessing as
+                well as providing kernel includes.
+                This compilation and preprocessing allows for the sources to be
+                processed like kernel device trees, where a device tree may use
+                C style preprocessor directives (e.g.
+                <filename>#include</filename>).
+                Define the source device tree location, in the following
+                example the source is provided as a file in the layer within
+                the "<filename>files/</filename>" subdirectory.
+            </para>
+
+            <literallayout class='monospaced'>
+     inherit devicetree
+
+     COMPATIBLE_MACHINE = "beaglebone-yocto"
+     SRC_URI = "file://beaglebone-uart4.dts"
+            </literallayout>
+
+            <para>
+                The following is the source device tree, located under
+                <filename>files/beaglebone-uart4.dts</filename>.
+            </para>
+
+            <literallayout class='monospaced'>
+     #include "am335x-bone.dts"
+
+     &amp;am33xx_pinmux {
+         bb_uart4_pins: pinmux_bb_uart4_pins {
+             pinctrl-single,pins =
+                 &lt;0x070 (PIN_INPUT | MUX_MODE6)&gt;, /* P9.11 uart4 rx */
+                 &lt;0x074 (PIN_OUTPUT | MUX_MODE6)&gt;; /* P9.13 uart4 tx */
+         };
+     };
+
+     &amp;uart4 {
+         status = "okay";
+         pinctrl-names = "default";
+         pinctrl-0 = &lt;&amp;bb_uart4_pins&gt;;
+     };
+            </literallayout>
+
+            <para>
+                The
+                <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-devicetree'><filename>devicetree</filename></ulink>
+                class can also handle the compilation of device tree overlays.
+                Overlay <filename>.dts</filename> files are determined to be
+                overlays based on the use of "<filename>/plugin/;</filename>".
+                The previous example of enabling UART 4 for the BeagleBone can
+                be configured as an overlay, the following example shows the
+                equivalent configuration for the BeagleBone to enable UART 4.
+            </para>
+
+            <para>
+                The following is the source device tree overlay, located
+                within the layer under
+                <filename>files/beaglebone-uart4.dts</filename>
+                within the recipes directory.
+            </para>
+
+            <literallayout class='monospaced'>
+     /dts-v1/;
+     /plugin/;
+     #include &lt;dt-bindings/pinctrl/am33xx.h&gt;
+     / {
+         compatible = "ti,beaglebone", "ti,beaglebone-black";
+         part-number = "BB-UART4";
+         version = "00A0";
+         exclusive-user = "P9.11", "P9.13", "uart4";
+
+         fragment@0 {
+             target = &lt;&amp;am33xx_pinmux&gt;;
+             __overlay__ {
+                 bb_uart4_pins: pinmux_bb_uart4_pins {
+                     pinctrl-single,pins =
+                         &lt;0x070 (PIN_INPUT | MUX_MODE6)&gt;, /* P9.11 uart4 rx */
+                         &lt;0x074 (PIN_OUTPUT | MUX_MODE6)&gt;; /* P9.13 uart4 tx */
+                 };
+             };
+         };
+
+         fragment@1 {
+             target = &lt;&amp;uart4&gt;;
+             __overlay__ {
+                 status = "okay";
+                 pinctrl-name = "default";
+                 pinctrl-0 = &lt;&amp;bb_uart4_pins&gt;;
+             };
+         };
+     };
+            </literallayout>
+        </section>
+    </section>
 </section>
 </chapter>
-- 
2.18.0


