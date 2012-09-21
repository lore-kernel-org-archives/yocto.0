Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59BFAE0146C
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:19 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 3A870400BF;
	Fri, 21 Sep 2012 16:14:22 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:14 +0200
Message-Id: <f38b0f34760e7e4f2c5d763312556f71ce22e620.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <189774938701dd53ab4e39c670fc4f29efa05b4a.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
	<a0c94f0bfa5700e9382e1e428882072194cf0f8b.1348237278.git.timo.mueller@bmw-carit.de>
	<e54e964c8a543085f2dda9c9efb1a85dbfccbe36.1348237278.git.timo.mueller@bmw-carit.de>
	<ebdad753255f5205130a2ab8ff3d0d326c33ac53.1348237278.git.timo.mueller@bmw-carit.de>
	<020c6213dadc157b2d47f4d99db197c3ded6e90b.1348237278.git.timo.mueller@bmw-carit.de>
	<33b736ffaca72740bedf1b1415b11a8f653fa5ba.1348237278.git.timo.mueller@bmw-carit.de>
	<08c85c21ce236477ddc53176fa1a961881aba94c.1348237278.git.timo.mueller@bmw-carit.de>
	<fe14d23342130dc08b2ac62a6c5a85e631708a60.1348237278.git.timo.mueller@bmw-carit.de>
	<03c0d71b47602996c71b78504e5d82a3631ded7c.1348237278.git.timo.mueller@bmw-carit.de>
	<08aec6333c442016c5274f0dff8b9529dd10fbec.1348237278.git.timo.mueller@bmw-carit.de>
	<189774938701dd53ab4e39c670fc4f29efa05b4a.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 11/12] plugins/sdk.doc.user: Added bsp guide
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The Yocto Project Board Support Package (BSP) Developer's Guide is
integrated into the eclipse help. This includes the generated html
files as well as a table of contents that is needed by the eclipse
help center to allow the user to navigate the contents.

Source: git://git.yoctoproject.org/yocto-docs/
---
 plugins/org.yocto.sdk.doc.user/about.html          |   22 +++
 plugins/org.yocto.sdk.doc.user/bsp-guide-toc.xml   |   28 +++
 plugins/org.yocto.sdk.doc.user/build.properties    |    6 +-
 .../html/bsp-guide/bsp-filelayout-binary.html      |   40 ++++
 .../html/bsp-guide/bsp-filelayout-kernel.html      |  188 +++++++++++++++++++
 .../html/bsp-guide/bsp-filelayout-layer.html       |   65 +++++++
 .../html/bsp-guide/bsp-filelayout-license.html     |   34 ++++
 .../html/bsp-guide/bsp-filelayout-machine.html     |   79 ++++++++
 .../bsp-guide/bsp-filelayout-misc-recipes.html     |   56 ++++++
 .../bsp-guide/bsp-filelayout-readme-sources.html   |   31 ++++
 .../html/bsp-guide/bsp-filelayout-readme.html      |   36 ++++
 .../bsp-guide/bsp-filelayout-recipes-graphics.html |   42 +++++
 .../html/bsp-guide/bsp-filelayout.html             |  113 ++++++++++++
 .../html/bsp-guide/bsp-layers.html                 |   71 ++++++++
 .../bsp-guide/bsp-licensing-considerations.html    |  125 +++++++++++++
 .../org.yocto.sdk.doc.user/html/bsp-guide/bsp.html |   67 +++++++
 .../html/bsp-guide/common-features.html            |  138 ++++++++++++++
 ...a-new-bsp-layer-using-the-yocto-bsp-script.html |  191 ++++++++++++++++++++
 .../bsp-guide/customizing-a-recipe-for-a-bsp.html  |   56 ++++++
 .../html/bsp-guide/figures/bsp-title.png           |  Bin 0 -> 17388 bytes
 .../html/bsp-guide/index.html                      |  130 +++++++++++++
 ...patches-and-config-items-with-yocto-kernel.html |  153 ++++++++++++++++
 .../bsp-guide/released-bsp-recommendations.html    |   58 ++++++
 .../html/bsp-guide/released-bsp-requirements.html  |  184 +++++++++++++++++++
 ...ents-and-recommendations-for-released-bsps.html |   23 +++
 .../using-the-yocto-projects-bsp-tools.html        |   29 +++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    4 +
 plugins/org.yocto.sdk.doc.user/toc.xml             |    3 +
 28 files changed, 1970 insertions(+), 2 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/bsp-guide-toc.xml
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-binary.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-layer.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-license.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-machine.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-misc-recipes.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme-sources.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-recipes-graphics.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-layers.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-licensing-considerations.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/common-features.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/creating-a-new-bsp-layer-using-the-yocto-bsp-script.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/customizing-a-recipe-for-a-bsp.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/figures/bsp-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/managing-kernel-patches-and-config-items-with-yocto-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-recommendations.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-requirements.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/requirements-and-recommendations-for-released-bsps.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/bsp-guide/using-the-yocto-projects-bsp-tools.html

diff --git a/plugins/org.yocto.sdk.doc.user/about.html b/plugins/org.yocto.sdk.doc.user/about.html
index a41e016..7ce688d 100644
--- a/plugins/org.yocto.sdk.doc.user/about.html
+++ b/plugins/org.yocto.sdk.doc.user/about.html
@@ -120,6 +120,28 @@
 			</a>
 		<br />
 			<em>Commit:</em> abc32d85a7f241766d1fcc52a251249f2172ea89
+		<br />
+		<br />
+		<strong>
+			The Yocto Project Board Support Package (BSP) Developer's Guide:
+		</strong>
+		<br />
+		<br />
+			This brief document defines a structure for BSP components. 
+			Having a commonly understood layout encourages standardization.
+		<br />
+		<br />
+			<em>License:</em>
+			<a href="http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode">
+				http://creativecommons.org/licenses/by-sa/2.0/uk/legalcode
+			</a>
+		<br />
+			<em>Source Code Repository:</em>
+			<a href="git://git.yoctoproject.org/yocto-docs">
+				git://git.yoctoproject.org/yocto-docs
+			</a>
+		<br />
+			<em>Commit:</em> abc32d85a7f241766d1fcc52a251249f2172ea89
 	</p>
 </body>
 </html>
diff --git a/plugins/org.yocto.sdk.doc.user/bsp-guide-toc.xml b/plugins/org.yocto.sdk.doc.user/bsp-guide-toc.xml
new file mode 100644
index 0000000..36ed786
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/bsp-guide-toc.xml
@@ -0,0 +1,28 @@
+<?xml version="1.0" encoding="utf-8" standalone="no"?>
+<toc label="The Yocto Project Board Support Package Developer's Guide" topic="html/bsp-guide/index.html">
+  <topic label="Board Support Packages (BSP) - Developer's Guide" href="html/bsp-guide/bsp.html">
+    <topic label="BSP Layers" href="html/bsp-guide/bsp-layers.html"/>
+    <topic label="Example Filesystem Layout" href="html/bsp-guide/bsp-filelayout.html">
+      <topic label="License Files" href="html/bsp-guide/bsp-filelayout-license.html"/>
+      <topic label="README File" href="html/bsp-guide/bsp-filelayout-readme.html"/>
+      <topic label="README.sources File" href="html/bsp-guide/bsp-filelayout-readme-sources.html"/>
+      <topic label="Pre-built User Binaries" href="html/bsp-guide/bsp-filelayout-binary.html"/>
+      <topic label="Layer Configuration File" href="html/bsp-guide/bsp-filelayout-layer.html"/>
+      <topic label="Hardware Configuration Options" href="html/bsp-guide/bsp-filelayout-machine.html"/>
+      <topic label="Miscellaneous Recipe Files" href="html/bsp-guide/bsp-filelayout-misc-recipes.html"/>
+      <topic label="Display Support Files" href="html/bsp-guide/bsp-filelayout-recipes-graphics.html"/>
+      <topic label="Linux Kernel Configuration" href="html/bsp-guide/bsp-filelayout-kernel.html"/>
+    </topic>
+    <topic label="Requirements and Recommendations for Released BSPs" href="html/bsp-guide/requirements-and-recommendations-for-released-bsps.html">
+      <topic label="Released BSP Requirements" href="html/bsp-guide/released-bsp-requirements.html"/>
+      <topic label="Released BSP Recommendations" href="html/bsp-guide/released-bsp-recommendations.html"/>
+    </topic>
+    <topic label="Customizing a Recipe for a BSP" href="html/bsp-guide/customizing-a-recipe-for-a-bsp.html"/>
+    <topic label="BSP Licensing Considerations" href="html/bsp-guide/bsp-licensing-considerations.html"/>
+    <topic label="Using the Yocto Project's BSP Tools" href="html/bsp-guide/using-the-yocto-projects-bsp-tools.html">
+      <topic label="Common Features" href="html/bsp-guide/common-features.html"/>
+      <topic label="Creating a new BSP Layer Using the yocto-bsp Script" href="html/bsp-guide/creating-a-new-bsp-layer-using-the-yocto-bsp-script.html"/>
+      <topic label="Managing Kernel Patches and Config Items with yocto-kernel" href="html/bsp-guide/managing-kernel-patches-and-config-items-with-yocto-kernel.html"/>
+    </topic>
+  </topic>
+</toc>
diff --git a/plugins/org.yocto.sdk.doc.user/build.properties b/plugins/org.yocto.sdk.doc.user/build.properties
index 3350a45..833e841 100644
--- a/plugins/org.yocto.sdk.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.doc.user/build.properties
@@ -8,11 +8,13 @@ bin.includes = plugin.xml,\
                adt-manual-toc.xml,\
                OSGI-INF/,\
                dev-manual-toc.xml,\
-               poky-ref-manual-toc.xml
+               poky-ref-manual-toc.xml,\
+               bsp-guide-toc.xml
 src.includes = toc.xml,\
                html/,\
                yocto-project-qs-toc.xml,\
                about.html,\
                adt-manual-toc.xml,\
                dev-manual-toc.xml,\
-               poky-ref-manual-toc.xml
+               poky-ref-manual-toc.xml,\
+               bsp-guide-toc.xml
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-binary.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-binary.html
new file mode 100644
index 0000000..dba9f4a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-binary.html
@@ -0,0 +1,40 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.4. Pre-built User Binaries</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-readme-sources.html" title="1.2.3. README.sources File">
+<link rel="next" href="bsp-filelayout-layer.html" title="1.2.5. Layer Configuration File">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.4. Pre-built User Binaries">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-binary"></a>1.2.4. Pre-built User Binaries</h3></div></div></div>
+<p>
+                You can find these files in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
+                </pre>
+<p>
+            </p>
+<p>
+                This optional area contains useful pre-built kernels and user-space filesystem 
+                images appropriate to the target system.
+                This directory typically contains graphical (e.g. sato) and minimal live images 
+                when the BSP tarball has been created and made available in the 
+                <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project</a> website. 
+                You can use these kernels and images to get a system running and quickly get started 
+                on development tasks.
+            </p>
+<p> 
+                The exact types of binaries present are highly hardware-dependent.
+                However, a README file should be present in the BSP Layer that explains how to use 
+                the kernels and images with the target hardware. 
+                If pre-built binaries are present, source code to meet licensing requirements must also 
+                exist in some form.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-kernel.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-kernel.html
new file mode 100644
index 0000000..d51049e
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-kernel.html
@@ -0,0 +1,188 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.9. Linux Kernel Configuration</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-recipes-graphics.html" title="1.2.8. Display Support Files">
+<link rel="next" href="requirements-and-recommendations-for-released-bsps.html" title="1.3. Requirements and Recommendations for Released BSPs">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.9. Linux Kernel Configuration">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-kernel"></a>1.2.9. Linux Kernel Configuration</h3></div></div></div>
+<p>
+                You can find these files in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto_*.bbappend
+                </pre>
+<p>
+            </p>
+<p>
+                These files append your specific changes to the main kernel recipe you are using.
+            </p>
+<p>
+                For your BSP, you typically want to use an existing Yocto Project kernel recipe found in the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a> 
+                at <code class="filename">meta/recipes-kernel/linux</code>.
+                You can append your specific changes to the kernel recipe by using a
+                similarly named append file, which is located in the BSP Layer (e.g. 
+                the <code class="filename">meta-&lt;bsp_name&gt;/recipes-kernel/linux</code> directory).
+            </p>
+<p>
+                Suppose you are using the <code class="filename">linux-yocto_3.4.bb</code> recipe to build
+                the kernel.
+                In other words, you have selected the kernel in your 
+                <code class="filename">&lt;bsp_name&gt;.conf</code> file by adding the following statements:
+                </p>
+<pre class="literallayout">
+     PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+     PREFERRED_VERSION_linux-yocto = "3.4%"
+                </pre>
+<p>
+                You would use the <code class="filename">linux-yocto_3.4.bbappend</code> file to append 
+                specific BSP settings to the kernel, thus configuring the kernel for your particular BSP.
+            </p>
+<p>
+                As an example, look at the existing Crown Bay BSP.
+                The append file used is:
+                </p>
+<pre class="literallayout">
+     meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
+                </pre>
+<p>
+                The following listing shows the file.
+                Be aware that the actual commit ID strings in this example listing might be different
+                than the actual strings in the file from the <code class="filename">meta-intel</code>
+                Git source repository.
+                </p>
+<pre class="literallayout">
+     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+     COMPATIBLE_MACHINE_crownbay = "crownbay"
+     KMACHINE_crownbay  = "crownbay"
+     KBRANCH_crownbay  = "standard/default/crownbay"
+
+     COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+     KMACHINE_crownbay-noemgd  = "crownbay"
+     KBRANCH_crownbay-noemgd  = "standard/default/crownbay"
+
+     SRCREV_machine_pn-linux-yocto_crownbay ?= "48101e609711fcfe8d5e737a37a5a69f4bd57d9a"
+     SRCREV_meta_pn-linux-yocto_crownbay ?= "5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
+
+     SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "48101e609711fcfe8d5e737a37a5a69f4bd57d9a"
+     SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
+                </pre>
+<p>
+                This append file contains statements used to support the Crown Bay BSP for both 
+                <span class="trademark">Intel</span>® EMGD and the VESA graphics.
+                The build process, in this case, recognizes and uses only the statements that 
+                apply to the defined machine name - <code class="filename">crownbay</code> in this case.
+                So, the applicable statements in the <code class="filename">linux-yocto_3.4.bbappend</code> 
+                file are follows:
+                </p>
+<pre class="literallayout">
+     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+     COMPATIBLE_MACHINE_crownbay = "crownbay"
+     KMACHINE_crownbay  = "crownbay"
+     KBRANCH_crownbay  = "standard/default/crownbay"
+
+     SRCREV_machine_pn-linux-yocto_crownbay ?= "48101e609711fcfe8d5e737a37a5a69f4bd57d9a"
+     SRCREV_meta_pn-linux-yocto_crownbay ?= "5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
+                </pre>
+<p>
+                The append file defines <code class="filename">crownbay</code> as the 
+                <a class="link" href="../poky-ref-manual/var-COMPATIBLE_MACHINE.html" target="_self"><code class="filename">COMPATIBLE_MACHINE</code></a>
+                and uses the 
+                <a class="link" href="../poky-ref-manual/var-KMACHINE.html" target="_self"><code class="filename">KMACHINE</code></a> variable to 
+                ensure the machine name used by the OpenEmbedded build system maps to the  
+                machine name used by the Linux Yocto kernel.
+                The file also uses the optional 
+                <a class="link" href="../poky-ref-manual/var-KBRANCH.html" target="_self"><code class="filename">KBRANCH</code></a> variable
+                to ensure the build process uses the <code class="filename">standard/default/crownbay</code>
+                kernel branch.
+                Finally, the append file points to the specific top commits in the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a> Git 
+                repository and the <code class="filename">meta</code> Git repository branches to identify the 
+                exact kernel needed to build the Crown Bay BSP.
+            </p>
+<p>
+                One thing missing in this particular BSP, which you will typically need when 
+                developing a BSP, is the kernel configuration file (<code class="filename">.config</code>) for your BSP.
+                When developing a BSP, you probably have a kernel configuration file or a set of kernel
+                configuration files that, when taken together, define the kernel configuration for your BSP.
+                You can accomplish this definition by putting the configurations in a file or a set of files 
+                inside a directory located at the same level as your kernel's append file and having the same 
+                name as the kernel's main recipe file.
+                With all these conditions met, simply reference those files in a 
+                <code class="filename">SRC_URI</code> statement in the append file.
+            </p>
+<p>
+                For example, suppose you had a some configuration options in a file called 
+                <code class="filename">network_configs.cfg</code>.  
+                You can place that file inside a directory named <code class="filename">/linux-yocto</code> and then add 
+                a <code class="filename">SRC_URI</code> statement such as the following to the append file.
+                When the OpenEmbedded build system builds the kernel, the configuration options are 
+                picked up and applied.
+                </p>
+<pre class="literallayout">
+     SRC_URI += "file://network_configs.cfg"
+                </pre>
+<p>
+            </p>
+<p>
+                To group related configurations into multiple files, you perform a similar procedure. 
+                Here is an example that groups separate configurations specifically for Ethernet and graphics
+                into their own files and adds the configurations
+                by using a <code class="filename">SRC_URI</code> statement like the following in your append file:
+                </p>
+<pre class="literallayout">
+     SRC_URI += "file://myconfig.cfg \
+            file://eth.cfg \
+            file://gfx.cfg"
+                </pre>
+<p>
+            </p>
+<p>
+                The <code class="filename">FILESEXTRAPATHS</code> variable is in boilerplate form in the 
+                previous example in order to make it easy to do that.
+                This variable must be in your layer or BitBake will not find the patches or 
+                configurations even if you have them in your <code class="filename">SRC_URI</code>.
+                The <code class="filename">FILESEXTRAPATHS</code> variable enables the build process to
+                find those configuration files.
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+<p>
+                    Other methods exist to accomplish grouping and defining configuration options.
+                    For example, if you are working with a local clone of the kernel repository, 
+                    you could checkout the kernel's <code class="filename">meta</code> branch, make your changes, 
+                    and then push the changes to the local bare clone of the kernel.
+                    The result is that you directly add configuration options to the  
+                    <code class="filename">meta</code> branch for your BSP.
+                    The configuration options will likely end up in that location anyway if the BSP gets 
+                    added to the Yocto Project. 
+                    For an example showing how to change the BSP configuration, see the
+                    "<a class="link" href="../dev-manual/changing-the-bsp-configuration.html" target="_self">Changing the BSP Configuration</a>" 
+                    section in the Yocto Project Development Manual.
+                    For a better understanding of working with a local clone of the kernel repository
+                    and a local bare clone of the kernel, see the
+                    "<a class="link" href="../dev-manual/modifying-the-kernel-source-code.html" target="_self">Modifying the Kernel
+                    Source Code</a>" section also in the Yocto Project Development Manual.
+                </p>
+<p>
+                    In general, however, the Yocto Project maintainers take care of moving the 
+                    <code class="filename">SRC_URI</code>-specified 
+                    configuration options to the kernel's <code class="filename">meta</code> branch.
+                    Not only is it easier for BSP developers to not have to worry about putting those 
+                   configurations in the branch, but having the maintainers do it allows them to apply 
+                    'global' knowledge about the kinds of common configuration options multiple BSPs in 
+                    the tree are typically using.  
+                    This allows for promotion of common configurations into common features.
+                </p>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-layer.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-layer.html
new file mode 100644
index 0000000..ed336f5
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-layer.html
@@ -0,0 +1,65 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.5. Layer Configuration File</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-binary.html" title="1.2.4. Pre-built User Binaries">
+<link rel="next" href="bsp-filelayout-machine.html" title="1.2.6. Hardware Configuration Options">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.5. Layer Configuration File">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-layer"></a>1.2.5. Layer Configuration File</h3></div></div></div>
+<p>
+                You can find this file in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/conf/layer.conf
+                </pre>
+<p>
+            </p>
+<p>
+                The <code class="filename">conf/layer.conf</code> file identifies the file structure as a  
+                layer, identifies the  
+                contents of the layer, and contains information about how the build
+                system should use it. 
+                Generally, a standard boilerplate file such as the following works.
+                In the following example, you would replace "<code class="filename">bsp</code>" and 
+                "<code class="filename">_bsp</code>" with the actual name
+                of the BSP (i.e. <code class="filename">&lt;bsp_name&gt;</code> from the example template).
+            </p>
+<p>
+               </p>
+<pre class="literallayout">
+     # We have a conf and classes directory, add to BBPATH
+     BBPATH := "${BBPATH}:${LAYERDIR}"
+
+     # We have a recipes directory, add to BBFILES
+     BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*.bb \
+                 ${LAYERDIR}/recipes-*/*.bbappend"
+
+     BBFILE_COLLECTIONS += "bsp"
+     BBFILE_PATTERN_bsp := "^${LAYERDIR}/"
+     BBFILE_PRIORITY_bsp = "6"
+                </pre>
+<p>
+            </p>
+<p>
+                To illustrate the string substitutions, here are the last three statements from the Crown 
+                Bay <code class="filename">conf/layer.conf</code> file:
+               </p>
+<pre class="literallayout">
+     BBFILE_COLLECTIONS += "crownbay"
+     BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
+     BBFILE_PRIORITY_crownbay = "6"
+                </pre>
+<p>
+            </p>
+<p>
+                This file simply makes BitBake aware of the recipes and configuration directories.
+                The file must exist so that the OpenEmbedded build system can recognize the BSP.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-license.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-license.html
new file mode 100644
index 0000000..79cfa8b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-license.html
@@ -0,0 +1,34 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.1. License Files</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="next" href="bsp-filelayout-readme.html" title="1.2.2. README File">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.1. License Files">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-license"></a>1.2.1. License Files</h3></div></div></div>
+<p>
+                You can find these files in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
+                </pre>
+<p>
+            </p>
+<p>
+                These optional files satisfy licensing requirements for the BSP.
+                The type or types of files here can vary depending on the licensing requirements.
+                For example, in the Crown Bay BSP all licensing requirements are handled with the 
+                <code class="filename">COPYING.MIT</code> file.  
+            </p>
+<p>
+                Licensing files can be MIT, BSD, GPLv*, and so forth.
+                These files are recommended for the BSP but are optional and totally up to the BSP developer.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-machine.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-machine.html
new file mode 100644
index 0000000..de12316
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-machine.html
@@ -0,0 +1,79 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.6. Hardware Configuration Options</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-layer.html" title="1.2.5. Layer Configuration File">
+<link rel="next" href="bsp-filelayout-misc-recipes.html" title="1.2.7. Miscellaneous Recipe Files">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.6. Hardware Configuration Options">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-machine"></a>1.2.6. Hardware Configuration Options</h3></div></div></div>
+<p>
+                You can find these files in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/conf/machine/*.conf
+                </pre>
+<p>
+            </p>
+<p>
+                The machine files bind together all the information contained elsewhere
+                in the BSP into a format that the build system can understand. 
+                If the BSP supports multiple machines, multiple machine configuration files
+                can be present. 
+                These filenames correspond to the values to which users have set the 
+                <a class="link" href="../poky-ref-manual/var-MACHINE.html" target="_self"><code class="filename">MACHINE</code></a> variable.
+            </p>
+<p>
+                These files define things such as the kernel package to use
+                (<a class="link" href="../poky-ref-manual/var-PREFERRED_PROVIDER.html" target="_self"><code class="filename">PREFERRED_PROVIDER</code></a>
+                of virtual/kernel), the hardware drivers to
+                include in different types of images, any special software components
+                that are needed, any bootloader information, and also any special image
+                format requirements.
+            </p>
+<p>
+                Each BSP Layer requires at least one machine file.
+                However, you can supply more than one file.
+                For example, in the Crown Bay BSP shown earlier in this section, the 
+                <code class="filename">conf/machine</code> directory contains two configuration files:
+                <code class="filename">crownbay.conf</code> and <code class="filename">crownbay-noemgd.conf</code>.
+                The <code class="filename">crownbay.conf</code> file is used for the Crown Bay BSP
+                that supports the <span class="trademark">Intel</span>® Embedded
+                Media and Graphics Driver (<span class="trademark">Intel</span>®
+                EMGD), while the <code class="filename">crownbay-noemgd.conf</code> file is used for the 
+                Crown Bay BSP that does not support the <span class="trademark">Intel</span>®
+                EMGD.
+            </p>
+<p>
+                This <code class="filename">crownbay.conf</code> file could also include
+                a hardware "tuning" file that is commonly used to
+                define the package architecture and specify 
+                optimization flags, which are carefully chosen to give best
+                performance on a given processor.
+            </p>
+<p>
+                Tuning files are found in the <code class="filename">meta/conf/machine/include</code>
+                directory within the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+                Tuning files can also reside in the BSP Layer itself.  
+                For example, the <code class="filename">ia32-base.inc</code> file resides in the 
+                <code class="filename">meta-intel</code> BSP Layer in <code class="filename">conf/machine/include</code>.
+            </p>
+<p>
+                To use an include file, you simply include them in the machine configuration file. 
+                For example, the Crown Bay BSP <code class="filename">crownbay.conf</code> has the 
+                following statements:
+                </p>
+<pre class="literallayout">
+     include conf/machine/include/tune-atom.inc
+     include conf/machine/include/ia32-base.inc
+                </pre>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-misc-recipes.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-misc-recipes.html
new file mode 100644
index 0000000..3f366d2
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-misc-recipes.html
@@ -0,0 +1,56 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.7. Miscellaneous Recipe Files</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-machine.html" title="1.2.6. Hardware Configuration Options">
+<link rel="next" href="bsp-filelayout-recipes-graphics.html" title="1.2.8. Display Support Files">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.7. Miscellaneous Recipe Files">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-misc-recipes"></a>1.2.7. Miscellaneous Recipe Files</h3></div></div></div>
+<p>
+                You can find these files in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/recipes-bsp/*
+                </pre>
+<p> 
+            </p>
+<p>
+                This optional directory contains miscellaneous recipe files for the BSP.
+                Most notably would be the formfactor files.
+                For example, in the Crown Bay BSP there is the 
+                <code class="filename">formfactor_0.0.bbappend</code> file, which is an append file used 
+                to augment the recipe that starts the build.  
+                Furthermore, there are machine-specific settings used during the build that are
+                defined by the <code class="filename">machconfig</code> files.
+                In the Crown Bay example, two <code class="filename">machconfig</code> files exist:
+                one that supports the 
+                <span class="trademark">Intel</span>® Embedded
+                Media and Graphics Driver (<span class="trademark">Intel</span>®
+                EMGD) and one that does not:
+                </p>
+<pre class="literallayout">
+     meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
+     meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
+     meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+                </pre>
+<p>
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+<p>
+                If a BSP does not have a formfactor entry, defaults are established according to
+                the formfactor configuration file that is installed by the main 
+                formfactor recipe 
+                <code class="filename">meta/recipes-bsp/formfactor/formfactor_0.0.bb</code>, 
+                which is found in the 
+                <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+            </p>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme-sources.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme-sources.html
new file mode 100644
index 0000000..64aff0a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme-sources.html
@@ -0,0 +1,31 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.3. README.sources File</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-readme.html" title="1.2.2. README File">
+<link rel="next" href="bsp-filelayout-binary.html" title="1.2.4. Pre-built User Binaries">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.3. README.sources File">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-readme-sources"></a>1.2.3. README.sources File</h3></div></div></div>
+<p>
+                You can find this file in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/README.sources
+                </pre>
+<p>
+            </p>
+<p>
+                This file provides information on where to locate the BSP source files.
+                For example, information provides where to find the sources that comprise
+                the images shipped with the BSP.
+                Information is also included to help you find the metadata used to generate the images
+                that ship with the BSP.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme.html
new file mode 100644
index 0000000..c657a27
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-readme.html
@@ -0,0 +1,36 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.2. README File</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-license.html" title="1.2.1. License Files">
+<link rel="next" href="bsp-filelayout-readme-sources.html" title="1.2.3. README.sources File">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.2. README File">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-readme"></a>1.2.2. README File</h3></div></div></div>
+<p>
+                You can find this file in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/README
+                </pre>
+<p>
+            </p>
+<p>
+                This file provides information on how to boot the live images that are optionally 
+                included in the <code class="filename">binary/</code> directory.
+                The <code class="filename">README</code> file also provides special information needed for 
+                building the image.
+            </p>
+<p>
+                At a minimum, the <code class="filename">README</code> file must
+                contain a list of dependencies, such as the names of
+                any other layers on which the BSP depends and the name of
+                the BSP maintainer with his or her contact information.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-recipes-graphics.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-recipes-graphics.html
new file mode 100644
index 0000000..168642e
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout-recipes-graphics.html
@@ -0,0 +1,42 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2.8. Display Support Files</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+<link rel="prev" href="bsp-filelayout-misc-recipes.html" title="1.2.7. Miscellaneous Recipe Files">
+<link rel="next" href="bsp-filelayout-kernel.html" title="1.2.9. Linux Kernel Configuration">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2.8. Display Support Files">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-filelayout-recipes-graphics"></a>1.2.8. Display Support Files</h3></div></div></div>
+<p>
+                You can find these files in the BSP Layer at:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/recipes-graphics/*            
+                </pre>
+<p>
+            </p>
+<p>
+                This optional directory contains recipes for the BSP if it has 
+                special requirements for graphics support.
+                All files that are needed for the BSP to support a display are kept here. 
+                For example, the Crown Bay BSP contains two versions of the 
+                <code class="filename">xorg.conf</code> file.
+                The version in <code class="filename">crownbay</code> builds a BSP that supports the 
+                <span class="trademark">Intel</span>® Embedded Media Graphics Driver (EMGD),
+                while the version in <code class="filename">crownbay-noemgd</code> builds 
+                a BSP that supports Video Electronics Standards Association (VESA) graphics only:
+                </p>
+<pre class="literallayout">
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf
+                </pre>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout.html
new file mode 100644
index 0000000..427c065
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-filelayout.html
@@ -0,0 +1,113 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.2. Example Filesystem Layout</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<link rel="prev" href="bsp-layers.html" title="1.1. BSP Layers">
+<link rel="next" href="bsp-filelayout-license.html" title="1.2.1. License Files">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.2. Example Filesystem Layout">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="bsp-filelayout"></a>1.2. Example Filesystem Layout</h2></div></div></div>
+<p>
+                Providing a common form allows end-users to understand and become familiar 
+                with the layout.  
+                A common format also encourages standardization of software support of hardware.
+            </p>
+<p>
+                The proposed form does have elements that are specific to the  
+                OpenEmbedded build system. 
+                It is intended that this information can be 
+                used by other build systems besides the OpenEmbedded build system 
+                and that it will be simple
+                to extract information and convert it to other formats if required.
+                The OpenEmbedded build system, through its standard layers mechanism, can directly 
+                accept the format described as a layer.
+                The BSP captures all 
+                the hardware-specific details in one place in a standard format, which is 
+                useful for any person wishing to use the hardware platform regardless of 
+                the build system they are using.
+            </p>
+<p>
+                The BSP specification does not include a build system or other tools -
+                it is concerned with the hardware-specific components only. 
+                At the end-distribution point, you can ship the BSP combined with a build system
+                and other tools. 
+                However, it is important to maintain the distinction that these
+                are separate components that happen to be combined in certain end products.
+            </p>
+<p>
+                Before looking at the common form for the file structure inside a BSP Layer, 
+                you should be aware that some requirements do exist in order for a BSP to 
+                be considered compliant with the Yocto Project.
+                For that list of requirements, see the
+                "<a class="link" href="released-bsp-requirements.html" title="1.3.1. Released BSP Requirements">Released BSP Requirements</a>"
+                section.
+            </p>
+<p>
+                Below is the common form for the file structure inside a BSP Layer.
+                While you can use this basic form for the standard, realize that the actual structures
+                for specific BSPs could differ. 
+
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;/                                
+     meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
+     meta-&lt;bsp_name&gt;/README
+     meta-&lt;bsp_name&gt;/README.sources
+     meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
+     meta-&lt;bsp_name&gt;/conf/layer.conf 
+     meta-&lt;bsp_name&gt;/conf/machine/*.conf
+     meta-&lt;bsp_name&gt;/recipes-bsp/*
+     meta-&lt;bsp_name&gt;/recipes-core/*
+     meta-&lt;bsp_name&gt;/recipes-graphics/*            
+     meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto_&lt;kernel_rev&gt;.bbappend
+                </pre>
+<p>
+            </p>
+<p>
+                Below is an example of the Crown Bay BSP:
+
+                </p>
+<pre class="literallayout">
+     meta-crownbay/COPYING.MIT
+     meta-crownbay/README
+     meta-crownbay/README.sources
+     meta-crownbay/binary/
+     meta-crownbay/conf/
+     meta-crownbay/conf/layer.conf
+     meta-crownbay/conf/machine/
+     meta-crownbay/conf/machine/crownbay.conf
+     meta-crownbay/conf/machine/crownbay-noemgd.conf
+     meta-crownbay/recipes-bsp/
+     meta-crownbay/recipes-bsp/formfactor/
+     meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+     meta-crownbay/recipes-bsp/formfactor/formfactor/
+     meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/
+     meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
+     meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/
+     meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
+     meta-crownbay/recipes-graphics/
+     meta-crownbay/recipes-graphics/xorg-xserver/
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/
+     meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf
+     meta-crownbay/recipes-kernel/
+     meta-crownbay/recipes-kernel/linux/
+     meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+     meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+     meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+                </pre>
+<p>
+            </p>
+<p>
+                The following sections describe each part of the proposed BSP format.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-layers.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-layers.html
new file mode 100644
index 0000000..25ea6b3
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-layers.html
@@ -0,0 +1,71 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1. BSP Layers</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<link rel="prev" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<link rel="next" href="bsp-filelayout.html" title="1.2. Example Filesystem Layout">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1. BSP Layers">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="bsp-layers"></a>1.1. BSP Layers</h2></div></div></div>
+<p>
+                The BSP consists of a file structure inside a base directory.
+                Collectively, you can think of the base directory and the file structure 
+                as a BSP Layer.
+                BSP Layers use the following naming convention:
+                </p>
+<pre class="literallayout">
+     meta-&lt;bsp_name&gt;
+                </pre>
+<p>
+                "bsp_name" is a placeholder for the machine or platform name.
+            </p>
+<p>
+                The layer's base directory (<code class="filename">meta-&lt;bsp_name&gt;</code>) is the root 
+                of the BSP Layer.
+                This root is what you add to the 
+                <a class="link" href="../poky-ref-manual/var-BBLAYERS.html" target="_self"><code class="filename">BBLAYERS</code></a>
+                variable in the <code class="filename">conf/bblayers.conf</code> file found in the 
+                <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+                Adding the root allows the OpenEmbedded build system to recognize the BSP 
+                definition and from it build an image.
+                Here is an example:
+                </p>
+<pre class="literallayout">
+     BBLAYERS = " \
+        /usr/local/src/yocto/meta \
+        /usr/local/src/yocto/meta-yocto \
+        /usr/local/src/yocto/meta-&lt;bsp_name&gt; \
+        "
+                </pre>
+<p>
+            </p>
+<p>
+                Some BSPs require additional layers on
+                top of the BSP's root layer in order to be functional.
+                For these cases, you also need to add those layers to the
+                <code class="filename">BBLAYERS</code> variable in order to build the BSP.  
+                You must also specify in the "Dependencies" section of the BSP's
+                <code class="filename">README</code> file any requirements for additional 
+                layers and, preferably, any
+                build instructions that might be contained elsewhere
+                in the <code class="filename">README</code> file.
+            </p>
+<p>
+                Some layers function as a layer to hold other BSP layers.
+                An example of this type of layer is the <code class="filename">meta-intel</code> layer.  
+                The <code class="filename">meta-intel</code> layer contains over 10 individual BSP layers.
+            </p>
+<p>
+                For more detailed information on layers, see the 
+                "<a class="link" href="../dev-manual/understanding-and-creating-layers.html" target="_self">Understanding and Creating Layers</a>" 
+                section of the Yocto Project Development Manual.
+                You can also see the detailed examples in the appendices of the
+                <a class="link" href="../dev-manual/index.html" target="_self">Yocto Project Development Manual</a>.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-licensing-considerations.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-licensing-considerations.html
new file mode 100644
index 0000000..871c260
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp-licensing-considerations.html
@@ -0,0 +1,125 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.5. BSP Licensing Considerations</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<link rel="prev" href="customizing-a-recipe-for-a-bsp.html" title="1.4. Customizing a Recipe for a BSP">
+<link rel="next" href="using-the-yocto-projects-bsp-tools.html" title="1.6. Using the Yocto Project's BSP Tools">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.5. BSP Licensing Considerations">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="bsp-licensing-considerations"></a>1.5. BSP Licensing Considerations</h2></div></div></div>
+<p>
+                In some cases, a BSP contains separately licensed Intellectual Property (IP)
+                for a component or components.
+                For these cases, you are required to accept the terms of a commercial or other 
+                type of license that requires some kind of explicit End User License Agreement (EULA).  
+                Once the license is accepted, the OpenEmbedded build system can then build and 
+                include the corresponding component in the final BSP image.
+                If the BSP is available as a pre-built image, you can download the image after
+                agreeing to the license or EULA.
+            </p>
+<p>
+                You could find that some separately licensed components that are essential 
+                for normal operation of the system might not have an unencumbered (or free)
+                substitute.
+                Without these essential components, the system would be non-functional.
+                Then again, you might find that other licensed components that are simply 
+                'good-to-have' or purely elective do have an unencumbered, free replacement 
+                component that you can use rather than agreeing to the separately licensed component.
+                Even for components essential to the system, you might find an unencumbered component 
+                that is not identical but will work as a less-capable version of the 
+                licensed version in the BSP recipe.
+            </p>
+<p>
+                For cases where you can substitute a free component and still
+                maintain the system's functionality, the Yocto Project website's
+                <a class="ulink" href="http://www.yoctoproject.org/download/all?keys=&amp;download_type=1&amp;download_version=" target="_self">BSP
+                Download Page</a> makes available de-featured BSPs
+                that are completely free of any IP encumbrances. 
+                For these cases, you can use the substitution directly and
+                without any further licensing requirements.  
+                If present, these fully de-featured BSPs are named appropriately
+                different as compared to the names of the respective
+                encumbered BSPs.  
+                If available, these substitutions are your
+                simplest and most preferred options.  
+                Use of these substitutions of course assumes the resulting functionality meets
+                system requirements.
+            </p>
+<p>
+                If however, a non-encumbered version is unavailable or
+                it provides unsuitable functionality or quality, you can use an encumbered
+                version.
+            </p>
+<p> 
+                A couple different methods exist within the OpenEmbedded build system to 
+                satisfy the licensing requirements for an encumbered BSP.  
+                The following list describes them in order of preference:
+	        </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem">
+<p><span class="emphasis"><em>Use the <code class="filename">LICENSE_FLAGS</code> variable
+                        to define the recipes that have commercial or other types of
+                        specially-licensed packages:</em></span>  
+                        For each of those recipes, you can 
+                        specify a matching license string in a
+                        <code class="filename">local.conf</code> variable named 
+                        <code class="filename">LICENSE_FLAGS_WHITELIST</code>.
+                        Specifying the matching license string signifies that you agree to the license.
+                        Thus, the build system can build the corresponding recipe and include 
+                        the component in the image.
+                        See the 
+                        "<a class="link" href="../poky-ref-manual/enabling-commercially-licensed-recipes.html" target="_self">Enabling 
+                        Commercially Licensed Recipes</a>" section in the Yocto Project Reference
+                        Manual for details on how to use these variables.</p>
+<p>If you build as you normally would, without
+		        specifying any recipes in the
+		        <code class="filename">LICENSE_FLAGS_WHITELIST</code>, the build stops and
+		        provides you with the list of recipes that you have
+		        tried to include in the image that need entries in
+		        the <code class="filename">LICENSE_FLAGS_WHITELIST</code>.  
+		        Once you enter the appropriate license flags into the whitelist,
+		        restart the build to continue where it left off.
+		        During the build, the prompt will not appear again
+		        since you have satisfied the requirement.</p>
+<p>Once the appropriate license flags are on the white list
+		        in the <code class="filename">LICENSE_FLAGS_WHITELIST</code> variable, you 
+		        can build the encumbered image with no change at all
+		        to the normal build process.</p>
+</li>
+<li class="listitem"><p><span class="emphasis"><em>Get a pre-built version of the BSP:</em></span>
+                        You can get this type of BSP by visiting the Yocto Project website's
+                        <a class="ulink" href="http://www.yoctoproject.org/download" target="_self">Download</a>
+                        page and clicking on "BSP Downloads".
+                        You can download BSP tarballs that contain proprietary components
+                        after agreeing to the licensing
+                        requirements of each of the individually encumbered
+                        packages as part of the download process.  
+                        Obtaining the BSP this way allows you to access an encumbered
+                        image immediately after agreeing to the
+                        click-through license agreements presented by the
+                        website.  
+                        Note that if you want to build the image
+                        yourself using the recipes contained within the BSP
+                        tarball, you will still need to create an
+                        appropriate <code class="filename">LICENSE_FLAGS_WHITELIST</code> to match the
+                        encumbered recipes in the BSP.</p></li>
+</ol></div>
+<p>
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                Pre-compiled images are bundled with
+                a time-limited kernel that runs for a
+                predetermined amount of time (10 days) before it forces
+                the system to reboot.  
+                This limitation is meant to discourage direct redistribution
+                of the image.
+                You must eventually rebuild the image if you want to remove this restriction.
+            </div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp.html
new file mode 100644
index 0000000..0d3b476
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/bsp.html
@@ -0,0 +1,67 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 1. Board Support Packages (BSP) - Developer's Guide</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="prev" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="next" href="bsp-layers.html" title="1.1. BSP Layers">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="bsp"></a>Chapter 1. Board Support Packages (BSP) - Developer's Guide</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="bsp-layers.html">1.1. BSP Layers</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout.html">1.2. Example Filesystem Layout</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="bsp-filelayout-license.html">1.2.1. License Files</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-readme.html">1.2.2. README File</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-readme-sources.html">1.2.3. README.sources File</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-binary.html">1.2.4. Pre-built User Binaries</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-layer.html">1.2.5. Layer Configuration File</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-machine.html">1.2.6. Hardware Configuration Options</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-misc-recipes.html">1.2.7. Miscellaneous Recipe Files</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-recipes-graphics.html">1.2.8. Display Support Files</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-kernel.html">1.2.9. Linux Kernel Configuration</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="requirements-and-recommendations-for-released-bsps.html">1.3. Requirements and Recommendations for Released BSPs</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="released-bsp-requirements.html">1.3.1. Released BSP Requirements</a></span></dt>
+<dt><span class="section"><a href="released-bsp-recommendations.html">1.3.2. Released BSP Recommendations</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="customizing-a-recipe-for-a-bsp.html">1.4. Customizing a Recipe for a BSP</a></span></dt>
+<dt><span class="section"><a href="bsp-licensing-considerations.html">1.5. BSP Licensing Considerations</a></span></dt>
+<dt><span class="section"><a href="using-the-yocto-projects-bsp-tools.html">1.6. Using the Yocto Project's BSP Tools</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="common-features.html">1.6.1. Common Features</a></span></dt>
+<dt><span class="section"><a href="creating-a-new-bsp-layer-using-the-yocto-bsp-script.html">1.6.2. Creating a new BSP Layer Using the yocto-bsp Script</a></span></dt>
+<dt><span class="section"><a href="managing-kernel-patches-and-config-items-with-yocto-kernel.html">1.6.3. Managing Kernel Patches and Config Items with yocto-kernel</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+<p>
+            A Board Support Package (BSP) is a collection of information that
+            defines how to support a particular hardware device, set of devices, or 
+            hardware platform. 
+            The BSP includes information about the hardware features 
+            present on the device and kernel configuration information along with any 
+            additional hardware drivers required.
+            The BSP also lists any additional software 
+            components required in addition to a generic Linux software stack for both 
+            essential and optional platform features.
+        </p>
+<p>
+            This chapter (or document if you are reading the BSP Developer's Guide) 
+            talks about BSP Layers, defines a structure for components
+            so that BSPs follow a commonly understood layout, discusses how to customize
+            a recipe for a BSP, addresses BSP licensing, and provides information that
+            shows you how to create and manage a 
+            <a class="link" href="bsp-layers.html" title="1.1. BSP Layers">BSP Layer</a> using two Yocto Project 
+            <a class="link" href="using-the-yocto-projects-bsp-tools.html" title="1.6. Using the Yocto Project's BSP Tools">BSP Tools</a>.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/common-features.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/common-features.html
new file mode 100644
index 0000000..9ed10fa
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/common-features.html
@@ -0,0 +1,138 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.6.1. Common Features</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="using-the-yocto-projects-bsp-tools.html" title="1.6. Using the Yocto Project's BSP Tools">
+<link rel="prev" href="using-the-yocto-projects-bsp-tools.html" title="1.6. Using the Yocto Project's BSP Tools">
+<link rel="next" href="creating-a-new-bsp-layer-using-the-yocto-bsp-script.html" title="1.6.2. Creating a new BSP Layer Using the yocto-bsp Script">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.6.1. Common Features">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="common-features"></a>1.6.1. Common Features</h3></div></div></div>
+<p>
+                    Designed to have a  command interface somewhat like 
+                    <a class="link" href="../dev-manual/git.html" target="_self">Git</a>, each
+                    tool is structured as a set of sub-commands under a
+                    top-level command.
+                    The top-level command (<code class="filename">yocto-bsp</code>
+                    or <code class="filename">yocto-kernel</code>) itself does
+                    nothing but invoke or provide help on the sub-commands
+                    it supports.
+                </p>
+<p>
+                    Both tools reside in the <code class="filename">scripts/</code> subdirectory 
+                    of the <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>.
+                    Consequently, to use the scripts, you must <code class="filename">source</code> the 
+                    environment just as you would when invoking a build:
+                    </p>
+<pre class="literallayout">
+     $ source oe-init-build-env [build_dir]
+                    </pre>
+<p>
+                </p>
+<p>
+                    The most immediately useful function is to get help on both tools.
+                    The built-in help system makes it easy to drill down at
+                    any time and view the syntax required for any specific command.
+                    Simply enter the name of the command, or the command along with 
+                    <code class="filename">help</code> to display a list of the available sub-commands. 
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     $ yocto-bsp
+     $ yocto-bsp help
+
+     Usage:
+
+     Create a customized Yocto BSP layer.
+
+     usage: yocto-bsp [--version] [--help] COMMAND [ARGS]
+
+     The most commonly used 'yocto-bsp' commands are:
+     create            Create a new Yocto BSP
+     list              List available values for options and BSP properties
+
+     See 'yocto-bsp help COMMAND' for more information on a specific command.
+
+
+     Options:
+     --version    show program's version number and exit
+     -h, --help   show this help message and exit
+     -D, --debug  output debug information
+                    </pre>
+<p>
+                </p>
+<p>
+                    Similarly, entering just the name of a sub-command shows the detailed usage 
+                    for that sub-command:
+                    </p>
+<pre class="literallayout">
+     $ yocto-bsp create
+
+     Usage:
+
+     Create a new Yocto BSP
+     usage: yocto-bsp create &lt;bsp-name&gt; &lt;karch&gt; [-o &lt;DIRNAME&gt; | --outdir &lt;DIRNAME&gt;]
+             [-i &lt;JSON PROPERTY FILE&gt; | --infile &lt;JSON PROPERTY_FILE&gt;]
+
+                 This command creates a Yocto BSP based on the specified parameters.
+                 The new BSP will be a new BSP layer contained by default within
+                 the top-level directory specified as 'meta-bsp-name'.  The -o option
+                 can be used to place the BSP layer in a directory with a different
+                 name and location.
+
+                 ...
+                    </pre>
+<p>
+                </p>
+<p>
+                    For any sub-command, you can also use the word 'help' just before the 
+                    sub-command to get more extensive documentation:
+                    </p>
+<pre class="literallayout">
+     $ yocto-bsp help create
+
+     NAME
+     yocto-bsp create - Create a new Yocto BSP
+
+     SYNOPSIS
+     yocto-bsp create &lt;bsp-name&gt; &lt;karch&gt; [-o &lt;DIRNAME&gt; | --outdir &lt;DIRNAME&gt;]
+             [-i &lt;JSON PROPERTY FILE&gt; | --infile &lt;JSON PROPERTY_FILE&gt;]
+
+     DESCRIPTION
+     This command creates a Yocto BSP based on the specified
+     parameters.  The new BSP will be a new Yocto BSP layer contained
+     by default within the top-level directory specified as
+     'meta-bsp-name'.  The -o option can be used to place the BSP layer
+     in a directory with a different name and location.
+			    
+     The value of the 'karch' parameter determines the set of files
+     that will be generated for the BSP, along with the specific set of
+     'properties' that will be used to fill out the BSP-specific
+     portions of the BSP.
+			    
+     ...
+			    
+     NOTE: Once created, you should add your new layer to your
+     bblayers.conf file in order for it to be subsequently seen and
+     modified by the yocto-kernel tool.
+			    
+     NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
+     presence of the of the meta-intel layer, so you should also have a
+     meta-intel layer present and added to your bblayers.conf as well.
+                    </pre>
+<p>
+                </p>
+<p>
+                    Now that you know where these two commands reside and how to access information 
+                    on them, you should find it relatively straightforward to discover the commands 
+                    necessary to create a BSP and perform basic kernel maintenance on that BSP using
+                    the tools.
+                    The next sections provide a concrete starting point to expand on a few points that 
+                    might not be immediately obvious or that could use further explanation.
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/creating-a-new-bsp-layer-using-the-yocto-bsp-script.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/creating-a-new-bsp-layer-using-the-yocto-bsp-script.html
new file mode 100644
index 0000000..039565e
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/creating-a-new-bsp-layer-using-the-yocto-bsp-script.html
@@ -0,0 +1,191 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.6.2. Creating a new BSP Layer Using the yocto-bsp Script</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="using-the-yocto-projects-bsp-tools.html" title="1.6. Using the Yocto Project's BSP Tools">
+<link rel="prev" href="common-features.html" title="1.6.1. Common Features">
+<link rel="next" href="managing-kernel-patches-and-config-items-with-yocto-kernel.html" title="1.6.3. Managing Kernel Patches and Config Items with yocto-kernel">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.6.2. Creating a new BSP Layer Using the yocto-bsp Script">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="creating-a-new-bsp-layer-using-the-yocto-bsp-script"></a>1.6.2. Creating a new BSP Layer Using the yocto-bsp Script</h3></div></div></div>
+<p>
+                    The <code class="filename">yocto-bsp</code> script creates a new 
+                    <a class="link" href="bsp-layers.html" title="1.1. BSP Layers">BSP layer</a> for any architecture supported 
+                    by the Yocto Project, as well as QEMU versions of the same.
+                    The default mode of the script's operation is to prompt you for information needed 
+                    to generate the BSP layer.
+                    For the current set of BSPs, the script prompts you for various important
+                    parameters such as:
+                    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>which kernel to use</p></li>
+<li class="listitem"><p>which branch of that kernel to use (or re-use)</p></li>
+<li class="listitem"><p>whether or not to use X, and if so, which drivers to use</p></li>
+<li class="listitem"><p>whether to turn on SMP</p></li>
+<li class="listitem"><p>whether the BSP has a keyboard</p></li>
+<li class="listitem"><p>whether the BSP has a touchscreen</p></li>
+<li class="listitem"><p>any remaining configurable items associated with the BSP</p></li>
+</ul></div>
+<p>
+                </p>
+<p>
+                    You use the <code class="filename">yocto-bsp create</code> sub-command to create 
+                    a new BSP layer. 
+                    This command requires you to specify a particular architecture on which to 
+                    base the BSP.
+                    Assuming you have sourced the environment, you can use the 
+                    <code class="filename">yocto-bsp list karch</code> sub-command to list the
+                    architectures available for BSP creation as follows:
+                    </p>
+<pre class="literallayout">
+     $ yocto-bsp list karch
+     Architectures available:
+         arm
+         powerpc
+         i386
+         mips
+         x86_64
+         qemu
+                    </pre>
+<p>
+                </p>
+<p>
+                    The remainder of this section presents an example that uses  
+                    <code class="filename">myarm</code> as the machine name and <code class="filename">qemu</code>
+                    as the machine architecture.
+                    Of the available architectures, <code class="filename">qemu</code> is the only architecture
+                    that causes the script to prompt you further for an actual architecture.
+                    In every other way, this architecture is representative of how creating a BSP for
+                    a 'real' machine would work.
+                    The reason the example uses this architecture is because it is an emulated architecture
+                    and can easily be followed without requiring actual hardware.
+                </p>
+<p>
+                    As the <code class="filename">yocto-bsp create</code> command runs, default values for 
+                    the prompts appear in brackets.
+                    Pressing enter without supplying anything on the command line or pressing enter
+                    and providing an invalid response causes the script to accept the default value.
+                </p>
+<p>
+                    Following is the complete example:
+                    </p>
+<pre class="literallayout">
+     $ yocto-bsp create myarm qemu
+     Which qemu architecture would you like to use? [default: x86]
+             1) common 32-bit x86
+             2) common 64-bit x86
+             3) common 32-bit ARM
+             4) common 32-bit PowerPC
+             5) common 32-bit MIPS
+     3
+     Would you like to use the default (3.2) kernel? (Y/n)
+     Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [Y/n]
+     Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.2...
+     Please choose a machine branch to base this BSP on =&gt; [default: standard/default/common-pc]
+             1) base
+             2) standard/base
+             3) standard/default/arm-versatile-926ejs
+             4) standard/default/base
+             5) standard/default/beagleboard
+             6) standard/default/cedartrailbsp (copy).xml
+             7) standard/default/common-pc-64/base
+             8) standard/default/common-pc-64/jasperforest
+             9) standard/default/common-pc-64/romley
+             10) standard/default/common-pc-64/sugarbay
+             11) standard/default/common-pc/atom-pc
+             12) standard/default/common-pc/base
+             13) standard/default/crownbay
+             14) standard/default/emenlow
+             15) standard/default/fishriver
+             16) standard/default/fri2
+             17) standard/default/fsl-mpc8315e-rdb
+             18) standard/default/mti-malta32-be
+             19) standard/default/mti-malta32-le
+             20) standard/default/preempt-rt
+             21) standard/default/qemu-ppc32
+             22) standard/default/routerstationpro
+             23) standard/preempt-rt/base
+             24) standard/preempt-rt/qemu-ppc32
+             25) standard/preempt-rt/routerstationpro
+             26) standard/tiny
+     3
+     Do you need SMP support? (Y/n)
+     Does your BSP have a touchscreen? (y/N)
+     Does your BSP have a keyboard? (Y/n)
+     New qemu BSP created in meta-myarm
+                    </pre>
+<p>
+                    Let's take a closer look at the example now:
+                    </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem"><p>For the <code class="filename">qemu</code> architecture, 
+                            the script first prompts you for which emulated architecture to use.
+                            In the example, we use the <code class="filename">arm</code> architecture.
+                            </p></li>
+<li class="listitem"><p>The script then prompts you for the kernel.
+                            The default kernel is 3.2 and is acceptable.  
+                            So, the example accepts the default.
+                            If you enter 'n', the script prompts you to further enter the kernel
+                            you do want to use (e.g. 3.0, 3.2_preempt-rt, etc.).</p></li>
+<li class="listitem">
+<p>Next, the script asks whether you would like to have a new 
+                            branch created especially for your BSP in the local 
+                            <a class="link" href="../dev-manual/local-kernel-files.html" target="_self">Linux Yocto Kernel</a> 
+                            Git repository .
+                            If not, then the script re-uses an existing branch.</p>
+<p>In this example, the default (or 'yes') is accepted.
+                            Thus, a new branch is created for the BSP rather than using a common, shared
+                            branch.
+                            The new branch is the branch committed to for any patches you might later add. 
+                            The reason a new branch is the default is that typically
+                            new BSPs do require BSP-specific patches.
+                            The tool thus assumes that most of time a new branch is required.
+                            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>In the current implementation, creation or re-use of a branch does 
+                            not actually matter.
+                            The reason is because the generated BSPs assume that patches and 
+                            configurations live in recipe-space, which is something that can be done 
+                            with or without a dedicated branch.  
+                            Generated BSPs, however, are different.
+                            This difference becomes significant once the tool's 'publish' functionality 
+                            is implemented.</div>
+</li>
+<li class="listitem"><p>Regardless of which choice is made in the previous step, 
+                            you are now given the opportunity to select a particular machine branch on
+                            which to base your new BSP-specific machine branch on 
+                            (or to re-use if you had elected to not create a new branch).  
+                            Because this example is generating an <code class="filename">arm</code> BSP, the example 
+                            uses <code class="filename">#3</code> at the prompt, which selects the arm-versatile branch.
+                            </p></li>
+<li class="listitem"><p>The remainder of the prompts are routine. 
+                            Defaults are accepted for each.</p></li>
+<li class="listitem"><p>By default, the script creates the new BSP Layer in the 
+                            <a class="link" href="../dev-manual/build-directory.html" target="_self">build directory</a>.
+                            </p></li>
+</ol></div>
+<p> 
+                </p>
+<p>
+                    Once the BSP Layer is created, you must add it to your 
+                    <code class="filename">bblayers.conf</code> file.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     BBLAYERS = " \
+        /usr/local/src/yocto/meta \
+        /usr/local/src/yocto/meta-yocto \
+        /usr/local/src/yocto/meta-myarm \
+        "
+                    </pre>
+<p> 
+                    Adding the layer to this file allows the build system to build the BSP and 
+                    the <code class="filename">yocto-kernel</code> tool to be able to find the layer and 
+                    other metadata it needs on which to operate.
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/customizing-a-recipe-for-a-bsp.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/customizing-a-recipe-for-a-bsp.html
new file mode 100644
index 0000000..81606ac
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/customizing-a-recipe-for-a-bsp.html
@@ -0,0 +1,56 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.4. Customizing a Recipe for a BSP</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<link rel="prev" href="released-bsp-recommendations.html" title="1.3.2. Released BSP Recommendations">
+<link rel="next" href="bsp-licensing-considerations.html" title="1.5. BSP Licensing Considerations">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.4. Customizing a Recipe for a BSP">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="customizing-a-recipe-for-a-bsp"></a>1.4. Customizing a Recipe for a BSP</h2></div></div></div>
+<p>
+               If you plan on customizing a recipe for a particular BSP, you need to do the
+               following:
+               </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Include within the BSP layer a <code class="filename">.bbappend</code>
+                       file for the modified recipe.</p></li>
+<li class="listitem"><p>Place the BSP-specific file in the BSP's recipe
+                       <code class="filename">.bbappend</code> file path under a directory named
+                       after the machine.</p></li>
+</ul></div>
+<p>
+           </p>
+<p>
+               To better understand this, consider an example that customizes a recipe by adding 
+               a BSP-specific configuration file named <code class="filename">interfaces</code> to the 
+               <code class="filename">netbase_4.47.bb</code> recipe for machine "xyz".
+               Do the following:
+               </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem">
+<p>Edit the <code class="filename">netbase_4.47.bbappend</code> file so that it 
+                       contains the following:
+                       </p>
+<pre class="literallayout">
+     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+     PRINC := "${@int(PRINC) + 2}"
+                       </pre>
+</li>
+<li class="listitem">
+<p>Create and place the new <code class="filename">interfaces</code> 
+                       configuration file in the BSP's layer here:
+                       </p>
+<pre class="literallayout">
+     meta-xyz/recipes-core/netbase/files/xyz/interfaces
+                       </pre>
+</li>
+</ol></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/figures/bsp-title.png b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/figures/bsp-title.png
new file mode 100644
index 0000000000000000000000000000000000000000..f624dd4f941c62c77070f1fd9fcf0977fbb352a5
GIT binary patch
literal 17388
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
IDCqwT0CY`pDgXcg

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/index.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/index.html
new file mode 100644
index 0000000..b0a4657
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/index.html
@@ -0,0 +1,130 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>The Yocto Project Board Support Package Developer's Guide</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="next" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div lang="en" class="book" title="The Yocto Project Board Support Package Developer's Guide">
+<div class="titlepage">
+<div>
+<div><h1 class="title">
+<a name="bsp-guide"></a>
+		  The Yocto Project Board Support Package Developer's Guide
+		</h1></div>
+<div><div class="authorgroup">
+            <div class="author">
+<h3 class="author">
+<span class="firstname">Tom</span> <span class="surname">Zanussi</span>
+</h3>
+<div class="affiliation">
+                    <span class="orgname">Intel Corporation<br></span>
+                </div>
+<code class="email">&lt;<a class="email" href="mailto:tom.zanussi@intel.com">tom.zanussi@intel.com</a>&gt;</code>
+</div>
+            <div class="author">
+<h3 class="author">
+<span class="firstname">Richard</span> <span class="surname">Purdie</span>
+</h3>
+<div class="affiliation">
+                    <span class="orgname">Linux Foundation<br></span>
+                </div>
+<code class="email">&lt;<a class="email" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;</code>
+</div>
+        </div></div>
+<div><p class="copyright">Copyright © 2010-2012 Linux Foundation</p></div>
+<div><div class="legalnotice" title="Legal Notice">
+<a name="id382987"></a>
+      <p>
+        Permission is granted to copy, distribute and/or modify this document under 
+        the terms of the <a class="ulink" href="http://creativecommons.org/licenses/by-nc-sa/2.0/uk/" target="_self">Creative Commons Attribution-Non-Commercial-Share Alike 2.0 UK: England &amp; Wales</a> as published by Creative Commons.
+      </p>
+      <div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+          Due to production processes, there could be differences between the Yocto Project
+          documentation bundled in the release tarball and the 
+          <a class="link" href="../bsp-guide/index.html" target="_self">Yocto Project Board Support Package (BSP) Developer's Guide</a> on
+          the <a class="ulink" href="http://www.yoctoproject.org" target="_self">Yocto Project</a> website.
+          For the latest version of this manual, see the manual on the website.
+      </div>
+    </div></div>
+<div><div class="revhistory"><table border="1" width="100%" summary="Revision history">
+<tr><th align="left" valign="top" colspan="2"><b>Revision History</b></th></tr>
+            <tr>
+<td align="left">Revision 0.9</td>
+<td align="left">24 November 2010</td>
+</tr>
+<tr><td align="left" colspan="2">The initial document draft released with the Yocto Project 0.9 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.0</td>
+<td align="left">6 April 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.0 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.0.1</td>
+<td align="left">23 May 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.0.1 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.1</td>
+<td align="left">6 October 2011</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.1 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.2</td>
+<td align="left">April 2012</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.2 Release.</td></tr>
+            <tr>
+<td align="left">Revision 1.3</td>
+<td align="left">Sometime in 2012</td>
+</tr>
+<tr><td align="left" colspan="2">Released with the Yocto Project 1.3 Release.</td></tr>
+        </table></div></div>
+</div>
+<hr>
+</div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="chapter"><a href="bsp.html">1. Board Support Packages (BSP) - Developer's Guide</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="bsp-layers.html">1.1. BSP Layers</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout.html">1.2. Example Filesystem Layout</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="bsp-filelayout-license.html">1.2.1. License Files</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-readme.html">1.2.2. README File</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-readme-sources.html">1.2.3. README.sources File</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-binary.html">1.2.4. Pre-built User Binaries</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-layer.html">1.2.5. Layer Configuration File</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-machine.html">1.2.6. Hardware Configuration Options</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-misc-recipes.html">1.2.7. Miscellaneous Recipe Files</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-recipes-graphics.html">1.2.8. Display Support Files</a></span></dt>
+<dt><span class="section"><a href="bsp-filelayout-kernel.html">1.2.9. Linux Kernel Configuration</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="requirements-and-recommendations-for-released-bsps.html">1.3. Requirements and Recommendations for Released BSPs</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="released-bsp-requirements.html">1.3.1. Released BSP Requirements</a></span></dt>
+<dt><span class="section"><a href="released-bsp-recommendations.html">1.3.2. Released BSP Recommendations</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="customizing-a-recipe-for-a-bsp.html">1.4. Customizing a Recipe for a BSP</a></span></dt>
+<dt><span class="section"><a href="bsp-licensing-considerations.html">1.5. BSP Licensing Considerations</a></span></dt>
+<dt><span class="section"><a href="using-the-yocto-projects-bsp-tools.html">1.6. Using the Yocto Project's BSP Tools</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="common-features.html">1.6.1. Common Features</a></span></dt>
+<dt><span class="section"><a href="creating-a-new-bsp-layer-using-the-yocto-bsp-script.html">1.6.2. Creating a new BSP Layer Using the yocto-bsp Script</a></span></dt>
+<dt><span class="section"><a href="managing-kernel-patches-and-config-items-with-yocto-kernel.html">1.6.3. Managing Kernel Patches and Config Items with yocto-kernel</a></span></dt>
+</dl></dd>
+</dl></dd>
+</dl>
+</div>
+    
+
+    
+
+
+
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/managing-kernel-patches-and-config-items-with-yocto-kernel.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/managing-kernel-patches-and-config-items-with-yocto-kernel.html
new file mode 100644
index 0000000..cbe1499
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/managing-kernel-patches-and-config-items-with-yocto-kernel.html
@@ -0,0 +1,153 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.6.3. Managing Kernel Patches and Config Items with yocto-kernel</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="using-the-yocto-projects-bsp-tools.html" title="1.6. Using the Yocto Project's BSP Tools">
+<link rel="prev" href="creating-a-new-bsp-layer-using-the-yocto-bsp-script.html" title="1.6.2. Creating a new BSP Layer Using the yocto-bsp Script">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.6.3. Managing Kernel Patches and Config Items with yocto-kernel">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="managing-kernel-patches-and-config-items-with-yocto-kernel"></a>1.6.3. Managing Kernel Patches and Config Items with yocto-kernel</h3></div></div></div>
+<p>
+                    Assuming you have created a <a class="link" href="bsp-layers.html" title="1.1. BSP Layers">BSP Layer</a> using
+                    <a class="link" href="creating-a-new-bsp-layer-using-the-yocto-bsp-script.html" title="1.6.2. Creating a new BSP Layer Using the yocto-bsp Script">
+                    <code class="filename">yocto-bsp</code></a> and you added it to your
+                    <a class="link" href="../poky-ref-manual/var-BBLAYERS.html" target="_self"><code class="filename">BBLAYERS</code></a>
+                    variable in the <code class="filename">bblayers.conf</code> file, you can now use
+                    the <code class="filename">yocto-kernel</code> script to add patches and configuration
+                    items to the BSP's kernel.
+                </p>
+<p>
+                    The <code class="filename">yocto-kernel</code> script allows you to add, remove, and list patches
+                    and kernel config settings to a BSP's kernel 
+                    <code class="filename">.bbappend</code> file.
+                    All you need to do is use the appropriate sub-command.
+                    Recall that the easiest way to see exactly what sub-commands are available
+                    is to use the <code class="filename">yocto-kernel</code> built-in help as follows:
+                    </p>
+<pre class="literallayout">
+     $ yocto-kernel
+     Usage:
+
+     Modify and list Yocto BSP kernel config items and patches.
+
+     usage: yocto-kernel [--version] [--help] COMMAND [ARGS]
+
+     The most commonly used 'yocto-kernel' commands are:
+     config list       List the modifiable set of bare kernel config options for a BSP
+     config add        Add or modify bare kernel config options for a BSP 
+     config rm         Remove bare kernel config options from a BSP
+     patch list        List the patches associated with a BSP
+     patch add         Patch the Yocto kernel for a BSP
+     patch rm          Remove patches from a BSP
+
+     See 'yocto-kernel help COMMAND' for more information on a specific command.
+                    </pre>
+<p>
+                </p>
+<p>
+                    The <code class="filename">yocto-kernel patch add</code> sub-command allows you to add a 
+                    patch to a BSP.  
+                    The following example adds two patches to the <code class="filename">myarm</code> BSP:
+                    </p>
+<pre class="literallayout">
+     $ yocto-kernel patch add myarm ~/test.patch
+     Added patches:
+             test.patch
+
+     $ yocto-kernel patch add myarm ~/yocto-testmod.patch
+     Added patches:
+             yocto-testmod.patch
+                    </pre>
+<p>
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>Although the previous example adds patches one at a time, it is possible
+                    to add multiple patches at the same time.</div>
+<p>
+                </p>
+<p>
+                    You can verify patches have been added by using the 
+                    <code class="filename">yocto-kernel patch list</code> sub-command.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     $ yocto-kernel patch list myarm
+     The current set of machine-specific patches for myarm is:
+             1) test.patch
+             2) yocto-testmod.patch
+                    </pre>
+<p>
+                </p>
+<p>
+                    You can also use the <code class="filename">yocto-kernel</code> script to
+                    remove a patch using the <code class="filename">yocto-kernel patch rm</code> sub-command.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     $ yocto-kernel patch rm myarm
+     Specify the patches to remove:
+             1) test.patch
+             2) yocto-testmod.patch
+     1
+     Removed patches:
+             test.patch
+                    </pre>
+<p>
+                </p>
+<p>
+                    Again, using the <code class="filename">yocto-kernel patch list</code> sub-command,
+                    you can verify that the patch was in fact removed:
+                    </p>
+<pre class="literallayout">
+     $ yocto-kernel patch list myarm
+     The current set of machine-specific patches for myarm is:
+             1) yocto-testmod.patch
+                    </pre>
+<p>
+                </p>
+<p>
+                    In a completely similar way, you can use the <code class="filename">yocto-kernel config add</code>
+                    sub-command to add one or more kernel config item settings to a BSP.
+                    The following commands add a couple of config items to the 
+                    <code class="filename">myarm</code> BSP:
+                    </p>
+<pre class="literallayout">
+     $ yocto-kernel config add myarm CONFIG_MISC_DEVICES=y
+     Added items:
+             CONFIG_MISC_DEVICES=y
+
+     $ yocto-kernel config add myarm KCONFIG_YOCTO_TESTMOD=y
+     Added items:
+             CONFIG_YOCTO_TESTMOD=y
+                    </pre>
+<p>
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>Although the previous example adds config items one at a time, it is possible
+                    to add multiple config items at the same time.</div>
+<p>
+                </p>
+<p>
+                    You can list the config items now associated with the BSP.
+                    Doing so shows you the config items you added as well as others associated
+                    with the BSP:
+                    </p>
+<pre class="literallayout">
+     $ yocto-kernel config list myarm
+     The current set of machine-specific kernel config items for myarm is:
+             1) CONFIG_MISC_DEVICES=y
+             2) CONFIG_YOCTO_TESTMOD=y
+                    </pre>
+<p>
+                </p>
+<p>
+                    Finally, you can remove one or more config items using the 
+                    <code class="filename">yocto-kernel config rm</code> sub-command in a manner
+                    completely analogous to <code class="filename">yocto-kernel patch rm</code>.
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-recommendations.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-recommendations.html
new file mode 100644
index 0000000..2c15d56
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-recommendations.html
@@ -0,0 +1,58 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.3.2. Released BSP Recommendations</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="requirements-and-recommendations-for-released-bsps.html" title="1.3. Requirements and Recommendations for Released BSPs">
+<link rel="prev" href="released-bsp-requirements.html" title="1.3.1. Released BSP Requirements">
+<link rel="next" href="customizing-a-recipe-for-a-bsp.html" title="1.4. Customizing a Recipe for a BSP">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.2. Released BSP Recommendations">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="released-bsp-recommendations"></a>1.3.2. Released BSP Recommendations</h3></div></div></div>
+<p>
+                    Following are recommendations for a released BSP that conforms to the 
+                    Yocto Project:
+                    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em>Bootable Images:</em></span>
+                            BSP releases 
+                            can contain one or more bootable images.
+                            Including bootable images allows users to easily try out the BSP
+                            on their own hardware.</p>
+<p>In some cases, it might not be convenient to include a 
+                            bootable image. 
+                            In this case, you might want to make two versions of the 
+                            BSP available: one that contains binary images, and one
+                            that does not.
+                            The version that does not contain bootable images avoids 
+                            unnecessary download times for users not interested in the images.
+                            </p>
+<p>If you need to distribute a BSP and include bootable images or build kernel and
+                            filesystems meant to allow users to boot the BSP for evaluation
+                            purposes, you should put the images and artifacts within a 
+                            <code class="filename">binary/</code> subdirectory located in the 
+                            <code class="filename">meta-&lt;bsp_name&gt;</code> directory.
+                            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>If you do include a bootable image as part of the BSP and the image
+                            was built by software covered by the GPL or other open source licenses,
+                            it is your responsibility to understand
+                            and meet all licensing requirements, which could include distribution
+                            of source files.</div>
+</li>
+<li class="listitem"><p><span class="emphasis"><em>Use a Yocto Linux Kernel:</em></span>
+                            Kernel recipes in the BSP should be based on a Yocto Linux kernel. 
+                            Basing your recipes on these kernels reduces the costs for maintaining 
+                            the BSP and increases its scalability.
+                            See the <code class="filename">Yocto Linux Kernel</code> category in the 
+                            <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi" target="_self"><code class="filename">Yocto Source Repositories</code></a>
+                            for these kernels.</p></li>
+</ul></div>
+<p>
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-requirements.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-requirements.html
new file mode 100644
index 0000000..0f1613b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/released-bsp-requirements.html
@@ -0,0 +1,184 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.3.1. Released BSP Requirements</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="requirements-and-recommendations-for-released-bsps.html" title="1.3. Requirements and Recommendations for Released BSPs">
+<link rel="prev" href="requirements-and-recommendations-for-released-bsps.html" title="1.3. Requirements and Recommendations for Released BSPs">
+<link rel="next" href="released-bsp-recommendations.html" title="1.3.2. Released BSP Recommendations">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3.1. Released BSP Requirements">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="released-bsp-requirements"></a>1.3.1. Released BSP Requirements</h3></div></div></div>
+<p>
+                    Before looking at BSP requirements, you should consider the following:
+                    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>The requirements here assume the BSP layer is a well-formed, "legal"
+                            layer that can be added to the Yocto Project.
+                            For guidelines on creating a layer that meets these base requirements, see the
+                            "<a class="link" href="bsp-layers.html" title="1.1. BSP Layers">BSP Layers</a>" and the 
+                            "<a class="link" href="../dev-manual/understanding-and-creating-layers.html" target="_self">Understanding
+                            and Creating Layers"</a> in the Yocto Project Development Manual.</p></li>
+<li class="listitem"><p>The requirements in this section apply regardless of how you 
+                            ultimately package a BSP.
+                            You should consult the packaging and distribution guidelines for your
+                            specific release process. 
+                            For an example of packaging and distribution requirements, see the 
+                            <a class="ulink" href="https://wiki.yoctoproject.org/wiki/Third_Party_BSP_Release_Process" target="_self">Third 
+                            Party BSP Release Process</a> wiki page.</p></li>
+<li class="listitem"><p>The requirements for the BSP as it is made available to a developer
+                            are completely independent of the released form of the BSP. 
+                            For example, the BSP metadata can be contained within a Git repository
+                            and could have a directory structure completely different from what appears
+                            in the officially released BSP layer.</p></li>
+<li class="listitem"><p>It is not required that specific packages or package 
+                            modifications exist in the BSP layer, beyond the requirements for general 
+                            compliance with the Yocto Project.
+                            For example, no requirement exists dictating that a specific kernel or 
+                            kernel version be used in a given BSP.</p></li>
+</ul></div>
+<p>
+                </p>
+<p>
+                    Following are the requirements for a released BSP that conforms to the 
+                    Yocto Project:
+                    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>Layer Name:</em></span>
+                            The BSP must have a layer name that follows the Yocto
+                            Project standards.  
+                            For information on BSP layer names, see the
+                            "<a class="link" href="bsp-layers.html" title="1.1. BSP Layers">BSP Layers</a>" section.
+                            </p></li>
+<li class="listitem">
+<p><span class="emphasis"><em>File System Layout:</em></span>
+                            When possible, use the same directory names in your 
+                            BSP layer as listed in the <code class="filename">recipes.txt</code> file.
+                            In particular, you should place recipes 
+                            (<code class="filename">.bb</code> files) and recipe
+                            modifications (<code class="filename">.bbappend</code> files) into  
+                            <code class="filename">recipes-*</code> subdirectories by functional area 
+                            as outlined in <code class="filename">recipes.txt</code>.
+                            If you cannot find a category in <code class="filename">recipes.txt</code>
+                            to fit a particular recipe, you can make up your own 
+                            <code class="filename">recipe-*</code> subdirectory.
+                            You can find <code class="filename">recipes.txt</code> in the
+                            <code class="filename">meta</code> directory of the 
+                            <a class="link" href="../dev-manual/source-directory.html" target="_self">source directory</a>, 
+                            or in the OpenEmbedded Core Layer
+                            (<code class="filename">openembedded-core</code>) found at 
+                            <a class="ulink" href="http://git.openembedded.org/openembedded-core/tree/meta" target="_self">http://git.openembedded.org/openembedded-core/tree/meta</a>.
+                            </p>
+<p>Within any particular <code class="filename">recipes-*</code> category, the layout
+                            should match what is found in the OpenEmbedded Core
+                            Git repository (<code class="filename">openembedded-core</code>)
+                            or the source directory (<code class="filename">poky</code>).
+                            In other words, make sure you place related files in appropriately
+                            related <code class="filename">recipes-*</code> subdirectories specific to the
+                            recipe's function, or within a subdirectory containing a set of closely-related
+                            recipes.  
+                            The recipes themselves should follow the general guidelines
+                            for recipes used in the Yocto Project found in the 
+                            <a class="ulink" href="https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide" target="_self">Yocto
+                            Recipe and Patch Style Guide</a>.</p>
+</li>
+<li class="listitem"><p><span class="emphasis"><em>License File:</em></span>
+                            You must include a license file in the 
+                            <code class="filename">meta-&lt;bsp_name&gt;</code> directory.
+                            This license covers the BSP metadata as a whole.
+                            You must specify which license to use since there is no 
+                            default license if one is not specified.
+                            See the 
+                            <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/meta-intel/tree/meta-fishriver/COPYING.MIT" target="_self"><code class="filename">COPYING.MIT</code></a>
+                            file for the Fish River BSP in the <code class="filename">meta-fishriver</code> BSP layer 
+                            as an example.</p></li>
+<li class="listitem">
+<p><span class="emphasis"><em>README File:</em></span>
+                            You must include a <code class="filename">README</code> file in the 
+                            <code class="filename">meta-&lt;bsp_name&gt;</code> directory.
+                            See the 
+                            <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/meta-intel/tree/meta-fishriver/README" target="_self"><code class="filename">README</code></a>
+                            file for the Fish River BSP in the <code class="filename">meta-fishriver</code> BSP layer 
+                            as an example.</p>
+<p>At a minimum, the <code class="filename">README</code> file should 
+                            contain the following:
+                            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="circle">
+<li class="listitem"><p>A brief description about the hardware the BSP 
+                                    targets.</p></li>
+<li class="listitem"><p>A list of all the dependencies a 
+                                    on which a BSP layer depends.
+                                    These dependencies are typically a list of required layers needed 
+                                    to build the BSP.
+                                    However, the dependencies should also contain information regarding 
+                                    any other dependencies the BSP might have.</p></li>
+<li class="listitem"><p>Any required special licensing information.
+                                    For example, this information includes information on 
+                                    special variables needed to satisfy a EULA,
+                                    or instructions on information needed to build or distribute
+                                    binaries built from the BSP metadata.</p></li>
+<li class="listitem"><p>The name and contact information for the 
+                                    BSP layer maintainer.
+                                    This is the person to whom patches and questions should
+                                    be sent.</p></li>
+<li class="listitem"><p>Instructions on how to build the BSP using the BSP 
+                                    layer.</p></li>
+<li class="listitem"><p>Instructions on how to boot the BSP build from 
+                                    the BSP layer.</p></li>
+<li class="listitem"><p>Instructions on how to boot the binary images 
+                                    contained in the <code class="filename">/binary</code> directory, 
+                                    if present.</p></li>
+<li class="listitem"><p>Information on any known bugs or issues that users 
+                                    should know about when either building or booting the BSP 
+                                    binaries.</p></li>
+</ul></div>
+</li>
+<li class="listitem"><p><span class="emphasis"><em>README.sources File:</em></span>
+                            You must include a <code class="filename">README.sources</code> in the 
+                            <code class="filename">meta-&lt;bsp_name&gt;</code> directory.
+                            This file specifies exactly where you can find the sources used to 
+                            generate the binary images contained in the 
+                            <code class="filename">/binary</code> directory, if present.
+                            See the 
+                            <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/meta-intel/tree/meta-fishriver/README.sources" target="_self"><code class="filename">README.sources</code></a>
+                            file for the Fish River BSP in the <code class="filename">meta-fishriver</code> BSP layer 
+                            as an example.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Layer Configuration File:</em></span>
+                            You must include a <code class="filename">conf/layer.conf</code> in the
+                            <code class="filename">meta-&lt;bsp_name&gt;</code> directory.
+                            This file identifies the <code class="filename">meta-&lt;bsp_name&gt;</code>
+                            BSP layer as a layer to the build system.</p></li>
+<li class="listitem">
+<p><span class="emphasis"><em>Machine Configuration File:</em></span>
+                            You must include a <code class="filename">conf/machine/&lt;bsp_name&gt;.conf</code>
+                            in the <code class="filename">meta-&lt;bsp_name&gt;</code> directory.
+                            This configuration file defines a machine target that can be built
+                            using the BSP layer.
+                            Multiple machine configuration files define variations of machine 
+                            configurations that are supported by the BSP.
+                            If a BSP supports more multiple machine variations, you need to 
+                            adequately describe each variation in the BSP 
+                            <code class="filename">README</code> file.
+                            Do not use multiple machine configuration files to describe disparate
+                            hardware. 
+                            Multiple machine configuration files should describe very similar targets.
+                            If you do have very different targets, you should create a separate
+                            BSP.
+                            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>It is completely possible for a developer to structure the 
+                            working repository as a conglomeration of unrelated BSP
+                            files, and to possibly generate specifically targeted 'release' BSPs 
+                            from that directory using scripts or some other mechanism.  
+                            Such considerations are outside the scope of this document.</div>
+<p>
+                            </p>
+</li>
+</ul></div>
+<p>
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/requirements-and-recommendations-for-released-bsps.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/requirements-and-recommendations-for-released-bsps.html
new file mode 100644
index 0000000..9cc6ba4
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/requirements-and-recommendations-for-released-bsps.html
@@ -0,0 +1,23 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.3. Requirements and Recommendations for Released BSPs</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<link rel="prev" href="bsp-filelayout-kernel.html" title="1.2.9. Linux Kernel Configuration">
+<link rel="next" href="released-bsp-requirements.html" title="1.3.1. Released BSP Requirements">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.3. Requirements and Recommendations for Released BSPs">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="requirements-and-recommendations-for-released-bsps"></a>1.3. Requirements and Recommendations for Released BSPs</h2></div></div></div>
+<p>
+                Certain requirements exist for a released BSP to be considered
+                compliant with the Yocto Project.
+                Additionally, a single recommendation also exists. 
+                This section describes the requirements and recommendation for
+                released BSPs.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/bsp-guide/using-the-yocto-projects-bsp-tools.html b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/using-the-yocto-projects-bsp-tools.html
new file mode 100644
index 0000000..7547f75
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/bsp-guide/using-the-yocto-projects-bsp-tools.html
@@ -0,0 +1,29 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.6. Using the Yocto Project's BSP Tools</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Board Support Package Developer's Guide">
+<link rel="up" href="bsp.html" title="Chapter 1. Board Support Packages (BSP) - Developer's Guide">
+<link rel="prev" href="bsp-licensing-considerations.html" title="1.5. BSP Licensing Considerations">
+<link rel="next" href="common-features.html" title="1.6.1. Common Features">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.6. Using the Yocto Project's BSP Tools">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="using-the-yocto-projects-bsp-tools"></a>1.6. Using the Yocto Project's BSP Tools</h2></div></div></div>
+<p>
+                The Yocto Project includes a couple of tools that enable
+                you to create a <a class="link" href="bsp-layers.html" title="1.1. BSP Layers">BSP layer</a> 
+                from scratch and do basic configuration and maintenance 
+                of the kernel without ever looking at a metadata file.
+                These tools are <code class="filename">yocto-bsp</code> and <code class="filename">yocto-kernel</code>,
+                respectively. 
+	    </p>
+<p>
+                The following sections describe the common location and help features as well 
+                as details for the <code class="filename">yocto-bsp</code> and <code class="filename">yocto-kernel</code> 
+                tools.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/plugin.xml b/plugins/org.yocto.sdk.doc.user/plugin.xml
index 7ce4771..da26279 100644
--- a/plugins/org.yocto.sdk.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.doc.user/plugin.xml
@@ -23,5 +23,9 @@
           file="poky-ref-manual-toc.xml"
           primary="false">
     </toc>
+    <toc
+          file="bsp-guide-toc.xml"
+          primary="false">
+    </toc>
  </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.doc.user/toc.xml b/plugins/org.yocto.sdk.doc.user/toc.xml
index 3d7d0f2..af26d88 100644
--- a/plugins/org.yocto.sdk.doc.user/toc.xml
+++ b/plugins/org.yocto.sdk.doc.user/toc.xml
@@ -12,4 +12,7 @@
    <topic label="The Yocto Project Reference Manual">
       <link toc="poky-ref-manual-toc.xml"/>
    </topic>
+   <topic label="The Yocto Project Board Support Package Developer&apos;s Guide">
+      <link toc="bsp-guide-toc.xml"/>
+   </topic>
 </toc>
-- 
1.7.7.6


