Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D7C8E00461
	for <yocto@yoctoproject.org>; Sun, 10 Nov 2013 01:02:18 -0800 (PST)
Received: from [173.34.6.101] (port=47610 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VfQuO-0002Vt-P3; Sun, 10 Nov 2013 04:02:16 -0500
Date: Sun, 10 Nov 2013 04:02:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311100357070.28862@oneiric>
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
Subject: [PATCH] Documentation: Some minor tweaks to ch 4, development manual
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
X-List-Received-Date: Sun, 10 Nov 2013 09:02:23 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

* is it technically correct to say there are now 5 BSPs? as in, does
genericx86-64 count as a new BSP distinct from genericx86? [aside: are
there any plans for a MIPS64 BSP?]
* if scott is up for it, a couple more variables for the variable
glossary might be BASE_WORKDIR and TARGET_VENDOR, which i would have
added to that variable list but they don't appear in the glossary

diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
index 8b0bfc6..8260e84 100644
--- a/documentation/dev-manual/dev-manual-model.xml
+++ b/documentation/dev-manual/dev-manual-model.xml
@@ -155,10 +155,11 @@
                     For more information on BSP layers, see the
                     "<ulink url='&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP Layers</ulink>" section in the
                     Yocto Project Board Support Package (BSP) Developer's Guide.</para>
-                    <note>Four BSPs exist that are part of the
-                    Yocto Project release: <filename>genericx86</filename>, <filename>beagleboard</filename>,
+                    <note>Five BSPs exist that are part of the
+                    Yocto Project release: <filename>genericx86</filename>, <filename>genericx86-64</filename>,
+                    <filename>beagleboard</filename>,
                     <filename>mpc8315e</filename>, and <filename>routerstationpro</filename>.
-                    The recipes and configurations for these four BSPs are located and dispersed
+                    The recipes and configurations for these five BSPs are located and dispersed
                     within the <link linkend='source-directory'>Source Directory</link>.
                     On the other hand, BSP layers for Chief River, Crown Bay,
                     Crystal Forest, Emenlow, Fish River Island 2, Jasper Forest, N450, NUC DC3217IYE,
@@ -218,10 +219,10 @@
         <para>
             You can view a video presentation on "Building Custom Embedded Images with Yocto"
             at <ulink url='http://free-electrons.com/blog/elc-2011-videos'>Free Electrons</ulink>.
-            You can also find supplemental information in
+            You can also find supplemental information in the
             <ulink url='&YOCTO_DOCS_BSP_URL;'>
-            The Board Support Package (BSP) Development Guide</ulink>.
-            Finally, there is wiki page write up of the example also located
+            Yocto Project Board Support Package (BSP) Developer's Guide</ulink>.
+            Finally, there is a wiki page write up of the example also located
             <ulink url='&YOCTO_WIKI_URL;/wiki/Transcript:_creating_one_generic_Atom_BSP_from_another'>
             here</ulink> that you might find helpful.
        </para>
@@ -1644,7 +1645,7 @@
             <filename>meta/conf/bitbake.conf</filename> configuration file in the
             <link linkend='source-directory'>Source Directory</link>:
             <literallayout class='monospaced'>
-     S = ${WORKDIR}/${BP}
+     S = "${WORKDIR}/${BP}"
             </literallayout>
             You should be aware that many recipes override the <filename>S</filename> variable.
             For example, recipes that fetch their source from Git usually set
@@ -1654,7 +1655,7 @@
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-BP'><filename>BP</filename></ulink>
                 represents the base recipe name, which consists of the name and version:
                 <literallayout class='monospaced'>
-     BP = ${BPN}-${PV}
+     BP = "${BPN}-${PV}"
                 </literallayout>
             </note>
         </para>
@@ -1703,6 +1704,7 @@
             <ulink url='&YOCTO_DOCS_REF_URL;#var-TMPDIR'><filename>TMPDIR</filename></ulink>,
             <ulink url='&YOCTO_DOCS_REF_URL;#var-TOPDIR'><filename>TOPDIR</filename></ulink>,
             <ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGE_ARCH'><filename>PACKAGE_ARCH</filename></ulink>,
+            <ulink url='&YOCTO_DOCS_REF_URL;#var-MULTIMACH_TARGET_SYS'><filename>MULTIMACH_TARGET_SYS</filename></ulink>,
             <ulink url='&YOCTO_DOCS_REF_URL;#var-TARGET_OS'><filename>TARGET_OS</filename></ulink>,
             <ulink url='&YOCTO_DOCS_REF_URL;#var-PN'><filename>PN</filename></ulink>,
             <ulink url='&YOCTO_DOCS_REF_URL;#var-PV'><filename>PV</filename></ulink>,

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

