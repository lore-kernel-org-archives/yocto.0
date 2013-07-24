Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 099DEE01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:07:46 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id up14so14395736obb.0
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/xw9zmkeP61ix2I18aYePdUljfK4gdzvREb++X51if8=;
	b=pOQWvM9z+QIDLhtx169Y7kwU18SU8mHrjvlEtiH62+SndLjQrbMwT5tapidk69RoMP
	sM+BTFmIZIubLQjxQLuWeSgR2MjMbANeH9Fau8koScvHOLtbWWEBIibIGFr5yRMk34/c
	QuV1uNOPwdaDyxuu16ijSAzXZ269IcvbKNqoqoVGOHABcBceh/C4IF+hXUnezfC8zAoW
	elPr+OyKhQWXpor8q/DHHqa238LnOJo230K+eOsB0mgiTYioOeEVrTvNAM7eLDyLodyO
	rDhWEPjMjQIg0Jt7auUo+ThgUinOJBLJy4LH0Ymc/SivKF6V0a5RJ7HX4u3McisRsh6M
	VSxA==
MIME-Version: 1.0
X-Received: by 10.60.97.1 with SMTP id dw1mr38569467oeb.1.1374700065522; Wed,
	24 Jul 2013 14:07:45 -0700 (PDT)
Received: by 10.60.26.225 with HTTP; Wed, 24 Jul 2013 14:07:45 -0700 (PDT)
In-Reply-To: <CAOMwXhPXW4_vf6ResX-BJcpvxp6Dv3YhKV4MkoksMBcD45qv=w@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
	<CAOMwXhPXW4_vf6ResX-BJcpvxp6Dv3YhKV4MkoksMBcD45qv=w@mail.gmail.com>
Date: Wed, 24 Jul 2013 17:07:45 -0400
Message-ID: <CAFZh4h-Rk_zgN6AZrRyaVcDJGy4HEMQXaoJ1VF2gs66jP99U1w@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External toolchain (sourcery)
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
X-List-Received-Date: Wed, 24 Jul 2013 21:07:48 -0000
Content-Type: multipart/alternative; boundary=089e011774cd140ca204e2484d5a

--089e011774cd140ca204e2484d5a
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 24, 2013 at 4:59 PM, Laszlo Papp <lpapp@kde.org> wrote:

> 1) Is that really from sourcery?
> 2) What documentation?
> 3) BTW, the question was whether sourcery is officially supported.
>
>
> Yocto's default action is to build the toolchain from source and no it
isn't Code Sourcery if that is what you are wanting to know.  You can
configure Yocto to not build the toolchain and use one you provide but I've
never tried it.

https://www.yoctoproject.org/documentation/current should give you light
bedtime reading material.

Angstrom & Arago as mentioned before use Linaro which has all the latest
ARM patches.

Regards,

Brian

--089e011774cd140ca204e2484d5a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2013 at 4:59 PM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=
=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wr=
ote:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><div class=3D"im"><span style=3D"font-family:arial,sans-se=
rif;font-size:12.727272033691406px">1) Is that really from sourcery?</span>=
<div style=3D"font-family:arial,sans-serif;font-size:12.727272033691406px">=
2) What documentation?</div>

</div><div style=3D"font-family:arial,sans-serif;font-size:12.7272720336914=
06px">3) BTW, the question was whether sourcery is officially supported.</d=
iv></div><div class=3D"gmail_extra"><br><br></div></blockquote><div>Yocto&#=
39;s default action is to build the toolchain from source and no it isn&#39=
;t Code Sourcery if that is what you are wanting to know. =A0You can config=
ure Yocto to not build the toolchain and use one you provide but I&#39;ve n=
ever tried it.</div>
<div><br></div><div><a href=3D"https://www.yoctoproject.org/documentation/c=
urrent">https://www.yoctoproject.org/documentation/current</a>=A0should giv=
e you light bedtime reading material.</div><div><br></div><div>Angstrom &am=
p; Arago as mentioned before use Linaro which has all the latest ARM patche=
s. =A0</div>
<div><br></div><div>Regards,</div><div><br></div><div>Brian</div><div>=A0</=
div></div>

--089e011774cd140ca204e2484d5a--
