Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB4EEE00DD8; Thu, 26 May 2016 12:51:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2695E00DC6
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 12:51:37 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id z123so52348887itg.0
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 12:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1PH+sRgAfrIQZBRqxiK6nqCq1AnaJY9ZFR3Mm7PaZxc=;
	b=rM/SXObk+rQPpjJGHe3Oa2Vrfsn9q2pNp52jacGCwiY8WzjOSPCTHS4Y3QIZx6AMgj
	+sdeAaMmDNbdyWOQ1FHKqjcFnCJi8fk6dsVnKoJTSae3YL3Z10w7xtx2sbQk5smb+C/C
	BpKHmLDaAzdnIs2etSEYzWUUELXjzWTVg4uQzhbm19mowdG96SdsQKjv6LcXnbl0KyUa
	WMsZ24Tw/s6D9GFZjehOVUFGBVh2hTyo0U1rWN2VFsXSiUUJjYi6GLDGpXJ8rXHN/Fv0
	69mXvAIGN5VoJc7w/KRIlPVgi/x8V3FuP5BD1w8hf/88c6VAgJEe/3N9afIXVjr/s4QU
	Yb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1PH+sRgAfrIQZBRqxiK6nqCq1AnaJY9ZFR3Mm7PaZxc=;
	b=OnFpG0QSd2Ub0dGh51ThIR86yccMvehVZEjlaGtfpacmEWrZ95edAkon45piHnsy1G
	FwUwR1xOxaUPxWDJQpfpNU5dhC8XSV3KiZ4Cd1oe0m7OZ20Pk0MUMd3hpATgvGxXUgtY
	xXBgs+3Yz1Dy03cGI4hPVJC96DQcL7CCiZOEbaQU3b6JbPXrcBraDK92T1lg8J+sqwt2
	OXhJzbUo+c4uiN6KrqX4w8XKuofVO+eptDVvo8lCiCB16uoVLshdpikvVIYgw1vWjdh/
	oa5KgLL0moHWY6qHXbLy/u28X4H82ddxZda+lEOPDZmR5hENeuHkJrKsvCMXLe+EH3vD
	/Hiw==
X-Gm-Message-State: ALyK8tKkKewBvato0L+bRgwuyizK6YwjHviTGVTT8m9JVF5qXNzCfG7Eli4rCwkdqeV4Ha/e/e7KDAIPP5UYOAcD
X-Received: by 10.36.217.79 with SMTP id p76mr4950559itg.38.1464292297122;
	Thu, 26 May 2016 12:51:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 26 May 2016 12:51:17 -0700 (PDT)
In-Reply-To: <f1580aa91ce14956beb3129c2343f9ea@Ek.usurf.usu.edu>
References: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
	<CAJTo0LY-0iaFzY=fQSagQWHikUiMYo2P8wWvpetW1H23BTqKcA@mail.gmail.com>
	<35cb4951b7994fd1a323e3da04d7978b@Ek.usurf.usu.edu>
	<CAJTo0LYkngeh80Y7js0Tki_9jEVtFmoZeUB=Fp3+JXhV0Fd7ZA@mail.gmail.com>
	<f1580aa91ce14956beb3129c2343f9ea@Ek.usurf.usu.edu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 26 May 2016 20:51:17 +0100
Message-ID: <CAJTo0Lb3DTHA_hMSZNFFRLxPAuo63JOa_g1C-ck9o0tOyXySsw@mail.gmail.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 19:51:38 -0000
Content-Type: multipart/alternative; boundary=001a1145ed9e37df8d0533c41e76

--001a1145ed9e37df8d0533c41e76
Content-Type: text/plain; charset=UTF-8

On 26 May 2016 at 18:03, Jonathan Haws <Jonathan.Haws@sdl.usu.edu> wrote:

> > DEPENDS is built-time for the recipe, so the concept of per-package
> > build dependencies doesn't really make sense.
> >
> > DEPENDS = "foo bar" are build dependencies
> > RDEPENDS_${PN} = "foo bar" are package-specific runtime dependencies.
>
> Ross, thanks for clearing that up.  Is there anything in the
> documentation that talks about that?  I've read through most of the docs
> and don't remember any details about that distinction.  Are there other
> variables that this applies to?


The general rule is that the only time you use _${PN} or similar is when
the variable impacts a binary package, so FILES, RDEPENDS, RRECOMMENDS,
INSANE_SKIP and similar.

Ross

--001a1145ed9e37df8d0533c41e76
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 May 2016 at 18:03, Jonathan Haws <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:Jonathan.Haws@sdl.usu.edu" target=3D"_blank">Jonathan.Haws@sdl.usu.edu<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">&g=
t; DEPENDS is built-time for the recipe, so the concept of per-package<br>
&gt; build dependencies doesn&#39;t really make sense.<br>
&gt;<br>
&gt; DEPENDS =3D &quot;foo bar&quot; are build dependencies<br>
&gt; RDEPENDS_${PN} =3D &quot;foo bar&quot; are package-specific runtime de=
pendencies.<br>
<br>
</span>Ross, thanks for clearing that up.=C2=A0 Is there anything in the<br=
>
documentation that talks about that?=C2=A0 I&#39;ve read through most of th=
e docs<br>
and don&#39;t remember any details about that distinction.=C2=A0 Are there =
other<br>
variables that this applies to?</blockquote></div><br>The general rule is t=
hat the only time you use _${PN} or similar is when the variable impacts a =
binary package, so FILES, RDEPENDS, RRECOMMENDS, INSANE_SKIP and similar.</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--001a1145ed9e37df8d0533c41e76--
