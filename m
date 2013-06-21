Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB7BEE006E9
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 21:00:55 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id fb19so8114228obc.9
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 21:00:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=pouaQK4S4iQgi/tyCrkV5NS8XFurPtnxKe+4pN4Nb0E=;
	b=BAg7kBjHZOQ81CMUmOX1lyDPDXghmKNeIu0sx2qHmocu4D7NtUBylFstoFnG+UUpMw
	bUE0xoHR0S4hLD0oLES0Rg7IKdTbAM0K8TV0qoPF7MxGr47+l4OCvDRXRLN4x054KFKp
	ubIw9uclsVvyOaHUp4+WTP/W77sSPzETt1ref7GTMOjyfUBGzOD2Jb5O0mGGu7zqYM22
	HrVpFZVONto9LnRygyn0xMhu/TTmnyw29Etj4F5VmJ0xhgFepeLsEZ6X/QhnWfg2pCeJ
	YGLemPJbS6pJqrV+kxTeYZ66hwwpyHwP7dmd32fuUz5kNXrlcAr4tP9zXuuyjqlu00XB
	0Fyg==
X-Received: by 10.60.93.196 with SMTP id cw4mr5553520oeb.135.1371787255140;
	Thu, 20 Jun 2013 21:00:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Thu, 20 Jun 2013 21:00:35 -0700 (PDT)
In-Reply-To: <8DA5A3FB8F6D4E29B99BD61C40AF9442@PAULD>
References: <8DA5A3FB8F6D4E29B99BD61C40AF9442@PAULD>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 21 Jun 2013 00:00:35 -0400
Message-ID: <CAP71WjzK48XtCJbDuDd=Uj0sn1=7=2tL5NTZzN6P1APwDaLcjw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQmajjjTM66Zp7vXsEET1lTFq7fWni/ZeLV11PlU+2y4KbYcw+CuuWUqZbFw5OU78A61zwK3
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Compiling a simple command
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
X-List-Received-Date: Fri, 21 Jun 2013 04:00:57 -0000
Content-Type: multipart/alternative; boundary=047d7b33d6ca0ce7fe04dfa21c16

--047d7b33d6ca0ce7fe04dfa21c16
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jun 20, 2013 at 6:08 PM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> I've tried to add a single small executable to my image, based on what it
> says in 5.3.1. of the Project Development Manual, and while the image gets
> built with no error messages, it never compiles my executable. I'm not
> doing
> _exactly_ what it says, so I assume some difference is accounting for this
> failure. What I'm doing different:
>
> 1) Since I'm only adding one tiny little program to an otherwise default
> image, I'm not creating a separate .bb file for it, but placing it in the
> top-level .bb file that I invoke with the bitbake command.
>
> 2) Since I only have one .bb file, I'm sticking it in the layer directory,
> not two levels down, and adding ${LAYERDIR}/*.bb to BBFILES.
>
> It's finding the recipe okay, because the image is being built, but it's
> never executing do_compile or do_install. The recipe looks like this:
>
> --
> require recipes-core/images/core-image-base.bb
>
> DESCRIPTION = "A basic image with a realtime kernel."
> DEPENDS = "linux-yocto-rt"
> LICENSE = "MIT"
> PR = "r0"
>
> SRC_URI = "file://fastuart.cpp"
>
> S = "${WORKDIR}"
>
> do_compile() {
>     ${CC} fastuart.cpp -o fastuart
> }
>
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0755 fastuart ${D}${bindir}
> }
>

here you are mixing a recipe for an image with a recipe for a 'package',
and that's wrong. you have recipes for images, and recipes for packages.
 for package, bitbake will actually do the standard
fetch/unpack/patch/configure/compile/package steps, but not for images. all
images recipe inherit from image.bbclass, and if you check that file you
can see that all 'normal package' tasks are disabled (toward the end of the
file)

so, while your recipe is indeed syntactically correct, the do_compile() and
do_install() aren't never really called.

you need to make a separate recipe for your package, e.g.
fastuart_1.0.bb(and removes the 'require' at the beginning).

then you can create your image recipe, and request your package to be
installed in the image , you can do something like that:

require recipes-core/images/core-image-base.bb
IMAGE_INSTALL += 'fastuart'

--047d7b33d6ca0ce7fe04dfa21c16
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jun 20, 2013 at 6:08 PM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom.=
com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":2k" style=3D"overflow:hidden">I&#39;ve tried t=
o add a single small executable to my image, based on what it<br>


says in 5.3.1. of the Project Development Manual, and while the image gets<=
br>
built with no error messages, it never compiles my executable. I&#39;m not =
doing<br>
_exactly_ what it says, so I assume some difference is accounting for this<=
br>
failure. What I&#39;m doing different:<br>
<br>
1) Since I&#39;m only adding one tiny little program to an otherwise defaul=
t<br>
image, I&#39;m not creating a separate .bb file for it, but placing it in t=
he<br>
top-level .bb file that I invoke with the bitbake command.<br>
<br>
2) Since I only have one .bb file, I&#39;m sticking it in the layer directo=
ry,<br>
not two levels down, and adding ${LAYERDIR}/*.bb to BBFILES.<br>
<br>
It&#39;s finding the recipe okay, because the image is being built, but it&=
#39;s<br>
never executing do_compile or do_install. The recipe looks like this:<br>
<br>
--<br>
require recipes-core/images/<a href=3D"http://core-image-base.bb" target=3D=
"_blank">core-image-base.bb</a><br>
<br>
DESCRIPTION =3D &quot;A basic image with a realtime kernel.&quot;<br>
DEPENDS =3D &quot;linux-yocto-rt&quot;<br>
LICENSE =3D &quot;MIT&quot;<br>
PR =3D &quot;r0&quot;<br>
<br>
SRC_URI =3D &quot;file://fastuart.cpp&quot;<br>
<br>
S =3D &quot;${WORKDIR}&quot;<br>
<br>
do_compile() {<br>
=A0 =A0 ${CC} fastuart.cpp -o fastuart<br>
}<br>
<br>
do_install() {<br>
=A0 =A0 install -d ${D}${bindir}<br>
=A0 =A0 install -m 0755 fastuart ${D}${bindir}<br>
}</div></blockquote></div><br>here you are mixing a recipe for an image wit=
h a recipe for a &#39;package&#39;, and that&#39;s wrong. you have recipes =
for images, and recipes for packages. =A0for package, bitbake will actually=
 do the standard fetch/unpack/patch/configure/compile/package steps, but no=
t for images. all images recipe inherit from image.bbclass, and if you chec=
k that file you can see that all &#39;normal package&#39; tasks are disable=
d (toward the end of the file)</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" style>so, w=
hile your recipe is indeed syntactically correct, the do_compile() and do_i=
nstall() aren&#39;t never really called.</div><div class=3D"gmail_extra" st=
yle>

<br></div><div class=3D"gmail_extra" style>you need to make a separate reci=
pe for your package, e.g. <a href=3D"http://fastuart_1.0.bb">fastuart_1.0.b=
b</a> (and removes the &#39;require&#39; at the beginning).</div><div class=
=3D"gmail_extra" style>

<br></div><div class=3D"gmail_extra" style>then you can create your image r=
ecipe, and request your package to be installed in the image , you can do s=
omething like that:</div><div class=3D"gmail_extra" style><br></div><div cl=
ass=3D"gmail_extra" style>

require recipes-core/images/<a href=3D"http://core-image-base.bb/" target=
=3D"_blank">core-image-base.bb</a><br></div><div class=3D"gmail_extra" styl=
e>IMAGE_INSTALL +=3D &#39;fastuart&#39;<br></div><div class=3D"gmail_extra"=
 style>
<br>
</div><div class=3D"gmail_extra" style><br></div><div class=3D"gmail_extra"=
 style><br></div></div>

--047d7b33d6ca0ce7fe04dfa21c16--
