Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C62E0047F
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 10:13:55 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id c1so1715152eek.38
	for <yocto@yoctoproject.org>; Thu, 09 May 2013 10:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=tNyJjA4/Q9t1qW3yoclicBrGCTVtfOFruai9o67poWI=;
	b=RMXdbiU9dlzpFsi1QcEBFwoQDh8I0N0Bg/uPaLDcbRvVpDqKeYsRHdQCOqSILoZF34
	c3spEZY3KhoAs8n2iSU3gaAzKG3+JP6y4bO9ZK68QCV4sMj+xJ8CQyI+qsfqMbVbj2gq
	6rqzJiciw2A+hTsBEbx6TVItRhcE2+rgr4sEctnI9ANbJYRncuH/9WluCj3jJxko4EwH
	nFbrxDqSu9PO7qMQxXkic194EWJygoii5Oq+VZrE/eW96+b71L0nEEuUnQdTHtGJ8Pea
	1wNmOTaHyW62/DP73IbsFkIywU0TRCb7eMBygS1ZorpyADpWFEDBQERXLVwyV4o2BMc4
	ifDQ==
MIME-Version: 1.0
X-Received: by 10.15.93.193 with SMTP id w41mr20463113eez.22.1368119634121;
	Thu, 09 May 2013 10:13:54 -0700 (PDT)
Received: by 10.223.201.9 with HTTP; Thu, 9 May 2013 10:13:54 -0700 (PDT)
In-Reply-To: <CAJTo0LYXzVDTegbhJ7AtkNEThremApwOR_-p=Y2S01GtcC0SpA@mail.gmail.com>
References: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
	<CAJTo0LYJQkV=B7uTxW=pkd--VHX7VjdA4ST2q1JMVNsSVuKcQw@mail.gmail.com>
	<CANwz6nwxkWyCPZTkPONK4z==j1+vbHc0PAYw4S7=hTjkwMbkow@mail.gmail.com>
	<CAJTo0LYXzVDTegbhJ7AtkNEThremApwOR_-p=Y2S01GtcC0SpA@mail.gmail.com>
Date: Thu, 9 May 2013 11:13:54 -0600
Message-ID: <CANwz6nytB4+ucCjH46u0LAn9Kooz0VEF0z5GP9E8D1M=6SxowQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 09 May 2013 17:13:55 -0000
Content-Type: multipart/alternative; boundary=089e0168144acd7bde04dc4c2c2a

--089e0168144acd7bde04dc4c2c2a
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Below is the current gs_1.15.bb
DESCRIPTION = "GNU Scientific Library (GSL)"
HOMEPAGE = "http://www.gnu.org/software/gsl/"

LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"

SRC_URI = "http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz"
SRC_URI[md5sum] = "494ffefd90eef4ada678c306bab4030b"
SRC_URI[sha256sum] =
"85b907e57902e2b7606ef3aef960302ffdd13bd9dc5b8fcbfa75e4f0bf340ea3"

S = "${WORKDIR}/gsl-${PV}"

inherit autotools

I currently running "MACHINE=beagleboard bitbake core-image-sato-sdk-ex"
which I use to include boost and qt-mobility-x11

meta/recipes-sato/imagescore-image-sato-sdk-ex
require core-image-sato.bb

DESCRIPTION = "Image with Sato support that includes everything within \
core-image-sato plus meta-toolchain, development headers and libraries to \
form a standalone SDK."

IMAGE_FEATURES += "dev-pkgs tools-sdk qt4-pkgs \
        tools-debug eclipse-debug tools-profile tools-testapps debug-tweaks
ssh-server-openssh "

IMAGE_INSTALL += "kernel-dev boost qt-mobility-x11"
Thanks Ed Vidal


On Thu, May 9, 2013 at 10:54 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 9 May 2013 17:50, Edward Vidal <vidal.develone@gmail.com> wrote:
> > The only place I saw ** License updated to GNU GPL version 3.  was in the
> > NEWS file.
>
> GNU software typically includes a COPYING file with the license terms
> in, use that entire file.
>
> Ross
>

--089e0168144acd7bde04dc4c2c2a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br>Below is the current <a href=3D"http:/=
/gs_1.15.bb">gs_1.15.bb</a><br>DESCRIPTION =3D &quot;GNU Scientific Library=
 (GSL)&quot;<br>HOMEPAGE =3D &quot;<a href=3D"http://www.gnu.org/software/g=
sl/">http://www.gnu.org/software/gsl/</a>&quot;<br>
<br>LICENSE =3D &quot;GPLv3&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPY=
ING;md5=3Dd32239bcb673463ab874e80d47fae504&quot;<br><br>SRC_URI =3D &quot;<=
a href=3D"http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz">http://mirror=
.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz</a>&quot;<br>
SRC_URI[md5sum] =3D &quot;494ffefd90eef4ada678c306bab4030b&quot;<br>SRC_URI=
[sha256sum] =3D &quot;85b907e57902e2b7606ef3aef960302ffdd13bd9dc5b8fcbfa75e=
4f0bf340ea3&quot;<br><br>S =3D &quot;${WORKDIR}/gsl-${PV}&quot;<br><br>inhe=
rit autotools<br>
<br></div>I currently running &quot;MACHINE=3Dbeagleboard bitbake core-imag=
e-sato-sdk-ex&quot;=A0 which I use to include boost and qt-mobility-x11<br>=
<br>meta/recipes-sato/imagescore-image-sato-sdk-ex<br>require <a href=3D"ht=
tp://core-image-sato.bb">core-image-sato.bb</a><br>
<br>DESCRIPTION =3D &quot;Image with Sato support that includes everything =
within \<br>core-image-sato plus meta-toolchain, development headers and li=
braries to \<br>form a standalone SDK.&quot;<br><br>IMAGE_FEATURES +=3D &qu=
ot;dev-pkgs tools-sdk qt4-pkgs \<br>
=A0=A0=A0=A0=A0=A0=A0 tools-debug eclipse-debug tools-profile tools-testapp=
s debug-tweaks ssh-server-openssh &quot;<br><br>IMAGE_INSTALL +=3D &quot;ke=
rnel-dev boost qt-mobility-x11&quot;<br></div>Thanks Ed Vidal<br></div><div=
 class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, May 9, 2013 at 10:54 AM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<div class=3D"im">On 9 May 2013 17:50, Edward Vidal &lt;<a href=3D"mailto:v=
idal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; wrote:<br>
&gt; The only place I saw ** License updated to GNU GPL version 3. =A0was i=
n the<br>
&gt; NEWS file.<br>
<br>
</div>GNU software typically includes a COPYING file with the license terms=
<br>
in, use that entire file.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--089e0168144acd7bde04dc4c2c2a--
