Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62469E00B33; Fri,  4 Oct 2019 19:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA9EE009E7
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 19:59:00 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id a6so7495215wma.5
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 19:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=i+S4OQBIHerK+rntMDbAb8Z582Edl3RhFRClVnKJAAU=;
	b=hY2lqxS1DvOcu7pUAAiiohqLqZaJr3MS4YRCiN4aVItxIB2PRAV11RE1X7WMYdu3su
	xs6MmtYemiUKHGGZ3vyMR6G9TXxI7Umeq9vw2PLX+aPREGrljoEgAwz+WbBxXxiBwTlJ
	wzRtLyKaKhkwsNjHrsdCW083gbxpPoY9A3g7pvh3K0eIw5MhWqLDzquREk5HrkKWQeTa
	inUuuV0+KwNCCt/LG7DuZVgDFBrJC2avdR2kSrP8Inko0GlrzwJpSgVtdBu3xa35Whk0
	8Ju6zLutIWQEkwuV/9h1bCJPpEAJRQLZO4mi0PgsIZ9ECt7oM2EiEAq+QE+vjFNH9SHx
	0SXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=i+S4OQBIHerK+rntMDbAb8Z582Edl3RhFRClVnKJAAU=;
	b=ewmBB/NGdokZ7AmQRJxc7qMSiUY9yu7iGsMH3B4kPf+kdI6P2+gHw7msn9Z//qfmVw
	8ImloBW8I7se/RDHbYT5kriEaDukmhUDFTUubQQpvw36dM7W/yrrtzF8q538ILcIXnyQ
	eRd7dEjrk/NLbEx3p/X8NVGAQf3h9HQW0RN9ybev0M0kUzSOMskN6v3ns6x+cbNPc92C
	lGZENjde2TpAn04dhsci8JQ5dGpjf/AnDo7uAtqvW25gUUvf22HgQeIj5zlmK4jr04cX
	G/UM9Rg193tmWWm8XqhbaquBbofnPxEEO8ZQNnS9S7vHqFRyaHkB5lWU/L7Ve2oPoNvf
	AeWg==
X-Gm-Message-State: APjAAAWbPL5mZ5s611xdAia1FwZ6OViIRH2OTWoGZ1kKjulhy0LhT6wO
	wIKWIFnqYJ3m4nPdHaAHU28Lx4YwmaZJ7igzkj8=
X-Google-Smtp-Source: APXvYqwvwe4sAq0DV0p02+wn5+AThq1nKezPyeoAUGFKExnBi4KSBAO3iYoYAQY3gMo5jvs845n94fiuHnITkyb8jZQ=
X-Received: by 2002:a1c:7d8e:: with SMTP id y136mr12539997wmc.83.1570244339508;
	Fri, 04 Oct 2019 19:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <CACfi_Z1EyksY4NrV8iRnRoyMS00qDfFgWdshOwhCd1ohqouL=A@mail.gmail.com>
In-Reply-To: <CACfi_Z1EyksY4NrV8iRnRoyMS00qDfFgWdshOwhCd1ohqouL=A@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Fri, 4 Oct 2019 21:58:48 -0500
Message-ID: <CAJdd5GbogimYgsP4ce6KFgxv_WNqy03AeOR-h=zAM84bhXJgvA@mail.gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: using BBMULTICONFIG to create a 32-bit rootfs, kernel, u-boot that also includes a 64-bit kernel, u-boot for NXP i.mx6/i.mx8
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
X-List-Received-Date: Sat, 05 Oct 2019 02:59:01 -0000
Content-Type: multipart/alternative; boundary="000000000000112af4059421002c"

--000000000000112af4059421002c
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 4, 2019, 7:04 PM Davis Roman <davis.roman84@gmail.com> wrote:

> Hello,
>
> We're working on a Linux distro for two systems where one is based on
> NXP i.mx6(32-bit,armv7) and the other i.mx8(64-bit,armv8).
>
> I have two machine types defined in Yocto so individually I can build
> either one however our goal is to create a single distro that can run on
> both processors.
>
> So the idea is to use BBMULTICONFIG(
> https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBMULTICONFIG
> )
> to build two separate images,
>
> 1) a 32-bit distro for an i.mx6
> 2) a 64-bit distro for an i.mx8
>
> and then finally, take the 32-bit distro and add the 64-bit kernel+modules
> and u-boot.
>
> ---------------------------------------
> |--------------------------------------|
> ||           32-bit rootfs            ||
> |--------------------------------------|
> |-----------------   ----------------- |
> || 32-bit kernel |   |  64-bit kernel ||
> |-----------------   ----------------- |
> |-----------------   ----------------- |
> || 32-bit u-boot |   |  64-bit u-boot ||
> |-----------------   ----------------- |
> ---------------------------------------
>    i.mx6solo             i.mx8m mini
>
> We've already tried our existing 32-bit rootfs + 64-bit kernel/u-boot on
> the i.mx8 and the system runs.
> So in theory, it should just be a matter of getting yocto to assemble all
> the pieces together.
>
> I don't have much experience with BBMULTICONFIG so any ideas or comments
> on how to proceed would be appreciated.
>

You are on the right track. Create two multiconfig files one for each
machine, then user mcdepends (
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#dev-enabling-multiple-configuration-build-dependencies)
to pull the 64 bit kernel, etc. into the 32 bit image.

BBMULTICONFIG is used in local.conf to select which multiconfigs you want
to enable. In your case it would have to list both of the ones that you
define.


> Thank you,
>
> Davis
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000112af4059421002c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Oct 4, 2019, 7:04 PM Davis Roman &lt;<a href=
=3D"mailto:davis.roman84@gmail.com">davis.roman84@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><font face=3D"mono=
space">Hello,<br><br>We&#39;re working on a Linux=C2=A0distro for two syste=
ms where one is based on<br>NXP i.mx6(32-bit,armv7) and the other i.mx8(64-=
bit,armv8).</font><div><font face=3D"monospace"><br></font></div><div><font=
 face=3D"monospace">I have two machine types defined in Yocto so individual=
ly I can build</font></div><div><font face=3D"monospace">either one however=
 our goal is to create a single distro=C2=A0</font><span style=3D"font-fami=
ly:monospace">that can run on both processors.</span></div><div><font face=
=3D"monospace"><br>So the idea is to use BBMULTICONFIG(</font><a href=3D"ht=
tps://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBMUL=
TICONFIG" target=3D"_blank" rel=3D"noreferrer">https://www.yoctoproject.org=
/docs/latest/ref-manual/ref-manual.html#var-BBMULTICONFIG</a>)<div><font fa=
ce=3D"monospace">to build two separate=C2=A0images,<br><br></font></div><di=
v><font face=3D"monospace">1) a 32-bit distro for an i.mx6</font></div><div=
><font face=3D"monospace">2) a 64-bit distro for an i.mx8</font></div><div>=
<font face=3D"monospace"><br></font></div><div><font face=3D"monospace">and=
 then finally, take the 32-bit distro and add the 64-bit kernel+modules and=
 u-boot.<br><br>---------------------------------------<br>|---------------=
-----------------------|<br>|| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32-bit ro=
otfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0||<br>|----------------------=
----------------|<br>|----------------- =C2=A0 ----------------- |<br>|| 32=
-bit kernel | =C2=A0 | =C2=A064-bit kernel ||<br>|----------------- =C2=A0 =
----------------- |<br>|----------------- =C2=A0 ----------------- |<br>|| =
32-bit u-boot | =C2=A0 | =C2=A064-bit u-boot ||<br>|----------------- =C2=
=A0 ----------------- |<br>---------------------------------------<br>=C2=
=A0 =C2=A0i.mx6solo =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i.mx8m mini<b=
r><br>We&#39;ve already tried our existing 32-bit rootfs=C2=A0+ 64-bit kern=
el/u-boot on the i.mx8 and the system runs.</font></div><div><font face=3D"=
monospace">So in theory,=C2=A0</font><span style=3D"font-family:monospace">=
it should just be a matter of getting yocto to assemble all the pieces</spa=
n><span style=3D"font-family:monospace">=C2=A0together.</span></div><div><s=
pan style=3D"font-family:monospace"><br></span></div><div><span style=3D"fo=
nt-family:monospace">I don&#39;t have much experience with BBMULTICONFIG so=
 a</span><span style=3D"font-family:monospace">ny ideas or comments on how =
to proceed would be appreciated.</span></div></div></div></blockquote></div=
></div><div dir=3D"auto"><br></div><div dir=3D"auto">You are on the right t=
rack. Create two multiconfig files one for each machine, then user mcdepend=
s (<a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/mega-ma=
nual.html#dev-enabling-multiple-configuration-build-dependencies">https://w=
ww.yoctoproject.org/docs/current/mega-manual/mega-manual.html#dev-enabling-=
multiple-configuration-build-dependencies</a>) to pull the 64 bit kernel, e=
tc. into the 32 bit image.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">BBMULTICONFIG is used in local.conf to select which multiconfigs you wan=
t to enable. In your case it would have to list both of the ones that you d=
efine.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><font f=
ace=3D"monospace"><br>Thank you,<br><br>Davis</font></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div></div></div>

--000000000000112af4059421002c--
