Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25CD2E0178A
	for <yocto@yoctoproject.org>; Sat,  9 Nov 2013 03:10:23 -0800 (PST)
Received: from [173.34.6.101] (port=57764 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vf6Qn-0001S6-HT; Sat, 09 Nov 2013 06:10:21 -0500
Date: Sat, 9 Nov 2013 06:10:15 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311090609170.19185@oneiric>
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
Subject: [PATCH] Documentation: Small number of tweaks to ch 3, development manual.
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
X-List-Received-Date: Sat, 09 Nov 2013 11:10:24 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-179496482-1383995418=:19185"

--8323329-179496482-1383995418=:19185
Content-Type: TEXT/PLAIN; charset=ISO-8859-7
Content-Transfer-Encoding: 8BIT


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 600c789..58343dc 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -430,7 +430,7 @@
         <note>
             The recommended method for setting up the Yocto Project
             <link linkend='source-directory'>Source Directory</link> and the
-            files for supported BSPs (<filename>meta-intel</filename>) is to
+            files for supported BSPs (eg., <filename>meta-intel</filename>) is to
             use <link linkend='git'>Git</link> to create a local copy of the
             upstream repositories.
         </note>
@@ -810,7 +810,8 @@
     <title>Git</title>

     <para>
-        The Yocto Project uses Git, which is a free, open source distributed version control system.
+        The Yocto Project makes extensive use of Git,
+        which is a free, open source distributed version control system.
         Git supports distributed development, non-linear development, and can handle large projects.
         It is best that you have some fundamental understanding of how Git tracks projects and
         how to work with Git if you are going to use the Yocto Project for development.
@@ -914,7 +915,7 @@
             local working branch based on a branch name,
             your local environment matches the "tip" of that development branch
             at the time you created your local branch, which could be
-            different than the files at the time of a similarly named release.
+            different from the files at the time of a similarly named release.
             In other words, creating and checking out a local branch based on the
             <filename>&DISTRO_NAME;</filename> branch name is not the same as
             cloning and checking out the <filename>master</filename> branch.
@@ -1007,7 +1008,7 @@
                     will allow the change, and for ultimately pushing the change from your local Git repository
                     into the project¢s upstream (or master) repository.</para></listitem>
                 <listitem><para><emphasis><filename>git status</filename>:</emphasis> Reports any modified files that
-                    possibly need staged and committed.</para></listitem>
+                    possibly need to be staged and committed.</para></listitem>
                 <listitem><para><emphasis><filename>git checkout &lt;branch-name&gt;</filename>:</emphasis> Changes
                     your working branch.
                     This command is analogous to "cd".</para></listitem>
@@ -1284,10 +1285,9 @@
             <listitem><para><emphasis>Board Support Package (BSP) README Files:</emphasis>
                 For BSP maintainers of supported BSPs, you can examine
                 individual BSP <filename>README</filename> files.
-                Alternatively, you can examine the
-                <filename>MAINTAINERS</filename> file, which is found in the
-                <filename>meta-intel</filename>, for a list of all supported
-                BSP maintainers.
+                In addition, some layers (such as the <filename>meta-intel</filename> layer),
+                include a <filename>MAINTAINERS</filename> file which contains
+                a list of all supported BSP maintainers for that layer.
                 </para></listitem>
             <listitem><para><emphasis>Search by File:</emphasis>
                 Using <link linkend='git'>Git</link>, you can enter the

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-179496482-1383995418=:19185--
