Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F217CE01757
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 01:32:24 -0800 (PST)
Received: from [173.34.6.101] (port=60134 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vdczm-0007cK-Hz; Tue, 05 Nov 2013 04:32:22 -0500
Date: Tue, 5 Nov 2013 04:32:16 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311050430460.9448@oneiric>
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
Subject: [PATCH] Documentation: Pedantic tweaks to ref manual, usingpoky.xml
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
X-List-Received-Date: Tue, 05 Nov 2013 09:32:27 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-manual/usingpoky.xml
index b00e7bc..1edc9ea 100644
--- a/documentation/ref-manual/usingpoky.xml
+++ b/documentation/ref-manual/usingpoky.xml
@@ -40,7 +40,7 @@
         </para>

         <para>
-            The <filename>build_dir</filename> is optional and specifies the directory the
+            The <filename>build_dir</filename> argument is optional and specifies the directory the
             OpenEmbedded build system uses for the build -
             the <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>.
             If you do not specify a Build Directory, it defaults to a directory
@@ -72,7 +72,7 @@

         <note>
             Building an image without GNU General Public License Version 3 (GPLv3) components
-            is only supported for minimal and base images.
+            is supported for only minimal and base images.
             See the "<link linkend='ref-images'>Images</link>" chapter for more information.
         </note>
     </section>
@@ -158,7 +158,7 @@
             <filename>package_write</filename>, and <filename>build</filename>.
             The default task is <filename>build</filename> and any tasks on which it depends
             build first.
-            Some tasks exist, such as <filename>devshell</filename>, that are not part of the
+            Some tasks, such as <filename>devshell</filename>, are not part of the
             default build chain.
             If you wish to run a task that is not part of the default build chain, you can use the
             <filename>-c</filename> option in BitBake.
@@ -479,11 +479,11 @@
             from your <filename>conf/local.conf</filename> file.
             However, you should realize that enabling and disabling
             build history in this manner can change the
-            <filename>do_package</filename> task checksums, which if you
+            <filename>do_package</filename> task checksums which, if you
             are using the OEBasicHash signature generator (the default
             for many current distro configurations including
             <filename>DISTRO = "poky"</filename> and
-            <filename>DISTRO = ""</filename>) and will result in the packaging
+            <filename>DISTRO = ""</filename>) will result in the packaging
             tasks being re-run during the subsequent build.
         </para>


rday
-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

