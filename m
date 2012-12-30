Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D992E0073D
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2012 02:24:05 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:48077 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TpG3n-0007dM-Uf
	for yocto@yoctoproject.org; Sun, 30 Dec 2012 05:24:04 -0500
Date: Sun, 30 Dec 2012 05:23:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212300522370.12073@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] Documentation: Typoes/grammos in Dev Manual, Section 5.1
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
X-List-Received-Date: Sun, 30 Dec 2012 10:24:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 6c406da..c7ec2b6 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -22,7 +22,7 @@
             into multiple layers.
             Layers allow you to isolate different types of customizations from each other.
             You might find it tempting to keep everything in one layer when working on a single project.
-            However, the more modular you organize your metadata, the easier it is to cope with future changes.
+            However, the more modular your metadata, the easier it is to cope with future changes.
         </para>

         <para>
@@ -30,7 +30,7 @@
             These types of customizations typically reside in a BSP Layer.
             Furthermore, the machine customizations should be isolated from recipes and metadata that support
             a new GUI environment, for example.
-            This situation gives you a couple of layers: one for the machine configurations, and one for the
+            This situation suggests a couple of layers: one for the machine configurations, and one for the
             GUI environment.
             It is important to understand, however, that the BSP layer can still make machine-specific
             additions to recipes within the GUI environment layer without polluting the GUI layer itself
@@ -70,7 +70,7 @@
             <title>Creating Your Own Layer</title>

             <para>
-                It is very easy to create your own layer to use with the OpenEmbedded build system.
+                It is very easy to create a layer for the OpenEmbedded build system.
                 Follow these general steps to create your layer:
                 <orderedlist>
                     <listitem><para><emphasis>Check Existing Layers:</emphasis> Before creating a new layer,
@@ -260,10 +260,10 @@
             </para>

             <para>
-                Append files files must have the same name as the corresponding recipe.
+                Append files must have the same name as the corresponding recipe.
                 For example, the append file <filename>someapp_&DISTRO;.bbappend</filename> must
                 apply to <filename>someapp_&DISTRO;.bb</filename>.
-                This means the original recipe and append file names are version number specific.
+                This means the original recipe and append file names are version number-specific.
                 If the corresponding recipe is renamed to update to a newer version, the
                 underlying <filename>.bbappend</filename> file must be renamed as well.
                 During the build process, BitBake displays an error on starting if it detects a
@@ -344,7 +344,7 @@
                 Each layer is assigned a priority value.
                 Priority values control which layer takes precedence if there are recipe files with
                 the same name in multiple layers.
-                For these cases, the recipe file from the layer with a higher priority number taking precedence.
+                For these cases, the recipe file from the layer with a higher priority number takes precedence.
                 Priority values also affect the order in which multiple <filename>.bbappend</filename> files
                 for the same recipe are applied.
                 You can either specify the priority manually, or allow the build system to calculate it

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

