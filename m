Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1755E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 10:05:42 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Feb 2012 10:05:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="70009129"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Feb 2012 10:05:23 -0800
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 24 Feb 2012 10:05:22 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.234]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.188]) with mapi id
	14.01.0355.002; Fri, 24 Feb 2012 10:05:22 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: William Mills <wmills@ti.com>
Thread-Topic: [yocto] Yocto Project Quick Start Feedback
Thread-Index: AQHM8o0KICcH6ZR82Eyhss1XDlDHDpZMJfNwgACzsgD//3wBMA==
Date: Fri, 24 Feb 2012 18:05:21 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379374D02D4@ORSMSX102.amr.corp.intel.com>
References: <4F46DC94.2000309@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB12379374D01F2@ORSMSX102.amr.corp.intel.com>
	<4F47CD18.7000103@ti.com>
In-Reply-To: <4F47CD18.7000103@ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 24 Feb 2012 18:05:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bill,=20

Thanks for this level of feedback.  I'm especially encouraged to hear that =
the QS seemed to work for your level of expertise, which also seems to be i=
n the expert area.  I think fact that you were not bothered by skimming for=
 essential information reinforces the subjectivity of it all. =20

The "movie" angle is interesting.  Picture this... the opening 1/2 page set=
s up the packages for Ubuntu, downloads files, builds core-image-sata, and =
runs qemu.  All this done without even telling anyone what YP is.  Follow t=
hat by "what just happened... we just built and ran an image using the Yoct=
o Project.  Then the QS launches into the "Welcome" stuff and flows on as n=
ormal.  That would be a unique beginning for a technical manual.

The rm_work comment is concerning.  It sounds like that should just be remo=
ved.

Scott

-----Original Message-----
From: William Mills [mailto:wmills@ti.com]=20
Sent: Friday, February 24, 2012 11:47 AM
To: Rifenbark, Scott M
Cc: Darren Hart; Yocto Project; Abbas, Mohamed; Purdie, Richard; Perez-Gonz=
alez, Inaky
Subject: Re: [yocto] Yocto Project Quick Start Feedback

Scott, Darren & All,

First I want to say I am very excited to see this deep and targeted=20
discussion on the docs.  I think it says very good things about where=20
yocto is as a project.

Just a thought:  Something that often works well in both teaching and=20
movies is to start the story right at some action and then go and=20
explain how you got there. (No I am not talking about Memento.)

That said, when I first tried Yocto/Poky I was not new to embedded or OE=20
and just wanted the meat of how poky expected me to do this.  I really=20
did not have an issue skimming and finding what I was looking for and=20
the background information aclimated me to some "Yocto-speak" and customs.

I read through the notes & tips.  I thought they were all important and=20
I have seen a number of people get caught on each of them.

The only exception I found was the tip of rm_work.  I think this should=20
be removed.  We have seen rm_work interfere with sstate and I have not=20
seen it decrease the peak disk space needed, just the end state.=20
Perhaps this is better than when I last tested.  At any rate I don't=20
think we run any automated builds with rm_work enabled so should we=20
really be encouraging the new user to try this out?

I don't think we should delete a lot from the QS and any reorder is=20
probably fine tunning.

Bill

On 02/24/2012 10:43 AM, Rifenbark, Scott M wrote:
> Darren and all,
>
> Good feedback on the YP QS.  Here are my thoughts...
>
> It seems that both Inaky and Mohamed are experienced embedded developers.=
  From reading the thread "New User feedback from Inaky and Mohamed" it was=
 obvious that you two know what you are doing in the embedded world.  You g=
uys represent one type of user YP needs to address.  Your feedback points o=
ut that you are probably finding it tedious to wade through a bunch of intr=
oductory stuff before getting to a point where you actually use something. =
That is good feedback.
>
> Other users that the YP QS must address consist of people investigating e=
mbedded development for the first time, non-Linux people, people unfamiliar=
 with open source development in general, etc.  Because the target audience=
 of the YP QS is broad, it needs to fundamentally flow to satisfy the lowes=
t common denominator - thus, its current flow and level of information.  To=
 date, yours is the first feedback that has indicated the QS needed to "cut=
 to the chase" so to speak.  This type of feedback is valid and would be ex=
pected from advanced users such as you.
>
> I can make some changes to the QS structure to better address the advance=
d user.  I can disrupt the advanced user's reading right up front and point=
 them off to a section in the QS that essentially does what Darren is propo=
sing as a flow here.  The section can be a single page targeted for the adv=
anced user that is not interested in introductory material but just wants t=
he nuts and bolts.
>
> I will also play around with the color scheme for the Notes and Tips in t=
he QS.  This type of feedback is highly subjective.  What one person feels =
is distracting might not be distracting for another.  That said, however, i=
t is valid feedback and I will see about toning down the note boxes.  I don=
't like footnotes for the type of information I am using for Notes and Tips=
.  Footnotes tend to get lost and are best suited for anecdotal information=
 that a reader could do without but for which might be curious.
>
> Thanks for great feedback on the YP documentation.  It is input like this=
 that will continue to make YP and its documentation better.
>
> Best,
> Scott
>
>
>
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com]
> Sent: Thursday, February 23, 2012 6:41 PM
> To: Yocto Project
> Cc: Rifenbark, Scott M; Perez-Gonzalez, Inaky; Abbas, Mohamed
> Subject: Yocto Project Quick Start Feedback
>
> Scott,
>
> I received from first-time-user feedback regarding the quick start page.
> I thought it was good stuff that you should here and consider
> incorporating into the document.
>
> 1) There is too much introduction, education, and Note blocks before
>     we get the user going. The quick start is really about getting them
>     going as quickly as possible:
>
>     o Package install
>     o Download
>     o Build
>
>     There are four "pages" of detail before we get to installing
>     packages. 6 before we run any Yocto specific commands.
>
> 2) It can be confusing about what to download, since we mention the
>     Yocto Project Download page (which has a ton of stuff on it) before
>     we tell them to download edison with wget.
>
> 3) The Note blocks are huge and distracting for the content. Notes
>     should probably be light gray on white in a smaller font, rather
>     than white on dark gray. They distract from the primary content.
>
> 4) There probably is no need to separate "The Linux Distribution" from
>     "The Packages". These convey similar information, and consume a lot
>     of space doing so.
>
> 5) All the information is good, but it would be good to rearrange things
>     such that a new user can actually get a "Quick Start". The Notes
>     could be real footnotes, and things like the Development Environment
>     section should be "Further Reading" rather than "Required Reading"
>     for the "Quick Start".
>
> 6) As "Further Reading" we should include something like a "Bitbake
>     Flashcard" that outlines the common commands:
>     -c listtasks
>     -c compile -f
>     -c cleansstate (so people don't just start off with
>                     "rm -rf tmp sstate-cache")
>     -e
>     -g depexp -u
>
> I think a good goal would be that a user can run the qemu command
> without having to scroll passed the initial screen on the Quick Start gui=
de!
>
> Consider:
>
> Yocto Project Quick Start
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> Ubuntu Dependencies
> -------------------
> $ sudo dpkg-reconfigure dash
>    Select "No"
> $ sudo apt-get install sed wget cvs subversion git-core coreutils \
>    unzip texi2html texinfo libsdl1.2-dev docbook-utils gawk \
>    python-pysqlite2 diffstat help2man make gcc build-essential \
>    g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
>    mercurial autoconf automake groff libtool xterm
>
> Fedora Dependencies
> -------------------
>       $ sudo yum groupinstall "development tools"
>       $ sudo yum install python m4 make wget curl ftp hg tar bzip2 gzip \
>       unzip python-psyco perl texinfo texi2html diffstat openjade \
>       docbook-style-dsssl sed docbook-style-xsl docbook-dtds \
>       docbook-utils sed bc eglibc-devel ccache pcre pcre-devel quilt \
>       groff linuxdoc-tools patch linuxdoc-tools cmake help2man \
>       perl-ExtUtils-MakeMaker tcl-devel gettext chrpath ncurses apr \
>       SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
>       autoconf automake libtool xterm
>
> openSUSE Dependencies
> ---------------------
>       $ sudo zypper install python gcc gcc-c++ libtool \
>       subversion git chrpath automake make wget help2man \
>       diffstat texinfo mercurial freeglut-devel libSDL-devel
>
> Download and Build
> ------------------
> $ wget
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.=
0.tar.bz2
> $ tar xjf poky-edison-6.0.tar.bz2
> $ source poky-edison-6.0/oe-init-build-env edison-6.0-build
> $ bitbake -k core-image-sato
> $ runqemu qemux86
>

