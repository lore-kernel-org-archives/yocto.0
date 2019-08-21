Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 579A1E00D8A; Wed, 21 Aug 2019 03:03:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
	[209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6126E008D3
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 03:03:00 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id q16so977507vsm.2
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 03:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xO5CxDwF3PYZCH9/P7YQIXt9OttYVlCZU7YW7kqOAVc=;
	b=dYDYtwW38weaEYOHFFEoKKtNUHc0btw7NxqVNyPo2Z07r5jMNE1SDonOdrpc+zU32B
	n8QUslAqj5R2XDFa/erx6nEsP2lQizPVp4DHPGj8FHi8tLRQQqYOylx/qpChgt7tjJCR
	Mt9mcUYbl/vd75AxAZ1e0bZbmOF8VHgufMciTOhwwGSnbIPIPSoY8YnG//gshHkWkJ22
	KAOXuYVQYqG+qitIjZmUYJDk+yrgF2rZU6Q9ipEx2NktgVJY9KG6ElJiIbzfiAW/bXRV
	BnLFiWy9o8vIzv9PKqoq4IAPvVUz3y/hbZoXm/CYnIzmUhlGkxUF+2qfhPqI0aG83gvn
	Moyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xO5CxDwF3PYZCH9/P7YQIXt9OttYVlCZU7YW7kqOAVc=;
	b=S0KZ1bWVSTkg/DHf5wpVSuUkUznyWEkIChlQ5LNJ3baoTHsa9oi/rnNlEQ2OqLNC8z
	KHQBRRfPKmtJCgeEhiYw6Crv6sLF/jx9OYNa/DBFi+Z6IBVWU9USoChLbCYWyIwZOqkW
	oSanWJgJ6YWSqv+iHCnOwCj7eN1rRQ1Zxgd3iCLkXKAmA6IBELukak2p5W7XeQK+0gnH
	hCbYXhBQvgy11Rdtp+uukV48fq9fiCP2C4MuzkhR4noY1p6t/eRZcUpObbSGWsb8pc4e
	7iDpIWcvOetAgYkjSaiBqy2ln7TovE+wCzFV4CMv9Y3/wRd3dapTRbknAEg1Gy6nluUg
	VUDw==
X-Gm-Message-State: APjAAAW04lb06JrLGdQPvzPTytLxCoNgVD0NPCf1Ldh71Ip7QicFOn00
	vYQU0xrv8ul7Kh4DM/3sAYixvgOU8tHJtoXJXnWouRrB
X-Google-Smtp-Source: APXvYqx0x6vVv86sZT5cvtUYCVDuSo39WP4JiovPZ0teLsH0GaRSM0IXBUKaZ14cHDk9nwGesLxVq0O8iypVlHEzly4=
X-Received: by 2002:a67:62c5:: with SMTP id w188mr20424492vsb.25.1566381780038;
	Wed, 21 Aug 2019 03:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <cb03605c9f0d423eaae6bb2d7d60ca00@systec.de>
	<CANNYZj9MnarpiyDPR0nk8xWKNXgPJVAEZ+g1v9+r0O0rjf8w9g@mail.gmail.com>
	<f9f2c26c740d464daf3d729a1a499bc9@systec.de>
In-Reply-To: <f9f2c26c740d464daf3d729a1a499bc9@systec.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 21 Aug 2019 12:02:49 +0200
Message-ID: <CANNYZj_dTe1gwwsc8pQmDeC-MSt8qKJ=-FuJaLY1BOZTuV=yvA@mail.gmail.com>
To: =?UTF-8?Q?Bert_B=C3=B6hne?= <bert.boehne@systec.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.7 SDK Eclipse
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
X-List-Received-Date: Wed, 21 Aug 2019 10:03:11 -0000
Content-Type: multipart/alternative; boundary="00000000000094f6ba05909dade1"

--00000000000094f6ba05909dade1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 21 Aug 2019 at 11:00, Bert B=C3=B6hne <bert.boehne@systec.de> wrote=
:

> thanks for your reply. Do I need the plugins for writing and debugging
> code in Eclipse? The documentation says:
>
>
>
> 24.9.11. ADT Removed=C2=B6
>
>
>
> The Application Development Toolkit (ADT) has been removed because its
> functionality almost completely overlapped with the standard SDK and the
> extensible SDK. For information on these SDKs and how to build and use
> them, see the Yocto Project Application Development and the Extensible
> Software Development Kit (eSDK) manual.
>
>
>
> So would it work if I use Eclipse and maybe a plugin for CMake? Start
> Eclipse from the cmdline where I sourced the SDK environment setup script=
?
>
>
>
> What is the =E2=80=98normal=E2=80=99 way or tool for writing applications=
? Is it weird to
> want to use Eclipse?
>

I do not want to define 'normal'; for me personally the way to work is to
do everything from command line, with an extremely lightweight editor (e.g.
nano). Since I have never used Eclipse, I do not know what the (now
removed) plugins actually do. You can certainly still edit code using
Eclipse but I can imagine that for building it, and running it and other
things you would have to switch to the command line.

Alex

--00000000000094f6ba05909dade1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 21 Aug 2019 at 11:00, Bert B=C3=
=B6hne &lt;<a href=3D"mailto:bert.boehne@systec.de">bert.boehne@systec.de</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_-6917546569108820139WordSection1"><span style=3D"font=
-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"=
 lang=3D"EN-US">thanks for your reply. Do I need the plugins for writing an=
d debugging code in Eclipse? The documentation says:</span>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">24.9.11. ADT Remo=
ved=C2=B6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">The Application D=
evelopment Toolkit (ADT) has been removed because its functionality almost =
completely overlapped with
 the standard SDK and the extensible SDK. For information on these SDKs and=
 how to build and use them, see the Yocto Project Application Development a=
nd the Extensible Software Development Kit (eSDK) manual.<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">So would it work =
if I use Eclipse and maybe a plugin for CMake? Start Eclipse from the cmdli=
ne where I sourced the SDK
 environment setup script?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">What is the =E2=
=80=98normal=E2=80=99 way or tool for writing applications? Is it weird to =
want to use Eclipse?</span></p></div></div></blockquote><div><br></div><div=
>I do not want to define &#39;normal&#39;; for me personally the way to wor=
k is to do everything from command line, with an extremely lightweight edit=
or (e.g. nano). Since I have never used Eclipse, I do not know what the (no=
w removed) plugins actually do. You can certainly still edit code using Ecl=
ipse but I can imagine that for building it, and running it and other thing=
s you would have to switch to the command line.</div><div><br></div><div>Al=
ex<br></div></div></div>

--00000000000094f6ba05909dade1--
