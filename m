Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20215E014AB
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 05:28:42 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:39921 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tnr2H-0002II-4d
	for yocto@yoctoproject.org; Wed, 26 Dec 2012 08:28:41 -0500
Date: Wed, 26 Dec 2012 07:28:37 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212260727410.21408@oneiric>
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
Subject: [PATCH] Documentation: Obvious typoes/grammos in Ch 3 of Development Manual
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
X-List-Received-Date: Wed, 26 Dec 2012 13:28:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index e09c373..65e17e2 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -97,7 +97,7 @@
     <para>
         Most teams have many pieces of software undergoing active development at any given time.
         You can derive large benefits by putting these pieces under the control of a source
-        control system that is compatible (i.e. Git or Subversion (SVN)) with the OpenEmbeded
+        control system that is compatible (i.e. Git or Subversion (SVN)) with the OpenEmbedded
         build system that the Yocto Project uses.
         You can then set the autobuilder to pull the latest revisions of the packages
         and test the latest commits by the builds.
@@ -131,7 +131,7 @@
             <listitem><para>Maintain your metadata in layers that make sense
                 for your situation.
                 See the "<link linkend='understanding-and-creating-layers'>Understanding
-                and Creating Layeres</link>" section for more information on
+                and Creating Layers</link>" section for more information on
                 layers.</para></listitem>
             <listitem><para>Separate the project's metadata and code by using
                 separate Git repositories.
@@ -187,7 +187,7 @@
     </para>

     <para>
-        Once you are set up through either tarball extraction or creation of Git repositories,
+        Once you are set up through either tarball extraction or a checkout of Git repositories,
         you are ready to develop.
     </para>

@@ -362,7 +362,7 @@
                 In its most general sense, it is an open-source project that was initially developed
                 by OpenedHand.  With OpenedHand, poky was developed off of the existing OpenEmbedded
                 build system becoming a build system for embedded images.
-                After Intel Corporation aquired OpenedHand, the project poky became the basis for
+                After Intel Corporation acquired OpenedHand, the project poky became the basis for
                 the Yocto Project's build system.
                 Within the Yocto Project source repositories, poky exists as a separate Git repository
                 that can be cloned to yield a local copy on the host system.
@@ -380,7 +380,7 @@
                 and unpacking a Yocto Project release tarball or creating a local copy of
                 the <filename>poky</filename> Git repository
                 <filename>git://git.yoctoproject.org/poky</filename>.
-                Sometimes you might here the term "poky directory" used to refer to this
+                Sometimes you might hear the term "poky directory" used to refer to this
                 directory structure.
                 <note>
                     The OpenEmbedded build system does not support file or directory names that
@@ -422,7 +422,7 @@
                 reflects the exact copy of the files at the time of their release.
                 You do this by using Git tags that are part of the repository.</para>

-                <para>For more information on concepts around Git repositories, branches, and tags,
+                <para>For more information on concepts related to Git repositories, branches, and tags,
                 see the
                 "<link linkend='repositories-tags-and-branches'>Repositories, Tags, and Branches</link>"
                 section.</para></listitem>

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

