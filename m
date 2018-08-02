Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35B7DE00948; Thu,  2 Aug 2018 02:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8A55E00848
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2018 02:34:45 -0700 (PDT)
Received: by mail-pl0-f66.google.com with SMTP id ba4-v6so754327plb.11
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2018 02:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:from:to:cc:subject:mime-version
	:content-transfer-encoding;
	bh=Nm6gEhiYQdx/ZD4QsORr6VyhM+NEYaNIbb3b5gtisUU=;
	b=P+DHke2VJO08cMZhd09SfyD/TnoQVYprZH2MfbN4/AWyr7mdTor0x9V+Cuc5X2cl/V
	2FVVimTsqQ2hnmxGlt+q+Hq+WTxbRLmYgOFkL16LHCYVYy8jQ3mZtWtdV1MyKHyonov0
	twuoV0EmXeAW5IvlFnAl91d7PfJb11YaOl1ExvJMcL7HDErxDHrPAI9ItEiKZKFEo+as
	nZlLd4mRbuqc3zsC1ngzqIUMkC8SZQ5UqzbHD06/xc9I7w3o7FuV3ILSqG6+/8dYWans
	P2G6uiHyjL2Qm+UUN0Irc7fxWz4yM9QT5qRbH9vym3X3zijJZAWArxzG8MLTKxU/AecJ
	1t2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:from:to:cc:subject:mime-version
	:content-transfer-encoding;
	bh=Nm6gEhiYQdx/ZD4QsORr6VyhM+NEYaNIbb3b5gtisUU=;
	b=rOzQ1OhqltcK+1HxnwxutLd31L5L+lESB13KSMH+qmPahu/xoe19EXMQUywdJcaDPl
	iyKako8jpFC+cL/3HQbqSgdbhcyohzUHND86QOxk4CoTm1k+pIW3A5qqxfivu2tkNyBl
	IeSUJaPzWKhfcVVpquMFgWyR9hd03A3JEuWvE0klPk0uuJ3jAqu27PwdY0skyNwXu/Cu
	Pu2VkV2yif7j/fKqp5vi89g441w/Shs1cNOzVtNvhBEimqc0dLsMbe3iOJRu69rGIqK1
	JwbJ0x9O4AECDb6xn4Ydof3Z3rBu5vg6qjPmA1b+/5sg0lgu5C7gVQ77NvJWKVGfb3LL
	UCRw==
X-Gm-Message-State: AOUpUlHeVgdNt1aNGIa1xW+0RNegWX/Fe87Bvvox1MJqtI84C5TC5srV
	thvrkyuEehH3BUeRNjflZhtfR90xFqs=
X-Google-Smtp-Source: AAOMgpdgLSik4sbXCKo6L2LiTETQqd98gvxeu4oCylsHxj+sSlJ8tc8ocCGwSrQRaCd04W9wV7z7IQ==
X-Received: by 2002:a17:902:48c8:: with SMTP id
	u8-v6mr1723987plh.152.1533202485133; 
	Thu, 02 Aug 2018 02:34:45 -0700 (PDT)
Received: from [127.0.1.1] ([101.184.120.183])
	by smtp.gmail.com with ESMTPSA id
	n86-v6sm2322962pfj.68.2018.08.02.02.34.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Aug 2018 02:34:44 -0700 (PDT)
Date: Thu, 02 Aug 2018 19:34:35 +1000
Message-Id: <20180802093435.17849-1-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: [yocto-docs][RFC PATCH 1/2] ref-manual: Added devicetree to the Classes section
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
X-List-Received-Date: Thu, 02 Aug 2018 09:34:46 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Add the devicetree class to the classes section of the ref-manual. This
section covers the details around how the devicetree class works and how
to use.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
This change includes documentation about the devicetree class which is
not yet in oe-core. As such this documentation is just an RFC in order
to get feedback for when the changes are included in oe-core.

The oe-core patch for the devicetree class can be found here:
  https://patchwork.openembedded.org/patch/153268/
---
 documentation/ref-manual/ref-classes.xml | 49 ++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 77f21ede79..ea3704b7fb 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -631,6 +631,55 @@
     </para>
 </section>
 
+<section id='ref-classes-devicetree'>
+    <title><filename>devicetree.bbclass</filename></title>
+
+    <para>
+        The <filename>devicetree</filename> class handles the compilation,
+        preprocessing, installation and deployment of device trees and device
+        tree overlays.
+        Recipes inheriting this class should provide the device tree sources
+        in the <link linkend='var-S'><filename>S</filename></link> directory
+        or otherwise modify the variable <filename>DT_FILES_PATH</filename>
+        to specify the location of device tree files.
+    </para>
+
+    <para>
+        By default inheriting this class will cause the recipe to be
+        incompatible with any machine.
+        When using this class ensure to setup correct
+        <link linkend='var-COMPATIBLE_MACHINE'><filename>COMPATIBLE_MACHINE</filename></link>
+        values that correspond to the machine/BSP supported by the device tree
+        sources of the recipe.
+    </para>
+
+    <para>
+        This class will depends on the kernel sources to allow for inclusion
+        within device tree sources.
+        These source can be included in device tree sources using the
+        "<filename>/include/</filename>" or "<filename>#include</filename>"
+        directives.
+        The default include paths from the kernel are:
+        <itemizedlist>
+            <listitem><filename>${STAGING_KERNEL_DIR}/arch/${ARCH}/boot/dts</filename></listitem>
+            <listitem><filename>${STAGING_KERNEL_DIR}/arch/${ARCH}/boot/dts/*</filename></listitem>
+            <listitem><filename>${STAGING_KERNEL_DIR}/scripts/dtc/include-prefixes</filename></listitem>
+        </itemizedlist>
+    </para>
+
+    <para>
+        These directories are set in the <filename>KERNEL_INCLUDE</filename>
+        variable (globbing in paths is expanded at compile time).
+        When this variable is set the recipe will depend on the kernel, to
+        disable this dependency empty the <filename>KERNEL_INCLUDE</filename>
+        variable.
+        <note>
+            Due to the inclusion of the kernel sources, this class defaults to
+            setting the license as <filename>GPLv2</filename>.
+        </note>
+    </para>
+</section>
+
 <section id='ref-classes-devshell'>
     <title><filename>devshell.bbclass</filename></title>
 
-- 
2.18.0


