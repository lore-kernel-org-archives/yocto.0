Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE05AE00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 09:43:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2012 09:43:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136653393"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.59])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2012 09:43:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  3 May 2012 17:43:16 +0100
Message-Id: <1336063397-10503-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [yocto-docs] [PATCH 1/2] documentation/yocto-project-qs: a few more dependency tidy-ups
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
X-List-Received-Date: Thu, 03 May 2012 16:43:38 -0000

* Remove mercurial as this is no longer needed
* linuxdoc-tools was mentioned twice in the CentOS list

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 06c2fd8..04bfdb5 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -232,7 +232,7 @@
      unzip texi2html texinfo libsdl1.2-dev docbook-utils fop gawk \
      python-pysqlite2 diffstat make gcc build-essential xsltproc \
      g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
-     mercurial autoconf automake groff libtool xterm libxml-parser-perl
+     autoconf automake groff libtool xterm libxml-parser-perl
                 </literallayout>
         </section>
 
@@ -279,7 +279,7 @@
                 <literallayout class='monospaced'>
      $ sudo zypper install python gcc gcc-c++ libtool fop \
      subversion git chrpath automake make wget xsltproc \
-     diffstat texinfo mercurial freeglut-devel libSDL-devel
+     diffstat texinfo freeglut-devel libSDL-devel
                 </literallayout>
         </section>
 
@@ -298,7 +298,7 @@
        unzip perl texinfo texi2html diffstat openjade zlib-devel \
        docbook-style-dsssl sed docbook-style-xsl docbook-dtds \
        docbook-utils bc glibc-devel pcre pcre-devel \
-       groff linuxdoc-tools patch linuxdoc-tools cmake \
+       groff linuxdoc-tools patch cmake \
        tcl-devel gettext ncurses apr \
        SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
        autoconf automake libtool xterm
-- 
1.7.5.4


