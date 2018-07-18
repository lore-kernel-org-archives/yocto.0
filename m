Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7719BE0153E; Wed, 18 Jul 2018 14:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03886E010A4
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 14:50:03 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id r5-v6so2597861pgv.0
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 14:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sMVSBFqfUJcRELJJY+feJzlnjolT5/ZYum19Id1z/sA=;
	b=CmY2OxfyE3jGtsn4FeF+CjCG32UmgWhwrzL10o72ivs9ZwWI5F3yJ6lRn9xjZF/iXP
	viLECTjdPDIFfeR+fRHWc4qOtiaFDUVSTK82OTKrgQcmy/aWhEupyNbFE0Op8pZSE0Et
	buLdnQh1PKjFSVwK3GSXo0wipwy00eAR3AAK9HJpEl/WHMmZORnpCl+ht6TxQZRKlGgj
	+uQ/DedZ7q8st0FAaNdLA9Wxc1wN1M8R8gS7Ly/KnbkefZ89medcX2GZdUAW4VI0wFSd
	HNiLn34an9WCHUQ/7mHDsGY7egQJJn80v3Sfx9br7FCtvmfJZehbWHD4CHcotf5d8+iM
	DQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sMVSBFqfUJcRELJJY+feJzlnjolT5/ZYum19Id1z/sA=;
	b=clk0knmCShilaWvxa/vSzzzEbp8tna7MyhevX1V1Bs7m+jlfhOBOkq0cl/BueYxWdJ
	NYRTaLk/P0nKgDVcN42Hu1h/Dy4Xb2tvnOH5rYPaGfwkqqTyM4kvFF73lHjwLS1rGapt
	6MXBo6OKqt2jNmUfbvYUupwgiVX8mJ3vMlkWBG2lLex8r7sdu0DQjBgT6hM5VkKnqFtm
	D2eHtyGpiV/ttbbnA8X6chW4LxMeesc4ojKwgylJAdwL3wtX8RxjSIzn2L3eD2c6gMUf
	bly7IFfYwrwSxDRyxtrvlAla2aeykhNQIRxGK6Xj9LkJEUXEsJL7HAgbduaLEADyIV4J
	BcdQ==
X-Gm-Message-State: AOUpUlHF8jfhlPvDOxBqGe/3aiSz//E/EEGXnSoiswBmOv75ChgKySUN
	TyfgRcuDKGSF9lWLPLq1EpL6ve0mynWipsOIHKI=
X-Google-Smtp-Source: AAOMgpeyTVN5pyITk6X8b5OJNbsH8djxtQWtUrk0LzUbxBjWbIPCo1V/edFEbLX6Ywyhm7lC4d9+r30iLyr9+bSIrjs=
X-Received: by 2002:a63:d916:: with SMTP id
	r22-v6mr7183744pgg.381.1531950603558; 
	Wed, 18 Jul 2018 14:50:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
In-Reply-To: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Wed, 18 Jul 2018 23:49:51 +0200
Message-ID: <CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Wed, 18 Jul 2018 21:50:04 -0000
Content-Type: multipart/alternative; boundary="00000000000089e50205714d0b6d"

--00000000000089e50205714d0b6d
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 18, 2018, 13:38 Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello YOCTO community,
>
> Since I need to build the latest and the greatest Github creations
> from the independent contributors, I decided myself to write few YOCTO
> recipes and to get myself to this (un)pleasant learning path.
>
> I did few examples, simplistic ones, before I took more complex
> recipes to write.
>
> And... I need this one, Cannelloni, one defined here:
> https://github.com/mguentner/cannelloni


Recipe for above can be found here,
https://github.com/GENIVI/genivi-dev-platform/blob/master/meta-genivi-dev/meta-genivi-dev/recipes-extended/cannelloni/cannelloni.bb
.

I know that it builds on rocko at least.

/ Mirza

--00000000000089e50205714d0b6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, =
Jul 18, 2018, 13:38 Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsav=
ljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Hello YOCTO community,<br>
<br>
Since I need to build the latest and the greatest Github creations<br>
from the independent contributors, I decided myself to write few YOCTO<br>
recipes and to get myself to this (un)pleasant learning path.<br>
<br>
I did few examples, simplistic ones, before I took more complex<br>
recipes to write.<br>
<br>
And... I need this one, Cannelloni, one defined here:<br>
<a href=3D"https://github.com/mguentner/cannelloni" rel=3D"noreferrer noref=
errer" target=3D"_blank">https://github.com/mguentner/cannelloni</a></block=
quote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Recipe for =
above can be found here,=C2=A0<a href=3D"https://github.com/GENIVI/genivi-d=
ev-platform/blob/master/meta-genivi-dev/meta-genivi-dev/recipes-extended/ca=
nnelloni/cannelloni.bb">https://github.com/GENIVI/genivi-dev-platform/blob/=
master/meta-genivi-dev/meta-genivi-dev/recipes-extended/cannelloni/cannello=
ni.bb</a>.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">I know =
that it builds on rocko at least.=C2=A0</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">/ Mirza=C2=A0</div></div>

--00000000000089e50205714d0b6d--
