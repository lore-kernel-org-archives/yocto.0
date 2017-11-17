Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D9E4E00CF1; Fri, 17 Nov 2017 08:36:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEABAE00CEC
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 08:36:34 -0800 (PST)
Received: by mail-wr0-f194.google.com with SMTP id o14so2595982wrf.9
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 08:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1uXCoKE8yhQjzWuPsDB2LcB+7B/vKO4fP8LwlHpRWhI=;
	b=ILllpuBmzyUdtEVm0NmZ1LxylDCDeD5/BQNqedfUVbSK9v+bHbgkh/PMyB5f3SruKP
	8p9HdSQlOlwcTGsm/tjG5WarHjC8M+yzEYJDqo1aDRX6GXPjW3T8+lZCf7OlFOsMmftk
	KOYLb3Jjfrr3HHcPZOE79IsIh2y8LKdYE/dKoiBiJC4VMEji5JcAA0mR/27bateVZH5h
	JKoZzk4BEuPyQk4WHkjZzyvkL+IgNn8OQe2PkjgJFQv9muuSqQozUjEPsQ0McWHw++23
	EDyu2ByNv+XkmvnudIYFnVvfhq/YnaXCXRPdxsdkc7/l5VCk5jPyAnksZxk1ofXEpdpd
	pEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1uXCoKE8yhQjzWuPsDB2LcB+7B/vKO4fP8LwlHpRWhI=;
	b=eOC97SQeCTAcQdImwPRNs1FbPchOr6olrQADINZvMLcKwfgfvZsXRiN1eI7PHQ06Ss
	RKxKrSOd5UMfJGXcocb7T3fDPUsN2Fg737qm/GnjYIRxJiLy/e3pSMiM4rTJj3c6oQK0
	RtmShKNWVZQAYVMfVN0kNCjdFfDBZ3ebRWAv2oBBmlyq+xkdGWjJ4qwfdxIeG9motXe2
	z0OaPBAt6sIrL8V27ZZhDwaecDQu2F1xQGLYBb4Rnqtd/VK2NX47e3itjZ1g3FIrZhST
	DQCSEu41G0lyEGW2nrleFpBRPQRrb0770ctTsB6vp6AqSZfLBfRwK4zwuTYuiJB4cXCj
	+Ypg==
X-Gm-Message-State: AJaThX62UtZ8Yg2F/a+wl5pfAmIW+rlcqclxbXqyEytZc9eRoyRXsXlS
	axR+pbtE1Gm7hyMfeRG/IKtpGH9x9B2zsGHrOjVKWA==
X-Google-Smtp-Source: AGs4zMZkV0USnTdyuFrb6mBT1JYhB4RHUb0zyh9NnHAeU8mJ1P4yQxUhCq5h4Zm388B7QXE9YdjW152rzrYhEsX8FBU=
X-Received: by 10.223.130.196 with SMTP id 62mr5305977wrc.60.1510936593702;
	Fri, 17 Nov 2017 08:36:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Fri, 17 Nov 2017 08:36:33 -0800 (PST)
In-Reply-To: <20171117141306.zqh2yoxz3f7ioyz4@jholzmayr.localdomain>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
	<CAGAf8Lwj_dyL9uEcUxWZ+Y-HjV-gqwmbGD1JoNKLjDowxYz26Q@mail.gmail.com>
	<20171117141306.zqh2yoxz3f7ioyz4@jholzmayr.localdomain>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 17 Nov 2017 17:36:33 +0100
Message-ID: <CAGAf8LzEv2eOBid6gR1Du6mJHb-c2xoB_h73005UfPHW3hEaSg@mail.gmail.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Fri, 17 Nov 2017 16:36:37 -0000
Content-Type: multipart/alternative; boundary="001a114b4216f22458055e3056d9"

--001a114b4216f22458055e3056d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Josef,

Let me redefine the question? May I?

What is the difference while building an IMAGE=3D"core-image-minimal"
using DISTRO=3D"poky-tiny"
versus building an IMAGE=3D"core-image-minimal" using DISTRO=3D"poky"?

Or maybe I am mistaken (maybe some other IMAGE in DISTRO=3D"poky-tiny") !?

Thank you for an answer,
Zoran

On Fri, Nov 17, 2017 at 3:13 PM, Josef Holzmayr <
holzmayr@rsi-elektrotechnik.de> wrote:

> On Fri, Nov 17, 2017 at 07:27:27AM +0100, Zoran Stojsavljevic wrote:
> > > DISTRO =3D "poky-tiny"  and i  get the following
> >
> > What is the difference between core-image-minimal and poky-tiny?
>
> core-image-minimal is a IMAGE
>
> poky-tiny is a DISTRO
>
> Its just different things.
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Josef Holzmayr
> Software Developer Embedded Systems
>
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>
>

--001a114b4216f22458055e3056d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Josef,</div><div><br></div>Let me redefine the =
question? May I?<div><br></div><div>What is the difference while building a=
n IMAGE=3D&quot;<span style=3D"color:rgb(80,0,80);font-size:12.8px">core-im=
age-minimal&quot; using</span>=C2=A0DISTRO=3D&quot;poky-tiny&quot; versus b=
uilding an IMAGE=3D&quot;<span style=3D"color:rgb(80,0,80);font-size:12.8px=
">core-image-minimal&quot; using</span>=C2=A0DISTRO=3D&quot;poky&quot;?</di=
v><div><br></div><div>Or maybe I am mistaken (maybe some other IMAGE in DIS=
TRO=3D&quot;poky-tiny&quot;) !?</div><div><br></div><div>Thank you for an a=
nswer,</div><div>Zoran</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Nov 17, 2017 at 3:13 PM, Josef Holzmayr <span dir=
=3D"ltr">&lt;<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_b=
lank">holzmayr@rsi-elektrotechnik.de</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><span class=3D"">On Fri, Nov 17, 2017 at 07:27:27AM +0100=
, Zoran Stojsavljevic wrote:<br>
&gt; &gt; DISTRO =3D &quot;poky-tiny&quot;=C2=A0 and i=C2=A0 get the follow=
ing<br>
&gt;<br>
&gt; What is the difference between core-image-minimal and poky-tiny?<br>
<br>
</span>core-image-minimal is a IMAGE<br>
<br>
poky-tiny is a DISTRO<br>
<br>
Its just different things.<br>
<br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Josef Holzmayr<br>
Software Developer Embedded Systems<br>
<br>
Tel: <a href=3D"tel:%2B49%208444%209204-48" value=3D"+498444920448">+49 844=
4 9204-48</a><br>
Fax: <a href=3D"tel:%2B49%208444%209204-50" value=3D"+498444920450">+49 844=
4 9204-50</a><br>
<br>
R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
Woelkestrasse 11<br>
D-85301 Schweitenkirchen<br>
<a href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer" target=3D"_=
blank">www.rsi-elektrotechnik.de</a><br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393<=
br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
Ust-IdNr: DE 128592548<br>
<br>
______________________________<wbr>______________________________<wbr>_<br>
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
USt-IdNr.: DE 128592548<br>
<br>
</blockquote></div><br></div>

--001a114b4216f22458055e3056d9--
