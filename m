Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E506BE0144C
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:44:19 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 6CAD940206;
	Fri, 21 Sep 2012 16:14:22 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:44:15 +0200
Message-Id: <cad2b77056f87fcc9dc4d8af75a706181a974410.1348237278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <f38b0f34760e7e4f2c5d763312556f71ce22e620.1348237278.git.timo.mueller@bmw-carit.de>
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
	<f38b0f34760e7e4f2c5d763312556f71ce22e620.1348237278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348237278.git.timo.mueller@bmw-carit.de>
References: <cover.1348237278.git.timo.mueller@bmw-carit.de>
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv2 12/12] plugins/sdk.doc.user: Added kernel manual
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
X-List-Received-Date: Fri, 21 Sep 2012 14:44:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Timo Mueller <timo.mueller@bmw-carit.de>

The Yocto Project Kernel Architecture and Use Manual is integrated
into the eclipse help. This includes the generated html files as well
as a table of contents that is needed by the eclipse help center to
allow the user to navigate the contents.

Source: git://git.yoctoproject.org/yocto-docs/
---
 plugins/org.yocto.sdk.doc.user/about.html          |   22 +++
 plugins/org.yocto.sdk.doc.user/build.properties    |    6 +-
 .../html/kernel-manual/actions-org.html            |   29 ++++
 .../html/kernel-manual/architecture-overview.html  |   79 ++++++++++
 .../html/kernel-manual/branching-and-workflow.html |   81 ++++++++++
 .../html/kernel-manual/bsp-creating.html           |   71 +++++++++
 .../html/kernel-manual/build-strategy.html         |   82 ++++++++++
 .../html/kernel-manual/bulk-export.html            |   53 +++++++
 .../change-inspection-kernel-changes-commits.html  |   36 +++++
 .../html/kernel-manual/concepts-org.html           |   27 ++++
 .../development-saving-kernel-modifications.html   |   68 +++++++++
 .../export-for-external-upstream-submission.html   |   72 +++++++++
 .../export-for-import-into-other-scm.html          |   30 ++++
 .../kernel-manual/export-internally-via-git.html   |   55 +++++++
 .../export-internally-via-patches.html             |   64 ++++++++
 .../exporting-delivered-kernel-to-scm.html         |   54 +++++++
 .../figures/kernel-architecture-overview.png       |  Bin 0 -> 40748 bytes
 .../html/kernel-manual/figures/kernel-title.png    |  Bin 0 -> 13970 bytes
 .../kernel-manual/importing-changes-for-build.html |   22 +++
 .../kernel-manual/incremental-planned-sharing.html |  111 ++++++++++++++
 .../html/kernel-manual/index.html                  |  126 ++++++++++++++++
 .../html/kernel-manual/kernel-architecture.html    |   21 +++
 .../html/kernel-manual/kernel-big-picture.html     |   91 +++++++++++
 .../html/kernel-manual/kernel-concepts.html        |   32 ++++
 .../html/kernel-manual/kernel-configuration.html   |   85 +++++++++++
 .../html/kernel-manual/kernel-doc-intro.html       |   20 +++
 .../html/kernel-manual/kernel-goals.html           |   55 +++++++
 .../html/kernel-manual/kernel-how-to.html          |   32 ++++
 .../html/kernel-manual/kernel-intro-section.html   |   73 +++++++++
 .../html/kernel-manual/kernel-tools.html           |   35 +++++
 ...th-the-yocto-project-kernel-in-another-scm.html |   31 ++++
 ...show-a-particular-feature-or-branch-change.html |   53 +++++++
 .../kernel-manual/source-code-manager-git.html     |   39 +++++
 .../html/kernel-manual/tip-dirty-string.html       |   43 ++++++
 .../html/kernel-manual/tree-construction.html      |  158 ++++++++++++++++++++
 .../kernel-manual/what-changed-in-a-kernel.html    |   98 ++++++++++++
 .../html/kernel-manual/workflow-examples.html      |   34 ++++
 .../org.yocto.sdk.doc.user/kernel-manual-toc.xml   |   44 ++++++
 plugins/org.yocto.sdk.doc.user/plugin.xml          |    4 +
 plugins/org.yocto.sdk.doc.user/toc.xml             |    3 +
 40 files changed, 2037 insertions(+), 2 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/actions-org.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/architecture-overview.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/branching-and-workflow.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/bsp-creating.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/build-strategy.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/bulk-export.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/change-inspection-kernel-changes-commits.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/concepts-org.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/development-saving-kernel-modifications.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-external-upstream-submission.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-import-into-other-scm.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-git.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-patches.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/exporting-delivered-kernel-to-scm.html
 create mode 100755 plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-architecture-overview.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-title.png
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/importing-changes-for-build.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/incremental-planned-sharing.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/index.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-architecture.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-big-picture.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-concepts.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-configuration.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-doc-intro.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-goals.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-how-to.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-intro-section.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-tools.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/scm-working-with-the-yocto-project-kernel-in-another-scm.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/show-a-particular-feature-or-branch-change.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/source-code-manager-git.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/tip-dirty-string.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/tree-construction.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/what-changed-in-a-kernel.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/html/kernel-manual/workflow-examples.html
 create mode 100644 plugins/org.yocto.sdk.doc.user/kernel-manual-toc.xml

diff --git a/plugins/org.yocto.sdk.doc.user/about.html b/plugins/org.yocto.sdk.doc.user/about.html
index 7ce688d..c6ece55 100644
--- a/plugins/org.yocto.sdk.doc.user/about.html
+++ b/plugins/org.yocto.sdk.doc.user/about.html
@@ -142,6 +142,28 @@
 			</a>
 		<br />
 			<em>Commit:</em> abc32d85a7f241766d1fcc52a251249f2172ea89
+		<br />
+		<br />
+		<strong>
+			Yocto Project Kernel Architecture and Use Manual:
+		</strong>
+		<br />
+		<br />
+			  This document describes the architecture of the Yocto Project
+			  kernel and provides some work flow examples.
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
diff --git a/plugins/org.yocto.sdk.doc.user/build.properties b/plugins/org.yocto.sdk.doc.user/build.properties
index 833e841..788e9e9 100644
--- a/plugins/org.yocto.sdk.doc.user/build.properties
+++ b/plugins/org.yocto.sdk.doc.user/build.properties
@@ -9,7 +9,8 @@ bin.includes = plugin.xml,\
                OSGI-INF/,\
                dev-manual-toc.xml,\
                poky-ref-manual-toc.xml,\
-               bsp-guide-toc.xml
+               bsp-guide-toc.xml,\
+               kernel-manual-toc.xml
 src.includes = toc.xml,\
                html/,\
                yocto-project-qs-toc.xml,\
@@ -17,4 +18,5 @@ src.includes = toc.xml,\
                adt-manual-toc.xml,\
                dev-manual-toc.xml,\
                poky-ref-manual-toc.xml,\
-               bsp-guide-toc.xml
+               bsp-guide-toc.xml,\
+               kernel-manual-toc.xml
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/actions-org.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/actions-org.html
new file mode 100644
index 0000000..bfc21e5
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/actions-org.html
@@ -0,0 +1,29 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.1. Introduction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-how-to.html" title="Chapter 3. Working with the Yocto Project Kernel">
+<link rel="prev" href="kernel-how-to.html" title="Chapter 3. Working with the Yocto Project Kernel">
+<link rel="next" href="tree-construction.html" title="3.2. Tree Construction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.1. Introduction">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="actions-org"></a>3.1. Introduction</h2></div></div></div>
+<p>
+        This chapter describes how to accomplish tasks involving a kernel's tree structure. 
+        The information is designed to help the developer that wants to modify the Yocto 
+        Project kernel and contribute changes upstream to the Yocto Project.
+        The information covers the following:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Tree construction</p></li>
+<li class="listitem"><p>Build strategies</p></li>
+<li class="listitem"><p>Workflow examples</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/architecture-overview.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/architecture-overview.html
new file mode 100644
index 0000000..ee446ea
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/architecture-overview.html
@@ -0,0 +1,79 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.4.1. Overview</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-architecture.html" title="2.4. Kernel Architecture">
+<link rel="prev" href="kernel-architecture.html" title="2.4. Kernel Architecture">
+<link rel="next" href="branching-and-workflow.html" title="2.4.2. Branching Strategy and Workflow">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.1. Overview">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="architecture-overview"></a>2.4.1. Overview</h3></div></div></div>
+<p>
+                As mentioned earlier, a key goal of the Yocto Project is to present the 
+                developer with 
+                a kernel that has a clear and continuous history that is visible to the user. 
+                The architecture and mechanisms used achieve that goal in a manner similar to the 
+                upstream <code class="filename">kernel.org</code>.
+            </p>
+<p>
+                You can think of a Yocto Project kernel as consisting of a baseline Linux kernel with
+                added features logically structured on top of the baseline.
+                The features are tagged and organized by way of a branching strategy implemented by the 
+                source code manager (SCM) Git.
+                For information on Git as applied to the Yocto Project, see the
+                "<a class="link" href="../dev-manual/git.html" target="_self">Git</a>" section in the 
+                Yocto Project Development Manual.
+            </p>
+<p>
+                The result is that the user has the ability to see the added features and 
+                the commits that make up those features.
+                In addition to being able to see added features, the user can also view the history of what 
+                made up the baseline kernel.
+            </p>
+<p>
+                The following illustration shows the conceptual Yocto Project kernel.
+            </p>
+<p>
+                </p>
+<table border="0" summary="manufactured viewport for HTML img" cellspacing="0" cellpadding="0" width="540"><tr style="height: 630px"><td align="center"><img src="figures/kernel-architecture-overview.png" align="middle"></td></tr></table>
+<p>
+            </p>
+<p>
+                In the illustration, the "Kernel.org Branch Point" 
+                marks the specific spot (or release) from 
+                which the Yocto Project kernel is created.  
+                From this point "up" in the tree, features and differences are organized and tagged.
+            </p>
+<p>
+                The "Yocto Project Baseline Kernel" contains functionality that is common to every kernel
+                type and BSP that is organized further up the tree.  
+                Placing these common features in the 
+                tree this way means features don't have to be duplicated along individual branches of the 
+                structure.
+            </p>
+<p>
+                From the Yocto Project Baseline Kernel, branch points represent specific functionality
+                for individual BSPs as well as real-time kernels.
+                The illustration represents this through three BSP-specific branches and a real-time 
+                kernel branch.  
+                Each branch represents some unique functionality for the BSP or a real-time kernel.
+            </p>
+<p>
+                In this example structure, the real-time kernel branch has common features for all 
+                real-time kernels and contains
+                more branches for individual BSP-specific real-time kernels.  
+                The illustration shows three branches as an example. 
+                Each branch points the way to specific, unique features for a respective real-time
+                kernel as they apply to a given BSP.
+            </p>
+<p>
+                The resulting tree structure presents a clear path of markers (or branches) to the 
+                developer that, for all practical purposes, is the kernel needed for any given set 
+                of requirements.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/branching-and-workflow.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/branching-and-workflow.html
new file mode 100644
index 0000000..e6f4b89
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/branching-and-workflow.html
@@ -0,0 +1,81 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.4.2. Branching Strategy and Workflow</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-architecture.html" title="2.4. Kernel Architecture">
+<link rel="prev" href="architecture-overview.html" title="2.4.1. Overview">
+<link rel="next" href="source-code-manager-git.html" title="2.4.3. Source Code Manager - Git">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.2. Branching Strategy and Workflow">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="branching-and-workflow"></a>2.4.2. Branching Strategy and Workflow</h3></div></div></div>
+<p>
+                The Yocto Project team creates kernel branches at points where functionality is 
+                no longer shared and thus, needs to be isolated.
+                For example, board-specific incompatibilities would require different functionality
+                and would require a branch to separate the features. 
+                Likewise, for specific kernel features, the same branching strategy is used.
+            </p>
+<p>
+                This branching strategy results in a tree that has features organized to be specific 
+                for particular functionality, single kernel types, or a subset of kernel types.  
+                This strategy also results in not having to store the same feature twice 
+                internally in the tree.
+                Rather, the kernel team stores the unique differences required to apply the 
+                feature onto the kernel type in question.
+                </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                    The Yocto Project team strives to place features in the tree such that they can be 
+                    shared by all boards and kernel types where possible.
+                    However, during development cycles or when large features are merged,
+                    the team cannot always follow this practice. 
+                    In those cases, the team uses isolated branches to merge features.
+                </div>
+<p>
+            </p>
+<p>
+                BSP-specific code additions are handled in a similar manner to kernel-specific additions. 
+                Some BSPs only make sense given certain kernel types.
+                So, for these types, the team creates branches off the end of that kernel type for all 
+                of the BSPs that are supported on that kernel type.  
+                From the perspective of the tools that create the BSP branch, the BSP is really no 
+                different than a feature.
+                Consequently, the same branching strategy applies to BSPs as it does to features.
+                So again, rather than store the BSP twice, the team only stores the unique 
+                differences for the BSP across the supported multiple kernels.
+            </p>
+<p>
+                While this strategy can result in a tree with a significant number of branches, it is
+                important to realize that from the developer's point of view, there is a linear
+                path that travels from the baseline <code class="filename">kernel.org</code>, through a select
+                group of features and ends with their BSP-specific commits.
+                In other words, the divisions of the kernel are transparent and are not relevant 
+                to the developer on a day-to-day basis.  
+                From the developer's perspective, this path is the "master" branch.
+                The developer does not need to be aware of the existence of any other branches at all.  
+                Of course, there is value in the existence of these branches
+                in the tree, should a person decide to explore them. 
+                For example, a comparison between two BSPs at either the commit level or at the line-by-line 
+                code <code class="filename">diff</code> level is now a trivial operation.
+            </p>
+<p>
+                Working with the kernel as a structured tree follows recognized community best practices. 
+                In particular, the kernel as shipped with the product, should be
+                considered an "upstream source" and viewed as a series of
+                historical and documented modifications (commits). 
+                These modifications represent the development and stabilization done
+                by the Yocto Project kernel development team.
+            </p>
+<p>
+                Because commits only change at significant release points in the product life cycle,
+                developers can work on a branch created
+                from the last relevant commit in the shipped Yocto Project kernel. 
+                As mentioned previously, the structure is transparent to the developer
+                because the kernel tree is left in this state after cloning and building the kernel.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/bsp-creating.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/bsp-creating.html
new file mode 100644
index 0000000..b158239
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/bsp-creating.html
@@ -0,0 +1,71 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.4. Creating a BSP Based on an Existing Similar BSP</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="workflow-examples.html" title="3.4. Workflow Examples">
+<link rel="prev" href="importing-changes-for-build.html" title="3.4.3.2. Importing Changes for the Build">
+<link rel="next" href="tip-dirty-string.html" title='3.4.5. "-dirty" String'>
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.4. Creating a BSP Based on an Existing Similar BSP">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="bsp-creating"></a>3.4.4. Creating a BSP Based on an Existing Similar BSP</h3></div></div></div>
+<p>
+                This section overviews the process of creating a BSP based on an 
+                existing similar BSP.
+                The information is introductory in nature and does not provide step-by-step examples. 
+                For detailed information on how to create a BSP given an existing similar BSP, see
+                the "<a class="link" href="../dev-manual/dev-manual-bsp-appendix.html" target="_self">BSP Development 
+                Example</a>" appendix in the Yocto Project Development Manual, or see the 
+                <a class="ulink" href="https://wiki.yoctoproject.org/wiki/Transcript:_creating_one_generic_Atom_BSP_from_another" target="_self">Transcript:_creating_one_generic_Atom_BSP_from_another</a>
+                wiki page.
+            </p>
+<p>
+                The basic steps you need to follow are:
+                </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem"><p><span class="emphasis"><em>Make sure you have set up a local source directory:</em></span>
+                        You must create a local <a class="link" href="../dev-manual/source-directory.html" target="_self">source
+                        directory</a> by either creating a Git repository (recommended) or 
+                        extracting a Yocto Project release tarball.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Choose an existing BSP available with the Yocto Project:</em></span>
+                        Try to map your board features as closely to the features of a BSP that is  
+                        already supported and exists in the Yocto Project.  
+                        Starting with something as close as possible to your board makes developing 
+                        your BSP easier.  
+                        You can find all the BSPs that are supported and ship with the Yocto Project 
+                        on the Yocto Project's Download page at 
+                        <a class="ulink" href="http://www.yoctoproject.org/download" target="_self">http://www.yoctoproject.org/download</a>.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Be sure you have the Base BSP:</em></span>
+                        You need to either have a local Git repository of the base BSP set up or 
+                        have downloaded and extracted the files from a release BSP tarball.
+                        Either method gives you access to the BSP source files.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Make a copy of the existing BSP, thus isolating your new 
+                        BSP work:</em></span>
+                        Copying the existing BSP file structure gives you a new area in which to work.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Make configuration and recipe changes to your new BSP:</em></span>
+                        Configuration changes involve the files in the BSP's <code class="filename">conf</code>
+                        directory. 
+                        Changes include creating a machine-specific configuration file and editing the 
+                        <code class="filename">layer.conf</code> file.  
+                        The configuration changes identify the kernel you will be using.
+                        Recipe changes include removing, modifying, or adding new recipe files that 
+                        instruct the build process on what features to include in the image.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Prepare for the build:</em></span>
+                        Before you actually initiate the build, you need to set up the build environment
+                        by sourcing the environment initialization script.  
+                        After setting up the environment, you need to make some build configuration 
+                        changes to the <code class="filename">local.conf</code> and <code class="filename">bblayers.conf</code>
+                        files.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Build the image:</em></span>
+                        The OpenEmbedded build system uses BitBake to create the image. 
+                        You need to decide on the type of image you are going to build (e.g. minimal, base, 
+                        core, sato, and so forth) and then start the build using the <code class="filename">bitbake</code>
+                        command.</p></li>
+</ol></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/build-strategy.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/build-strategy.html
new file mode 100644
index 0000000..491909a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/build-strategy.html
@@ -0,0 +1,82 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.3. Build Strategy</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-how-to.html" title="Chapter 3. Working with the Yocto Project Kernel">
+<link rel="prev" href="tree-construction.html" title="3.2. Tree Construction">
+<link rel="next" href="workflow-examples.html" title="3.4. Workflow Examples">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.3. Build Strategy">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="build-strategy"></a>3.3. Build Strategy</h2></div></div></div>
+<p>
+            Once a local Git repository of the Yocto Project kernel exists on a development system, 
+            you can consider the compilation phase of kernel development - building a kernel image.
+            Some prerequisites exist that are validated by the build process before compilation
+            starts:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>The <code class="filename">SRC_URI</code> points to the kernel Git 
+                repository.</p></li>
+<li class="listitem">
+<p>A BSP build branch exists.
+                This branch has the following form:
+                </p>
+<pre class="literallayout">
+     &lt;kernel_type&gt;/&lt;bsp_name&gt;
+                </pre>
+</li>
+</ul></div>
+<p>
+            The OpenEmbedded build system makes sure these conditions exist before attempting compilation.
+            Other means, however, do exist, such as as bootstrapping a BSP, see 
+            the "<a class="link" href="workflow-examples.html" title="3.4. Workflow Examples">Workflow Examples</a>".
+        </p>
+<p>
+            Before building a kernel, the build process verifies the tree 
+            and configures the kernel by processing all of the
+            configuration "fragments" specified by feature descriptions in the <code class="filename">.scc</code>
+            files. 
+            As the features are compiled, associated kernel configuration fragments are noted
+            and recorded in the <code class="filename">meta-*</code> series of directories in their compilation order. 
+            The fragments are migrated, pre-processed and passed to the Linux Kernel
+            Configuration subsystem (<code class="filename">lkc</code>) as raw input in the form 
+            of a <code class="filename">.config</code> file.
+            The <code class="filename">lkc</code> uses its own internal dependency constraints to do the final
+            processing of that information and generates the final <code class="filename">.config</code> file 
+            that is used during compilation.
+        </p>
+<p>
+            Using the board's architecture and other relevant values from the board's template,
+            kernel compilation is started and a kernel image is produced.
+        </p>
+<p>
+            The other thing that you notice once you configure a kernel is that
+            the build process generates a build tree that is separate from your kernel's local Git 
+            source repository tree.
+            This build tree has a name that uses the following form, where 
+            <code class="filename">${MACHINE}</code> is the metadata name of the machine (BSP) and "kernel_type" is one
+            of the Yocto Project supported kernel types (e.g. "standard"):
+        </p>
+<pre class="literallayout">
+     linux-${MACHINE}-&lt;kernel_type&gt;-build
+        </pre>
+<p>
+        </p>
+<p>
+            The existing support in the <code class="filename">kernel.org</code> tree achieves this 
+            default functionality.
+        </p>
+<p>
+            This behavior means that all the generated files for a particular machine or BSP are now in 
+            the build tree directory.  
+            The files include the final <code class="filename">.config</code> file, all the <code class="filename">.o</code>
+            files, the <code class="filename">.a</code> files, and so forth.
+            Since each machine or BSP has its own separate build directory in its own separate branch
+            of the Git repository, you can easily switch between different builds.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/bulk-export.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/bulk-export.html
new file mode 100644
index 0000000..11e9083
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/bulk-export.html
@@ -0,0 +1,53 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.1. Bulk Export</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="development-saving-kernel-modifications.html" title="3.4.2. Development: Saving Kernel Modifications">
+<link rel="prev" href="development-saving-kernel-modifications.html" title="3.4.2. Development: Saving Kernel Modifications">
+<link rel="next" href="incremental-planned-sharing.html" title="3.4.2.2. Incremental/Planned Sharing">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.1. Bulk Export">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="bulk-export"></a>3.4.2.1. Bulk Export</h4></div></div></div>
+<p>
+                    This section describes how you can "bulk" export changes that have not 
+                    been separated or divided. 
+                    This situation works well when you are simply storing patches outside of the kernel 
+                    source repository, either permanently or temporarily, and you are not committing 
+                    incremental changes during development.
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        This technique is not appropriate for full integration of upstream submission
+                        because changes are not properly divided and do not provide an avenue for per-change
+                        commit messages.  
+                        Therefore, this example assumes that changes have not been committed incrementally 
+                        during development and that you simply must gather and export them.
+                    </div>
+<p>
+                    </p>
+<pre class="literallayout">
+     # bulk export of ALL modifications without separation or division
+     # of the changes 
+
+     $ git add .
+     $ git commit -s -a -m &lt;msg&gt; 
+        or
+     $ git commit -s -a # and interact with $EDITOR
+                    </pre>
+<p>
+                </p>
+<p>
+                    The previous operations capture all the local changes in the project source
+                    tree in a single Git commit.
+                    And, that commit is also stored in the project's source tree.
+                </p>
+<p>
+                    Once the changes are exported, you can restore them manually using a template
+                    or through integration with the <code class="filename">default_kernel</code>.
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/change-inspection-kernel-changes-commits.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/change-inspection-kernel-changes-commits.html
new file mode 100644
index 0000000..2611910
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/change-inspection-kernel-changes-commits.html
@@ -0,0 +1,36 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.1. Change Inspection: Changes/Commits</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="workflow-examples.html" title="3.4. Workflow Examples">
+<link rel="prev" href="workflow-examples.html" title="3.4. Workflow Examples">
+<link rel="next" href="what-changed-in-a-kernel.html" title="3.4.1.1. What Changed in a Kernel?">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1. Change Inspection: Changes/Commits">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="change-inspection-kernel-changes-commits"></a>3.4.1. Change Inspection: Changes/Commits</h3></div></div></div>
+<p>
+                A common question when working with a kernel is: 
+                "What changes have been applied to this tree?"
+            </p>
+<p>
+                In projects that have a collection of directories that
+                contain patches to the kernel, it is possible to inspect or "grep" the contents 
+                of the directories to get a general feel for the changes. 
+                This sort of patch inspection is not an efficient way to determine what has been 
+                done to the kernel.
+                The reason it is inefficient is because there are many optional patches that are 
+                selected based on the kernel type and the feature description.
+                Additionally, patches could exist in directories that are not included in the search.
+            </p>
+<p>
+                A more efficient way to determine what has changed in the branch is to use
+                Git and inspect or search the kernel tree. 
+                This method gives you a full view of not only the source code modifications, 
+                but also provides the reasons for the changes.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/concepts-org.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/concepts-org.html
new file mode 100644
index 0000000..9375e86
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/concepts-org.html
@@ -0,0 +1,27 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.1. Introduction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+<link rel="prev" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+<link rel="next" href="kernel-goals.html" title="2.2. Kernel Goals">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.1. Introduction">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="concepts-org"></a>2.1. Introduction</h2></div></div></div>
+<p>
+        This chapter provides conceptual information about the kernel:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Kernel Goals</p></li>
+<li class="listitem"><p>Kernel Development and Maintenance Overview</p></li>
+<li class="listitem"><p>Kernel Architecture</p></li>
+<li class="listitem"><p>Kernel Tools</p></li>
+</ul></div>
+<p>
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/development-saving-kernel-modifications.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/development-saving-kernel-modifications.html
new file mode 100644
index 0000000..a46ed8b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/development-saving-kernel-modifications.html
@@ -0,0 +1,68 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2. Development: Saving Kernel Modifications</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="workflow-examples.html" title="3.4. Workflow Examples">
+<link rel="prev" href="show-a-particular-feature-or-branch-change.html" title="3.4.1.2. Show a Particular Feature or Branch Change">
+<link rel="next" href="bulk-export.html" title="3.4.2.1. Bulk Export">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2. Development: Saving Kernel Modifications">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="development-saving-kernel-modifications"></a>3.4.2. Development: Saving Kernel Modifications</h3></div></div></div>
+<p>
+                Another common operation is to build a BSP supplied by the Yocto Project, make some
+                changes, rebuild, and then test. 
+                Those local changes often need to be exported, shared or otherwise maintained.
+            </p>
+<p>
+                Since the Yocto Project kernel source tree is backed by Git, this activity is
+                much easier as compared to with previous releases. 
+                Because Git tracks file modifications, additions and deletions, it is easy 
+                to modify the code and later realize that you need to save the changes.
+                It is also easy to determine what has changed. 
+                This method also provides many tools to commit, undo and export those modifications.
+            </p>
+<p>
+                This section and its sub-sections, describe general application of Git's 
+                <code class="filename">push</code> and <code class="filename">pull</code> commands, which are used to 
+                get your changes upstream or source your code from an upstream repository.  
+                The Yocto Project provides scripts that help you work in a collaborative development 
+                environment.  
+                For information on these scripts, see the
+                "<a class="link" href="../dev-manual/pushing-a-change-upstream.html" target="_self">Using Scripts to Push a Change 
+                Upstream and Request a Pull</a>" and   
+                "<a class="link" href="../dev-manual/submitting-a-patch.html" target="_self">Using Email to Submit a Patch</a>" 
+                sections in the Yocto Project Development Manual.
+            </p>
+<p>
+                There are many ways to save kernel modifications.
+                The technique employed
+                depends on the destination for the patches:
+   
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Bulk storage</p></li>
+<li class="listitem"><p>Internal sharing either through patches or by using Git</p></li>
+<li class="listitem"><p>External submissions</p></li>
+<li class="listitem"><p>Exporting for integration into another Source Code
+                        Manager (SCM)</p></li>
+</ul></div>
+<p>
+            </p>
+<p>
+                Because of the following list of issues, the destination of the patches also influences 
+                the method for gathering them:
+
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Bisectability</p></li>
+<li class="listitem"><p>Commit headers</p></li>
+<li class="listitem"><p>Division of subsystems for separate submission or review</p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-external-upstream-submission.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-external-upstream-submission.html
new file mode 100644
index 0000000..1ef09a7
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-external-upstream-submission.html
@@ -0,0 +1,72 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.3. Exporting Changes for External (Upstream) Submission</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="development-saving-kernel-modifications.html" title="3.4.2. Development: Saving Kernel Modifications">
+<link rel="prev" href="export-internally-via-git.html" title="3.4.2.2.2. Exporting Changes Internally by Using Git">
+<link rel="next" href="export-for-import-into-other-scm.html" title="3.4.2.4. Exporting Changes for Import into Another SCM">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.3. Exporting Changes for External (Upstream) Submission">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="export-for-external-upstream-submission"></a>3.4.2.3. Exporting Changes for External (Upstream) Submission</h4></div></div></div>
+<p>
+                    This section describes how to export changes for external upstream submission.
+                    If the patch series is large or the maintainer prefers to pull
+                    changes, you can submit these changes by using a pull request.
+                    However, it is common to send patches as an email series.
+                    This method allows easy review and integration of the changes.
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        Before sending patches for review be sure you understand the
+                        community standards for submitting and documenting changes and follow their best practices.  
+                        For example, kernel patches should follow standards such as:
+                        <div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>
+                                <a class="ulink" href="http://linux.yyz.us/patch-format.html" target="_self">http://linux.yyz.us/patch-format.html</a></p></li>
+<li class="listitem"><p>Documentation/SubmittingPatches (in any linux 
+                                kernel source tree)</p></li>
+</ul></div>
+</div>
+<p>
+                </p>
+<p>
+                    The messages used to commit changes are a large part of these standards.
+                    Consequently, be sure that the headers for each commit have the required information.
+                    For information on how to follow the Yocto Project commit message standards, see the
+                    "<a class="link" href="../dev-manual/how-to-submit-a-change.html" target="_self">How to Submit a 
+                    Change</a>" section in the Yocto Project Development Manual.
+                </p>
+<p>
+                    If the initial commits were not properly documented or do not meet those standards,
+                    you can re-base by using the <code class="filename">git rebase -i</code> command to 
+                    manipulate the commits and
+                    get them into the required format. 
+                    Other techniques such as branching and cherry-picking commits are also viable options.
+                </p>
+<p>
+                    Once you complete the commits, you can generate the email that sends the patches 
+                    to the maintainer(s) or lists that review and integrate changes. 
+                    The command <code class="filename">git send-email</code> is commonly used to ensure 
+                    that patches are properly 
+                    formatted for easy application and avoid mailer-induced patch damage.
+                </p>
+<p>
+                    The following is an example of dumping patches for external submission:
+                    </p>
+<pre class="literallayout">
+     # dump the last 4 commits 
+     $ git format-patch --thread -n -o ~/rr/ HEAD^^^^
+     $ git send-email --compose --subject '[RFC 0/N] &lt;patch series summary&gt;' \
+      --to foo@yoctoproject.org --to bar@yoctoproject.org \
+      --cc list@yoctoproject.org  ~/rr
+     # the editor is invoked for the 0/N patch, and when complete the entire
+     # series is sent via email for review
+                    </pre>
+<p>
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-import-into-other-scm.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-import-into-other-scm.html
new file mode 100644
index 0000000..0b4243b
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-for-import-into-other-scm.html
@@ -0,0 +1,30 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.4. Exporting Changes for Import into Another SCM</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="development-saving-kernel-modifications.html" title="3.4.2. Development: Saving Kernel Modifications">
+<link rel="prev" href="export-for-external-upstream-submission.html" title="3.4.2.3. Exporting Changes for External (Upstream) Submission">
+<link rel="next" href="scm-working-with-the-yocto-project-kernel-in-another-scm.html" title="3.4.3. Working with the Yocto Project Kernel in Another SCM">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.4. Exporting Changes for Import into Another SCM">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="export-for-import-into-other-scm"></a>3.4.2.4. Exporting Changes for Import into Another SCM</h4></div></div></div>
+<p>
+                    When you want to export changes for import into another
+                    Source Code Manager (SCM), you can use any of the previously discussed 
+                    techniques.
+                    However, if the patches are manually applied to a secondary tree and then 
+                    that tree is checked into the SCM, you can lose change information such as 
+                    commit logs.
+                    This process is not recommended.
+                </p>
+<p>
+                    Many SCMs can directly import Git commits, or can translate Git patches so that
+                    information is not lost. 
+                    Those facilities are SCM-dependent and you should use them whenever possible.
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-git.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-git.html
new file mode 100644
index 0000000..da95d08
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-git.html
@@ -0,0 +1,55 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.2.2. Exporting Changes Internally by Using Git</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="incremental-planned-sharing.html" title="3.4.2.2. Incremental/Planned Sharing">
+<link rel="prev" href="export-internally-via-patches.html" title="3.4.2.2.1. Exporting Changes Internally by Using Patches">
+<link rel="next" href="export-for-external-upstream-submission.html" title="3.4.2.3. Exporting Changes for External (Upstream) Submission">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.2.2. Exporting Changes Internally by Using Git">
+<div class="titlepage"><div><div><h5 class="title">
+<a name="export-internally-via-git"></a>3.4.2.2.2. Exporting Changes Internally by Using Git</h5></div></div></div>
+<p>
+                        This section describes how you can export changes from a working directory 
+                        by pushing the changes into a master repository or by making a pull request.
+                        Once you have pushed the changes to the master repository, you can then 
+                        pull those same changes into a new kernel build at a later time.
+                    </p>
+<p>
+                        Use this command form to push the changes:
+                        </p>
+<pre class="literallayout">
+     $ git push ssh://&lt;master_server&gt;/&lt;path_to_repo&gt;
+        &lt;local_branch&gt;:&lt;remote_branch&gt;
+                        </pre>
+<p>
+                    </p>
+<p>
+                        For example, the following command pushes the changes from your local branch
+                        <code class="filename">yocto/standard/common-pc/base</code> to the remote branch with the same name 
+                        in the master repository <code class="filename">//git.mycompany.com/pub/git/kernel-3.4</code>.
+                        </p>
+<pre class="literallayout">
+     $ git push ssh://git.mycompany.com/pub/git/kernel-3.4 \
+        yocto/standard/common-pc/base:yocto/standard/common-pc/base
+                        </pre>
+<p>
+                    </p>
+<p>
+                        A pull request entails using the <code class="filename">git request-pull</code> command to compose 
+                        an email to the
+                        maintainer requesting that a branch be pulled into the master repository, see
+                        <a class="ulink" href="http://github.com/guides/pull-requests" target="_self">http://github.com/guides/pull-requests</a> for an example.
+                        </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                            Other commands such as <code class="filename">git stash</code> or branching can also be used to save
+                            changes, but are not covered in this document.
+                        </div>
+<p>
+                    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-patches.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-patches.html
new file mode 100644
index 0000000..02365d4
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/export-internally-via-patches.html
@@ -0,0 +1,64 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.2.1. Exporting Changes Internally by Using Patches</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="incremental-planned-sharing.html" title="3.4.2.2. Incremental/Planned Sharing">
+<link rel="prev" href="incremental-planned-sharing.html" title="3.4.2.2. Incremental/Planned Sharing">
+<link rel="next" href="export-internally-via-git.html" title="3.4.2.2.2. Exporting Changes Internally by Using Git">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.2.1. Exporting Changes Internally by Using Patches">
+<div class="titlepage"><div><div><h5 class="title">
+<a name="export-internally-via-patches"></a>3.4.2.2.1. Exporting Changes Internally by Using Patches</h5></div></div></div>
+<p>
+                        This section describes how you can extract committed changes from a working directory
+                        by exporting them as patches.
+                        Once the changes have been extracted, you can use the patches for upstream submission, 
+                        place them in a Yocto Project template for automatic kernel patching,
+                        or apply them in many other common uses.
+                    </p>
+<p>
+                        This example shows how to create a directory with sequentially numbered patches.
+                        Once the directory is created, you can apply it to a repository using the 
+                        <code class="filename">git am</code> command to reproduce the original commit and all 
+                        the related information such as author, date, commit log, and so forth.
+                        </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                            The new commit identifiers (ID) will be generated upon re-application.  
+                            This action reflects that the commit is now applied to an underlying commit 
+                            with a different ID.
+                        </div>
+<p>
+                        </p>
+<pre class="literallayout">
+     # &lt;first-commit&gt; can be a tag if one was created before development
+     # began. It can also be the parent branch if a branch was created
+     # before development began.
+
+     $ git format-patch -o &lt;dir&gt; &lt;first commit&gt;..&lt;last commit&gt;
+                        </pre>
+<p>
+                    </p>
+<p>
+                        In other words:
+                        </p>
+<pre class="literallayout">
+     # Identify commits of interest.
+
+     # If the tree was tagged before development
+     $ git format-patch -o &lt;save dir&gt; &lt;tag&gt;
+
+     # If no tags are available
+     $ git format-patch -o &lt;save dir&gt; HEAD^  # last commit
+     $ git format-patch -o &lt;save dir&gt; HEAD^^ # last 2 commits
+     $ git whatchanged # identify last commit
+     $ git format-patch -o &lt;save dir&gt; &lt;commit id&gt;
+     $ git format-patch -o &lt;save dir&gt; &lt;rev-list&gt;
+                        </pre>
+<p>
+                    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/exporting-delivered-kernel-to-scm.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/exporting-delivered-kernel-to-scm.html
new file mode 100644
index 0000000..b0aa19d
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/exporting-delivered-kernel-to-scm.html
@@ -0,0 +1,54 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.3.1. Exporting the Delivered Kernel to the SCM</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="scm-working-with-the-yocto-project-kernel-in-another-scm.html" title="3.4.3. Working with the Yocto Project Kernel in Another SCM">
+<link rel="prev" href="scm-working-with-the-yocto-project-kernel-in-another-scm.html" title="3.4.3. Working with the Yocto Project Kernel in Another SCM">
+<link rel="next" href="importing-changes-for-build.html" title="3.4.3.2. Importing Changes for the Build">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.3.1. Exporting the Delivered Kernel to the SCM">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="exporting-delivered-kernel-to-scm"></a>3.4.3.1. Exporting the Delivered Kernel to the SCM</h4></div></div></div>
+<p>
+                    Depending on the SCM, it might be possible to export the entire Yocto Project
+                    kernel Git repository, branches and all, into a new environment. 
+                    This method is preferred because it has the most flexibility and potential to maintain
+                    the meta data associated with each commit.
+                </p>
+<p>
+                    When a direct import mechanism is not available, it is still possible to
+                    export a branch (or series of branches) and check them into a new repository.
+                </p>
+<p>
+                    The following commands illustrate some of the steps you could use to
+                    import the <code class="filename">yocto/standard/common-pc/base</code>
+                    kernel into a secondary SCM:
+                    </p>
+<pre class="literallayout">
+     $ git checkout yocto/standard/common-pc/base
+     $ cd .. ; echo linux/.git &gt; .cvsignore
+     $ cvs import -m "initial import" linux MY_COMPANY start
+                    </pre>
+<p>
+                </p>
+<p>
+                    You could now relocate the CVS repository and use it in a centralized manner. 
+                </p>
+<p>
+                    The following commands illustrate how you can condense and merge two BSPs into a 
+                    second SCM:
+                    </p>
+<pre class="literallayout">
+     $ git checkout yocto/standard/common-pc/base
+     $ git merge yocto/standard/common-pc-64/base
+     # resolve any conflicts and commit them
+     $ cd .. ; echo linux/.git &gt; .cvsignore
+     $ cvs import -m "initial import" linux MY_COMPANY start
+                    </pre>
+<p>
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-architecture-overview.png b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-architecture-overview.png
new file mode 100755
index 0000000000000000000000000000000000000000..2aad172db3b84382f5be412447a005f3846a5c9d
GIT binary patch
literal 40748
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
B3<&@L

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-title.png b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/figures/kernel-title.png
new file mode 100644
index 0000000000000000000000000000000000000000..59d86c00dca5e2475f7cdee54f82d6ff8c027a47
GIT binary patch
literal 13970
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

literal 0
HcmV?d00001

diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/importing-changes-for-build.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/importing-changes-for-build.html
new file mode 100644
index 0000000..4ce0f79
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/importing-changes-for-build.html
@@ -0,0 +1,22 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.3.2. Importing Changes for the Build</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="scm-working-with-the-yocto-project-kernel-in-another-scm.html" title="3.4.3. Working with the Yocto Project Kernel in Another SCM">
+<link rel="prev" href="exporting-delivered-kernel-to-scm.html" title="3.4.3.1. Exporting the Delivered Kernel to the SCM">
+<link rel="next" href="bsp-creating.html" title="3.4.4. Creating a BSP Based on an Existing Similar BSP">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.3.2. Importing Changes for the Build">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="importing-changes-for-build"></a>3.4.3.2. Importing Changes for the Build</h4></div></div></div>
+<p>
+                    Once development has reached a suitable point in the second development
+                    environment, you need to export the changes as patches.
+                    To export them, place the changes in a recipe and
+                    automatically apply them to the kernel during patching.
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/incremental-planned-sharing.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/incremental-planned-sharing.html
new file mode 100644
index 0000000..310e3a6
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/incremental-planned-sharing.html
@@ -0,0 +1,111 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.2.2. Incremental/Planned Sharing</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="development-saving-kernel-modifications.html" title="3.4.2. Development: Saving Kernel Modifications">
+<link rel="prev" href="bulk-export.html" title="3.4.2.1. Bulk Export">
+<link rel="next" href="export-internally-via-patches.html" title="3.4.2.2.1. Exporting Changes Internally by Using Patches">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.2.2. Incremental/Planned Sharing">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="incremental-planned-sharing"></a>3.4.2.2. Incremental/Planned Sharing</h4></div></div></div>
+<p>
+                    This section describes how to save modifications when you are making incremental
+                    commits or practicing planned sharing.
+                    The examples in this section assume that you have incrementally committed 
+                    changes to the tree during development and now need to export them.  
+                    The sections that follow
+                    describe how you can export your changes internally through either patches or by
+                    using Git commands.
+                </p>
+<p>
+                    During development, the following commands are of interest.
+                    For full Git documentation, refer to the Git documentation at  
+                    <a class="ulink" href="http://github.com" target="_self">http://github.com</a>.
+
+                    </p>
+<pre class="literallayout">
+     # edit a file
+     $ vi &lt;path&gt;/file
+     # stage the change
+     $ git add &lt;path&gt;/file
+     # commit the change
+     $ git commit -s
+     # remove a file
+     $ git rm &lt;path&gt;/file
+     # commit the change
+     $ git commit -s
+
+     ... etc.
+                    </pre>
+<p>
+                </p>
+<p>
+                    Distributed development with Git is possible when you use a universally 
+                    agreed-upon unique commit identifier (set by the creator of the commit) that maps to a
+                    specific change set with a specific parent.  
+                    This identifier is created for you when
+                    you create a commit, and is re-created when you amend, alter or re-apply
+                    a commit.  
+                    As an individual in isolation, this is of no interest.
+                    However, if you
+                    intend to share your tree with normal Git <code class="filename">push</code> and 
+                    <code class="filename">pull</code> operations for
+                    distributed development, you should consider the ramifications of changing a
+                    commit that you have already shared with others.
+                </p>
+<p>
+                    Assuming that the changes have not been pushed upstream, or pulled into
+                    another repository, you can update both the commit content and commit messages 
+                    associated with development by using the following commands:
+
+                    </p>
+<pre class="literallayout">
+     $ Git add &lt;path&gt;/file
+     $ Git commit --amend
+     $ Git rebase or Git rebase -i
+                    </pre>
+<p>
+                </p>
+<p>   
+                    Again, assuming that the changes have not been pushed upstream, and that
+                    no pending works-in-progress exist (use <code class="filename">git status</code> to check), then
+                    you can revert (undo) commits by using the following commands:
+
+                    </p>
+<pre class="literallayout">
+     # remove the commit, update working tree and remove all
+     # traces of the change
+     $ git reset --hard HEAD^
+     # remove the commit, but leave the files changed and staged for re-commit
+     $ git reset --soft HEAD^
+     # remove the commit, leave file change, but not staged for commit
+     $ git reset --mixed HEAD^
+                    </pre>
+<p>
+                </p>
+<p>
+                    You can create branches, "cherry-pick" changes, or perform any number of Git
+                    operations until the commits are in good order for pushing upstream
+                    or for pull requests. 
+                    After a <code class="filename">push</code> or <code class="filename">pull</code> command, 
+                    commits are normally considered
+                    "permanent" and you should not modify them.
+                    If the commits need to be changed, you can incrementally do so with new commits.
+                    These practices follow standard Git workflow and the <code class="filename">kernel.org</code> best 
+                    practices, which is recommended.
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        It is recommended to tag or branch before adding changes to a Yocto Project
+                        BSP or before creating a new one.
+                        The reason for this recommendation is because the branch or tag provides a
+                        reference point to facilitate locating and exporting local changes.
+                    </div>
+<p>
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/index.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/index.html
new file mode 100644
index 0000000..9f0be38
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/index.html
@@ -0,0 +1,126 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>The Yocto Project Kernel Architecture and Use Manual</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="next" href="kernel-doc-intro.html" title="Chapter 1. Yocto Project Kernel Architecture and Use Manual">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div lang="en" class="book" title="The Yocto Project Kernel Architecture and Use Manual">
+<div class="titlepage">
+<div>
+<div><h1 class="title">
+<a name="kernel-manual"></a>
+		  The Yocto Project Kernel Architecture and Use Manual
+		</h1></div>
+<div><div class="authorgroup">
+            <div class="author">
+<h3 class="author">
+<span class="firstname">Bruce</span> <span class="surname">Ashfield</span>
+</h3>
+<div class="affiliation">
+                    <span class="orgname">Wind River Corporation<br></span>
+                </div>
+<code class="email">&lt;<a class="email" href="mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</a>&gt;</code>
+</div>
+        </div></div>
+<div><p class="copyright">Copyright © 2010-2012 Linux Foundation</p></div>
+<div><div class="legalnotice" title="Legal Notice">
+<a name="id542337"></a>
+      <p>
+        Permission is granted to copy, distribute and/or modify this document under 
+        the terms of the <a class="ulink" href="http://creativecommons.org/licenses/by-sa/2.0/uk/" target="_self">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</a> as published by Creative Commons.
+      </p>
+      <div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+          Due to production processes, there could be differences between the Yocto Project
+          documentation bundled in the release tarball and the
+          <a class="link" href="../kernel-manual/index.html" target="_self">Yocto Project Kernel Architecture and Use Manual</a> on
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
+<dt><span class="chapter"><a href="kernel-doc-intro.html">1. Yocto Project Kernel Architecture and Use Manual</a></span></dt>
+<dd><dl><dt><span class="section"><a href="kernel-intro-section.html">1.1. Introduction</a></span></dt></dl></dd>
+<dt><span class="chapter"><a href="kernel-concepts.html">2. Yocto Project Kernel Concepts</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="concepts-org.html">2.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="kernel-goals.html">2.2. Kernel Goals</a></span></dt>
+<dt><span class="section"><a href="kernel-big-picture.html">2.3. Yocto Project Kernel Development and Maintenance Overview</a></span></dt>
+<dt><span class="section"><a href="kernel-architecture.html">2.4. Kernel Architecture</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="architecture-overview.html">2.4.1. Overview</a></span></dt>
+<dt><span class="section"><a href="branching-and-workflow.html">2.4.2. Branching Strategy and Workflow</a></span></dt>
+<dt><span class="section"><a href="source-code-manager-git.html">2.4.3. Source Code Manager - Git</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="kernel-configuration.html">2.5. Kernel Configuration</a></span></dt>
+<dt><span class="section"><a href="kernel-tools.html">2.6. Kernel Tools</a></span></dt>
+</dl></dd>
+<dt><span class="chapter"><a href="kernel-how-to.html">3. Working with the Yocto Project Kernel</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="actions-org.html">3.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="tree-construction.html">3.2. Tree Construction</a></span></dt>
+<dt><span class="section"><a href="build-strategy.html">3.3. Build Strategy</a></span></dt>
+<dt><span class="section"><a href="workflow-examples.html">3.4. Workflow Examples</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="change-inspection-kernel-changes-commits.html">3.4.1. Change Inspection: Changes/Commits</a></span></dt>
+<dt><span class="section"><a href="development-saving-kernel-modifications.html">3.4.2. Development: Saving Kernel Modifications</a></span></dt>
+<dt><span class="section"><a href="scm-working-with-the-yocto-project-kernel-in-another-scm.html">3.4.3. Working with the Yocto Project Kernel in Another SCM</a></span></dt>
+<dt><span class="section"><a href="bsp-creating.html">3.4.4. Creating a BSP Based on an Existing Similar BSP</a></span></dt>
+<dt><span class="section"><a href="tip-dirty-string.html">3.4.5. "-dirty" String</a></span></dt>
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
+    
+
+
+
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-architecture.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-architecture.html
new file mode 100644
index 0000000..0a50300
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-architecture.html
@@ -0,0 +1,21 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.4. Kernel Architecture</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+<link rel="prev" href="kernel-big-picture.html" title="2.3. Yocto Project Kernel Development and Maintenance Overview">
+<link rel="next" href="architecture-overview.html" title="2.4.1. Overview">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4. Kernel Architecture">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="kernel-architecture"></a>2.4. Kernel Architecture</h2></div></div></div>
+<p>
+            This section describes the architecture of the kernels available through the 
+            Yocto Project and provides information
+            on the mechanisms used to achieve that architecture.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-big-picture.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-big-picture.html
new file mode 100644
index 0000000..f21efee
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-big-picture.html
@@ -0,0 +1,91 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.3. Yocto Project Kernel Development and Maintenance Overview</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+<link rel="prev" href="kernel-goals.html" title="2.2. Kernel Goals">
+<link rel="next" href="kernel-architecture.html" title="2.4. Kernel Architecture">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.3. Yocto Project Kernel Development and Maintenance Overview">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="kernel-big-picture"></a>2.3. Yocto Project Kernel Development and Maintenance Overview</h2></div></div></div>
+<p>
+            Kernels available through the Yocto Project, like other kernels, are based off the Linux 
+            kernel releases from <a class="ulink" href="http://www.kernel.org" target="_self">http://www.kernel.org</a>.  
+            At the beginning of a major development cycle, the Yocto Project team
+            chooses its kernel based on factors such as release timing, the anticipated release 
+            timing of final upstream <code class="filename">kernel.org</code> versions, and Yocto Project 
+            feature requirements.
+            Typically, the kernel chosen is in the
+            final stages of development by the community.
+            In other words, the kernel is in the release
+            candidate or "rc" phase and not yet a final release. 
+            But, by being in the final stages of external development, the team knows that the 
+            <code class="filename">kernel.org</code> final release will clearly be within the early stages of 
+            the Yocto Project development window.
+        </p>
+<p>
+            This balance allows the team to deliver the most up-to-date kernel
+            as possible, while still ensuring that the team has a stable official release for
+            the baseline Linux kernel version.
+        </p>
+<p>
+            The ultimate source for kernels available through the Yocto Project are released kernels 
+            from <code class="filename">kernel.org</code>.
+            In addition to a foundational kernel from <code class="filename">kernel.org</code>, the  
+            kernels available contain a mix of important new mainline
+            developments, non-mainline developments (when there is no alternative),
+            Board Support Package (BSP) developments,
+            and custom features.
+            These additions result in a commercially released Yocto Project Linux kernel that caters 
+            to specific embedded designer needs for targeted hardware.
+        </p>
+<p>
+            Once a kernel is officially released, the Yocto Project team goes into 
+            their next development cycle, or upward revision (uprev) cycle, while still 
+            continuing maintenance on the released kernel.
+            It is important to note that the most sustainable and stable way
+            to include feature development upstream is through a kernel uprev process.
+            Back-porting hundreds of individual fixes and minor features from various
+            kernel versions is not sustainable and can easily compromise quality.
+        </p>
+<p> 
+            During the uprev cycle, the Yocto Project team uses an ongoing analysis of
+            kernel development, BSP support, and release timing to select the best
+            possible <code class="filename">kernel.org</code> version.
+            The team continually monitors community kernel
+            development to look for significant features of interest.
+            The team does consider back-porting large features if they have a significant advantage. 
+            User or community demand can also trigger a back-port or creation of new
+            functionality in the Yocto Project baseline kernel during the uprev cycle. 
+        </p>
+<p>
+            Generally speaking, every new kernel both adds features and introduces new bugs.
+            These consequences are the basic properties of upstream kernel development and are
+            managed by the Yocto Project team's kernel strategy. 
+            It is the Yocto Project team's policy to not back-port minor features to the released kernel. 
+            They only consider back-porting significant technological jumps - and, that is done 
+            after a complete gap analysis. 
+            The reason for this policy is that back-porting any small to medium sized change 
+            from an evolving kernel can easily create mismatches, incompatibilities and very 
+            subtle errors.
+        </p>
+<p>
+            These policies result in both a stable and a cutting
+            edge kernel that mixes forward ports of existing features and significant and critical 
+            new functionality. 
+            Forward porting functionality in the kernels available through the Yocto Project kernel 
+            can be thought of as a "micro uprev."
+            The many &#8220;micro uprevs&#8221; produce a kernel version with a mix of 
+            important new mainline, non-mainline, BSP developments and feature integrations. 
+            This kernel gives insight into new features and allows focused
+            amounts of testing to be done on the kernel, which prevents
+            surprises when selecting the next major uprev. 
+            The quality of these cutting edge kernels is evolving and the kernels are used in leading edge 
+            feature and BSP development.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-concepts.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-concepts.html
new file mode 100644
index 0000000..c042c13
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-concepts.html
@@ -0,0 +1,32 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 2. Yocto Project Kernel Concepts</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="prev" href="kernel-intro-section.html" title="1.1. Introduction">
+<link rel="next" href="concepts-org.html" title="2.1. Introduction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 2. Yocto Project Kernel Concepts">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="kernel-concepts"></a>Chapter 2. Yocto Project Kernel Concepts</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="concepts-org.html">2.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="kernel-goals.html">2.2. Kernel Goals</a></span></dt>
+<dt><span class="section"><a href="kernel-big-picture.html">2.3. Yocto Project Kernel Development and Maintenance Overview</a></span></dt>
+<dt><span class="section"><a href="kernel-architecture.html">2.4. Kernel Architecture</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="architecture-overview.html">2.4.1. Overview</a></span></dt>
+<dt><span class="section"><a href="branching-and-workflow.html">2.4.2. Branching Strategy and Workflow</a></span></dt>
+<dt><span class="section"><a href="source-code-manager-git.html">2.4.3. Source Code Manager - Git</a></span></dt>
+</dl></dd>
+<dt><span class="section"><a href="kernel-configuration.html">2.5. Kernel Configuration</a></span></dt>
+<dt><span class="section"><a href="kernel-tools.html">2.6. Kernel Tools</a></span></dt>
+</dl>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-configuration.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-configuration.html
new file mode 100644
index 0000000..55ba484
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-configuration.html
@@ -0,0 +1,85 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.5. Kernel Configuration</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+<link rel="prev" href="source-code-manager-git.html" title="2.4.3. Source Code Manager - Git">
+<link rel="next" href="kernel-tools.html" title="2.6. Kernel Tools">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.5. Kernel Configuration">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="kernel-configuration"></a>2.5. Kernel Configuration</h2></div></div></div>
+<p>
+            Kernel configuration, along with kernel features, defines how a kernel
+            image is built for the Yocto Project. 
+            Through configuration settings, you can customize a Yocto Project kernel to be
+            specific to particular hardware.
+            For example, you can specify sound support or networking support.
+            This section describes basic concepts behind Kernel configuration within the 
+            Yocto Project and references you to other areas for specific configuration
+            applications.
+        </p>
+<p>
+            Conceptually, configuration of a Yocto Project kernel occurs similarly to that needed for any
+            Linux kernel.
+            The build process for a Yocto Project kernel uses a <code class="filename">.config</code> file, which 
+            is created through the Linux Kernel Coinfiguration (LKC) tool.
+            You can directly set various configurations in the 
+            <code class="filename">.config</code> file by using the <code class="filename">menuconfig</code> 
+            tool as built by BitBake.
+            You can also define configurations in the file by using configuration fragments.
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                It is not recommended that you edit the <code class="filename">.config</code> file directly.
+            </div>
+<p>
+            Here are some brief descriptions of the ways you can affect the 
+            <code class="filename">.config</code> file:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem">
+<p><span class="emphasis"><em>The <code class="filename">menuconfig</code> Tool:</em></span> 
+                    One of many front-ends that allows you to define kernel configurations.  
+                    Some others are <code class="filename">make config</code>, 
+                    <code class="filename">make nconfig</code>, and <code class="filename">make gconfig</code>.
+                    In the Yocto Project environment, you must use BitBake to build the 
+                    <code class="filename">menuconfig</code> tool before you can use it to define
+                    configurations:
+                    </p>
+<pre class="literallayout">
+     $ bitbake linux-yocto -c menuconfig
+                    </pre>
+<p>
+                    After the tool is built, you can interact with it normally.
+                    You can see how <code class="filename">menuconfig</code> is used to change a simple 
+                    kernel configuration in the 
+                    "<a class="link" href="../dev-manual/changing-the-config-smp-configuration-using-menuconfig.html" target="_self">Changing the  <code class="filename">CONFIG_SMP</code> Configuration Using  <code class="filename">menuconfig</code></a>" 
+                    section of the Yocto Project Development Manual.
+                    For general information on <code class="filename">menuconfig</code>, see
+                    <a class="ulink" href="http://en.wikipedia.org/wiki/Menuconfig" target="_self">http://en.wikipedia.org/wiki/Menuconfig</a>.
+                    </p>
+</li>
+<li class="listitem">
+<p><span class="emphasis"><em>Configuration Fragments:</em></span> A file with a 
+                    list of kernel options just as they would appear syntactically in the 
+                    <code class="filename">.config</code> file.
+                    Configuration fragments are typically logical groupings and are assembled
+                    by the OpenEmbedded build system to produce input used by the LKC
+                    that ultimately generates the <code class="filename">.config</code> file.</p>
+<p>The 
+                    <code class="filename"><a class="link" href="../poky-ref-manual/var-KERNEL_FEATURES.html" target="_self">KERNEL_FEATURES</a></code>
+                    variable can be used to list configuration fragments.
+                    For further discussion on applying configuration fragments, see the 
+                    "<a class="link" href="../bsp-guide/bsp-filelayout-kernel.html" target="_self">Linux Kernel Configuration</a>"
+                    section in the Yocto Project Board Support Package (BSP) Guide.
+                    </p>
+</li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-doc-intro.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-doc-intro.html
new file mode 100644
index 0000000..498edc4
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-doc-intro.html
@@ -0,0 +1,20 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 1. Yocto Project Kernel Architecture and Use Manual</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="prev" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="next" href="kernel-intro-section.html" title="1.1. Introduction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 1. Yocto Project Kernel Architecture and Use Manual">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="kernel-doc-intro"></a>Chapter 1. Yocto Project Kernel Architecture and Use Manual</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl><dt><span class="section"><a href="kernel-intro-section.html">1.1. Introduction</a></span></dt></dl>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-goals.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-goals.html
new file mode 100644
index 0000000..bfaed0a
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-goals.html
@@ -0,0 +1,55 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.2. Kernel Goals</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+<link rel="prev" href="concepts-org.html" title="2.1. Introduction">
+<link rel="next" href="kernel-big-picture.html" title="2.3. Yocto Project Kernel Development and Maintenance Overview">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.2. Kernel Goals">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="kernel-goals"></a>2.2. Kernel Goals</h2></div></div></div>
+<p>
+            The complexity of embedded kernel design has increased dramatically. 
+            Whether it is managing multiple implementations of a particular feature or tuning and
+            optimizing board specific features, both flexibility and maintainability are key concerns. 
+            The Linux kernels available through the Yocto Project are presented with the embedded
+            developer's needs in mind and have evolved to assist in these key concerns. 
+            For example, prior methods such as applying hundreds of patches to an extracted
+            tarball have been replaced with proven techniques that allow easy inspection,
+            bisection and analysis of changes. 
+            Application of these techniques also creates a platform for performing integration and 
+            collaboration with the thousands of upstream development projects.
+        </p>
+<p>
+            With all these considerations in mind, the Yocto Project's kernel and development team
+            strives to attain these goals:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Allow the end user to leverage community best practices to seamlessly 
+            manage the development, build and debug cycles.</p></li>
+<li class="listitem"><p>Create a platform for performing integration and collaboration with the 
+            thousands of upstream development projects that exist.</p></li>
+<li class="listitem"><p>Provide mechanisms that support many different work flows, front-ends and 
+            management techniques.</p></li>
+<li class="listitem"><p>Deliver the most up-to-date kernel possible while still ensuring that 
+            the baseline kernel is the most stable official release.</p></li>
+<li class="listitem"><p>Include major technological features as part of the Yocto Project's 
+            upward revision strategy.</p></li>
+<li class="listitem"><p>Present a kernel Git repository that, similar to the upstream 
+            <code class="filename">kernel.org</code> tree, 
+            has a clear and continuous history.</p></li>
+<li class="listitem"><p>Deliver a key set of supported kernel types, where each type is tailored 
+            to meet a specific use (e.g. networking, consumer, devices, and so forth).</p></li>
+<li class="listitem"><p>Employ a Git branching strategy that, from a developer's point of view,
+            results in a linear path from the baseline <code class="filename">kernel.org</code>, 
+            through a select group of features and
+            ends with their BSP-specific commits.</p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-how-to.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-how-to.html
new file mode 100644
index 0000000..a36c561
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-how-to.html
@@ -0,0 +1,32 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>Chapter 3. Working with the Yocto Project Kernel</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="prev" href="kernel-tools.html" title="2.6. Kernel Tools">
+<link rel="next" href="actions-org.html" title="3.1. Introduction">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="chapter" title="Chapter 3. Working with the Yocto Project Kernel">
+<div class="titlepage"><div><div><h2 class="title">
+<a name="kernel-how-to"></a>Chapter 3. Working with the Yocto Project Kernel</h2></div></div></div>
+<div class="toc">
+<p><b>Table of Contents</b></p>
+<dl>
+<dt><span class="section"><a href="actions-org.html">3.1. Introduction</a></span></dt>
+<dt><span class="section"><a href="tree-construction.html">3.2. Tree Construction</a></span></dt>
+<dt><span class="section"><a href="build-strategy.html">3.3. Build Strategy</a></span></dt>
+<dt><span class="section"><a href="workflow-examples.html">3.4. Workflow Examples</a></span></dt>
+<dd><dl>
+<dt><span class="section"><a href="change-inspection-kernel-changes-commits.html">3.4.1. Change Inspection: Changes/Commits</a></span></dt>
+<dt><span class="section"><a href="development-saving-kernel-modifications.html">3.4.2. Development: Saving Kernel Modifications</a></span></dt>
+<dt><span class="section"><a href="scm-working-with-the-yocto-project-kernel-in-another-scm.html">3.4.3. Working with the Yocto Project Kernel in Another SCM</a></span></dt>
+<dt><span class="section"><a href="bsp-creating.html">3.4.4. Creating a BSP Based on an Existing Similar BSP</a></span></dt>
+<dt><span class="section"><a href="tip-dirty-string.html">3.4.5. "-dirty" String</a></span></dt>
+</dl></dd>
+</dl>
+</div>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-intro-section.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-intro-section.html
new file mode 100644
index 0000000..2ca08fe
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-intro-section.html
@@ -0,0 +1,73 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>1.1. Introduction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-doc-intro.html" title="Chapter 1. Yocto Project Kernel Architecture and Use Manual">
+<link rel="prev" href="kernel-doc-intro.html" title="Chapter 1. Yocto Project Kernel Architecture and Use Manual">
+<link rel="next" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="1.1. Introduction">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="kernel-intro-section"></a>1.1. Introduction</h2></div></div></div>
+<p>
+        The Yocto Project presents kernels as a fully patched, history-clean Git
+        repositories. 
+        Each repository represents selected features, board support,
+        and configurations extensively tested by the Yocto Project. 
+        Yocto Project kernels allow the end user to leverage community
+        best practices to seamlessly manage the development, build and debug cycles.
+    </p>
+<p>
+        This manual describes Yocto Project kernels by providing information
+        on history, organization, benefits, and use.
+        The manual consists of two sections:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p><span class="emphasis"><em>Concepts:</em></span> Describes concepts behind a kernel.
+                You will understand how a kernel is organized and why it is organized in 
+                the way it is.  You will understand the benefits of a kernel's organization 
+                and the mechanisms used to work with the kernel and how to apply it in your 
+                design process.</p></li>
+<li class="listitem"><p><span class="emphasis"><em>Using a Kernel:</em></span> Describes best practices 
+                and "how-to" information
+                that lets you put a kernel to practical use.  
+                Some examples are how to examine changes in a branch and how to 
+                save kernel modifications.</p></li>
+</ul></div>
+<p>
+    </p>
+<p>
+        For more information on the Linux kernel, see the following links:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>The Linux Foundation's guide for kernel development
+                process - <a class="ulink" href="http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process" target="_self">http://ldn.linuxfoundation.org/book/1-a-guide-kernel-development-process</a></p></li>
+<li class="listitem"><p>A fairly encompassing guide on Linux kernel development - 
+                <a class="ulink" href="http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD" target="_self">http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob_plain;f=Documentation/HOWTO;hb=HEAD</a></p></li>
+</ul></div>
+<p>
+    </p>
+<p>
+        For more discussion on the Yocto Project kernel, you can see these sections
+        in the Yocto Project Development Manual:
+        </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>
+                "<a class="link" href="../dev-manual/kernel-overview.html" target="_self">Kernel Overview</a>"</p></li>
+<li class="listitem"><p>
+                "<a class="link" href="../dev-manual/kernel-modification-workflow.html" target="_self">Kernel Modification Workflow</a>"
+                </p></li>
+<li class="listitem"><p> 
+                "<a class="link" href="../dev-manual/dev-manual-kernel-appendix.html" target="_self">Kernel Modification Example</a>"</p></li>
+</ul></div>
+<p>
+    </p>
+<p> 
+        For general information on the Yocto Project, visit the website at
+        <a class="ulink" href="http://www.yoctoproject.org" target="_self">http://www.yoctoproject.org</a>.
+    </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-tools.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-tools.html
new file mode 100644
index 0000000..8a32531
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/kernel-tools.html
@@ -0,0 +1,35 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.6. Kernel Tools</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-concepts.html" title="Chapter 2. Yocto Project Kernel Concepts">
+<link rel="prev" href="kernel-configuration.html" title="2.5. Kernel Configuration">
+<link rel="next" href="kernel-how-to.html" title="Chapter 3. Working with the Yocto Project Kernel">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.6. Kernel Tools">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="kernel-tools"></a>2.6. Kernel Tools</h2></div></div></div>
+<p>
+            Since most standard workflows involve moving forward with an existing tree by
+            continuing to add and alter the underlying baseline, the tools that manage
+            the Yocto Project's kernel construction are largely hidden from the developer to
+            present a simplified view of the kernel for ease of use.
+        </p>
+<p>
+            Fundamentally, the kernel tools that manage and construct the
+            Yocto Project kernel accomplish the following:
+            </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>Group patches into named, reusable features.</p></li>
+<li class="listitem"><p>Allow top-down control of included features.</p></li>
+<li class="listitem"><p>Bind kernel configurations to kernel patches and features.</p></li>
+<li class="listitem"><p>Present a seamless Git repository that blends Yocto Project value 
+                    with the <code class="filename">kernel.org</code> history and development.</p></li>
+</ul></div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/scm-working-with-the-yocto-project-kernel-in-another-scm.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/scm-working-with-the-yocto-project-kernel-in-another-scm.html
new file mode 100644
index 0000000..23f7044
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/scm-working-with-the-yocto-project-kernel-in-another-scm.html
@@ -0,0 +1,31 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.3. Working with the Yocto Project Kernel in Another SCM</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="workflow-examples.html" title="3.4. Workflow Examples">
+<link rel="prev" href="export-for-import-into-other-scm.html" title="3.4.2.4. Exporting Changes for Import into Another SCM">
+<link rel="next" href="exporting-delivered-kernel-to-scm.html" title="3.4.3.1. Exporting the Delivered Kernel to the SCM">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.3. Working with the Yocto Project Kernel in Another SCM">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="scm-working-with-the-yocto-project-kernel-in-another-scm"></a>3.4.3. Working with the Yocto Project Kernel in Another SCM</h3></div></div></div>
+<p>
+                This section describes kernel development in an SCM other than Git, 
+                which is not the same as exporting changes to another SCM described earlier.
+                For this scenario, you use the OpenEmbedded build system to 
+                develop the kernel in a different SCM.
+                The following must be true for you to accomplish this:
+                </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>The delivered Yocto Project kernel must be exported into the second
+                        SCM.</p></li>
+<li class="listitem"><p>Development must be exported from that secondary SCM into a 
+                        format that can be used by the OpenEmbedded build system.</p></li>
+</ul></div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/show-a-particular-feature-or-branch-change.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/show-a-particular-feature-or-branch-change.html
new file mode 100644
index 0000000..90910bd
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/show-a-particular-feature-or-branch-change.html
@@ -0,0 +1,53 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.1.2. Show a Particular Feature or Branch Change</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="change-inspection-kernel-changes-commits.html" title="3.4.1. Change Inspection: Changes/Commits">
+<link rel="prev" href="what-changed-in-a-kernel.html" title="3.4.1.1. What Changed in a Kernel?">
+<link rel="next" href="development-saving-kernel-modifications.html" title="3.4.2. Development: Saving Kernel Modifications">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1.2. Show a Particular Feature or Branch Change">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="show-a-particular-feature-or-branch-change"></a>3.4.1.2. Show a Particular Feature or Branch Change</h4></div></div></div>
+<p>
+                    Developers use tags in the Yocto Project kernel tree to divide changes for significant 
+                    features or branches. 
+                    Once you know a particular tag, you can use Git commands 
+                    to show changes associated with the tag and find the branches that contain
+                    the feature.  
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        Because BSP branch, <code class="filename">kernel.org</code>, and feature tags are all 
+                        present, there could be many tags.
+                    </div>
+<p>
+                    The <code class="filename">git show &lt;tag&gt;</code> command shows changes that are tagged by 
+                    a feature.
+                    Here is an example that shows changes tagged by the <code class="filename">systemtap</code>
+                    feature:
+                    </p>
+<pre class="literallayout">
+     $ git show systemtap
+                    </pre>
+<p>
+                    You can use the <code class="filename">git branch --contains &lt;tag&gt;</code> command
+                    to show the branches that contain a particular feature.
+                    This command shows the branches that contain the <code class="filename">systemtap</code>
+                    feature:
+                    </p>
+<pre class="literallayout">
+     $ git branch --contains systemtap
+                    </pre>
+<p>
+                </p>
+<p>
+                    You can use many other comparisons to isolate BSP and kernel changes.
+                    For example, you can compare against <code class="filename">kernel.org</code> tags 
+                    such as the <code class="filename">v3.4</code> tag.
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/source-code-manager-git.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/source-code-manager-git.html
new file mode 100644
index 0000000..9c8c016
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/source-code-manager-git.html
@@ -0,0 +1,39 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>2.4.3. Source Code Manager - Git</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-architecture.html" title="2.4. Kernel Architecture">
+<link rel="prev" href="branching-and-workflow.html" title="2.4.2. Branching Strategy and Workflow">
+<link rel="next" href="kernel-configuration.html" title="2.5. Kernel Configuration">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="2.4.3. Source Code Manager - Git">
+<div class="titlepage"><div><div><h3 class="title">
+<a name="source-code-manager-git"></a>2.4.3. Source Code Manager - Git</h3></div></div></div>
+<p>
+                The Source Code Manager (SCM) is Git.
+                This SCM is the obvious mechanism for meeting the previously mentioned goals.  
+                Not only is it the SCM for <code class="filename">kernel.org</code> but,
+                Git continues to grow in popularity and supports many different work flows, 
+                front-ends and management techniques.
+            </p>
+<p>
+                You can find documentation on Git at <a class="ulink" href="http://git-scm.com/documentation" target="_self">http://git-scm.com/documentation</a>.
+                You can also get an introduction to Git as it applies to the Yocto Project in the
+                "<a class="link" href="../dev-manual/git.html" target="_self">Git</a>"
+                section in the Yocto Project Development Manual. 
+                These referenced sections overview Git and describe a minimal set of 
+                commands that allows you to be functional using Git.
+                </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                    You can use as much, or as little, of what Git has to offer to accomplish what
+                    you need for your project.
+                    You do not have to be a "Git Master" in order to use it with the Yocto Project.
+                </div>
+<p>
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/tip-dirty-string.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/tip-dirty-string.html
new file mode 100644
index 0000000..e0f1ef9
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/tip-dirty-string.html
@@ -0,0 +1,43 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.5. "-dirty" String</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="workflow-examples.html" title="3.4. Workflow Examples">
+<link rel="prev" href="bsp-creating.html" title="3.4.4. Creating a BSP Based on an Existing Similar BSP">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title='3.4.5. "-dirty" String'>
+<div class="titlepage"><div><div><h3 class="title">
+<a name="tip-dirty-string"></a>3.4.5. "-dirty" String</h3></div></div></div>
+<p>
+                If kernel images are being built with "-dirty" on the end of the version
+                string, this simply means that modifications in the source
+                directory have not been committed.
+                </p>
+<pre class="literallayout">
+     $ git status
+                </pre>
+<p>
+            </p>
+<p>
+                You can use the above Git command to report modified, removed, or added files. 
+                You should commit those changes to the tree regardless of whether they will be saved, 
+                exported, or used.
+                Once you commit the changes you need to rebuild the kernel.
+            </p>
+<p>
+                To brute force pickup and commit all such pending changes, enter the following:
+                </p>
+<pre class="literallayout">
+     $ git add .
+     $ git commit -s -a -m "getting rid of -dirty"
+                </pre>
+<p>
+            </p>
+<p>
+                Next, rebuild the kernel.
+            </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/tree-construction.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/tree-construction.html
new file mode 100644
index 0000000..9df54a9
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/tree-construction.html
@@ -0,0 +1,158 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.2. Tree Construction</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-how-to.html" title="Chapter 3. Working with the Yocto Project Kernel">
+<link rel="prev" href="actions-org.html" title="3.1. Introduction">
+<link rel="next" href="build-strategy.html" title="3.3. Build Strategy">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.2. Tree Construction">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="tree-construction"></a>3.2. Tree Construction</h2></div></div></div>
+<p>
+            This section describes construction of the Yocto Project kernel source repositories 
+            as accomplished by the Yocto Project team to create kernel repositories.
+            These kernel repositories are found under the heading "Yocto Linux Kernel" at
+            <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi" target="_self">http://git.yoctoproject.org/cgit.cgi</a>
+            and can be shipped as part of a Yocto Project release. 
+            The team creates these repositories by
+            compiling and executing the set of feature descriptions for every BSP/feature
+            in the product. 
+            Those feature descriptions list all necessary patches,
+            configuration, branching, tagging and feature divisions found in a kernel.
+            Thus, the Yocto Project kernel repository (or tree) is built.
+        </p>
+<p>
+            The existence of this tree allows you to access and clone a particular 
+            Yocto Project kernel repository and use it to build images based on their configurations
+            and features.
+        </p>
+<p>
+            You can find the files used to describe all the valid features and BSPs 
+            in the Yocto Project kernel in any clone of the Yocto Project kernel source repository 
+            Git tree.
+            For example, the following command clones the Yocto Project baseline kernel that 
+            branched off of <code class="filename">linux.org</code> version 3.4:
+            </p>
+<pre class="literallayout">
+     $ git clone git://git.yoctoproject.org/linux-yocto-3.4
+            </pre>
+<p>
+            For another example of how to set up a local Git repository of the Yocto Project
+            kernel files, see the 
+            "<a class="link" href="../dev-manual/local-kernel-files.html" target="_self">Yocto Project Kernel</a>" bulleted 
+            item in the Yocto Project Development Manual.
+        </p>
+<p>  
+            Once you have cloned the kernel Git repository on your local machine, you can 
+            switch to the <code class="filename">meta</code> branch within the repository.
+            Here is an example that assumes the local Git repository for the kernel is in 
+            a top-level directory named <code class="filename">linux-yocto-3.4</code>:
+            </p>
+<pre class="literallayout">
+     $ cd ~/linux-yocto-3.4
+     $ git checkout -b meta origin/meta
+            </pre>
+<p>
+            Once you have checked out and switched to the <code class="filename">meta</code> branch,
+            you can see a snapshot of all the kernel configuration and feature descriptions that are 
+            used to build that particular kernel repository.
+            These descriptions are in the form of <code class="filename">.scc</code> files. 
+        </p>
+<p>
+            You should realize, however, that browsing your local kernel repository
+            for feature descriptions and patches is not an effective way to determine what is in a
+            particular kernel branch. 
+            Instead, you should use Git directly to discover the changes in a branch.
+            Using Git is an efficient and flexible way to inspect changes to the kernel.  
+            For examples showing how to use Git to inspect kernel commits, see the following sections
+            in this chapter.
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                Ground up reconstruction of the complete kernel tree is an action only taken by the 
+                Yocto Project team during an active development cycle.  
+                When you create a clone of the kernel Git repository, you are simply making it 
+                efficiently available for building and development.
+            </div>
+<p>
+        </p>
+<p>
+            The following steps describe what happens when the Yocto Project Team constructs
+            the Yocto Project kernel source Git repository (or tree) found at 
+            <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi" target="_self">http://git.yoctoproject.org/cgit.cgi</a> given the 
+            introduction of a new top-level kernel feature or BSP. 
+            These are the actions that effectively create the tree 
+            that includes the new feature, patch or BSP:
+            </p>
+<div class="orderedlist"><ol class="orderedlist" type="1">
+<li class="listitem"><p>A top-level kernel feature is passed to the kernel build subsystem.
+                    Normally, this feature is a BSP for a particular kernel type.</p></li>
+<li class="listitem">
+<p>The file that describes the top-level feature is located by searching
+                    these system directories:
+                    </p>
+<div class="itemizedlist"><ul class="itemizedlist" type="disc">
+<li class="listitem"><p>The in-tree kernel-cache directories, which are located
+                            in <code class="filename">meta/cfg/kernel-cache</code></p></li>
+<li class="listitem"><p>Areas pointed to by <code class="filename">SRC_URI</code> statements
+                            found in recipes</p></li>
+</ul></div>
+<p>
+                    For a typical build, the target of the search is a 
+                    feature description in an <code class="filename">.scc</code> file
+                    whose name follows this format:
+                    </p>
+<pre class="literallayout">
+     &lt;bsp_name&gt;-&lt;kernel_type&gt;.scc
+                    </pre>
+<p>
+                </p>
+</li>
+<li class="listitem"><p>Once located, the feature description is either compiled into a simple script
+                    of actions, or into an existing equivalent script that is already part of the
+                    shipped kernel.</p></li>
+<li class="listitem"><p>Extra features are appended to the top-level feature description. 
+                    These features can come from the 
+                    <a class="link" href="../poky-ref-manual/var-KERNEL_FEATURES.html" target="_self"><code class="filename">KERNEL_FEATURES</code></a>
+                    variable in recipes.</p></li>
+<li class="listitem"><p>Each extra feature is located, compiled and appended to the script 
+                    as described in step three.</p></li>
+<li class="listitem"><p>The script is executed to produce a series of <code class="filename">meta-*</code>
+                    directories. 
+                    These directories are descriptions of all the branches, tags, patches and configurations that
+                    need to be applied to the base Git repository to completely create the
+                    source (build) branch for the new BSP or feature.</p></li>
+<li class="listitem"><p>The base repository is cloned, and the actions
+                    listed in the <code class="filename">meta-*</code> directories are applied to the 
+                    tree.</p></li>
+<li class="listitem"><p>The Git repository is left with the desired branch checked out and any
+                    required branching, patching and tagging has been performed.</p></li>
+</ol></div>
+<p>
+        </p>
+<p>
+            The kernel tree is now ready for developer consumption to be locally cloned,
+            configured, and built into a Yocto Project kernel specific to some target hardware. 
+            </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+<p>The generated <code class="filename">meta-*</code> directories add to the kernel 
+                as shipped with the Yocto Project release. 
+                Any add-ons and configuration data are applied to the end of an existing branch. 
+                The full repository generation that is found in the 
+                official Yocto Project kernel repositories at
+                <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi" target="_self">http://git.yoctoproject.org/cgit.cgi</a>
+                is the combination of all supported boards and configurations.</p>
+<p>The technique the Yocto Project team uses is flexible and allows for seamless 
+                blending of an immutable history with additional patches specific to a 
+                deployment. 
+                Any additions to the kernel become an integrated part of the branches.</p>
+</div>
+<p>
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/what-changed-in-a-kernel.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/what-changed-in-a-kernel.html
new file mode 100644
index 0000000..6b14b93
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/what-changed-in-a-kernel.html
@@ -0,0 +1,98 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4.1.1. What Changed in a Kernel?</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="change-inspection-kernel-changes-commits.html" title="3.4.1. Change Inspection: Changes/Commits">
+<link rel="prev" href="change-inspection-kernel-changes-commits.html" title="3.4.1. Change Inspection: Changes/Commits">
+<link rel="next" href="show-a-particular-feature-or-branch-change.html" title="3.4.1.2. Show a Particular Feature or Branch Change">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4.1.1. What Changed in a Kernel?">
+<div class="titlepage"><div><div><h4 class="title">
+<a name="what-changed-in-a-kernel"></a>3.4.1.1. What Changed in a Kernel?</h4></div></div></div>
+<p>
+                    Following are a few examples that show how to use Git commands to examine changes.
+                    Because Git repositories in the Yocto Project do not break existing Git
+                    functionality, and because there exists many permutations of these types of 
+                    Git commands, many methods exist by which you can discover changes.
+                    </p>
+<div class="note" title="Note" style="margin-left: 0.5in; margin-right: 0.5in;">
+<h3 class="title">Note</h3>
+                        In the following examples, unless you provide a commit range, 
+                        <code class="filename">kernel.org</code> history is blended with Yocto Project
+                        kernel changes.
+                        You can form ranges by using branch names from the kernel tree as the 
+                        upper and lower commit markers with the Git commands.  
+                        You can see the branch names through the web interface to the 
+                        Yocto Project source repositories at 
+                        <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi" target="_self">http://git.yoctoproject.org/cgit.cgi</a>.
+                        For example, the branch names for the <code class="filename">linux-yocto-3.4</code>
+                        kernel repository can be seen at
+                        <a class="ulink" href="http://git.yoctoproject.org/cgit.cgi/linux-yocto-3.4/refs/heads" target="_self">http://git.yoctoproject.org/cgit.cgi/linux-yocto-3.4/refs/heads</a>.
+                    </div>
+<p>
+                    To see a full range of the changes, use the 
+                    <code class="filename">git whatchanged</code> command and specify a commit range
+                    for the branch (<code class="filename">&lt;commit&gt;..&lt;commit&gt;</code>).
+                </p>
+<p>
+                    Here is an example that looks at what has changed in the 
+                    <code class="filename">emenlow</code> branch of the 
+                    <code class="filename">linux-yocto-3.4</code> kernel.  
+                    The lower commit range is the commit associated with the 
+                    <code class="filename">standard/base</code> branch, while 
+                    the upper commit range is the commit associated with the 
+                    <code class="filename">standard/emenlow</code> branch.
+                    </p>
+<pre class="literallayout">
+     $ git whatchanged origin/standard/base..origin/standard/emenlow
+                    </pre>
+<p>
+                </p>
+<p>
+                    To see a summary of changes use the <code class="filename">git log</code> command.
+                    Here is an example using the same branches:
+                    </p>
+<pre class="literallayout">
+     $ git log --oneline origin/standard/base..origin/standard/emenlow
+                    </pre>
+<p>
+                    The <code class="filename">git log</code> output might be more useful than
+                    the <code class="filename">git whatchanged</code> as you get
+                    a short, one-line summary of each change and not the entire commit.
+                </p>
+<p>
+                    If you want to see code differences associated with all the changes, use
+                    the <code class="filename">git diff</code> command.
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     $ git diff origin/standard/base..origin/standard/emenlow
+                    </pre>
+<p>
+                </p>
+<p>
+                    You can see the commit log messages and the text differences using the 
+                    <code class="filename">git show</code> command: 
+                    Here is an example:
+                    </p>
+<pre class="literallayout">
+     $ git show origin/standard/base..origin/standard/emenlow
+                    </pre>
+<p>
+                </p>
+<p>
+                    You can create individual patches for each change by using the 
+                    <code class="filename">git format-patch</code> command.
+                    Here is an example that that creates patch files for each commit and 
+                    places them in your <code class="filename">Documents</code> directory:
+                    </p>
+<pre class="literallayout">
+     $ git format-patch -o $HOME/Documents origin/standard/base..origin/standard/emenlow
+                    </pre>
+<p>
+                </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/html/kernel-manual/workflow-examples.html b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/workflow-examples.html
new file mode 100644
index 0000000..677e208
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/html/kernel-manual/workflow-examples.html
@@ -0,0 +1,34 @@
+<html>
+<head>
+<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
+<title>3.4. Workflow Examples</title>
+<link rel="stylesheet" type="text/css" href="../book.css">
+<meta name="generator" content="DocBook XSL Stylesheets V1.76.1">
+<link rel="home" href="index.html" title="The Yocto Project Kernel Architecture and Use Manual">
+<link rel="up" href="kernel-how-to.html" title="Chapter 3. Working with the Yocto Project Kernel">
+<link rel="prev" href="build-strategy.html" title="3.3. Build Strategy">
+<link rel="next" href="change-inspection-kernel-changes-commits.html" title="3.4.1. Change Inspection: Changes/Commits">
+</head>
+<body bgcolor="white" text="black" link="#0000FF" vlink="#840084" alink="#0000FF"><div class="section" title="3.4. Workflow Examples">
+<div class="titlepage"><div><div><h2 class="title" style="clear: both">
+<a name="workflow-examples"></a>3.4. Workflow Examples</h2></div></div></div>
+<p>
+            As previously noted, the Yocto Project kernel has built-in Git integration.
+            However, these utilities are not the only way to work with the kernel repository.
+            The Yocto Project has not made changes to Git or to other tools that
+            would invalidate alternate workflows. 
+            Additionally, the way the kernel repository is constructed results in using 
+            only core Git functionality, thus allowing any number of tools or front ends to use the 
+            resulting tree.
+        </p>
+<p>
+            This section contains several workflow examples.
+            Many of the examples use Git commands. 
+            You can find Git documentation at 
+            <a class="ulink" href="http://git-scm.com/documentation" target="_self">http://git-scm.com/documentation</a>.
+            You can find a simple overview of using Git with the Yocto Project in the 
+            "<a class="link" href="../dev-manual/git.html" target="_self">Git</a>"
+            section of the Yocto Project Development Manual.
+        </p>
+</div></body>
+</html>
diff --git a/plugins/org.yocto.sdk.doc.user/kernel-manual-toc.xml b/plugins/org.yocto.sdk.doc.user/kernel-manual-toc.xml
new file mode 100644
index 0000000..eba151f
--- /dev/null
+++ b/plugins/org.yocto.sdk.doc.user/kernel-manual-toc.xml
@@ -0,0 +1,44 @@
+<?xml version="1.0" encoding="utf-8" standalone="no"?>
+<toc label="The Yocto Project Kernel Architecture and Use Manual" topic="html/kernel-manual/index.html">
+  <topic label="Yocto Project Kernel Architecture and Use Manual" href="html/kernel-manual/kernel-doc-intro.html">
+    <topic label="Introduction" href="html/kernel-manual/kernel-intro-section.html"/>
+  </topic>
+  <topic label="Yocto Project Kernel Concepts" href="html/kernel-manual/kernel-concepts.html">
+    <topic label="Introduction" href="html/kernel-manual/concepts-org.html"/>
+    <topic label="Kernel Goals" href="html/kernel-manual/kernel-goals.html"/>
+    <topic label="Yocto Project Kernel Development and Maintenance Overview" href="html/kernel-manual/kernel-big-picture.html"/>
+    <topic label="Kernel Architecture" href="html/kernel-manual/kernel-architecture.html">
+      <topic label="Overview" href="html/kernel-manual/architecture-overview.html"/>
+      <topic label="Branching Strategy and Workflow" href="html/kernel-manual/branching-and-workflow.html"/>
+      <topic label="Source Code Manager - Git" href="html/kernel-manual/source-code-manager-git.html"/>
+    </topic>
+    <topic label="Kernel Configuration" href="html/kernel-manual/kernel-configuration.html"/>
+    <topic label="Kernel Tools" href="html/kernel-manual/kernel-tools.html"/>
+  </topic>
+  <topic label="Working with the Yocto Project Kernel" href="html/kernel-manual/kernel-how-to.html">
+    <topic label="Introduction" href="html/kernel-manual/actions-org.html"/>
+    <topic label="Tree Construction" href="html/kernel-manual/tree-construction.html"/>
+    <topic label="Build Strategy" href="html/kernel-manual/build-strategy.html"/>
+    <topic label="Workflow Examples" href="html/kernel-manual/workflow-examples.html">
+      <topic label="Change Inspection: Changes/Commits" href="html/kernel-manual/change-inspection-kernel-changes-commits.html">
+        <topic label="What Changed in a Kernel?" href="html/kernel-manual/what-changed-in-a-kernel.html"/>
+        <topic label="Show a Particular Feature or Branch Change" href="html/kernel-manual/show-a-particular-feature-or-branch-change.html"/>
+      </topic>
+      <topic label="Development: Saving Kernel Modifications" href="html/kernel-manual/development-saving-kernel-modifications.html">
+        <topic label="Bulk Export" href="html/kernel-manual/bulk-export.html"/>
+        <topic label="Incremental/Planned Sharing" href="html/kernel-manual/incremental-planned-sharing.html">
+          <topic label="Exporting Changes Internally by Using Patches" href="html/kernel-manual/export-internally-via-patches.html"/>
+          <topic label="Exporting Changes Internally by Using Git" href="html/kernel-manual/export-internally-via-git.html"/>
+        </topic>
+        <topic label="Exporting Changes for External (Upstream) Submission" href="html/kernel-manual/export-for-external-upstream-submission.html"/>
+        <topic label="Exporting Changes for Import into Another SCM" href="html/kernel-manual/export-for-import-into-other-scm.html"/>
+      </topic>
+      <topic label="Working with the Yocto Project Kernel in Another SCM" href="html/kernel-manual/scm-working-with-the-yocto-project-kernel-in-another-scm.html">
+        <topic label="Exporting the Delivered Kernel to the SCM" href="html/kernel-manual/exporting-delivered-kernel-to-scm.html"/>
+        <topic label="Importing Changes for the Build" href="html/kernel-manual/importing-changes-for-build.html"/>
+      </topic>
+      <topic label="Creating a BSP Based on an Existing Similar BSP" href="html/kernel-manual/bsp-creating.html"/>
+      <topic label="&quot;-dirty&quot; String" href="html/kernel-manual/tip-dirty-string.html"/>
+    </topic>
+  </topic>
+</toc>
diff --git a/plugins/org.yocto.sdk.doc.user/plugin.xml b/plugins/org.yocto.sdk.doc.user/plugin.xml
index da26279..9730b3e 100644
--- a/plugins/org.yocto.sdk.doc.user/plugin.xml
+++ b/plugins/org.yocto.sdk.doc.user/plugin.xml
@@ -27,5 +27,9 @@
           file="bsp-guide-toc.xml"
           primary="false">
     </toc>
+    <toc
+          file="kernel-manual-toc.xml"
+          primary="false">
+    </toc>
  </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.doc.user/toc.xml b/plugins/org.yocto.sdk.doc.user/toc.xml
index af26d88..671054c 100644
--- a/plugins/org.yocto.sdk.doc.user/toc.xml
+++ b/plugins/org.yocto.sdk.doc.user/toc.xml
@@ -15,4 +15,7 @@
    <topic label="The Yocto Project Board Support Package Developer&apos;s Guide">
       <link toc="bsp-guide-toc.xml"/>
    </topic>
+   <topic label="The Yocto Project Kernel Architecture and Use Manual">
+      <link toc="kernel-manual-toc.xml"/>
+   </topic>
 </toc>
-- 
1.7.7.6


