Return-Path: <mlabernathy80@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4180E003E2
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 09:44:44 -0800 (PST)
Received: by qauh8 with SMTP id h8so451969qau.14
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 09:44:44 -0800 (PST)
Received-SPF: pass (google.com: domain of mlabernathy80@gmail.com designates
	10.229.77.134 as permitted sender) client-ip=10.229.77.134; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	mlabernathy80@gmail.com designates 10.229.77.134 as permitted
	sender) smtp.mail=mlabernathy80@gmail.com;
	dkim=pass header.i=mlabernathy80@gmail.com
Received: from mr.google.com ([10.229.77.134])
	by 10.229.77.134 with SMTP id g6mr2647243qck.33.1330105484010 (num_hops
	= 1); Fri, 24 Feb 2012 09:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=ZTq538VsWA6njo5+PGhy8oVcEBTaQ9Sqt5piuPhBdwE=;
	b=U6DaE/+H+l91GS2nShEbbQELLPV0b9LvDSBKM01/NZw5WKPL8KIeEwnAb31pvye6hq
	jrsus1DnbTc6SRLzYd4z2qOVAgqeMm+CkREf5ZuvAOk5F/WlLuNlrQgjXl3tzPN6WXoP
	HiEcjuamnUkXiMefBfovKhvdgEmlOhYKbrUZ8=
Received: by 10.229.77.134 with SMTP id g6mr2184696qck.33.1330105483616;
	Fri, 24 Feb 2012 09:44:43 -0800 (PST)
Received: from [10.0.1.22] (nc-184-3-50-47.dhcp.embarqhsd.net. [184.3.50.47])
	by mx.google.com with ESMTPS id
	eo4sm13614241qab.16.2012.02.24.09.44.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Feb 2012 09:44:42 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: James Abernathy <mlabernathy80@gmail.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB12379374D01F2@ORSMSX102.amr.corp.intel.com>
Date: Fri, 24 Feb 2012 12:44:39 -0500
Message-Id: <BE76E469-EC78-4492-ABDB-01F46007DEA4@gmail.com>
References: <4F46DC94.2000309@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB12379374D01F2@ORSMSX102.amr.corp.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Mailer: Apple Mail (2.1257)
X-Mailman-Approved-At: Sat, 25 Feb 2012 17:46:45 -0800
Cc: "Abbas, Mohamed" <mohamed.abbas@intel.com>,
	Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, "Perez-Gonzalez,
	Inaky" <inaky.perez-gonzalez@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
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
X-List-Received-Date: Fri, 24 Feb 2012 17:44:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Feb 24, 2012, at 10:43 AM, Rifenbark, Scott M wrote:

> Darren and all,
>=20
> Good feedback on the YP QS.  Here are my thoughts...
>=20
> It seems that both Inaky and Mohamed are experienced embedded =
developers.  =46rom reading the thread "New User feedback from Inaky and =
Mohamed" it was obvious that you two know what you are doing in the =
embedded world.  You guys represent one type of user YP needs to =
address.  Your feedback points out that you are probably finding it =
tedious to wade through a bunch of introductory stuff before getting to =
a point where you actually use something. That is good feedback.
>=20
> Other users that the YP QS must address consist of people =
investigating embedded development for the first time, non-Linux people, =
people unfamiliar with open source development in general, etc.  Because =
the target audience of the YP QS is broad, it needs to fundamentally =
flow to satisfy the lowest common denominator - thus, its current flow =
and level of information.  To date, yours is the first feedback that has =
indicated the QS needed to "cut to the chase" so to speak.  This type of =
feedback is valid and would be expected from advanced users such as you. =
=20
>=20
> I can make some changes to the QS structure to better address the =
advanced user.  I can disrupt the advanced user's reading right up front =
and point them off to a section in the QS that essentially does what =
Darren is proposing as a flow here.  The section can be a single page =
targeted for the advanced user that is not interested in introductory =
material but just wants the nuts and bolts.
>=20
> I will also play around with the color scheme for the Notes and Tips =
in the QS.  This type of feedback is highly subjective.  What one person =
feels is distracting might not be distracting for another.  That said, =
however, it is valid feedback and I will see about toning down the note =
boxes.  I don't like footnotes for the type of information I am using =
for Notes and Tips.  Footnotes tend to get lost and are best suited for =
anecdotal information that a reader could do without but for which might =
be curious.=20
>=20

Scott,

Maybe borrowing from the idea that the Dummies guides have.  They mark =
the sections for beginning, and for those who want/need more detail.    =
They use icons in the margins for: Technical stuff, Tip, Remember, =
Warning, etc.  Maybe something like that?  All of my programming =
knowledge since Kernighan & Ritchie comes from Duummies guides.  That's =
why I'm an expert dummy :-)

Jim A


> Thanks for great feedback on the YP documentation.  It is input like =
this that will continue to make YP and its documentation better.=20
>=20
> Best,=20
> Scott
>=20
>=20
>=20
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com]=20
> Sent: Thursday, February 23, 2012 6:41 PM
> To: Yocto Project
> Cc: Rifenbark, Scott M; Perez-Gonzalez, Inaky; Abbas, Mohamed
> Subject: Yocto Project Quick Start Feedback
>=20
> Scott,
>=20
> I received from first-time-user feedback regarding the quick start =
page.
> I thought it was good stuff that you should here and consider
> incorporating into the document.
>=20
> 1) There is too much introduction, education, and Note blocks before
>   we get the user going. The quick start is really about getting them
>   going as quickly as possible:
>=20
>   o Package install
>   o Download
>   o Build
>=20
>   There are four "pages" of detail before we get to installing
>   packages. 6 before we run any Yocto specific commands.
>=20
> 2) It can be confusing about what to download, since we mention the
>   Yocto Project Download page (which has a ton of stuff on it) before
>   we tell them to download edison with wget.
>=20
> 3) The Note blocks are huge and distracting for the content. Notes
>   should probably be light gray on white in a smaller font, rather
>   than white on dark gray. They distract from the primary content.
>=20
> 4) There probably is no need to separate "The Linux Distribution" from
>   "The Packages". These convey similar information, and consume a lot
>   of space doing so.
>=20
> 5) All the information is good, but it would be good to rearrange =
things
>   such that a new user can actually get a "Quick Start". The Notes
>   could be real footnotes, and things like the Development Environment
>   section should be "Further Reading" rather than "Required Reading"
>   for the "Quick Start".
>=20
> 6) As "Further Reading" we should include something like a "Bitbake
>   Flashcard" that outlines the common commands:
>   -c listtasks
>   -c compile -f
>   -c cleansstate (so people don't just start off with
>                   "rm -rf tmp sstate-cache")
>   -e
>   -g depexp -u
>=20
> I think a good goal would be that a user can run the qemu command
> without having to scroll passed the initial screen on the Quick Start =
guide!
>=20
> Consider:
>=20
> Yocto Project Quick Start
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> Ubuntu Dependencies
> -------------------
> $ sudo dpkg-reconfigure dash
>  Select "No"
> $ sudo apt-get install sed wget cvs subversion git-core coreutils \
>  unzip texi2html texinfo libsdl1.2-dev docbook-utils gawk \
>  python-pysqlite2 diffstat help2man make gcc build-essential \
>  g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
>  mercurial autoconf automake groff libtool xterm
>=20
> Fedora Dependencies
> -------------------
>     $ sudo yum groupinstall "development tools"
>     $ sudo yum install python m4 make wget curl ftp hg tar bzip2 gzip =
\
>     unzip python-psyco perl texinfo texi2html diffstat openjade \
>     docbook-style-dsssl sed docbook-style-xsl docbook-dtds \
>     docbook-utils sed bc eglibc-devel ccache pcre pcre-devel quilt \
>     groff linuxdoc-tools patch linuxdoc-tools cmake help2man \
>     perl-ExtUtils-MakeMaker tcl-devel gettext chrpath ncurses apr \
>     SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
>     autoconf automake libtool xterm
>=20
> openSUSE Dependencies
> ---------------------
>     $ sudo zypper install python gcc gcc-c++ libtool \
>     subversion git chrpath automake make wget help2man \
>     diffstat texinfo mercurial freeglut-devel libSDL-devel
>=20
> Download and Build
> ------------------
> $ wget
> =
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0=
.tar.bz2
> $ tar xjf poky-edison-6.0.tar.bz2
> $ source poky-edison-6.0/oe-init-build-env edison-6.0-build
> $ bitbake -k core-image-sato
> $ runqemu qemux86
>=20
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


