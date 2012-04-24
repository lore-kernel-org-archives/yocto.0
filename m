Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F60E013E7
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2012 03:20:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Apr 2012 03:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="145211528"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.52])
	by fmsmga001.fm.intel.com with ESMTP; 24 Apr 2012 03:20:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Apr 2012 11:20:38 +0100
Message-Id: <1335262838-5764-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [yocto-docs] [PATCH] documentation/yocto-project-qs/yocto-project-qs.xml: tidy up dependencies
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
X-List-Received-Date: Tue, 24 Apr 2012 10:20:49 -0000

The following packages no longer need to be installed on the host
system:

* python-psyco
* help2man
* cvs
* hg

Additionally, linuxdoc-tools was mentioned twice in the Fedora list.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 812db9f..4f0fcb8 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -228,9 +228,9 @@
             </para>
 
                 <literallayout class='monospaced'>
-     $ sudo apt-get install sed wget cvs subversion git-core coreutils \
+     $ sudo apt-get install sed wget subversion git-core coreutils \
      unzip texi2html texinfo libsdl1.2-dev docbook-utils fop gawk \
-     python-pysqlite2 diffstat help2man make gcc build-essential xsltproc \
+     python-pysqlite2 diffstat make gcc build-essential xsltproc \
      g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
      mercurial autoconf automake groff libtool xterm libxml-parser-perl
                 </literallayout>
@@ -246,11 +246,11 @@
 
                 <literallayout class='monospaced'>
      $ sudo yum groupinstall "development tools"
-     $ sudo yum install python m4 make wget curl ftp hg tar bzip2 gzip \
-     unzip python-psyco perl texinfo texi2html diffstat openjade \
+     $ sudo yum install python m4 make wget curl ftp tar bzip2 gzip \
+     unzip perl texinfo texi2html diffstat openjade \
      docbook-style-dsssl sed docbook-style-xsl docbook-dtds fop xsltproc \
      docbook-utils sed bc eglibc-devel ccache pcre pcre-devel quilt \
-     groff linuxdoc-tools patch linuxdoc-tools cmake help2man \
+     groff linuxdoc-tools patch cmake \
      perl-ExtUtils-MakeMaker tcl-devel gettext chrpath ncurses apr \
      SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
      autoconf automake libtool xterm
@@ -278,7 +278,7 @@
 
                 <literallayout class='monospaced'>
      $ sudo zypper install python gcc gcc-c++ libtool fop \
-     subversion git chrpath automake make wget help2man xsltproc \
+     subversion git chrpath automake make wget xsltproc \
      diffstat texinfo mercurial freeglut-devel libSDL-devel
                 </literallayout>
         </section>
-- 
1.7.5.4


