Return-Path: <jon.szymaniak.foss@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAD3BE00B93; Sat, 27 Oct 2018 11:36:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
	[209.85.217.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10314E0097C
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2018 11:36:48 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id q15so2857002vso.1
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2018 11:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=PE9xny2tppwXee6mjH+1qbcKvpJ0lLxIXrGLV458qTA=;
	b=rzmLslwYOAZh3+lkaKQbgwsV//4xOI+eaJ2AAXnys4yeiCAxEO1FWcf0c5YzFelsyn
	6dz+MRX0+T1sIdKVzw5opJpOuMqx8f31AQHY/JTgPiZZqrOfljKA+bFeqGhsPvpmkbEd
	hwmKUmY22U+X+PZNmUJ3JI5kPGlS2TtDTm5Agos85nu/GQYwRP4TgoamIthnKLhlzx6u
	np0Md5clJFPgOws6WyJH6mpqeHxWg09b4S6FvX/twyxkYdVF4pjyhmtgm3m2R9U4KNTe
	VW976+C5iYshxldTbarwA+rXO/DecmE2BZDGqzuOFkdbk23jQXPzOlW9ApBHL8NjhDjb
	x/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PE9xny2tppwXee6mjH+1qbcKvpJ0lLxIXrGLV458qTA=;
	b=Mhg6CBcYLmVC9iHB9g+x5vmc7FlQqn3h7kAxaTnkXKoXzgGBGvRrw/p/gUuck/XWEb
	AZNRR4BmRGoQL4m5LswLVzCWQnDVxQybqGWbc3Fh+sJRtwkgeKWyiJPby8/Ph7hSbbZC
	VrKmNOLKvKHDClrzbdvuRNcamIani6e+BlxCPSgbdnnO602i+KSY7ssj9ZrlakY/FH1T
	GlJ6vzqgXDHjdBeqhYde03Opu3vXAPZ8b6Gg0NrQCMpVD9XQA7OVlt0/NiaQS9gyunPG
	7J1ZzuAkfN9JrKwWUnuzyY0+p2JonISOrb2vTKTP01zV/mW2yk/Ofe8llRMy19PKJhHj
	2K9A==
X-Gm-Message-State: AGRZ1gLvD+2+wyK2r0YWzkP8OHyi00eVBcYXpQxJOiEoMIaDR9xKs/Lf
	fG8CB6495aTeNfm/y4tLoc+BvSuWxwU0qaeaZA/6pw==
X-Google-Smtp-Source: AJdET5flKs6F68S/5BcoopxuQzZ3aeWLfaokLdEochYRXUbZj2tl3cbFAomDn43oZScMncFGqRoOVOOBl3koS8GFa48=
X-Received: by 2002:a67:2802:: with SMTP id o2mr3696428vso.220.1540665408323; 
	Sat, 27 Oct 2018 11:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <5c997a41-6069-1579-27d3-72975ab195a6@impsoftware.org>
In-Reply-To: <5c997a41-6069-1579-27d3-72975ab195a6@impsoftware.org>
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Sat, 27 Oct 2018 13:36:37 -0500
Message-ID: <CAPxrFVmj-1R9xZELyegVGW+A+HxFQ1V=5frUzqfn6HjgxH03ig@mail.gmail.com>
To: matt@impsoftware.org
Cc: yocto@yoctoproject.org
Subject: Re: NVIDIA or AMD accelerated graphics on x86 or x86-64 machine architecture
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
X-List-Received-Date: Sat, 27 Oct 2018 18:36:49 -0000
Content-Type: multipart/alternative; boundary="00000000000061869505793a1e09"

--00000000000061869505793a1e09
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 26, 2018 at 15:51 Matt Ervin <matt.office@impsoftware.org>
wrote:

> I=E2=80=99m creating a poky (sumo branch) based OS image for x86_64 PC ha=
rdware.
> It=E2=80=99s an embedded device that is essentially a desktop PC in a box=
 with
> additional features. My device requires accelerated graphics (either NVID=
IA
> or AMD, not Intel) and I=E2=80=99m having difficulty identifying which la=
yer and
> recipe to use for either device. Are there any recipes that encapsulate t=
he
> NVIDIA Linux desktop binary drivers for x86? If not then are there any
> consultants willing to sell me some time to help me create one, or to
> create one for me? I did some google searching and found a layer from
> OakLabs, but it doesn=E2=80=99t work (at least not with the sumo branch).=
 The
> README file in the recipe also states that it=E2=80=99s likely to break t=
he build,
> and it did produce errors for me. I=E2=80=99m not familiar with AMD on Li=
nux so I
> don=E2=80=99t know if the xf86-video-ati recipe in the meta-oe layer prov=
ides
> accelerated desktop drivers or, if it does, which AMD devices it supports=
.
> I=E2=80=99m obviously very new to Yocto so any guidance is greatly apprec=
iated.
>
>
>
> - Matt
>

Hi Matt,

Any chance you share a bit more info including:

1) Which OakLabs layer you using, and what exactly the failures messages
are?

2) Which NVIDIA and AMD devices you need to support?  Specifically which
drivers do you want installed?


Thanks,
Jon

--00000000000061869505793a1e09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, Oct 26, 2018 at 15:51 Matt Ervin &lt;<a href=3D"mailto:matt.of=
fice@impsoftware.org">matt.office@impsoftware.org</a>&gt; wrote:<br></div><=
div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <p> </p>
    <p style=3D"margin-bottom:0in;line-height:100%">I=E2=80=99m creating a
      poky (sumo branch) based OS image for x86_64 PC hardware. It=E2=80=99=
s an
      embedded device that is essentially a desktop PC in a box with
      additional features. My device requires accelerated graphics
      (either
      NVIDIA or AMD, not Intel) and I=E2=80=99m having difficulty identifyi=
ng
      which layer and recipe to use for either device. Are there any
      recipes that encapsulate the NVIDIA Linux desktop binary drivers
      for
      x86? If not then are there any consultants willing to sell me some
      time to help me create one, or to create one for me? I did some
      google searching and found a layer from OakLabs, but it doesn=E2=80=
=99t
      work (at least not with the sumo branch). The README file in the
      recipe also states that it=E2=80=99s likely to break the build, and i=
t did
      produce errors for me. I=E2=80=99m not familiar with AMD on Linux so =
I
      don=E2=80=99t know if the xf86-video-ati recipe in the meta-oe layer
      provides accelerated desktop drivers or, if it does, which AMD
      devices it supports. I=E2=80=99m obviously very new to Yocto so any
      guidance is greatly appreciated.</p></div><div bgcolor=3D"#FFFFFF" te=
xt=3D"#000000"><p style=3D"margin-bottom:0in;line-height:100%"><br>
      <br>
      - Matt</p></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"=
auto">Hi Matt,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Any chanc=
e you share a bit more info including:</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">1) Which OakLabs layer you using, and what exactly the failu=
res messages are?</div><div dir=3D"auto"><br></div><div dir=3D"auto">2) Whi=
ch NVIDIA and AMD devices you need to support?=C2=A0 Specifically which dri=
vers do you want installed?</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Jon</div></d=
iv></div>

--00000000000061869505793a1e09--
