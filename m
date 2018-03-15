Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70992E00BAD; Wed, 14 Mar 2018 19:30:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 627D1E00B8D
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 19:30:05 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id h11so2275162pfn.4
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 19:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ksKF7nqztFXKaSIovZpi7reudILJiZUfwHlD9dLnMQo=;
	b=ix8AyLqe8WBoWHIhNYsnQrt9aXvgWAjQXM7Qt4cztKQeXnaESINHguU/TMkM01oVL8
	+mn8qyMrtZXrCH+h1/HKzb1Mt4iq3iSuWBl67pjN71vNbNMGhCeGvlCslrck4nJQAP3s
	EhSkuzz89O9dtalxReHtFibV0a9QoG6qCBeDM38+Q8FIMKiaF+SWi4orib+dz5eBf7lq
	a16Vp6jefM0pI8sp+Sb2RFcvO6eFtU4YR5cewFw0o6xvvJSPvc2kEVwXNpwfzbMZm+Vs
	gouPu595t68j4a6IygT7FSGW7tRwqIHSkkrZzuhbsk7yJaXQQg3OaKchJPuUU8OXMnjn
	NCzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ksKF7nqztFXKaSIovZpi7reudILJiZUfwHlD9dLnMQo=;
	b=ZbJRXCs8Mhxxoc0KlY0XSadi5OsQoI8DiSiYQLaQP00dctu+7sUkyND2lFZkaE0F74
	bx3EthsFa6FwdHjYLFxweeFn5hhzm6Ydm+0mQ+SdJR0ABY8ol/GM1f7c/AUZPom2S8wH
	XbfwfT7UsiGyFHlJGFZY0Jrwnbg5ZhXJOAonuDEN+KunqNzCHcBOnZh0HC1MoegE2sXc
	wVVkhhgwYpuSbuk2pnGJmBnzft2y9rvu77snvt/SeQW6miecIGNLsDbEFyTlH74k5qI9
	Y/EyjxawknDwOcaMc5vHXwi5HAk1Z+/Prs5FlV48uXeFJgDF05wONr2nXXJa+OVV2qY0
	1r1Q==
X-Gm-Message-State: AElRT7E+IOO2B/K13UFS7HwhILf2MrJjf7PkGYjde4b4IqU7+8qP4a7I
	+62pSPPCAPCRLKndDk8pV1SFuRSZ3EX1C0FJjLE=
X-Google-Smtp-Source: AG47ELs+1mPL4HWy7kf6dn5tpLItcGqWV8xMJ1+xTLbPUNWf+9dPo53RmVhkjBT7/PWqrVMdWuJXbtusFexk67RkM3c=
X-Received: by 10.101.99.66 with SMTP id p2mr5321181pgv.384.1521081005583;
	Wed, 14 Mar 2018 19:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <VI1P192MB01435C77324EF462EAC695F08DD10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
In-Reply-To: <VI1P192MB01435C77324EF462EAC695F08DD10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Mar 2018 02:29:55 +0000
Message-ID: <CAMKF1sr6Yrp2r16dcd6b1bn136JdiYB5-+=6hKSy2mchocdXeg@mail.gmail.com>
To: Vincent Daanen <vincent.daanen@orthotaxy.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: directory not created in /lib/firmware rootfs
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
X-List-Received-Date: Thu, 15 Mar 2018 02:30:07 -0000
Content-Type: multipart/alternative; boundary="883d24f12ea00333fb05676a453e"

--883d24f12ea00333fb05676a453e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 14, 2018 at 7:20 PM Vincent Daanen <vincent.daanen@orthotaxy.co=
m>
wrote:

> Hi,
>
>
>
> I have to install a firmware in /lib/firmware.
>
> In the recipe, the function do_install() is the following
>
> do_install() {
>
>                 install -d ${base_libdir}/firmware
>
>
You forgot to prepend staging systoot ${D} before the base libdir above

>                 install -m 0755
> ${WORKDIR}/firmware_manufacturer/firmware.fw ${base_libdir}/firmware
>
> }
>
>
>
> FILES_${PN} +=3D =E2=80=9C ${base_libdir}/firmware/firmware.fw =E2=80=9C
>
>
>
> And the build fails with an error: =E2=80=9Ccannot create regular file
> =E2=80=98/lib/firmware/firmware.fw=E2=80=99: Permission denied
>
>
>
>
>
> So I comment the install statement relative to the firmware (install -m
> 0755=E2=80=A6) and change FILES_${PN} to FILES_${PN} +=3D =E2=80=9C ${bas=
e_libdir}/firmware =E2=80=9D
>
> The build succeeds but when I look at the image (with qemu) the directory
> /lib/firmware does not exists..
>
>
>
> What am I doing wrong ?
>
>
>
> Vincent
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--883d24f12ea00333fb05676a453e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Mar 14, 2018 =
at 7:20 PM Vincent Daanen &lt;<a href=3D"mailto:vincent.daanen@orthotaxy.co=
m">vincent.daanen@orthotaxy.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">





<div lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-4573582219578302199WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have to install a firmware in /lib/firmware.<u></u=
><u></u></p>
<p class=3D"MsoNormal">In the recipe, the function do_install() is the foll=
owing<u></u><u></u></p>
<p class=3D"MsoNormal">do_install() {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${base_libdir}/firmware<=
u></u><u></u></p>
<p class=3D"MsoNormal"></p></div></div></blockquote><div dir=3D"auto"><br><=
/div><div dir=3D"auto">You forgot to prepend staging systoot ${D} before th=
e base libdir above=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"=
EN-GB" link=3D"blue" vlink=3D"purple"><div class=3D"m_-4573582219578302199W=
ordSection1"><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKD=
IR}/firmware_manufacturer/firmware.fw ${base_libdir}/firmware<u></u><u></u>=
</p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">FILES_${PN} +=3D =E2=80=9C ${base_libdir}/firmware/f=
irmware.fw =E2=80=9C<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">And the build fails with an error: =E2=80=9Ccannot c=
reate regular file =E2=80=98/lib/firmware/firmware.fw=E2=80=99: Permission =
denied<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">So I comment the install statement relative to the f=
irmware (install -m 0755=E2=80=A6) and change FILES_${PN} to FILES_${PN} +=
=3D =E2=80=9C ${base_libdir}/firmware =E2=80=9D<u></u><u></u></p>
<p class=3D"MsoNormal">The build succeeds but when I look at the image (wit=
h qemu) the directory /lib/firmware does not exists..<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">What am I doing wrong ?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Vincent<span lang=3D"FR" style=3D"font-family:&quot;=
Arial&quot;,sans-serif;color:#222222"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><u></u>=C2=A0<u></u></span></p>
</div>
</div>

--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--883d24f12ea00333fb05676a453e--
