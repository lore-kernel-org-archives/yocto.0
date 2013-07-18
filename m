Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE4F0E013D6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 07:21:59 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id ta17so3726150obb.8
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 07:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=syTcbCSFQCSPZILEuoc9UQTkr10wPXqOlSIhq0Z3P7o=;
	b=PUwXqUKQzIdfafmatwaSl1va9NB9HTZcxY2+kFhCfvotF22XP/TXzQLiP6NptY431g
	gEaiuUbCideuPkzNRC8TQHMZYteZ0k+uKqupan60srM6JLPqBvQ0bMxeS55lh8ZeSaYV
	xxK53AeO7uUNU4WaECMwP4fY5hOw8zOp0nTXIdNE7DF9pdvOfspP8m0qp6uv8mnXJCyx
	akRV+NlNhD5tTwWIdFbqngKdIMgkUIw5JyEglHeFZFwodPR8aaD21RAzr6Xh/VCNwLkS
	4RHm+QpH2u1nIDdn4DrsUxFQnNqke7EtKOqGb/dev/GcrhbR+246JOMn+BzshRO+W7Yz
	0USg==
MIME-Version: 1.0
X-Received: by 10.182.120.132 with SMTP id lc4mr7836573obb.22.1374157318898;
	Thu, 18 Jul 2013 07:21:58 -0700 (PDT)
Received: by 10.76.86.138 with HTTP; Thu, 18 Jul 2013 07:21:58 -0700 (PDT)
Date: Thu, 18 Jul 2013 10:21:58 -0400
Message-ID: <CAE8H0+WxtwacYF8chdJi2hum6XDRAzciSk20PcG6h1qNUmwfSQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to get released BSP that contains meta-intel ?
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
X-List-Received-Date: Thu, 18 Jul 2013 14:22:00 -0000
Content-Type: multipart/alternative; boundary=089e0111bd80dbc8a004e1c9eedf

--089e0111bd80dbc8a004e1c9eedf
Content-Type: text/plain; charset=ISO-8859-1

I've been working with denzil, but decided to try and upgrade to dylan...

Downloading and installing poky-dylan-9.0.1.tar.bz2 went fine.
Finding and downloading meta-crownbay-dylan-9.0.0.tar.bz2 was easy enough.

But neither of these give me meta-intel.

So the central question is: how do I find and download a released package
that contains meta-intel that's required by meta-crownbay?  A second
question is whether I'd have had problems anyway, given that dylan is 9.0.1
and the BSP is 9.0.0.

I can do a git of meta-intel, but that apparently gives me a snapshot that
doesn't play well with the released poky.  I can do a git of poky, then a
git of meta-intel...I still needed to do a bit of tweaking but I could
bitbake core-image-minimal.  Now I'm having problems with adt_install,
apparently because the scripts all think my release is 1.4+snapshot, which
breaks the repository links and the opkg install.  I seem to have gotten
around these, too, but if someone has something for me to test using
released packages, I'm willing, at the moment, to start from scratch.

John

--089e0111bd80dbc8a004e1c9eedf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve been working with denzil, but decided to try and =
upgrade to dylan...<div><br></div><div>Downloading and installing poky-dyla=
n-9.0.1.tar.bz2 went fine.</div><div>Finding and downloading meta-crownbay-=
dylan-9.0.0.tar.bz2 was easy enough.</div>
<div><br></div><div>But neither of these give me meta-intel. =A0</div><div>=
<br></div><div>So the central question is: how do I find and download a rel=
eased package that contains meta-intel that&#39;s required by meta-crownbay=
? =A0A second question is whether I&#39;d have had problems anyway, given t=
hat dylan is 9.0.1 and the BSP is 9.0.0.=A0</div>
<div><br></div><div>I can do a git of meta-intel, but that apparently gives=
 me a snapshot that doesn&#39;t play well with the released poky. =A0I can =
do a git of poky, then a git of meta-intel...I still needed to do a bit of =
tweaking but I could bitbake core-image-minimal. =A0Now I&#39;m having prob=
lems with adt_install, apparently because the scripts all think my release =
is 1.4+snapshot, which breaks the repository links and the opkg install. =
=A0I seem to have gotten around these, too, but if someone has something fo=
r me to test using released packages, I&#39;m willing, at the moment, to st=
art from scratch.</div>
<div><br></div><div>John =A0<br></div></div>

--089e0111bd80dbc8a004e1c9eedf--
