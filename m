Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 297D4E0098A; Thu, 16 Mar 2017 01:46:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC834E0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 01:46:07 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id w124so64572332itb.1
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 01:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3UBBY8Y7mDI+Gmf7mP+AFnbAyDvFMyyMk3iYLkYe9zw=;
	b=mCjZITRliDIrf/wya3OscK9sc6Fns1ibdRpYTlcjeDUC8lIbXSFkWYmIVt2Z49me3N
	jjEiqtDIAGWsFZC64dtphcUOUEpIXs2+7R/c0UX4QZVYIWz2J0CFHhI1t4gLlyIS5mby
	On/r1cqPCOqWpGHmGlt0z1sYezOjBXoUm1SCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3UBBY8Y7mDI+Gmf7mP+AFnbAyDvFMyyMk3iYLkYe9zw=;
	b=hqVJSO2KMc7LuKyzQC9u//8HsndrHJ8iiH8o+LgSPsG+8q/NK1pu/xC7igx3iKv6ru
	3hfZJMV4DbEI+3E9meYJTOnKKzpz6mZ2uzUeJ80/qLJGvbYeB/UH0iZcP/vNppsvYVJy
	AFcDBTpAShh3LpAIju5tOA1FJzaydLu2rckd++uQtENGSsNge2ioLWETAsRTewO3WtlF
	92hK8IRvJgCLLowbcqOkX8SMO2cmMYdHO2ul9uJxfLwtbKh6quAhj05RrWzeGLedl4xV
	Th8q/YAYFHiJdqcgtr3O/0S+TVCDlPG9UDj5YkXfFtBnuLz+v5goVtg0GceevvmpiV86
	eoSQ==
X-Gm-Message-State: AFeK/H0KU2nUleGVzNveEQh/ZKDwtLDS8MhYV7oU9mQ0DtC/0hEQsDRE67nEFxuCXfojARSU/cDVtMkgwuW+uQ==
X-Received: by 10.36.0.85 with SMTP id 82mr8818676ita.26.1489653966901; Thu,
	16 Mar 2017 01:46:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Thu, 16 Mar 2017 01:46:06 -0700 (PDT)
In-Reply-To: <bcc7e3a0-bbf1-6310-1998-8a487aed6627@rsi-elektrotechnik.de>
References: <CALDHXtcQ6W_b8YtpsQyGNy+zx0ycDXEG9ADNmfu+TxKfVy2E2w@mail.gmail.com>
	<8b3bb2f6-aa5f-e369-2f6b-f28e8665edf7@rsi-elektrotechnik.de>
	<CALDHXtd=V3n9sn=Zr3m+2iiM5BQ4TBgQpnpEmnCP+YL=+3Jkrw@mail.gmail.com>
	<bcc7e3a0-bbf1-6310-1998-8a487aed6627@rsi-elektrotechnik.de>
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Thu, 16 Mar 2017 14:16:06 +0530
Message-ID: <CALDHXtfby7PXELHYfEx4c-quSo-ud0-iPXkST0JfDGdO8szLiA@mail.gmail.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: ERROR: core-image-minimal-xfce-1.0-r0 do_rootfs:
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
X-List-Received-Date: Thu, 16 Mar 2017 08:46:12 -0000
Content-Type: multipart/alternative; boundary=001a11c00e9889c8b8054ad51722

--001a11c00e9889c8b8054ad51722
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sorry i forgot to add yocto list while replying.

what about above error , how we can solve that problem  ?


On Thu, Mar 16, 2017 at 12:29 PM, Josef Holzmayr <
holzmayr@rsi-elektrotechnik.de> wrote:

> Again, please keep your responses on the  list!
>
> On 16.03.2017 07:52, ravikiran j wrote:
>
>>
>> Suppose if i want to install some packages from debian or ubuntu
>> repositories,
>> how can  i achieve that  using rpm or  ipk based distribution  ?
>>
>
> In short, not at all. This is not how things are meant to be. Just becaus=
e
> something comes in a package of a specific format, it does not mean that
> you can use it everywhere the package management uses the same format.
>
> The correct way is to write recipes for the things that you want and
> properly package them up using bitbake.
>
>
> Greetz
> --
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

--001a11c00e9889c8b8054ad51722
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry i forgot to add yocto list while replying.<br><=
br></div>what about above error , how we can solve that problem=C2=A0 ?<br>=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu,=
 Mar 16, 2017 at 12:29 PM, Josef Holzmayr <span dir=3D"ltr">&lt;<a href=3D"=
mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_blank">holzmayr@rsi-elekt=
rotechnik.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Again,=
 please keep your responses on the=C2=A0 list!<span class=3D""><br>
<br>
On 16.03.2017 07:52, ravikiran j wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Suppose if i want to install some packages from debian or ubuntu<br>
repositories,<br>
how can=C2=A0 i achieve that=C2=A0 using rpm or=C2=A0 ipk based distributio=
n=C2=A0 ?<br>
</blockquote>
<br></span>
In short, not at all. This is not how things are meant to be. Just because =
something comes in a package of a specific format, it does not mean that yo=
u can use it everywhere the package management uses the same format.<br>
<br>
The correct way is to write recipes for the things that you want and proper=
ly package them up using bitbake.<div class=3D"HOEnZb"><div class=3D"h5"><b=
r>
<br>
Greetz<br>
-- <br>
Josef Holzmayr<br>
Software Developer Embedded Systems<br>
<br>
Tel: +49 8444 9204-48<br>
Fax: +49 8444 9204-50<br>
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
</div></div></blockquote></div><br></div>

--001a11c00e9889c8b8054ad51722--
