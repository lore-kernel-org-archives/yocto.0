Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0764E00CD3; Mon,  4 Dec 2017 03:54:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f177.google.com (mail-yb0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF31FE00C0E
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 03:54:39 -0800 (PST)
Received: by mail-yb0-f177.google.com with SMTP id g9so887343yba.13
	for <yocto@yoctoproject.org>; Mon, 04 Dec 2017 03:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6TsNKF/yZaOc1AChE96oHtKwITeGTx4pD1fxxcVN1/Y=;
	b=gbAYz0DQjqkpoT+R2E+d4uHNd64y30p0c5r80bqOAXRcA0KPjy9J+n2KeZ3ijPsg+O
	r7TQnsVCj+N+vEgrMe44n3huyqjexPZey+k6vJ+p/xKtTv1WAQj7xzFTljj7qywuWDLo
	YJ9ZDb7lbIDbEsQb/dcQhhbnxdvdURsxPUe9qXgE9+uDZPjXvStGOyX8kuSazNeQWsA4
	XmkO/TWCFRW9+UlScoll9a325DDmTtzQlYjMHuExVoQIqFn4r50hf+u9dApdXK7X7rdX
	2X9tmnerlgnmCcn4Qsp+hRYQF2MomlHroCmjy9TrW0l+5Xzex74aOWJIl+TaUY3uTrZS
	alnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6TsNKF/yZaOc1AChE96oHtKwITeGTx4pD1fxxcVN1/Y=;
	b=gLbNWRD6KotGDJnzeA1NA5epm+7ZJflSu2dcDqZ6aDOtHehY/3l1ZyDWLsH+NaYPwA
	ATvvhmn19qFQp+xKOTjWYhkCdXmqFvLmvsifYhOUOwOEwYrvnjJjHlfdMK7Jw4pVo0a/
	kLMCg63SUIMDGLQjzkLUsiOGVTtZqLITo7cVGDzmRNdboarGy5N/LZTFcL/p1qi1Mrxc
	CVdTVEY3ecdfiJcaLrBU2tbdPHw7o7BXAfkPGXLajMu8VVSI6gZWTSEg2spTPNsH7ul8
	uXTqAAsw38u4hwK36j/cIB4gSenbd9IcLqWI6CGd+T4Qt8OnJfgZizOlZG/g86A1bg1Q
	zmBg==
X-Gm-Message-State: AJaThX7HSzX7rp7ZoO0PIMJSVp40K20NJhmJNZOA8SB8N1gUaA4a43LJ
	u9i30dR2yUpczcEbkRoAuI3n8v37YOvHQk3IkGw=
X-Google-Smtp-Source: AGs4zMb4OqSOYS2Uhyt/nzc1KYYo1tTo1k0zsgHPZMNAbxAzZb6Z+OuBL0IfeOPJ5Yogm5fswPLeRhlTAISqpE1qdik=
X-Received: by 10.37.110.195 with SMTP id j186mr9432800ybc.242.1512388479023; 
	Mon, 04 Dec 2017 03:54:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.129.85.19 with HTTP; Mon, 4 Dec 2017 03:54:38 -0800 (PST)
Received: by 10.129.85.19 with HTTP; Mon, 4 Dec 2017 03:54:38 -0800 (PST)
In-Reply-To: <CAGT+Up6W9Z5itBhV2qr8RXFW6Ksb2qu60Xe17tdGjXzQWjae0Q@mail.gmail.com>
References: <CAGT+Up6W9Z5itBhV2qr8RXFW6Ksb2qu60Xe17tdGjXzQWjae0Q@mail.gmail.com>
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Mon, 4 Dec 2017 17:24:38 +0530
Message-ID: <CAGsrAHew-9w0BTy8r_qUDLc_q28R1QVq0uqv511xrXckN3ASyQ@mail.gmail.com>
To: Yahya Ahmed <yahya.coder@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [x11][Question] QXcbIntegration: Cannot create platform OpenGL context
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
X-List-Received-Date: Mon, 04 Dec 2017 11:54:42 -0000
Content-Type: multipart/alternative; boundary="001a11489d540dff97055f82620f"

--001a11489d540dff97055f82620f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi yahya,

Follow this link to build yocto image with qt5...
http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

Warm regards,
Mohammed Aqdam

On Dec 4, 2017 1:09 AM, "Yahya Ahmed" <yahya.coder@gmail.com> wrote:

> Hello,
>
>
> I've been trying to add Qt5 support to a core-image-sato image using
> Yocto's Poky Pyro on Raspberry Pi 3.
>
> In my bblayer.conf I added these lines:
>
> BBLAYERS ?=3D " \
>         /poky-pyro/meta \
>         /poky-pyro/meta-poky \
>         /poky-pyro/meta-yocto-bsp \
>         /poky-pyro/meta-openembedded/meta-oe \
>         /poky-pyro/meta-openembedded/meta-multimedia \
>         /poky-pyro/meta-openembedded/meta-networking \
>         /poky-pyro/meta-openembedded/meta-perl \
>         /poky-pyro/meta-openembedded/meta-python \
>         /poky-pyro/meta-raspberrypi \
>         /poky-pyro/meta-qt5 \
>   "
>
> In my local.conf I added these lines:
>
> DISTRO_FEATURES_append =3D " opengl "
> IMAGE_INSTALL_append =3D " qtbase qtdeclarative qtquickcontrols2 qtmultim=
edia qttools cinematicexperience "
>
> Bitbake finished building the image successfully, but when I run
> Qt5_cenimaticExperience on the target I get this error message:
>
> QXcbIntegration: Cannot create platform OpenGL context, neither GLX nor
> EGL are enabled.
>
> Any help would be very much appreciated!
> Thank You,
> --
> Yahya Ahmed
>
>
>
>
> =E2=80=8C
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11489d540dff97055f82620f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif">Hi yahya,</span><d=
iv dir=3D"auto" style=3D"font-family:sans-serif"><br></div><div dir=3D"auto=
" style=3D"font-family:sans-serif">Follow this link to build yocto image wi=
th qt5...</div><div dir=3D"auto" style=3D"font-family:sans-serif"><a href=
=3D"http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html">htt=
p://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html</a><br></di=
v><div dir=3D"auto" style=3D"font-family:sans-serif"><br></div><div dir=3D"=
auto" style=3D"font-family:sans-serif">Warm regards,</div><div dir=3D"auto"=
 style=3D"font-family:sans-serif">Mohammed Aqdam</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Dec 4, 2017 1:09 AM, &quot;Ya=
hya Ahmed&quot; &lt;<a href=3D"mailto:yahya.coder@gmail.com">yahya.coder@gm=
ail.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m_-6731572592453=
0090mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtrack=
.io/trace/mail/18f2024fb58d02a0b18a7684c1461f6fff7c0fb9.png?u=3D943036"><di=
v><span style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neue=
&quot;,Helvetica,sans-serif;font-size:15px">Hello,</span><br></div><div><p =
style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric:inh=
erit;font-stretch:inherit;font-size:15px;line-height:inherit;font-family:Ar=
ial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:baseline=
;clear:both;color:rgb(36,39,41)"><br></p><p style=3D"margin:0px 0px 1em;pad=
ding:0px;border:0px;font-variant-numeric:inherit;font-stretch:inherit;font-=
size:15px;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,=
Helvetica,sans-serif;vertical-align:baseline;clear:both;color:rgb(36,39,41)=
">I&#39;ve been trying to add Qt5 support to a=C2=A0<code style=3D"margin:0=
px;padding:1px 5px;border:0px;font-style:inherit;font-variant:inherit;font-=
weight:inherit;font-stretch:inherit;font-size:13px;line-height:inherit;font=
-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation M=
ono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;=
,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:baseline;backg=
round-color:rgb(239,240,241);white-space:pre-wrap">core-image-sato</code>=
=C2=A0image using Yocto&#39;s Poky Pyro on Raspberry Pi 3.</p><p style=3D"m=
argin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric:inherit;font-=
stretch:inherit;font-size:15px;line-height:inherit;font-family:Arial,&quot;=
Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:baseline;clear:bot=
h;color:rgb(36,39,41)">In my bblayer.conf I added these lines:</p><pre styl=
e=3D"margin-top:0px;margin-bottom:1em;padding:5px;border:0px;font-variant-n=
umeric:inherit;font-stretch:inherit;font-size:13px;line-height:inherit;font=
-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation M=
ono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;=
,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:baseline;width=
:auto;max-height:600px;overflow:auto;background-color:rgb(239,240,241);word=
-wrap:normal;color:rgb(36,39,41)"><code style=3D"margin:0px;padding:0px;bor=
der:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-st=
retch:inherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;L=
ucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot=
;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sa=
ns-serif;vertical-align:baseline;white-space:inherit">BBLAYERS ?=3D &quot; =
\
        /poky-pyro/meta \
        /poky-pyro/meta-poky \
        /poky-pyro/meta-yocto-bsp \
        /poky-pyro/meta-openembedded/<wbr>meta-oe \
        /poky-pyro/meta-openembedded/<wbr>meta-multimedia \
        /poky-pyro/meta-openembedded/<wbr>meta-networking \
        /poky-pyro/meta-openembedded/<wbr>meta-perl \
        /poky-pyro/meta-openembedded/<wbr>meta-python \
        /poky-pyro/meta-raspberrypi \
        /poky-pyro/meta-qt5 \
  &quot;
</code></pre><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-var=
iant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:inheri=
t;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertica=
l-align:baseline;clear:both;color:rgb(36,39,41)">In my local.conf I added t=
hese lines:</p><pre style=3D"margin-top:0px;margin-bottom:1em;padding:5px;b=
order:0px;font-variant-numeric:inherit;font-stretch:inherit;font-size:13px;=
line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&=
quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstr=
eam Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;verti=
cal-align:baseline;width:auto;max-height:600px;overflow:auto;background-col=
or:rgb(239,240,241);word-wrap:normal;color:rgb(36,39,41)"><code style=3D"ma=
rgin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;fon=
t-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:Conso=
las,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&qu=
ot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courie=
r New&quot;,monospace,sans-serif;vertical-align:baseline;white-space:inheri=
t">DISTRO_FEATURES_append =3D &quot; opengl &quot;
IMAGE_INSTALL_append =3D &quot; qtbase qtdeclarative qtquickcontrols2 qtmul=
timedia qttools cinematicexperience &quot;
</code></pre><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-var=
iant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:inheri=
t;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertica=
l-align:baseline;clear:both;color:rgb(36,39,41)">Bitbake finished building =
the image successfully, but when I run Qt5_cenimaticExperience on the targe=
t I get this error message:</p><blockquote style=3D"margin:0px 0px 10px;pad=
ding:10px;border-width:0px 0px 0px 2px;border-top-style:initial;border-righ=
t-style:initial;border-bottom-style:initial;border-left-style:solid;border-=
top-color:initial;border-right-color:initial;border-bottom-color:initial;bo=
rder-left-color:rgb(255,235,142);font-variant-numeric:inherit;font-stretch:=
inherit;font-size:15px;line-height:inherit;font-family:Arial,&quot;Helvetic=
a Neue&quot;,Helvetica,sans-serif;vertical-align:baseline;quotes:none;backg=
round-color:rgb(255,248,220);color:rgb(36,39,41)"><p style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;vertical-align:baseline;clear:both">QXcbIntegration: Cannot creat=
e platform OpenGL context, neither GLX nor EGL are enabled.</p></blockquote=
><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric=
:inherit;font-stretch:inherit;font-size:15px;line-height:inherit;font-famil=
y:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:base=
line;clear:both;color:rgb(36,39,41)">Any help would be very much appreciate=
d!</p><div>Thank You,</div>-- <br><div class=3D"m_-67315725924530090gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr">Yahya Ahmed<div>=C2=A0</di=
v></div></div></div></div>
<br><br><br>=E2=80=8C</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div></div>

--001a11489d540dff97055f82620f--
