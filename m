Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23E14E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 07:43:33 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Feb 2012 07:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110405218"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 24 Feb 2012 07:43:32 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 24 Feb 2012 07:43:31 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.234]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.145]) with mapi id
	14.01.0355.002; Fri, 24 Feb 2012 07:43:31 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: Yocto Project Quick Start Feedback
Thread-Index: AQHM8o0KICcH6ZR82Eyhss1XDlDHDpZMJfNw
Date: Fri, 24 Feb 2012 15:43:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379374D01F2@ORSMSX102.amr.corp.intel.com>
References: <4F46DC94.2000309@linux.intel.com>
In-Reply-To: <4F46DC94.2000309@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Abbas, Mohamed" <mohamed.abbas@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, "Perez-Gonzalez,
	Inaky" <inaky.perez-gonzalez@intel.com>
Subject: Re: Yocto Project Quick Start Feedback
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
X-List-Received-Date: Fri, 24 Feb 2012 15:43:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Darren and all,

Good feedback on the YP QS.  Here are my thoughts...

It seems that both Inaky and Mohamed are experienced embedded developers.  =
From reading the thread "New User feedback from Inaky and Mohamed" it was o=
bvious that you two know what you are doing in the embedded world.  You guy=
s represent one type of user YP needs to address.  Your feedback points out=
 that you are probably finding it tedious to wade through a bunch of introd=
uctory stuff before getting to a point where you actually use something. Th=
at is good feedback.

Other users that the YP QS must address consist of people investigating emb=
edded development for the first time, non-Linux people, people unfamiliar w=
ith open source development in general, etc.  Because the target audience o=
f the YP QS is broad, it needs to fundamentally flow to satisfy the lowest =
common denominator - thus, its current flow and level of information.  To d=
ate, yours is the first feedback that has indicated the QS needed to "cut t=
o the chase" so to speak.  This type of feedback is valid and would be expe=
cted from advanced users such as you. =20

I can make some changes to the QS structure to better address the advanced =
user.  I can disrupt the advanced user's reading right up front and point t=
hem off to a section in the QS that essentially does what Darren is proposi=
ng as a flow here.  The section can be a single page targeted for the advan=
ced user that is not interested in introductory material but just wants the=
 nuts and bolts.

I will also play around with the color scheme for the Notes and Tips in the=
 QS.  This type of feedback is highly subjective.  What one person feels is=
 distracting might not be distracting for another.  That said, however, it =
is valid feedback and I will see about toning down the note boxes.  I don't=
 like footnotes for the type of information I am using for Notes and Tips. =
 Footnotes tend to get lost and are best suited for anecdotal information t=
hat a reader could do without but for which might be curious.=20

Thanks for great feedback on the YP documentation.  It is input like this t=
hat will continue to make YP and its documentation better.=20

Best,=20
Scott



-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Thursday, February 23, 2012 6:41 PM
To: Yocto Project
Cc: Rifenbark, Scott M; Perez-Gonzalez, Inaky; Abbas, Mohamed
Subject: Yocto Project Quick Start Feedback

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
without having to scroll passed the initial screen on the Quick Start guide=
!

Consider:

Yocto Project Quick Start
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
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
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.=
tar.bz2
$ tar xjf poky-edison-6.0.tar.bz2
$ source poky-edison-6.0/oe-init-build-env edison-6.0-build
$ bitbake -k core-image-sato
$ runqemu qemux86

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

