Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69913E0059A
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2012 16:41:25 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Feb 2012 16:41:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="111379769"
Received: from unknown (HELO envy.home) ([10.7.199.80])
	by orsmga001.jf.intel.com with ESMTP; 23 Feb 2012 16:41:25 -0800
Message-ID: <4F46DC94.2000309@linux.intel.com>
Date: Thu, 23 Feb 2012 16:40:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.5
Cc: "Abbas, Mohamed" <mohamed.abbas@intel.com>, "Perez-Gonzalez,
	Inaky" <inaky.perez-gonzalez@intel.com>
Subject: Yocto Project Quick Start Feedback
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
X-List-Received-Date: Fri, 24 Feb 2012 00:41:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Scott,

I received from first-time-user feedback regarding the quick start page.
I thought it was good stuff that you should here and consider
incorporating into the document.

1) There is too much introduction, education, and Note blocks before
   we get the user going. The quick start is really about getting them
   going as quickly as possible:

   o Package install
   o Download
   o Build

   There are four "pages" of detail before we get to installing
   packages. 6 before we run any Yocto specific commands.

2) It can be confusing about what to download, since we mention the
   Yocto Project Download page (which has a ton of stuff on it) before
   we tell them to download edison with wget.

3) The Note blocks are huge and distracting for the content. Notes
   should probably be light gray on white in a smaller font, rather
   than white on dark gray. They distract from the primary content.

4) There probably is no need to separate "The Linux Distribution" from
   "The Packages". These convey similar information, and consume a lot
   of space doing so.

5) All the information is good, but it would be good to rearrange things
   such that a new user can actually get a "Quick Start". The Notes
   could be real footnotes, and things like the Development Environment
   section should be "Further Reading" rather than "Required Reading"
   for the "Quick Start".

6) As "Further Reading" we should include something like a "Bitbake
   Flashcard" that outlines the common commands:
   -c listtasks
   -c compile -f
   -c cleansstate (so people don't just start off with
                   "rm -rf tmp sstate-cache")
   -e
   -g depexp -u

I think a good goal would be that a user can run the qemu command
without having to scroll passed the initial screen on the Quick Start guide!

Consider:

Yocto Project Quick Start
=========================
Ubuntu Dependencies
-------------------
$ sudo dpkg-reconfigure dash
  Select "No"
$ sudo apt-get install sed wget cvs subversion git-core coreutils \
  unzip texi2html texinfo libsdl1.2-dev docbook-utils gawk \
  python-pysqlite2 diffstat help2man make gcc build-essential \
  g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
  mercurial autoconf automake groff libtool xterm

Fedora Dependencies
-------------------
     $ sudo yum groupinstall "development tools"
     $ sudo yum install python m4 make wget curl ftp hg tar bzip2 gzip \
     unzip python-psyco perl texinfo texi2html diffstat openjade \
     docbook-style-dsssl sed docbook-style-xsl docbook-dtds \
     docbook-utils sed bc eglibc-devel ccache pcre pcre-devel quilt \
     groff linuxdoc-tools patch linuxdoc-tools cmake help2man \
     perl-ExtUtils-MakeMaker tcl-devel gettext chrpath ncurses apr \
     SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
     autoconf automake libtool xterm

openSUSE Dependencies
---------------------
     $ sudo zypper install python gcc gcc-c++ libtool \
     subversion git chrpath automake make wget help2man \
     diffstat texinfo mercurial freeglut-devel libSDL-devel

Download and Build
------------------
$ wget
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2
$ tar xjf poky-edison-6.0.tar.bz2
$ source poky-edison-6.0/oe-init-build-env edison-6.0-build
$ bitbake -k core-image-sato
$ runqemu qemux86

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

