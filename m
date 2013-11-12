Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1269EE017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 11:54:33 -0800 (PST)
Received: from [173.34.6.101] (port=35141 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VgK2g-0000SS-Pt; Tue, 12 Nov 2013 14:54:30 -0500
Date: Tue, 12 Nov 2013 14:54:27 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311121453100.28253@oneiric>
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
Subject: [PATCH] Documentation: More minor tweaks to development manual.
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
X-List-Received-Date: Tue, 12 Nov 2013 19:54:34 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 0ee7775..4801198 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -253,7 +253,7 @@
                     configuration.
                     In other words, do not copy an entire recipe into your
                     layer and then modify it.
-                    Rather, use <filename>.bbappend</filename> files to override the
+                    Rather, use <filename>.bbappend</filename> files to override
                     only those parts of the original recipe you need to modify.
                 </para>
             </section>
@@ -1509,7 +1509,7 @@
                 You might also need these variables:
                 <itemizedlist>
                     <listitem><para><filename><ulink url='&YOCTO_DOCS_REF_URL;#var-SERIAL_CONSOLES'>SERIAL_CONSOLES</ulink></filename>
-                        (e.g. "115200 ttyS0")</para></listitem>
+                        (e.g. "115200;ttyS0 115200;ttyS1")</para></listitem>
                     <listitem><para><filename><ulink url='&YOCTO_DOCS_REF_URL;#var-KERNEL_IMAGETYPE'>KERNEL_IMAGETYPE</ulink></filename>
                         (e.g. "zImage")</para></listitem>
                     <listitem><para><filename><ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_FSTYPES'>IMAGE_FSTYPES</ulink></filename>
@@ -1549,7 +1549,7 @@
                 <filename>make oldconfig</filename>.
                 By making use of <filename>inherit kernel</filename> and potentially some of the
                 <filename>linux-*.inc</filename> files, most other functionality is
-                centralized and the the defaults of the class normally work well.
+                centralized and the defaults of the class normally work well.
             </para>

             <para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

