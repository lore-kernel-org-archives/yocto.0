Return-Path: <jefro.net@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B005E01363
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 12:18:26 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk15 with SMTP id 15so2425833qyk.14
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2011 12:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=mVx9S0jbu+cxOemWh4qYpti78KjuEn5LehR78blkLHI=;
	b=kqYBRWzQljHiHSwlBjZNhaTxrLjlkhAiZEyu07SPIYrlszk/SVAWVZiF3HIs/Y0QSY
	1TOrcjNZWju9wX1kgWd8/xcKd0i1RN5zeibV/04XGOHX+a6dH2VDPIFq3B44L7SX1C6N
	hC9XGJfDgw9zazBPmcmIog/R7YwOpPdeFpSGI=
MIME-Version: 1.0
Received: by 10.50.207.99 with SMTP id lv3mr91058igc.16.1320261505490; Wed, 02
	Nov 2011 12:18:25 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.50.216.193 with HTTP; Wed, 2 Nov 2011 12:18:25 -0700 (PDT)
Date: Wed, 2 Nov 2011 19:18:25 +0000
X-Google-Sender-Auth: 6LaaNtMpZsusO4FnZ8XfC704s-A
Message-ID: <CA+YB3rZ6wk-ecRj_gU-8vrY0qvx7Nh90uwuk6dFvyLhJd=Hqeg@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Yocto Project 1.1 Announcement
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
X-List-Received-Date: Wed, 02 Nov 2011 19:18:27 -0000
Content-Type: multipart/alternative; boundary=14dae9340d4b0b9d5a04b0c5567f

--14dae9340d4b0b9d5a04b0c5567f
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi all - this is the announcement that went out on Weds at the Embedded
Linux Conference Europe / LinuxCon Europe, in case you haven't seen it.

Yocto Project Introduces New Features

The Linux Foundation-hosted Yocto Project fosters growing community
of embedded Linux developers, technologies and products

PRAGUE {LinuxCon Europe}, October 26, 2011 =96 The Yocto Project, a hosted
project at The Linux Foundation, today announced the availability of Yocto
Project Release 1.1, as well as a variety of one-year milestones for the
project.

The Linux Foundation today also announced it will become the host for the
Embedded GNU C Library (EGLIBC), further broadening and strengthening a
common set of tools for embedded Linux development.

The EGLIBC library is an add-on to the GNU C library (glibc) and is
optimized for use in embedded development. Until now, Mentor Graphics, the
founder and chief maintainer of the project through its acquisition of
CodeSourcery, hosted the EGLIBC library. Other participants have included
Freescale, MIPS Technologies, MontaVista Software and Wind River, among
others.

The Yocto Project was announced one year ago (October 2010) to provide
developers with greater consistency in the software and tools they=92re usi=
ng
across multiple architectures for embedded Linux development. The
collaborative project brings together the elements needed to make the
normally difficult embedded Linux development process much easier. The
following milestones and activities are contributing to a vibrant community
for embedded development:

=95 Alignment of OpenEmbedded technology and the inclusion of
OpenEmbedded representation in the Yocto Project governance structure. The
projects share a common core that consists of software build recipes and
core Linux components that prevent fragmentation and reinforce the
OpenEmbedded methodology as an open standard for embedded Linux build
systems.

=95 Contribution of tools and technologies such as Cross-prelink,
EGLIBC, Pseudo, Shoeleather Lab (for automated testing) and Swabber have
been contributed from Intel, Mentor Graphics, MontaVista Software and Wind
River.

=95 Commercial adoption with examples such as FIC=92s Pegasus platform
powered by Tridium=92s Niagara Framework. The Pegasus platform is an
industrial tablet design that was quickly ported to Linux based on existing
Yocto Project Board Support Packages. Tridium is a world leader in software
frameworks, automation infrastructure technology and device-to-enterprise
integration solution, and FIC is a global designer and manufacturer of
mobile and commercial hardware solutions.

=95 Board Support Packages that include Intel=92s Atom-PC,
Freescale=92s MPC8315e-RDB, TI=92s BeagleBoard and Ubiquiti=92s RouterStati=
on
Pro, among others.

The new Yocto Project Release 1.1 is based on Linux kernel 3.0 and consists
of the following new features and resources that enable developers and
third parties to more quickly and easily build embedded Linux systems:

=95 Multi-lib: Reduces storage and memory footprint by allowing the
system developer to mix and match binaries.

=95 Hob: An improved graphical user experience enables developers to select
target architecture, image and layer combinations, and to select or remove
individual packages before building, making the use of the Yocto tools even
easier.

=95 Layer Tooling: Eases the integration and development of layers by
=93flattening=94 them together into a collection of meta-data, making it mu=
ch
easier for third parties to develop and release layers.

=95 Initial support for x32, allowing execution of 32-bit code with all the
benefits of 64-bit mode bringing performance and footprint improvements on
x86 processors.

=95 Small footprint/fast boot layers that make it easier to develop tiny
embedded systems (less than 8MB of memory) with Yocto.

=95 New packages and components include 3G cellular data support and
advanced btrfs filesystem, which improve applicability of the Yocto Project
tools to new segments.

=95 New Yocto Project Developer Guide: This document provides
important information on how to get started in open source, Board Support
Package and kernel development.

=93Since its introduction one year ago this week, the Yocto Project has
exploded into a strong open source community of developers, users and
vendors working together to advance Linux in the mobile and embedded
markets,=94 said Jim Zemlin, executive director at The Linux Foundation. =
=93The
Yocto Project has quickly become a trusted upstream resource for embedded
vendors who need to quickly and easily develop products for a variety of
architectures, and get to market fast.=94

Companies and organizations participating in the project include Dell,
Intel, Mentor Graphics, MontaVista, OpenEmbedded eV, Texas Instruments,
Timesys, and Wind River, among others. The Yocto Project participants are
meeting this week at LinuxCon Europe and the Embedded Linux Conference in
Prague, Czech Republic. For more information on these events, please visit
the Linux Foundation conferences site. For more information about the Yocto
Project, please visit: http://www.yoctoproject.org.

=93The Yocto Project provides an opportunity to help Intel customers
differentiate and create unique solutions in the embedded market segment,=
=94
said Ton Steenman, vice president and general manager, Intelligent Systems
Group, Intel. =93Intel remains committed to choice in operating systems and
our Intelligent Systems roadmap for embedded views the Yocto Project as a
way to provide our customers with a flexible Linux enabling vehicle.=94

=93The EGLIBC library is a fundamental technology to an embedded Linux
system. By integrating it with the Yocto Project and hosting it at The
Linux Foundation, we can accelerate the development of EGLIBC,=94 said Mark
Mitchell, Director of Tools, Mentor Graphics Embedded Software Division.
=93The new Shoeleather Lab hosted by Mentor Graphics will aid the Yocto
Project by providing a neutral site for connecting developers to
leading-edge hardware platforms, facilitating critical porting and
optimization activities around Yocto and EGLIBC.=94

=93The Yocto Project is providing key resources specific to the embedded
Linux developer community,=94 said Dan Cauchy, VP of Marketing and Business
Development, MontaVista Software. =93We=92re glad to be collaborating with =
our
industry peers in improving embedded Linux development.=94

=93The alignment of the Yocto Project and OpenEmbedded continues to
accelerate our development," said Jason Kridner, ARM microprocessors
community development manager at TI. "We're active in the Yocto Project
because it moves as fast as we do to meet the market demands for embedded
Linux development. We're proud to be a part of this community."

=93The adoption of the Yocto Project validates the market demand for a comm=
on
set of embedded Linux development tools,=94 said Paul Anderson, vice
president of Linux products at Wind River. =93As a founding member and acti=
ve
maintainer, Wind River is firmly committed to the success of the Yocto
Project and will continue its contributions of code, resources,
infrastructure, and tools, as well as draw from the Yocto Project as
an upstream source for our commercial Linux releases.=94

About The Linux Foundation

The Linux Foundation is a nonprofit consortium dedicated to fostering the
growth of Linux. Founded in 2000, the organization sponsors the work of
Linux creator Linus Torvalds and promotes, protects and advances the Linux
operating system by marshaling the resources of its members and the open
source development community. The Linux Foundation provides a neutral forum
for collaboration and education by hosting Linux conferences, including
LinuxCon, and generating original Linux research and content that advances
the understanding of the Linux platform. Its web properties, including
Linux.com, reach approximately two million people per month and
include important Linux video resources. The organization also provides
extensive Linux training opportunities that feature the Linux kernel
community=92s leading experts as instructors. Follow The Linux Foundation o=
n
Twitter.

###

Trademarks: The Linux Foundation, Linux Standard Base, MeeGo, Tizen and
Yocto Project are trademarks of The Linux Foundation. Linux is a trademark
of Linus Torvalds.

--=20
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--14dae9340d4b0b9d5a04b0c5567f
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div>Hi all - this is the announcement that went out on Weds at the Embedde=
d Linux Conference Europe / LinuxCon Europe, in case you haven&#39;t seen i=
t.</div><div><br></div><div>Yocto Project Introduces New Features</div><div=
>

<br></div><div>The Linux Foundation-hosted Yocto Project fosters growing co=
mmunity of=A0embedded Linux developers, technologies and products</div><div=
><br></div><div>PRAGUE {LinuxCon Europe}, October 26, 2011 =96 The Yocto Pr=
oject, a hosted project=A0at The Linux Foundation, today announced the avai=
lability of Yocto Project Release 1.1,=A0as well as a variety of one-year m=
ilestones for the project.</div>

<div><br></div><div>The Linux Foundation today also announced it will becom=
e the host for the Embedded=A0GNU C Library (EGLIBC), further broadening an=
d strengthening a common set of tools=A0for embedded Linux development.</di=
v>

<div><br></div><div>The EGLIBC library is an add-on to the GNU C library (g=
libc) and is optimized for use in=A0embedded development. Until now, Mentor=
 Graphics, the founder and chief maintainer=A0of the project through its ac=
quisition of CodeSourcery, hosted the EGLIBC library. Other=A0participants =
have included Freescale, MIPS Technologies, MontaVista Software and=A0Wind =
River, among others.</div>

<div><br></div><div>The Yocto Project was announced one year ago (October 2=
010) to provide developers=A0with greater consistency in the software and t=
ools they=92re using across multiple=A0architectures for embedded Linux dev=
elopment. The collaborative project brings=A0together the elements needed t=
o make the normally difficult embedded Linux=A0development process much eas=
ier. The following milestones and activities are=A0contributing to a vibran=
t community for embedded development:</div>

<div><br></div><div>=95=A0Alignment of OpenEmbedded technology and the incl=
usion of OpenEmbedded=A0representation in the Yocto Project governance stru=
cture. The projects share a=A0common core that consists of software build r=
ecipes and core Linux components=A0that prevent fragmentation and reinforce=
 the OpenEmbedded methodology as an=A0open standard for embedded Linux buil=
d systems.</div>
<div><br></div><div>=95 Contribution of tools and technologies such as Cros=
s-prelink, EGLIBC,=A0Pseudo, Shoeleather Lab (for automated testing) and Sw=
abber have been=A0contributed from Intel, Mentor Graphics, MontaVista Softw=
are and Wind River.</div>
<div><br></div><div>=95 Commercial adoption with examples such as FIC=92s P=
egasus platform powered=A0by Tridium=92s Niagara Framework. The Pegasus pla=
tform is an industrial tablet=A0design that was quickly ported to Linux bas=
ed on existing Yocto Project Board=A0Support Packages. Tridium is a world l=
eader in software frameworks, automation=A0infrastructure technology and de=
vice-to-enterprise integration solution, and FIC is=A0a global designer and=
 manufacturer of mobile and commercial hardware=A0solutions.</div>
<div><br></div><div>=95 Board Support Packages that include Intel=92s Atom-=
PC, Freescale=92s=A0MPC8315e-RDB, TI=92s BeagleBoard and Ubiquiti=92s Route=
rStation Pro, among=A0others.</div><div><br></div><div>The new Yocto Projec=
t Release 1.1 is based on Linux kernel 3.0 and consists of the=A0following =
new features and resources that enable developers and third parties to more=
=A0quickly and easily build embedded Linux systems:</div>
<div><br></div><div>=95 Multi-lib: Reduces storage and memory footprint by =
allowing the system=A0developer to mix and match binaries.</div><div><br></=
div><div>=95 Hob: An improved graphical user experience enables developers =
to select target=A0architecture, image and layer combinations, and to selec=
t or remove individual=A0packages before building, making the use of the Yo=
cto tools even easier.</div>
<div><br></div><div>=95 Layer Tooling: Eases the integration and developmen=
t of layers by =93flattening=94=A0them together into a collection of meta-d=
ata, making it much easier for third=A0parties to develop and release layer=
s.</div>
<div><br></div><div>=95 Initial support for x32, allowing execution of 32-b=
it code with all the benefits of 64-bit mode bringing performance and footp=
rint improvements on x86 processors.</div><div><br></div><div>=95 Small foo=
tprint/fast boot layers that make it easier to develop tiny embedded=A0syst=
ems (less than 8MB of memory) with Yocto.</div>

<div><br></div><div>=95 New packages and components include 3G cellular dat=
a support and advanced=A0btrfs filesystem, which improve applicability of t=
he Yocto Project tools to new=A0segments.</div><div><br></div><div>=95 New =
Yocto Project Developer Guide: This document provides important=A0informati=
on on how to get started in open source, Board Support Package and=A0kernel=
 development.</div>
<div><br></div><div>=93Since its introduction one year ago this week, the Y=
octo Project has exploded into a=A0strong open source community of develope=
rs, users and vendors working together to=A0advance Linux in the mobile and=
 embedded markets,=94 said Jim Zemlin, executive=A0director at The Linux Fo=
undation. =93The Yocto Project has quickly become a trusted=A0upstream reso=
urce for embedded vendors who need to quickly and easily develop=A0products=
 for a variety of architectures, and get to market fast.=94</div>
<div><br></div><div>Companies and organizations participating in the projec=
t include Dell, Intel, Mentor=A0Graphics, MontaVista, OpenEmbedded eV, Texa=
s Instruments, Timesys, and Wind=A0River, among others. The Yocto Project p=
articipants are meeting this week at LinuxCon=A0Europe and the Embedded Lin=
ux Conference in Prague, Czech Republic. For more=A0information on these ev=
ents, please visit the Linux Foundation conferences site. For=A0more inform=
ation about the Yocto Project, please visit: <a href=3D"http://www.yoctopro=
ject.org" target=3D"_blank">http://www.yoctoproject.org</a>.=A0</div>
<div><br></div><div>=93The Yocto Project provides an opportunity to help In=
tel customers differentiate and=A0create unique solutions in the embedded m=
arket segment,=94 said Ton Steenman, vice=A0president and general manager, =
Intelligent Systems Group, Intel.=A0=93Intel remains=A0committed to choice =
in operating systems and our Intelligent Systems roadmap for=A0embedded vie=
ws the Yocto Project as a way to provide our customers with a flexible=A0Li=
nux enabling vehicle.=94</div>
<div>=A0</div><div>=93The EGLIBC library is a fundamental technology to an =
embedded Linux system. By=A0integrating it with the Yocto Project and hosti=
ng it at The Linux Foundation, we can=A0accelerate the development of EGLIB=
C,=94 said Mark Mitchell, Director of Tools, Mentor=A0Graphics Embedded Sof=
tware Division. =93The new Shoeleather Lab hosted by Mentor=A0Graphics will=
 aid the Yocto Project by providing a neutral site for connecting developer=
s=A0to leading-edge hardware platforms, facilitating critical porting and o=
ptimization activities=A0around Yocto and EGLIBC.=94</div>

<div><br></div><div>=93The Yocto Project is providing key resources specifi=
c to the embedded Linux developer=A0community,=94 said Dan Cauchy, VP of Ma=
rketing and Business Development,=A0MontaVista Software. =93We=92re glad to=
 be collaborating with our industry peers in=A0improving embedded Linux dev=
elopment.=94</div>
<div><br></div><div>=93The alignment of the Yocto Project and OpenEmbedded =
continues to accelerate our=A0development,&quot; said Jason Kridner, ARM mi=
croprocessors community development=A0manager at TI. &quot;We&#39;re active=
 in the Yocto Project because it moves as fast as we do to=A0meet the marke=
t demands for embedded Linux development. We&#39;re proud to be a part=A0of=
 this community.&quot;</div>

<div><br></div><div>=93The adoption of the Yocto Project validates the mark=
et demand for a common set of=A0embedded Linux development tools,=94 said P=
aul Anderson, vice president of Linux=A0products at Wind River. =93As a fou=
nding member and active maintainer, Wind River is=A0firmly committed to the=
 success of the Yocto Project and will continue its contributions of=A0code=
, resources, infrastructure, and tools, as well as draw from the Yocto Proj=
ect as an=A0upstream source for our commercial Linux releases.=94</div>

<div><br></div><div>About The Linux Foundation</div><div><br></div><div>The=
 Linux Foundation is a nonprofit consortium dedicated to fostering the grow=
th of=A0Linux. Founded in 2000, the organization sponsors the work of Linux=
 creator Linus=A0Torvalds and promotes, protects and advances the Linux ope=
rating system by=A0marshaling the resources of its members and the open sou=
rce development community.=A0The Linux Foundation provides a neutral forum =
for collaboration and education by=A0hosting Linux conferences, including L=
inuxCon, and generating original Linux research=A0and content that advances=
 the understanding of the Linux platform. Its web properties,=A0including L=
inux.com, reach approximately two million people per month and include=A0im=
portant Linux video resources. The organization also provides extensive Lin=
ux=A0training opportunities that feature the Linux kernel community=92s lea=
ding experts as=A0instructors. Follow The Linux Foundation on Twitter.</div=
>

<div><br></div><div>###</div><div><br></div><div>Trademarks: The Linux Foun=
dation, Linux Standard Base, MeeGo, Tizen and Yocto Project are=A0trademark=
s of The Linux Foundation. Linux is a trademark of Linus Torvalds.</div>
<div>
<br></div><div>--=A0</div>Jeff Osier-Mixon <a href=3D"http://jefro.net/blog=
" target=3D"_blank">http://jefro.net/blog</a><div>Yocto Project Community M=
anager @Intel <a href=3D"http://yoctoproject.org" target=3D"_blank">http://=
yoctoproject.org</a></div>

<br>

--14dae9340d4b0b9d5a04b0c5567f--
