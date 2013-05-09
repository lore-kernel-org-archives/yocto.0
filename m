Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DE3CE00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 09:50:09 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id q10so1663518eaj.6
	for <yocto@yoctoproject.org>; Thu, 09 May 2013 09:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=4ZA7iAeXkfOEJL88eKs9F5XNxIoDgOfweklXyptX1Nk=;
	b=RzWZYbcx/jJxb/MQJyv9oTxzly6CsI050Bre2jthvLxFnAtsJJYOo5NYx4LjnAZcM+
	Mc3aI4JJ3tV1dMG4tnmdHR5Niq1NgZbA/DX+ln8A+krfgysp3xW0KWlV6+HvQ5qquzOh
	1dH+NSrMrNRSdg4+NMR08FV+1RLM2YHWu3jFMv65k6iJWPzOIJKKyXDrgrrZbhE6H7XL
	1WcGUNZuuHMZSwxjN2AvL5Y0PiASSF4nlakkVKmpBIFMkg6Ai/PuuTMykcJq+UlSom0V
	L4tAl77eMzKEgwvkZbOHRVlJORL7Zr+lXas82BAlVpoep6GIo2GiJt4tRnHXxYqtg6vD
	rK0A==
MIME-Version: 1.0
X-Received: by 10.14.100.1 with SMTP id y1mr31243968eef.9.1368118208786; Thu,
	09 May 2013 09:50:08 -0700 (PDT)
Received: by 10.223.201.9 with HTTP; Thu, 9 May 2013 09:50:08 -0700 (PDT)
In-Reply-To: <CAJTo0LYJQkV=B7uTxW=pkd--VHX7VjdA4ST2q1JMVNsSVuKcQw@mail.gmail.com>
References: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
	<CAJTo0LYJQkV=B7uTxW=pkd--VHX7VjdA4ST2q1JMVNsSVuKcQw@mail.gmail.com>
Date: Thu, 9 May 2013 10:50:08 -0600
Message-ID: <CANwz6nwxkWyCPZTkPONK4z==j1+vbHc0PAYw4S7=hTjkwMbkow@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe gsl-1.15
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
X-List-Received-Date: Thu, 09 May 2013 16:50:10 -0000
Content-Type: multipart/alternative; boundary=001a11c39120d8996304dc4bd76f

--001a11c39120d8996304dc4bd76f
Content-Type: text/plain; charset=ISO-8859-1

All,
The only place I saw ** License updated to GNU GPL version 3.  was in the
NEWS file.

I modified the recipe gsl_1.15.bb as follows
DESCRIPTION = "GNU Scientific Library (GSL)"
HOMEPAGE = "http://www.gnu.org/software/gsl/"

LICENSE = "GPLv3"
LIC_FILES_CHKSUM =
"file://NEWS;beginline=361;endline=362;md5=53ae5d8d6c3464f1ac8d1d7e72e3de6b"

SRC_URI = "http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz"
SRC_URI[md5sum] = "494ffefd90eef4ada678c306bab4030b"
SRC_URI[sha256sum] =
"85b907e57902e2b7606ef3aef960302ffdd13bd9dc5b8fcbfa75e4f0bf340ea3"

S = "${WORKDIR}/gsl-${PV}"

inherit autotools

Now when I do the following:
MACHINE=beagleboard bitbake gsl
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 1135 entries from dependency cache.
Parsing recipes: 100% |#########################################| Time:
00:00:00
Parsing of 825 .bb files complete (824 cached, 1 parsed). 1134 targets, 44
skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.19.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130509"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "master:84d45db4ddced96c736f106f8122eefadf925c41"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 692 tasks of which 680 didn't need to be
rerun and all succeeded.

In /home/vidal/POKY/build050613/poky/build/tmp/deploy/rpm/armv7a_vfp_neon I
see the following RPMs
ls gsl*
gsl-1.15-r0.armv7a_vfp_neon.rpm      gsl-doc-1.15-r0.armv7a_vfp_neon.rpm
gsl-dbg-1.15-r0.armv7a_vfp_neon.rpm
gsl-staticdev-1.15-r0.armv7a_vfp_neon.rpm
gsl-dev-1.15-r0.armv7a_vfp_neon.rpm

My question do I have to install the RPMS manually or when I do bitbake
core-image-sato-sdk-ex will these become part of the
core-image-sato-sdk-ex-beagleboard-20130506115850.rootfs.tar.bz2 or do I
have do something else.

What is the procedure to make this part of the Yocto project.

Any and all help will be appreciated.
Thanks
Ed Vidal Jr.


On Thu, May 9, 2013 at 9:59 AM, Burton, Ross <ross.burton@intel.com> wrote:

> Hi,
>
> On 9 May 2013 16:48, Edward Vidal <vidal.develone@gmail.com> wrote:
> > I am trying to write the recipe to add gsl-1.15 to core-image-sato.
> >
> > First I did mdkir poky/meta/recipes-support/gsl
> >
> > Is this the correct location for this recipe?
>
> It's a perfectly valid location.  The recipes folders have no defined
> structure, you can arrange them as you want.
>
> [snip]
>
> > Any and all help will be appreciated.
>
> You didn't actually say what the problem is.  I presume it's the error
> you're getting about your license checksum.  Well, your md5sum command
> is checksumming the entire file, and your LIC_FILES_CHKSUM is
> checksumming a single line of the file, so I expect them to be
> different.
>
> Is the NEWS file the only place that says the license is GPLv3?  The
> NEWS file should change with every release, so it's better to use a
> top-level license file or a fragment from a source file instead.
>
> Ross
>

--001a11c39120d8996304dc4bd76f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>All,<br></div>The only place=
 I saw ** License updated to GNU GPL version 3.=A0 was in the NEWS file.<br=
><br>I modified the recipe <a href=3D"http://gsl_1.15.bb">gsl_1.15.bb</a> a=
s follows<br>
DESCRIPTION =3D &quot;GNU Scientific Library (GSL)&quot;<br>HOMEPAGE =3D &q=
uot;<a href=3D"http://www.gnu.org/software/gsl/">http://www.gnu.org/softwar=
e/gsl/</a>&quot;<br><br>LICENSE =3D &quot;GPLv3&quot;<br>LIC_FILES_CHKSUM =
=3D &quot;file://NEWS;beginline=3D361;endline=3D362;md5=3D53ae5d8d6c3464f1a=
c8d1d7e72e3de6b&quot;<br>
<br>SRC_URI =3D &quot;<a href=3D"http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV=
}.tar.gz">http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz</a>&quot;<br>S=
RC_URI[md5sum] =3D &quot;494ffefd90eef4ada678c306bab4030b&quot;<br>SRC_URI[=
sha256sum] =3D &quot;85b907e57902e2b7606ef3aef960302ffdd13bd9dc5b8fcbfa75e4=
f0bf340ea3&quot;<br>
<br>S =3D &quot;${WORKDIR}/gsl-${PV}&quot;<br><br>inherit autotools<br><br>=
Now when I do the following:<br>MACHINE=3Dbeagleboard bitbake gsl<br>Loadin=
g cache: 100% |###########################################| ETA:=A0 00:00:0=
0<br>
Loaded 1135 entries from dependency cache.<br>Parsing recipes: 100% |######=
###################################| Time: 00:00:00<br>Parsing of 825 .bb f=
iles complete (824 cached, 1 parsed). 1134 targets, 44 skipped, 0 masked, 0=
 errors.<br>
<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.19.=
0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<b=
r>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.3+snapshot-20130509&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =
=3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;vfp-neon&quot;<br>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=
=A0=A0 <br>meta-yocto-bsp=A0=A0=A0 =3D &quot;master:84d45db4ddced96c736f106=
f8122eefadf925c41&quot;<br><br>NOTE: Resolving any missing task queue depen=
dencies<br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>NOTE: Tasks Summary: Attempted 692 tasks =
of which 680 didn&#39;t need to be rerun and all succeeded.<br><br>In /home=
/vidal/POKY/build050613/poky/build/tmp/deploy/rpm/armv7a_vfp_neon I see the=
 following RPMs<br>
ls gsl*<br>gsl-1.15-r0.armv7a_vfp_neon.rpm=A0=A0=A0=A0=A0 gsl-doc-1.15-r0.a=
rmv7a_vfp_neon.rpm<br>gsl-dbg-1.15-r0.armv7a_vfp_neon.rpm=A0 gsl-staticdev-=
1.15-r0.armv7a_vfp_neon.rpm<br>gsl-dev-1.15-r0.armv7a_vfp_neon.rpm<br><br><=
/div>My question do I have to install the RPMS manually or when I do bitbak=
e core-image-sato-sdk-ex will these become part of the core-image-sato-sdk-=
ex-beagleboard-20130506115850.rootfs.tar.bz2 or do I have do something else=
.<br>
<br></div>What is the procedure to make this part of the Yocto project.<br>=
<br></div>Any and all help will be appreciated.<br></div>Thanks <br></div>E=
d Vidal Jr.<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">
On Thu, May 9, 2013 at 9:59 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi,<br>
<div class=3D"im"><br>
On 9 May 2013 16:48, Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gmai=
l.com">vidal.develone@gmail.com</a>&gt; wrote:<br>
&gt; I am trying to write the recipe to add gsl-1.15 to core-image-sato.<br=
>
&gt;<br>
&gt; First I did mdkir poky/meta/recipes-support/gsl<br>
&gt;<br>
&gt; Is this the correct location for this recipe?<br>
<br>
</div>It&#39;s a perfectly valid location. =A0The recipes folders have no d=
efined<br>
structure, you can arrange them as you want.<br>
<br>
[snip]<br>
<div class=3D"im"><br>
&gt; Any and all help will be appreciated.<br>
<br>
</div>You didn&#39;t actually say what the problem is. =A0I presume it&#39;=
s the error<br>
you&#39;re getting about your license checksum. =A0Well, your md5sum comman=
d<br>
is checksumming the entire file, and your LIC_FILES_CHKSUM is<br>
checksumming a single line of the file, so I expect them to be<br>
different.<br>
<br>
Is the NEWS file the only place that says the license is GPLv3? =A0The<br>
NEWS file should change with every release, so it&#39;s better to use a<br>
top-level license file or a fragment from a source file instead.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c39120d8996304dc4bd76f--
