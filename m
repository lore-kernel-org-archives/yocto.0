Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 360B5E003E2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 16:37:20 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id n6so3483360lbi.22
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 16:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=X5c0eozLFCCbT0ORdmLBrNjp95sMoSOG2A3g8WEonKk=;
	b=FesuDD/0Uvgc2DJvGDWge9o5hhco+k45jG/rCHM5JivbvgX8BmOnZ9Mk47UaN9UI+F
	UnoZoh182fjJFiKN8gYTV7IBpTghupTbXhgj4YVamJRcNHz2wiZAdxWET8ZwUxZFIHxM
	hIFeeCg2heaPf4susFzLSQ31ZrDymjkLmXMYCAMDgB6XVS20bu05WmSvaHSsyc0ORPjG
	Vu0biP2u8TSIDngvvj72hxR5xRw2+Ma785W+G2YZzZFEWgXXPWO/MlssW8iay/Sgz6qa
	khJUzq1p+769lu07Edt9SX3tQ75WPSHh3atByzzbaShQc9Ihcc8lhObjvlsCLbmhQOch
	F7GA==
X-Received: by 10.112.35.103 with SMTP id g7mr219704lbj.32.1376955439228; Mon,
	19 Aug 2013 16:37:19 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Mon, 19 Aug 2013 16:36:59 -0700 (PDT)
In-Reply-To: <A3D4719B266E4F519452EFCF893FEF4A@PAULD>
References: <A3D4719B266E4F519452EFCF893FEF4A@PAULD>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 19 Aug 2013 16:36:59 -0700
X-Google-Sender-Auth: mDIaDLWv1vj70d72wfqX9cmC0Wc
Message-ID: <CABcZANkcqBYLH+X07-o5Pn5=C8offw8eYr3e_FOtEqZxHu+s0Q@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Trying to tweak a build with a setup.cfg file
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
X-List-Received-Date: Mon, 19 Aug 2013 23:37:21 -0000
Content-Type: multipart/alternative; boundary=14dae93d9364d3ab3e04e4556b29

--14dae93d9364d3ab3e04e4556b29
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 19, 2013 at 3:52 PM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> I'm trying to build python-matplotlib from the Danny branch of
> meta-openembedded/meta-oe/recipes-devtools/python. I need to add a
> setup.cfg file to tweak the build, but I don't know how to get it into the
> right place.
>
> I put the setup.cfg into a python-matplotlib subdirectory in my recipes
> directory, and added a python-matplotlib_1.1.0.bbappend file which
> contains the following lines:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> PRINC := "${@int(PRINC) + 2}"
> SRC_URI += "file://setup.cfg"
>
> The file is being copied into
> .../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3
> rather than
> .../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3/mat
> plotlib-1.1.0 where it needs to be. How do I push it down a level?
>

By default, anything in SRC_URI goes into ${WORKDIR}, not ${S}. You should
be able to change this like so:

    SRC_URI += "file://setup.cfg;subdir=matplotlib-${PV}"
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--14dae93d9364d3ab3e04e4556b29
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Aug 19, 2013 at 3:52 PM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom.=
com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":1hn" style=3D"overflow:hidden">I=
&#39;m trying to build python-matplotlib from the Danny branch of<br>
meta-openembedded/meta-oe/recipes-devtools/python. I need to add a<br>
setup.cfg file to tweak the build, but I don&#39;t know how to get it into =
the<br>
right place.<br>
<br>
I put the setup.cfg into a python-matplotlib subdirectory in my recipes<br>
directory, and added a python-matplotlib_1.1.0.bbappend file which<br>
contains the following lines:<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
PRINC :=3D &quot;${@int(PRINC) + 2}&quot;<br>
SRC_URI +=3D &quot;file://setup.cfg&quot;<br>
<br>
The file is being copied into<br>
.../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3<br>
rather than<br>
.../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3/mat<=
br>
plotlib-1.1.0 where it needs to be. How do I push it down a level?</div></b=
lockquote></div><br>By default, anything in SRC_URI goes into ${WORKDIR}, n=
ot ${S}. You should be able to change this like so:</div><div class=3D"gmai=
l_extra">

<br></div><div class=3D"gmail_extra">=C2=A0 =C2=A0 SRC_URI +=3D &quot;file:=
//setup.cfg;subdir=3Dmatplotlib-${PV}&quot;<br>-- <br>Christopher Larson<br=
>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<=
br>Maintainer - Tslib<br>

Senior Software Engineer, Mentor Graphics
</div></div>

--14dae93d9364d3ab3e04e4556b29--
