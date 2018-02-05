Return-Path: <nathan.roberts@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6564E00E41; Mon,  5 Feb 2018 12:04:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nathan.roberts[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42A0EE00B1A
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 12:04:46 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id 143so28388380wma.5
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 12:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=MUbt5yD7dSulKreDchvg2Jxv2of0aXFxLvXUWnTjgHE=;
	b=RxIATaWGc88egZOoGIhfZtNw54uOueBvc3TnTLeD9dQ2BY5BLfrdXp8tzfjOf8dUhi
	VaD++kWYbGEeDbXvHRE0XEPUHkTFt2PGktSxuiBOIdieqnAQDq5k+eaz71Z4hrof0W7Q
	zxPXukhzkjsxnQ+55qbkE42bZ7AKU1P3FpqZQ/cuwRPc6egOM0diS6OwR5a4ymYAWoXD
	O9B0f7HbBsaLH9acmU6PZIaNQ1aiLDA6mwidKpI0SQ3DyNpAQ2Ry/9Lcvcw6ApI1jXcF
	tn2eOFuy5D9tSHa8HNeY1+2FlR4xkaqoj9kl0X6T+OtrUQqsHRQU7p7HDguOgn3D8vaq
	fbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=MUbt5yD7dSulKreDchvg2Jxv2of0aXFxLvXUWnTjgHE=;
	b=SXvfqIU0Xjy4Irf+VaLBHr/Wz3+1D98QozZwDYBf6MKS2Y0hAP/69GPuXMxFVM8X7D
	5in6YkGWRcIWxBpXODb5dTGxnOBpEVdIDARkBnzLLgSu45dXP4tY/Vs2iT7LUMO8hmfo
	JOntWCFwcVX6WDAspM5NglGh9kR2GCgtZvemAXSJv0m1zQpOqzd+C/B6FJsDf2xea33c
	K/P9dj3ssBBFiLHYocnlpRlLPSCgFVDFs/jE82oqtPOYZmuG3wrP2iMqSX6AofqHG6ZS
	9PRZv1W/ZA1mIdc2hUiYO6V71zwGiJgFhkLSzNGOFxrF3gfEjuBG056THeS+ihs96437
	jZbw==
X-Gm-Message-State: APf1xPBI+Pwc+bKXMvuZS+lVB+0AvYpQsBJk1sop7r28uPc7glz7eS/V
	OXBaM7A1HRrPAsioPoqikedIhdg2Al0KwHYc9jM=
X-Google-Smtp-Source: AH8x227MEmzAQRZajdwpSuT6expm1mnHG9qiBqpLXzNCQ7d+OHht1JEOhtaBPmAu0vidvVwzhNXq7fXVzA/9VUwMxWI=
X-Received: by 10.80.189.200 with SMTP id z8mr644636edh.46.1517861085947; Mon,
	05 Feb 2018 12:04:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.212.204 with HTTP; Mon, 5 Feb 2018 12:04:45 -0800 (PST)
In-Reply-To: <CAGkqu_uOb+J+hphttWKRD-8g2gwVG1P90r3aHQAzW2KOJNoptQ@mail.gmail.com>
References: <CAGkqu_uOb+J+hphttWKRD-8g2gwVG1P90r3aHQAzW2KOJNoptQ@mail.gmail.com>
From: Nathan Roberts <nathan.roberts@gmail.com>
Date: Mon, 5 Feb 2018 20:04:45 +0000
Message-ID: <CAGkqu_vG4VBtpWOFuiG_ArSzE1bVWchDQwXha+RD2MBHDbWwqg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 06 Feb 2018 08:01:32 -0800
Subject: Re: Disable UART Console for Pi 0
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
X-List-Received-Date: Mon, 05 Feb 2018 20:04:48 -0000
Content-Type: multipart/alternative; boundary="f4030438b1a0d8ad3b05647c9277"

--f4030438b1a0d8ad3b05647c9277
Content-Type: text/plain; charset="UTF-8"

I should clarify that I still want a console on TTY1 (iewhen I plug a
monitor in to the HDMI port). so its only the console output to the serial
port I'm looking to disable (so that I can make use of that for other
things).

On 26 January 2018 at 23:25, Nathan Roberts <nathan.roberts@gmail.com>
wrote:

> extra-build-config.md states
> "RaspberryPi 0, 1, 2 and CM will have UART console enabled by default."
>
> I have a Pi 0 (not a Pi 0W), and want to disable the UART console when an
> image is built (I know how to manually do it after the iamge is built).
>
> the above file also states:
>
> Users who want serial console support on
> RaspberryPi3 will have to explicitely set in local.conf:
>
>     ENABLE_UART = "1"
>
>
> So I assumed to disable I should add to local.conf
>
> ENABLE_UART = "0"
>
> but when I do this the image wont boot (no error messages).
>
> What is the best practice method of disabling UART console when building an image?
>
> Nathan
>
>

--f4030438b1a0d8ad3b05647c9277
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I should clarify that I still want a console on TTY1 =
(iewhen I plug a monitor in to the HDMI port). so its only the console outp=
ut to the serial port I&#39;m looking to disable (so that I can make use of=
 that for other things).<br></div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On 26 January 2018 at 23:25, Nathan Roberts <span di=
r=3D"ltr">&lt;<a href=3D"mailto:nathan.roberts@gmail.com" target=3D"_blank"=
>nathan.roberts@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr"><div><div><font size=3D"2"><span style=3D"backgroun=
d-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><a href=3D"http:=
//extra-build-config.md" target=3D"_blank">extra-build-config.md</a> states=
<br>&quot;<code>RaspberryPi 0, 1, 2 and CM will have UART console enabled b=
y default.&quot;<br><br></code></span></span></font></div><font size=3D"2">=
<span style=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(=
0,0,0)"><code>I have a Pi 0 (not a Pi 0W), and want to disable the UART con=
sole when an image is built (I know how to manually do it after the iamge i=
s built).<br><br></code></span></span></font></div><font size=3D"2"><span s=
tyle=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"=
><code>the above file also states:<br></code></span></span></font><div><pre=
 style=3D"padding:0px;margin:0px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;word-spacing:0px;text-dec=
oration-style:initial;text-decoration-color:initial"><font size=3D"2"><span=
 style=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0=
)"><code>Users who want serial console support on
RaspberryPi3 will have to explicitely set in local.conf:

    ENABLE_UART =3D &quot;1&quot;</code></span></span></font></pre><font si=
ze=3D"2"><span style=3D"background-color:rgb(255,255,255)"><span style=3D"c=
olor:rgb(0,0,0)"></span></span></font></div><div><font size=3D"2"><br></fon=
t></div><div><font size=3D"2">So I assumed to disable I should add to local=
.conf</font></div><div><pre style=3D"padding:0px;margin:0px;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:norma=
l;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;word-spacing:0px;text-decoration-style:initial;text-decoration-color:init=
ial"><font size=3D"2"><span style=3D"background-color:rgb(255,255,255)"><sp=
an style=3D"color:rgb(0,0,0)"><code>ENABLE_UART =3D &quot;0&quot;<br><br></=
code></span></span></font></pre><pre style=3D"padding:0px;margin:0px;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;word-spacing:0px;text-decoration-style:initial;text-decoration-c=
olor:initial"><font size=3D"2"><span style=3D"background-color:rgb(255,255,=
255)"><span style=3D"color:rgb(0,0,0)"><code>but when I do this the image w=
ont boot (no error messages).<br><br></code></span></span></font></pre><pre=
 style=3D"padding:0px;margin:0px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;word-spacing:0px;text-dec=
oration-style:initial;text-decoration-color:initial"><font size=3D"2"><span=
 style=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0=
)"><code>What is the best practice method of disabling UART console when bu=
ilding an image?<span class=3D"HOEnZb"><font color=3D"#888888"><br><br></fo=
nt></span></code></span></span></font></pre><span class=3D"HOEnZb"><font co=
lor=3D"#888888"><pre style=3D"padding:0px;margin:0px;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-=
spacing:0px;text-decoration-style:initial;text-decoration-color:initial"><s=
pan style=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,=
0,0)"><font size=3D"2"><code>Nathan<br></code></font></span></span></pre></=
font></span></div><div><span style=3D"background-color:rgb(255,255,255)"><s=
pan style=3D"color:rgb(0,0,0)"></span></span><code></code></div></div>
</blockquote></div><br></div>

--f4030438b1a0d8ad3b05647c9277--
