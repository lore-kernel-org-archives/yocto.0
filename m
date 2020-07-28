Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3575.1595901867005315850
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jul 2020 19:04:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IoOl5O98;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: bruce.ashfield@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C11FCE01F27; Mon, 27 Jul 2020 19:04:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E7A6E01F25
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2020 19:04:25 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id o18so19014495eje.7
        for <yocto@yoctoproject.org>; Mon, 27 Jul 2020 19:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VykTMuMgE6mdRtSqGfRQAmeW05Xwl0HIvhrtFyOQe7s=;
        b=IoOl5O98zYOsiSijpWu8300n0vgUQjL5Jh0vAtBzcLjJLlMiUlgFAKGHS3LF2z4VC9
         XsHSYPQJr6CE996iLNifItjqPnQTB82eObEeM9DyR7mr5I+p+xo0OgkFgM6EgbCSr6FL
         nMNQQRL3YS1Nzd5G3P1Al2QOg2BsDyQaamemiaKUPC4A56+yhrFYDRnOZMl4iJgIwHLE
         3/XWVH699ZNUug3RdWyYcPtpsxU8aHTWk5D0NA6eHt7mjyZYI9z3NV1Gkyp1nv2YEnBZ
         F5Z3ccGXiAfT8Je65+Ee4NPSBbQpDgeDAXzDiMuaJ9CDyjyHb1oCwM4CUkjD0xrvlqsv
         S8JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VykTMuMgE6mdRtSqGfRQAmeW05Xwl0HIvhrtFyOQe7s=;
        b=nNq+MbB5rjD/oVp8YyQeekdD4dQ2+7Ol49oXjNMMZRAVO7dGNRm7zTblfSjw1lox29
         Ofa7FRm4eUB+1UvzaGF7LlHF+QHXWTt8nBV6VEpOyssdZSrLtFh9yMZFYdfayGpH/YUO
         0aAcSh5tiw2ZHDBdY02+ygvx/VI4dkPoW+CdGrdCZMHBbowo0qm1ziNZrdqdVszm8Ban
         YScGxbQbr5tIAw3jRYrWXOGeEQj0sFoC5kNbJ7pMbz0zSd+/vFKVPRgcMJjZem5VKEPb
         Gxr6qyHAreNghKgQKAiOGwOdv+Oyk+XYmlLusj7Jspyo70kSaQSVfzZopcy4FXYEcBAc
         K8pQ==
X-Gm-Message-State: AOAM532jDzn+fZw/lMHysyFklLffln+SGR7yTc1HK7R7fxFdtUU7P97v
	XCH9s/Iaps1IQkTj1K9TnqgFifuX+8EyOqCirng=
X-Google-Smtp-Source: ABdhPJyJt6Fzj5n1wBW+oZYjrZXLZdcWjGTiGdP6pxqTbwT4Si3sEia9KpVWPZot+pCIXDsv2tseJtN5SbIT1W+lkag=
X-Received: by 2002:a17:906:71d3:: with SMTP id i19mr8389419ejk.459.1595901864084;
 Mon, 27 Jul 2020 19:04:24 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
In-Reply-To: <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 27 Jul 2020 22:04:12 -0400
Message-ID: <CADkTA4MBSrRjgQQbnN=4XMhxVTB=b0RdH74zNPCb8pEwhg2GsA@mail.gmail.com>
Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
To: Scott Whitney <sdw@inea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Groupsio-MsgNum: 50104
Content-Type: multipart/related; boundary="000000000000b6fa0205ab76db37"

--000000000000b6fa0205ab76db37
Content-Type: multipart/alternative; boundary="000000000000b6fa0105ab76db36"

--000000000000b6fa0105ab76db36
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 27, 2020 at 3:51 PM Scott Whitney <sdw@inea.com> wrote:

> Hi Yocto group,
>
>
>
> I=E2=80=99m working with a newly-released copy of Yocto Zeus from Varisc=
ite for
> the i.MX8MM Mini, although the same option seems to apply to the previou=
s
> Yocto Warrior.
>
>
>
> I understand that a Linux real-time kernel can be enabled by setting
> LINUX_KERNEL_TYPE =3D =E2=80=9Cpreempt-rt=E2=80=9D.  Where does this opt=
ion need to be set so
> that when I bitbake fsl-image-qt5, I get the Linux =E2=80=9Cpreempt-rt=
=E2=80=9D kernel
> instead of the =E2=80=9Cstandard=E2=80=9D kernel?
>
>
>
> Is there a specific configuration file that needs to be modified, or a n=
ew
> recipe in a layer?  I am confused and hoping that you can help.
>
>
If you aren't using linux-yocto, you'll need to arrange for the preempt-rt
patch(es) to be applied to whatever kernel you are using. Which means you
are creating a new recipe, bbappending an existing one, or if you are luck=
y
the kernel provider already has a -rt recipe available.

If you are using linux-yocto, it's as simple as setting the preferred
provider of the kernel as linux-yocto-rt  and building.

Bruce



>
>
> Best regards,
>
>
>
> *Scott D. Whitney*
>
> Principal Software Engineer
>
>
> Intertech Engineering Associates, Inc.
> 100 Lowder Brook Drive, Suite 2500
> Westwood, MA  02090
> *sdw@inea.com <sdw@inea.com>*    |     T: 781-801-1152    |
> F: 781-801-1108    |     *www.inea.com <http://www.inea.com/>*
>
>
>=20
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000b6fa0105ab76db36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Jul 27, 2020 at 3:51 PM Scott Whitney &lt;<=
a href=3D"mailto:sdw@inea.com">sdw@inea.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_6629233205366031238WordSection1">
<p class=3D"MsoNormal">Hi Yocto group,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m working with a newly-released copy of Y=
octo Zeus from Variscite for the i.MX8MM Mini, although the same option see=
ms to apply to the previous Yocto Warrior.=C2=A0
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I understand that a Linux real-time kernel can be e=
nabled by setting LINUX_KERNEL_TYPE =3D =E2=80=9Cpreempt-rt=E2=80=9D.=C2=A0=
 Where does this option need to be set so that when I bitbake fsl-image-qt5=
, I get the Linux =E2=80=9Cpreempt-rt=E2=80=9D kernel instead of the =E2=80=
=
=9Cstandard=E2=80=9D
 kernel?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is there a specific configuration file that needs t=
o be modified, or a new recipe in a layer?=C2=A0 I am confused and hoping t=
hat you can help.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u></p></div></div></blockquote><div><br><div c=
lass=3D"gmail_default" style=3D"font-size:small">If you aren&#39;t using li=
nux-yocto, you&#39;ll need to arrange for the preempt-rt patch(es) to be ap=
plied to whatever kernel you are using. Which means you are creating a new =
recipe, bbappending an existing one, or if you are lucky the kernel provide=
r already has a -rt recipe available.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font=
-size:small">If you are using linux-yocto, it&#39;s as simple as setting th=
e preferred provider of the kernel as linux-yocto-rt=C2=A0 and building.<br=
></div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=
=3D"EN-US"><div class=3D"gmail-m_6629233205366031238WordSection1"><p class=
=
=3D"MsoNormal">=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>Scott D. Whitney<u></u><u></u></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;color:rgb(64,64,64)">P=
rincipal Software Engineer<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;color:rgb(64,64,64)"><=
img width=3D"82" height=3D"27" style=3D"width: 0.8541in; height: 0.2812in;"=
 id=3D"gmail-m_6629233205366031238Picture_x0020_3" src=3D"cid:1739326d04e4c=
ff311"><br>
Intertech Engineering Associates, Inc.<br>
100=C2=A0Lowder=C2=A0Brook=C2=A0Drive, Suite=C2=A02500<br>
Westwood,=C2=A0MA=C2=A0=C2=A002090<br>
</span><u><span style=3D"font-size:9pt"><a href=3D"mailto:sdw@inea.com" ta=
rget=3D"_blank"><span style=3D"color:blue">sdw@inea.com</span></a></span></=
u><span style=3D"font-size:9pt">=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=
=
=C2=A0 T:=C2=A0781-801-1152=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=C2=
=A0 F:=C2=A0781-801-1108=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=C2=A0
<u><a href=3D"http://www.inea.com/" target=3D"_blank"><span style=3D"color=
:windowtext">www.inea.com</span></a></u></span><u><u></u><u></u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for c=
haos and madness await thee at its end<br>- &quot;Use the force Harry&quot;=
 - Gandalf, Star Trek II<br><br></div></div>

--000000000000b6fa0105ab76db36--

--000000000000b6fa0205ab76db37
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <1739326d04e4cff311>
X-Attachment-Id: 1739326d04e4cff311

iVBORw0KGgoAAAANSUhEUgAAAFIAAAAbCAYAAADve9g/AAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAA59SURBVGhD
5Vl5dFxlFb/vvW/mvckkzUynyUwy7bRNUyAQRdlTLOixFlxYRIo9p3isW12RTVkUT5wej+KuLC4g
KBwLQlFxAQSqHi3tlLYHtYTmADVpU9I2SdMss71t3vN3vzdJSxJKPfoX/U6n8/It993vd+/93ft9
I7LZLB2vrXPgrAVERoZONDdnR7e6/y0Onfp7a6gvfyqJwl7x3y5+Q80fyu+lpLiQeiI/66S3/5kq
5nYKqf8mlQbIoTHs1aII+TRiqmQYNeS6MVLDKfK8xaSHl5A73kJq5Wv0tvc9e1wDmW3vrgCsn3QO
nXMyxeddRaVRItcichx4p1Ig8m0qAshwWMX/BqlaLWmaQrMaiIoHLapU3plNbt5E3ZvpuAZyMrrO
W34N/e3p0ylSt4Q8YKhqghQlBjAxhT8+/uFDHpEWYhAHya8sB4j/mpAhgRweXhcqFDLgC9KEoGI6
vXTvGyqEq5vZtWtjUygk4kII7PHMPRN7zHav9Tr9JWvIMbeRKiJUcWbYPoAMRQhj4+RYF2eTWydB
5MkSyJGRlnYhlBxeImzbfgRdK48FyK6urkg0OrY8HDbCruv9c/78M18+lnVHm9PVtbE2GhWQGdbK
5dL21talvf+rzIn1miZ+YRj6slLJegp97z5SLrzrhc6Bc75J0dhXqcz0OKVpYTikVyGrvDLbtPXZ
qcMSSFX1moUI60KoZNvK4LEqbhj5xUKEHtV1jSzL/jjW/c9A1tUJGDX061CIdRErIPP/AmQsluO9
LtA0VUWUDs+4R1f9NpXHr4TntZJTPjxFUeFyOlE5fxVAfGKmtRJIRVHnqqoC7gQHELLWMTZNozkK
KKRctsHBtPMYlx11mud5yUCmBY6nXf8PmSxj+/a6ek3LxyoVH/tVemaSm01vLnUOLFkLjrz/VeNG
HRQa/VE2ueXHr6VPNdkoGSZVbALzvH6ezLy5c2cdgr3B7ujocHO5deFM5oQUuKUvGB8G63onaHB5
AGl7npsfHs7piUQH0l7Q9uzZuBimTIJ3h9Ppju6J/qmyEc6zDMPQhobcfCqlLqoateA4lcJUmf39
uRNclxoha2j+/I4Xp24MPDgnEhGt6Hf6+nq6OjpWVfXJ85oE79H3/Zd4HeYmIhHSkRP2Tcrp2fkg
tZ50A4Vq2skuocwEiGZ+C+3yriUk66MCCQ9IsxdUKhV8XAlUPt/y+KJF4VbTNH+2Z09udzrd+mWE
RKanJ/egroubbdvdoKpivmU5sDCFwD1PjY1VtiUSdAkUnA+O+6Hvhy4OhTQFnu7s3p17PBRyP9TX
J+xUquVpyJ5nWeYPeno2FWMxvdO2Kw+kUv75iI4202SZSo2uG3/L591nIPODbBRV1X/gecp7hNBQ
0nk2ZD4KmR8DEIXOzk71wx++oFPXw59CzmzkvUDnrl27cmtaWztyiJgkwlqDceAtnt3bu/lW6Lja
95VIb2/u8wsXdtzH+852jLqdA+oPkXTuluHsWnkkmNXZjq320aJDeqTn+fBI+c3EsLe/f2O974u3
Iecbqqp+BeGuY2NSDr4vcl0Tri/qsSIalAfEpwJDUfyDnCxqa0NPRCJ6W6FQLgHwYWxgXjRqXJLP
lz5dV+f+BGvPhWwQj3ZdJBLKsAfatlWB7AT6kRoDmXglnukA6+N54qlIJLygWCznIXMcMtORiHFF
oWBuxZzvrl797q9Ho/qNbATbdpieFtbUGO2eZ3I4vgUfBhJjrg9j/RyJtYa9Exmcy8ZLMS6BlM2l
9WTlv0bRRBKlzpeQoad5/lRQBSyprF59YRLujjF/ZGhIDDU30yJsJhSEuvKc49jXIONdC3BWwqLF
fJ7+EY+7p1iW+F1trb6sWDQ3jY5alxDFi9Fo/jMMIjKjrar0LiHcHbYdeoGNhQ282TC8eQBIdd0K
khzNNk37Jt/3dum6x4CsRYLZAEDOhcwnR0fNKx9+eEP+Ix+58CYYYkGpZJYRMUsjkfhey8q/CJ3n
YM1JADoG41yDd8BTK7fV1/d8YXx84W0Yh3fK8RqMp+EUeCcnG++nkHM/tvc4xpugz/4jgQFXjnUO
dfydSofeTHcsv5OyW6biNu1vsWbNsqhtT0b/IPNhb++mTAgxydi6rn8DSpCtCAWPLQqwD7S3L0XV
T4QwTwSe6u9G3zj3IUzO5j4YoRfhsjno22IF85SDoIMUhyZ7HQz0yYULz31gQiuUUxoMweBw/dvL
MteuXYq/cmfzfADTDV1k/YawlqEGWAbAmSdCXZ2NoyjeE4nEKmd8fLPJ74Ec0zD6HMdpmcv6Q689
0Os65nxQjAh0VabXzZ7/R2jxcDa7lj3sdRtC20j4vhuvVvEy0fi+mtFAKvAWDxx0MJCiLpJOSyTn
cLgpimiqeu1kcYuhFPMTpMR2797yTYzXQdn5VZLnbNnIG0RWNsNhb+ORGsbjI3PgkQ0cHQBEvqfa
klWZc5jbMMwGlFEEjtvjeepcLpfA1z74eCgAWLm7XDYfgxPmA2BznIC4SdAaGloQdTQ7qFRI5oUj
2+mN0U0j5XJ171NHp/8tymV3No6SsAwP+jJ74VmWQ2gjCON9gaew1zKSitwgvIBzWJzDCfuR63K5
nGhq8psR/sw9ScMI38D9nJA4rCCX553Az5AzPDJCY+n0YaXKZQEeozgSCRtTbri/v9/AVyMffyEz
A5k3MoDgOuZrfvcefLWxTDwXMVcCiYzO5ZgsyQL6umDiTQe4LxTy0qg4NBcbwTtfmQrNmcnImno1
fjsdkJcXr9sEhDSx9wXepsjilz2oGooDHF79/duStu03MGgY3R1IFY0IlYlwkhZtaHA5SSUQZlwS
/d5xyr9AQnLAjSVwkgiH3e3gVXCpbAdXrNhQ6O7m0A2apnnNoBRkeQ7RCd7qgYcK6cUo+h8qlSoP
wYtsyGS+FLru5iDzA6wv/g2b5vRiG/RVi4MG5MjXSAOxF/NdBIDk9qpDSH/qvR26Eb9+rJR/EuQ6
DeSZUOWszeQPIGUNKRfB4k3BZF++AF6Lk49Sx2GAedIjQdSZ4ETj+PCGqpWpARjMDozgPdXScu5v
QQGzXVd9q+NQcd8+UUilaG5VkVe6u7Myrg43tZmN6jiWo6qVamiLRjhbbdWwT8DTIHNbg+vapzqO
mofMcjJJC6pFxX4YvojKIVpTo16BLB8uFt0cakUO0TkBDakTYSyjDns9hPGBCR0629rUTx4Kfc+o
jWl2efwy9P9lJuCm9iGk/XnMj+wFsFgVfWUiDKT1EAYpLryZzDXNlWGMuTIL4mkMoVwtaJmrNFH1
KCkLnPfFWbOiN42PF+3mZhfliJgdKDGd4KHL/CChKYOoSqRxLIvSOHbLUxeOshJcGC8bi9V9emys
OJ7JiFb8jbJJNqmvYdAC1JP36rrOPL+mXKa/whEiQWXiVvMAyahD1+DISHySYtYMn/hloy52TnF0
EKioK+GdX00feOx1uVKAi0DCXDZ4Lty9Dzynp1JKY/DSILGgP8NhgNSHBBGE3BHhj5odF6DBvAgU
rtKEarTBusjiZ/FZHzrvEMIYBbc1VUutI5OJRAEOM68afpyR5RUM1tWwwRhIyA9X+fq0IDroecNo
gcyXZwUJivRqOYcaWCGUULzuGT44MN0wd8MYEmzMbQ7oQAF9tXN2JIB2PnTstMsF8iouwSsT5fwo
3yHcWjXUa34htP129gLoapZK7oHmZoGNUjLwtsAD4CmLw+EQrGsVkSAOVROEx+EERVLxuLERgN0L
znoAXGTj5IOrErr9scfuuQWFL7xQevAd6KtB6CJJyUQ2jXvYQaohuhB+tQUy7wSv/gnlGaICJ1Kq
3IPyaBjPpwTZ1rsrkUggI7/0PPRYjHe8D0nlOQy0sRfn884zKJe6UaZdiFMMoqPsVSqG9HQ0HEV5
j4Hn96cubwIM96tQ0LFxLoEirlUmVVGvHo5d/tPE6CMjRwOTObICL+HQfJn5BUeqNui8HyEBI6vy
fAwFcbRy4YnKjvXrN4xjHi4U/HtRwlwCSy9AAf4mHPFSUHoQm/8cQvtWXQ81ICE0wIvHUJzfyUcw
yD4Png3ZFnjVnXY5As66C0nqgnBY4NSin2pZbiPfjQKIq+HVa5GxU9hfCvoegtG/Dw6Wlwsw4I1Y
h9pXOwOZ/S042XCyexoG/UTgCBRFQtkPh+iPRMyB4PqPipCz36/IkxF+XfAeDBuzMmYBeFWt6ToW
vDKeMr3hL2LKl44KJMj4PD4TxeNBKA0N9eyoq8u08fOKFWvy3d3dCJHKLaDtbLEYt/BjmYx5XELs
AKmfXl+vnA6uUiuVuu3cD8Duxln7cZyE2qEePMDeCYClZ59xBm154QW7DV7tQzYy9uQ9htQRieTZ
rq5tb41G3dP4GgQZeRv3t7R03AaZj+Ji5GTIhG1cljl5GsHzrnXr1i05++yWs0KhyiwseQWynp/Y
OLz6e1h7e6FALpzAXLasTV2//q53FF8ZovalF4/3N77/nkht/flm/jCIE2sdhLka1q8emHPpfcmD
j77mUVFA8KvqJNyWMD/JU8PERtlTA/BebRP0H0LP01MtVQVuGgeOjnbYkMGfSdlT17a3n8l14JMz
yORsO61wnpi3atUqdoRNU9cFei/FNc5h/bEvb+Ikti952dcB4ketwuhMS6ni2qRHYzWWO3obJlww
4yR0Hte/2fSnLr3ZqKm72TYLfCeLa0hwZjWsg59p5JUb2eU8g7l8b+NFn503+Ic7ZwLzuAUS4fyN
+jnpm+wSrg2QDcHBNlJ1AXncxlmNseJMhHqcakU4gh+zwhSJ1N+BzP4cyqHcVDCPOyCRgeOm4V0v
VG15YWTwO+Dw54Tr9GkiNCRMMW4aAa2halANcyRaEKHZilVOF63CyWGj9jxcvd4OvlwNvuw6Eszj
Csjh2ErdNNyMcL1fJQ/+5pbX4rsj+g+i0ucLmX/gg9sg+tZw6vK5LrkL+1NX1qYP/FLegnH7D7B8
JHpNzT1yAAAAAElFTkSuQmCC

--000000000000b6fa0205ab76db37--
