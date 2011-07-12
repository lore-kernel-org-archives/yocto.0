Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id F05784C800A3
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 08:57:36 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QgdSy-0002Zn-3Z
	for yocto@yoctoproject.org; Tue, 12 Jul 2011 09:57:36 -0400
Date: Tue, 12 Jul 2011 09:57:30 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107120955130.5749@localhost6.localdomain6>
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
Subject: [PATCH] DOCS: Rename "poky-init-build-env" to "oe-init-build-env"
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
X-List-Received-Date: Tue, 12 Jul 2011 13:57:37 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Adjust a couple doc files to reflect that the older
poky-init-build-env command has been renamed to oe-init-build-env.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 7fbc876..e6f5c9b 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -29,13 +29,13 @@
         This term refers to the area where you run your builds.
         The area is created when you source the Yocto Project setup environment script
         that is found in the Yocto Project source directory
-        (e.g. <filename>poky-init-build-env</filename>).
+        (e.g. <filename>oe-init-build-env</filename>).
         You can create the Yocto Project build tree anywhere you want on your
         development system.
         Here is an example that creates the tree in <filename>mybuilds</filename>
         and names the Yocto Project build directory <filename>YP-5.0.1</filename>:
         <literallayout class='monospaced'>
-     $ source poky-bernard-5.0.1/poky-init-build-env $HOME/mybuilds/YP-5.0.1
+     $ source poky-bernard-5.0.1/oe-init-build-env $HOME/mybuilds/YP-5.0.1
         </literallayout>
         If you don't specifically name the build directory then Bitbake creates it
         in the current directory and uses the name <filename>build</filename>.
@@ -110,7 +110,7 @@
      $ cd yocto-project
      $ wget http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2
      $ tar xjf poky-bernard-5.0.1.tar.bz2
-     $ source poky-bernard-5.0.1/poky-init-build-env poky-5.0.1-build
+     $ source poky-bernard-5.0.1/oe-init-build-env poky-5.0.1-build
      $ bitbake adt-installer
                 </literallayout>
             </para>
diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 52f7391..500444f 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -296,7 +296,7 @@
              <literallayout class='monospaced'>
      $ wget http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2
      $ tar xjf poky-bernard-5.0.1.tar.bz2
-     $ source poky-bernard-5.0.1/poky-init-build-env poky-5.0.1-build
+     $ source poky-bernard-5.0.1/oe-init-build-env poky-5.0.1-build
              </literallayout>
          </para>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

