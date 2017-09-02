Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EA63E00CC6; Fri,  1 Sep 2017 17:02:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D544E00C01
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 17:02:50 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id d78so7545573ioe.4
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 17:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hXYrxK8w6PidselojdrumpP7WMshD6mXlfx4g7HpLME=;
	b=oUXKE4LAcAnuBmJx3Gu8x3voVOBgQugqdgS7pE/yHE3GDMxP0weONdRoD0JVk9EmtQ
	C5q9C1DSZqf96Hfwd4uYRoLPwCSQINXsV11qXmn3JB0sr+iB6HTgjv0/0Yf8YV/1HqNz
	i2BtbqXPLXu09UhGX5zTovegBcnYQ0H3XWsGmQBboZbq1PIr/FrR7WZXQsAxGpOCqVEK
	NdAk9QGpcs1IRXFC9qY0BkOATxm70ucae7IVeMIrWJeeAquxv34xuPEnZGheDVGTWu+9
	yG8Mpow6UIlBj7elTyq5bX2p4PESlqaMnqkR1+mn2Cd84G4GdiGpnknz33JRBuvJjg/a
	o+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hXYrxK8w6PidselojdrumpP7WMshD6mXlfx4g7HpLME=;
	b=OBwLWTRIeAwNfFwAPoCTxlYMwdFu1qdRFPd9m0RWN5ib245QfroukLZvLpV5eYBJDj
	C25riPMENlTaGXTTsBywG2pqNd3V0asMZlYGX2O2Z+4lCcV4EvLx1tW3tPxpDGenxolO
	BqTAyWfYrzESMYUlD0N4q9bHO8WOxm90pn1UiXhgOEsAvwbRL0b39ERC2sJGkbwrHQdY
	ywd6Z1vZU3NilIDyBQEhD+AXzi4+Au4GFzsFhnyIldCyxX1Gjvf11mjUdgPiWJzNM/6c
	0PZFQO7SMaMpnYy0XUs8+qZWRGbaqt9s6u8QrmyXc2Pxe5zT5Cdp2u+NSHwgK5N+ZoxM
	6KMw==
X-Gm-Message-State: AHPjjUg77FNu8byaSGusOE9Q6P/Sfazwc1CAj/GKm62hiCx/Ipa2Jkgp
	lONn+c3FdgzFZnubrI0s6YIto+GKUBFs
X-Google-Smtp-Source: ADKCNb5xrJfWg4f1vQCJYzy2KNK5Y8FR2ORiiIB7DvepeB/YGpMLjKv512AGC3KaN6R8o1Nj8cRPAQW6+EqX8DH5taY=
X-Received: by 10.107.188.66 with SMTP id m63mr3283589iof.9.1504310569921;
	Fri, 01 Sep 2017 17:02:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.33.83 with HTTP; Fri, 1 Sep 2017 17:02:29 -0700 (PDT)
In-Reply-To: <3a16e27e-3d4c-e304-8f71-0bf2719fdb13@corry.com>
References: <3a16e27e-3d4c-e304-8f71-0bf2719fdb13@corry.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 2 Sep 2017 01:02:29 +0100
Message-ID: <CAJTo0LZ3143u_gSTCEXd_XbP=qrcOV8KXSDv+X3CQZ8B71jp5g@mail.gmail.com>
To: Kevin Corry <kevin@corry.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [psplash][PATCH] Fix text width calculation.
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
X-List-Received-Date: Sat, 02 Sep 2017 00:02:51 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d5002718a90558299949"

--94eb2c05d5002718a90558299949
Content-Type: text/plain; charset="UTF-8"

Merged to master, thanks.

Ross

On 11 August 2017 at 22:18, Kevin Corry <kevin@corry.com> wrote:

> Psplash: Fix text width calculation.
>
> Using the "psplash-write MSG <message_text>" command, you can display
> messages
> when the splash screen is running. As part of this, psplash needs to
> calculate
> the height and width of the box to render on the screen to hold the text
> (which
> will appear on top of the background image), which it does in the
> psplash_fb_text_size() function in psplash-fb.c.
>
> If the message contains multiple lines (i.e. it contains one or more
> newline
> characters), then it looks like the intention is for psplash to use the
> length
> of the longest single line as the width of this text box. However, there's
> a
> bug in this calculation that leads to some multi-line messages being
> rendered
> off the left edge of the screen, instead of properly centered.
>
> To fix this, each time a newline is encountered, if the width of the
> current
> line (w) is greater than the maximum line width (mw), update the maximum
> width.
> Also, reset the current line width to zero so we can correctly calculate
> the
> width of the next line.
>
> Signed-off-by: Kevin Corry <kevin@corry.com>
> ---
>  psplash-fb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/psplash-fb.c b/psplash-fb.c
> index d344e5a..c064d18 100644
> --- a/psplash-fb.c
> +++ b/psplash-fb.c
> @@ -483,7 +483,8 @@ psplash_fb_text_size (int                *width,
>        if (*c == '\n')
>         {
>           if (w > mw)
> -           mw = 0;
> +           mw = w;
> +         w = 0;
>           h += font->height;
>           continue;
>         }
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c05d5002718a90558299949
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged to master, thanks.<div><br></div><div>Ross</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 11 August 2=
017 at 22:18, Kevin Corry <span dir=3D"ltr">&lt;<a href=3D"mailto:kevin@cor=
ry.com" target=3D"_blank">kevin@corry.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">Psplash: Fix text width calculation.<br>
<br>
Using the &quot;psplash-write MSG &lt;message_text&gt;&quot; command, you c=
an display messages<br>
when the splash screen is running. As part of this, psplash needs to calcul=
ate<br>
the height and width of the box to render on the screen to hold the text (w=
hich<br>
will appear on top of the background image), which it does in the<br>
psplash_fb_text_size() function in psplash-fb.c.<br>
<br>
If the message contains multiple lines (i.e. it contains one or more newlin=
e<br>
characters), then it looks like the intention is for psplash to use the len=
gth<br>
of the longest single line as the width of this text box. However, there&#3=
9;s a<br>
bug in this calculation that leads to some multi-line messages being render=
ed<br>
off the left edge of the screen, instead of properly centered.<br>
<br>
To fix this, each time a newline is encountered, if the width of the curren=
t<br>
line (w) is greater than the maximum line width (mw), update the maximum wi=
dth.<br>
Also, reset the current line width to zero so we can correctly calculate th=
e<br>
width of the next line.<br>
<br>
Signed-off-by: Kevin Corry &lt;<a href=3D"mailto:kevin@corry.com">kevin@cor=
ry.com</a>&gt;<br>
---<br>
=C2=A0psplash-fb.c | 3 ++-<br>
=C2=A01 file changed, 2 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/psplash-fb.c b/psplash-fb.c<br>
index d344e5a..c064d18 100644<br>
--- a/psplash-fb.c<br>
+++ b/psplash-fb.c<br>
@@ -483,7 +483,8 @@ psplash_fb_text_size (int=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *width,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0if (*c =3D=3D &#39;\n&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (w &gt; mw)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mw =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mw =3D w;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0w =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h +=3D font-&gt;height;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.11.0<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c05d5002718a90558299949--
