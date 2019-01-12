Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADF4DE00CFB; Sat, 12 Jan 2019 04:42:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
	[209.85.217.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E372E00CE4
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 04:42:11 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id n13so10973373vsk.4
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 04:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Z4/fe67qYHuTL5oXCu0W4o1tM5DDRJeUo6inRefKXzA=;
	b=AuJ3Vqh4NKyCuCU8+Lqben77HxQOKXKyBHXQZb/SAvM9f1dTRysAlxzRNGGYeqMiDU
	EpaazCetXsnsJk2HEv6REG5JBfHXk6tIhA7Y6Tob8oRNpjOvLPFZDhE8r2GFItgtAhF6
	V4OSOA5RDJsaaDNhzVGcXeEqiOQhjHvDUbuVCEU2V/gb3xqJp4YB2HapybXRTetF5pfd
	xIQhSH86Wfh/CsN7LcPeTB52iTVq1b49USjOspAYNSDwob9n/ZlyWYY3NeO8hSUL4NV/
	CsbparSKQKeHT10J61vaXpAIWlsutwjoMRCwbarHXVgw8rAgM7prQ0SksKBLRQYR++39
	ucdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Z4/fe67qYHuTL5oXCu0W4o1tM5DDRJeUo6inRefKXzA=;
	b=fjaIJA/Nju9NvVgrAZ/Pfo4S0MzupXTS8f0mRxA1OIMBUS7JCMYLSWJU21tf9zQ/1c
	3p1M6kE7wL4BoaqvobKdIaOUz94KAC64yQqXT8hh+XkB/+NIb5RV62jecPicoxP+v9+5
	przpeiDeRkbRmysPbGOdmzkdF27/6takkfQJPXnnFHkgljZHCjjTUyLN15bCtz0Y/S0U
	G/X9lPhA7EHFElxAHoKFnmHo4wK4OvvP2dt+qoIVpkg9Sm6Lar4Ok7ibfErYtfLK8t84
	/IM/QBw9y2UKuClt30xlum4WMUQqfsnFuhseobVdHqOOXaTsdE9TAZ5hBSKHmKZGe9PD
	GotA==
X-Gm-Message-State: AJcUukcuUjmyWoOM5qnP1uu5rkLqOJ9tqVC9TDkQd5uuhDzEYKZWRc6O
	0y+txiihkRYnUX13JBKg80NZplgUhwvr7SZq7JuNCTaU
X-Google-Smtp-Source: ALg8bN4m13HbyZXsr14fj8+PrpK6XdhYZ2mQSxX2nAJaXvgbsqdaykYVHsuT4f0VoxOepvjbW8mFCm1kuxbic0yPIwQ=
X-Received: by 2002:a67:79d2:: with SMTP id u201mr7699800vsc.12.1547296930613; 
	Sat, 12 Jan 2019 04:42:10 -0800 (PST)
MIME-Version: 1.0
References: <VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01.prod.exchangelabs.com>
	<3c5876e9-16f4-13ca-90fb-3452b257e249@ibeeto.com>
In-Reply-To: <3c5876e9-16f4-13ca-90fb-3452b257e249@ibeeto.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Sat, 12 Jan 2019 13:41:58 +0100
Message-ID: <CAKRytNypyncXWUXRbhNStujGC5BUU9pyWwycrQyXfgQ3wL+qwA@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting up a password for the root user
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
X-List-Received-Date: Sat, 12 Jan 2019 12:42:12 -0000
Content-Type: multipart/alternative; boundary="000000000000e94dca057f422365"

--000000000000e94dca057f422365
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From a security point of view, Is it better to use  "usermod -p `openssl
passwd mypass` root; \" or with uppercase P "usermod -P mypass root; \" ?


Il giorno sab 12 gen 2019 alle ore 04:38 Rudolf J Streif <
rudolf.streif@ibeeto.com> ha scritto:

> Alberto,
>
> The quotes around
>
> `openssl passwd ${ROOT_PASSWORD}`
>
> have to be backticks (`) not single quotes (').
>
> :rjs
>
> On 01/11/2019 07:41 AM, Alberto Spin wrote:
>
> Hello There,
>
>
>
> I=E2=80=99m trying to set a password for the root user of my distribution=
 (based
> rocko branch)
>
>
>
> I=E2=80=99ve added the following to my image recipe:
>
>
>
> inherit extrausers
>
>
>
> # set image root password
>
> ROOT_PASSWORD =3D "secret"
>
>
>
> EXTRA_USERS_PARAMS =3D "\
>
>     usermod -p 'openssl passwd ${ROOT_PASSWORD}' root; \
>
>     "
>
>
>
> Everything builds fine, but in my image I end up with a password in my
> /etc/shadow file like this:
>
>
>
> openssl passwd secret
>
>
>
> so it seems like the openssl command has not been executed during the
> build, but instead the literal command is now part of my password.
>
>
>
> Can anybody please explain what=E2=80=99s going on here, and how to fix t=
his?
>
>
>
> Kind Regards,
>
>
>
> Alberto
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e94dca057f422365
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">From a security point of view, Is it better to use=C2=A0 &=
quot;usermod -p `openssl passwd mypass` root; \&quot; or with uppercase P &=
quot;usermod -P mypass root; \&quot; ?<div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">Il giorno sab 12 gen 2019 alle ore 04:38 =
Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rudolf.stre=
if@ibeeto.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Alberto,</p>
    <p>The quotes around</p>
    <p>`openssl passwd ${ROOT_PASSWORD}`</p>
    <p>have to be backticks (`) not single quotes (&#39;).</p></div><div te=
xt=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>:rjs<br>
    </p></div><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <div class=3D"m_-7836984612495271655moz-cite-prefix">On 01/11/2019 07:4=
1 AM, Alberto Spin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div class=3D"m_-7836984612495271655WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hello There,<u></u><u><=
/u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m trying to s=
et a
            password for the root user of my distribution (based rocko
            branch)<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99ve added the =
following
            to my image recipe:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">inherit
            extrausers<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">#
            set image root password<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">ROOT_PASSWORD
            =3D &quot;secret&quot;<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">EXTRA_USERS_PARAMS
            =3D &quot;\<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0
          </span><span style=3D"font-size:8.0pt;font-family:Consolas">userm=
od
            -p &#39;openssl passwd ${ROOT_PASSWORD}&#39; root; \<u></u><u><=
/u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas">=C2=A0=C2=A0=C2=A0
          </span><span style=3D"font-size:8.0pt;font-family:Consolas" lang=
=3D"EN-US">&quot;<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D=
"font-size:8.0pt;font-family:Consolas" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Everything builds fine,
            but in my image I end up with a password in my /etc/shadow
            file like this:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:C=
onsolas">openssl passwd
            secret<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">so it seems like the
            openssl command has not been executed during the build, but
            instead the literal command is now part of my password.<u></u><=
u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Can anybody please
            explain what=E2=80=99s going on here, and how to fix this?<u></=
u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Kind Regards,<u></u><u>=
</u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Alberto<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
      </div>
      <br>
      <fieldset class=3D"m_-7836984612495271655mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000e94dca057f422365--
