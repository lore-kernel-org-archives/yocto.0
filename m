Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF19BE00461
	for <yocto@yoctoproject.org>; Sun, 10 Nov 2013 02:14:24 -0800 (PST)
Received: from [173.34.6.101] (port=48593 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VfS29-0001E5-RC; Sun, 10 Nov 2013 05:14:21 -0500
Date: Sun, 10 Nov 2013 05:14:13 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311100513050.29862@oneiric>
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
Subject: [PATCH] Documentation: Minor tweaks to first part of ch 5, dev manual
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
X-List-Received-Date: Sun, 10 Nov 2013 10:14:25 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  given the length of chapter 5 in the dev manual, i'm going to do
this in bite-size pieces.

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 7d5063b..0ee7775 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -10,7 +10,7 @@
         adding new software packages, extending or customizing images,
         porting work to new hardware (adding a new machine), and so forth.
         You will find the procedures documented here occur often in the
-        develop cycle using the Yocto Project.
+        development cycle using the Yocto Project.
     </para>

     <section id="understanding-and-creating-layers">
@@ -31,7 +31,7 @@
             To illustrate how layers are used to keep things modular, consider
             machine customizations.
             These types of customizations typically reside in a special layer,
-            rather than a general layer, called a Board Specific Package (BSP)
+            rather than a general layer, called a Board Support Package (BSP)
             Layer.
             Furthermore, the machine customizations should be isolated from
             recipes and Metadata that support a new GUI environment,
@@ -60,11 +60,12 @@
                 You can easily identify layers that ship with a
                 Yocto Project release in the Source Directory by their
                 folder names.
-                Folders that are layers begin with the string
-                <filename>meta</filename>.
+                Folders that represent layers typically have names that begin with
+                the string <filename>meta-</filename>.
                 <note>
-                    It is not a requirement that a layer begins with the
-                    string <filename>meta</filename>.
+                    It is not a requirement that a layer name begin with the
+                    prefix <filename>meta-</filename>, but it's a commonly accepted
+                    standard in the Yocto Project community.
                 </note>
                 For example, when you set up the Source Directory structure,
                 you will see several layers:
@@ -72,14 +73,14 @@
                 <filename>meta-skeleton</filename>,
                 <filename>meta-yocto</filename>, and
                 <filename>meta-yocto-bsp</filename>.
-                Each of these folders is a layer.
+                Each of these folders represents a distinct layer.
             </para>

             <para>
                 Furthermore, if you set up a local copy of the
                 <filename>meta-intel</filename> Git repository
                 and then explore the folder of that general layer,
-                you will discover many BSP layers inside.
+                you will discover many Intel-specific BSP layers inside.
                 For more information on BSP layers, see the
                 "<ulink url='&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP Layers</ulink>"
                 section in the Yocto Project Board Support Package (BSP)
@@ -252,8 +253,8 @@
                     configuration.
                     In other words, do not copy an entire recipe into your
                     layer and then modify it.
-                    Use <filename>.bbappend</filename> files to override the
-                    parts of the recipe you need to modify.
+                    Rather, use <filename>.bbappend</filename> files to override the
+                    only those parts of the original recipe you need to modify.
                 </para>
             </section>

@@ -275,6 +276,9 @@
                     the layer to which it originally belongs.
                     If this is the case, you need to address that deficiency
                     instead of overlaying the include file.
+                </para>
+
+                <para>
                     For example, consider how support plug-ins for the Qt 4
                     database are configured.
                     The Source Directory does not have MySQL or PostgreSQL.
@@ -496,7 +500,7 @@
                 number-specific.
                 If the corresponding recipe is renamed to update to a newer
                 version, the corresponding <filename>.bbappend</filename> file must
-                be renamed as well.
+                be renamed (and possibly updated) as well.
                 During the build process, BitBake displays an error on starting
                 if it detects a <filename>.bbappend</filename> file that does
                 not have a corresponding recipe with a matching name.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

