Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 574D2E00783
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 14:10:40 -0800 (PST)
Received: by mail-lb0-f174.google.com with SMTP id c11so9505563lbj.5
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 14:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=LMzldJQS56hTRF+NXeQpkxpF30E/W2ihH7ksB9dgIVc=;
	b=lY2WHLJm4t5v6IIKPfxQk9rJ4bj3c9N12sxQwZHwtgZk3Ta3r2i6KQxAmlZEQcZxp+
	oYLm0u2pBzKwW+P/kGPv2z8+VaRD/RBFNJNgdwrhRDbrFpuvdYJdVcpYNP9aj41Vvz3P
	qTs8GmY0iSJuSDypMMQuopKXH2LFV27cszemxOiru8TP+SfgMYs6Ljs1zdu41Naq90LN
	UdPPXsjQHyK65g+qYwqsNFbVUhIEKniAp2ZoNG10mGjCYSJfMO2MvbJipRltXUwAflBW
	Hxq72cxUhsW/OUzOMUp334IosIejz5mSpVQBj2PX59uYVBOPvM5W7u9aDUQUVkF54/VQ
	FK1g==
X-Received: by 10.112.17.39 with SMTP id l7mr1397494lbd.51.1386195039709; Wed,
	04 Dec 2013 14:10:39 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.176.201 with HTTP; Wed, 4 Dec 2013 14:10:19 -0800 (PST)
In-Reply-To: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 4 Dec 2013 15:10:19 -0700
X-Google-Sender-Auth: gPPW2B9T4OkPzkssKQqAw_mFas0
Message-ID: <CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to build a non-autotools package that contains only a lib. Getting empty archive - package is not generated
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
X-List-Received-Date: Wed, 04 Dec 2013 22:10:41 -0000
Content-Type: multipart/alternative; boundary=001a11c3d860ee6f3004ecbcae2b

--001a11c3d860ee6f3004ecbcae2b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 4, 2013 at 3:02 PM, Brian Hutchinson <b.hutchman@gmail.com>wrot=
e:

> I appear to be having the same problem this guy had:
> https://lists.yoctoproject.org/pipermail/poky/2013-June/009017.html
>
> I'm trying to build a Makefile based project (not autotools) that just
> generates a shared library.  When I bitbake my recipe I get a -dev and -d=
bg
> .ipk package but not ${PN}.  So I added ALLOW_EMPTY_${PN} =3D "1" and tha=
t
> generated the package but apparently the lib is not in the package!
>
> The lib I want to be in the package is sitting in ${WORKDIR}/src and ${S}
> is set to that.  So I tried to set FILES_${PN} =3D ${S}/sharedlib.so and =
that
> still doesn't pick it up.
>
> I've tried everything I can think of and can't get the lib in the
> package!  This is with 1.5 Dora.
>
> Any idea why my lib isn't put in the package?


do_install is the task that installs. If your makefile has an install
target, you=E2=80=99d define a do_install that runs it. But not all makefil=
es
provide an equivalent to automake=E2=80=99s DESTDIR, which is why we don=E2=
=80=99t provide
a do_install for non-autotools make-based buildsystems. Either manually
install the library where it belongs in your do_install, e.g. with the
=E2=80=98install=E2=80=99 or =E2=80=98cp=E2=80=99 commands, or define one w=
hich runs the appropriate make
command to install the files into ${D}.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3d860ee6f3004ecbcae2b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Dec 4, 2013 at 3:02 PM, Brian Hutchinson <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div><div>I appear to be having the sam=
e problem this guy had:<br><a href=3D"https://lists.yoctoproject.org/piperm=
ail/poky/2013-June/009017.html" target=3D"_blank">https://lists.yoctoprojec=
t.org/pipermail/poky/2013-June/009017.html</a><br>


<br></div>I&#39;m trying to build a Makefile based project (not autotools) =
that just generates a shared library.=C2=A0 When I bitbake my recipe I get =
a -dev and -dbg .ipk package but not ${PN}.=C2=A0 So I added ALLOW_EMPTY_${=
PN} =3D &quot;1&quot; and that generated the package but apparently the lib=
 is not in the package!<br>


<br></div>The lib I want to be in the package is sitting in ${WORKDIR}/src =
and ${S} is set to that.=C2=A0 So I tried to set FILES_${PN} =3D ${S}/share=
dlib.so and that still doesn&#39;t pick it up.<br><br>I&#39;ve tried everyt=
hing I can think of and can&#39;t get the lib in the package!=C2=A0 This is=
 with 1.5 Dora.<br>


<br></div>Any idea why my lib isn&#39;t put in the package?</blockquote></d=
iv><br>do_install is the task that installs. If your makefile has an instal=
l target, you=E2=80=99d define a do_install that runs it. But not all makef=
iles provide an equivalent to automake=E2=80=99s DESTDIR, which is why we d=
on=E2=80=99t provide a do_install for non-autotools make-based buildsystems=
. Either manually install the library where it belongs in your do_install, =
e.g. with the =E2=80=98install=E2=80=99 or =E2=80=98cp=E2=80=99 commands, o=
r define one which runs the appropriate make command to install the files i=
nto ${D}.</div>

<div class=3D"gmail_extra">-- <br>Christopher Larson<br>clarson at kergoth =
dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tsli=
b<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c3d860ee6f3004ecbcae2b--
