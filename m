Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82E4FE01768
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 08:39:05 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id o14so2108477lbi.9
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 08:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=DiTEJwX33PPGac6fxXYMVexbtRpChztxz3X8AOFJbl0=;
	b=idpbg2wQ7n18HwhV3Z04+iO+eHVQ4iLPD1tcOehU859wu5c4npwNzSzRlaLLCs+Rnm
	+BTaEkedCC/ovO7eK1Xw9JDb8pZczzKrp/hlT3kBD7epr+xGDt5dzu4QsG4dq+BYPxVV
	U3GVsJpHqeiDQ0JMTCqIRqblAYTv7ppz1n/oWck1a+wveNXLViEM3mXqamxYl3FCzV6K
	aW2e9Pm+660wA5Js6Q6IW8rWBl9sSnv0rBGKly6PMq5WW8Qnk4trwpbwDKo3k8rForjK
	bIRFQjFY+jrfngnUlRSiokbsCzeMVbNacntDmGukeBBi9bECjk06fbT84EYYuYHFhpR6
	ci6w==
X-Received: by 10.152.23.137 with SMTP id m9mr2212493laf.17.1382629144274;
	Thu, 24 Oct 2013 08:39:04 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Thu, 24 Oct 2013 08:38:44 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1310240824020.5368@oneiric>
References: <alpine.DEB.2.02.1310240824020.5368@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 24 Oct 2013 08:38:44 -0700
X-Google-Sender-Auth: aX2ANaw4eXyQ65c6JNh5baKn340
Message-ID: <CABcZANkTp8E5-dGsLmkEW=XQ8-cu=iSiZ5dbxaXRxNmpu=SFqQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: undocumented/inconsistent use of KERNEL_DEVICETREE variable
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
X-List-Received-Date: Thu, 24 Oct 2013 15:39:06 -0000
Content-Type: multipart/alternative; boundary=089e0160a676002b4a04e97e6f34

--089e0160a676002b4a04e97e6f34
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2013 at 8:27 AM, Robert P. J. Day <rpjday@crashcourse.ca>wr=
ote:

>   simple observation -- the KERNEL_DEVICETREE variable is not
> mentioned in the ref manual variable glossary.
>
>   more weirdly, though, i've always been used to seeing it used this
> way, like in the meta-yocto-bsp layer (that is, referring to the .dts
> *source* files):
>
> beagleboard.conf:KERNEL_DEVICETREE =3D
> "${S}/arch/arm/boot/dts/omap3-beagle.dts
> ${S}/arch/arm/boot/dts/omap3-beagle-xm.dts"
> mpc8315e-rdb.conf:KERNEL_DEVICETREE =3D
> "${S}/arch/powerpc/boot/dts/mpc8315erdb.dts"
>
>   but i just noticed this in the meta-fsl-asm layer:
>
> meta-fsl-arm/conf/machine/imx23evk.conf:KERNEL_DEVICETREE =3D "imx23-evk.=
dtb"
> meta-fsl-arm/conf/machine/imx6dlsabresd.conf:KERNEL_DEVICETREE =3D
> "imx6dl-sabresd.dtb"
> meta-fsl-arm/conf/machine/imx6dlsabreauto.conf:KERNEL_DEVICETREE =3D
> "imx6dl-sabreauto.dtb"
> meta-fsl-arm/conf/machine/imx6qsabresd.conf:KERNEL_DEVICETREE =3D
> "imx6q-sabresd.dtb"
>
> where the variable contains references to the .dtb *blob* files.
>
>   is there a standard? recommended? either way fine?
>

The behavior changed a couple months back.
See 03b3e4b62f22a8ef435252c0401c5369defabe71 in poky, aka =E2=80=9Clinux-dt=
b: Use
kernel build system to generate the dtb files=E2=80=9D. The new style is th=
e dtb
filename, the others likely need updating, unless those bsp layers override
the default linux-dtb behavior, afaik.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0160a676002b4a04e97e6f34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Oct 24, 2013 at 8:27 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.=
ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":sd" style=3D"overflow:hidden">=C2=A0 simple ob=
servation -- the KERNEL_DEVICETREE variable is not<br>


mentioned in the ref manual variable glossary.<br>
<br>
=C2=A0 more weirdly, though, i&#39;ve always been used to seeing it used th=
is<br>
way, like in the meta-yocto-bsp layer (that is, referring to the .dts<br>
*source* files):<br>
<br>
beagleboard.conf:KERNEL_DEVICETREE =3D<br>
&quot;${S}/arch/arm/boot/dts/omap3-beagle.dts<br>
${S}/arch/arm/boot/dts/omap3-beagle-xm.dts&quot;<br>
mpc8315e-rdb.conf:KERNEL_DEVICETREE =3D<br>
&quot;${S}/arch/powerpc/boot/dts/mpc8315erdb.dts&quot;<br>
<br>
=C2=A0 but i just noticed this in the meta-fsl-asm layer:<br>
<br>
meta-fsl-arm/conf/machine/imx23evk.conf:KERNEL_DEVICETREE =3D &quot;imx23-e=
vk.dtb&quot;<br>
meta-fsl-arm/conf/machine/imx6dlsabresd.conf:KERNEL_DEVICETREE =3D &quot;im=
x6dl-sabresd.dtb&quot;<br>
meta-fsl-arm/conf/machine/imx6dlsabreauto.conf:KERNEL_DEVICETREE =3D &quot;=
imx6dl-sabreauto.dtb&quot;<br>
meta-fsl-arm/conf/machine/imx6qsabresd.conf:KERNEL_DEVICETREE =3D &quot;imx=
6q-sabresd.dtb&quot;<br>
<br>
where the variable contains references to the .dtb *blob* files.<br>
<br>
=C2=A0 is there a standard? recommended? either way fine?</div></blockquote=
></div><br>The behavior changed a couple months back. See=C2=A003b3e4b62f22=
a8ef435252c0401c5369defabe71 in poky, aka =E2=80=9Clinux-dtb: Use kernel bu=
ild system to generate the dtb files=E2=80=9D. The new style is the dtb fil=
ename, the others likely need updating, unless those bsp layers override th=
e default linux-dtb behavior, afaik.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--089e0160a676002b4a04e97e6f34--
