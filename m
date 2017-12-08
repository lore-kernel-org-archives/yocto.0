Return-Path: <yahya.coder@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07107E00B48; Fri,  8 Dec 2017 13:37:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahya.coder[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24418E008CA
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 13:37:47 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id f143so7341117itb.0
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 13:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7xjzTH5lkbzs7QdiQCQvYiEmsHy7T65DG6hUe6cKMBY=;
	b=PVK02S9kRiTLehCMqrCgzV5nSkHT7GgFEsyoTu6MN4fgwj6G/+1xMQSGi2RntyJZK7
	BOTm0W669j2vx9d2jJKgqbWdu/yCYWPsqrQ2Bzw1BZMpvjqJKEff5I6LM9Z/zJkvrwyd
	+7tfNFyJT3fCEKK0D1fXLFEM+PCxiXzI+P0VCttNVEGp0vJftnx+SHpIa8f+nznmqZwd
	eCV9uhwIEivmmWbI6Bhp5kWsOctW8sUUDpbR+w94aHa2t0AbazUTKhBYWSMn5XnCOzbb
	vx6ogLYuNG6DEKDKzXy9ZL9cwuQmYTL1SRr48bRssmhBqDZBlxVlJLcScynXsOTIZX+0
	ckog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7xjzTH5lkbzs7QdiQCQvYiEmsHy7T65DG6hUe6cKMBY=;
	b=ORusQTVF7ZLkvvsawAYBkA2xj0ZFHRZqdkS6x2bCjLc90y2DF2UCD9sL9hT9Bk6JM3
	iruCoriHruQhVKk9Z4oHmwpg015lgRAAMS1EHHH05iiWgvEU9mx90qvsoDAoS2+x4++W
	8S9NeiMNPxz/yR2bmeoTVoyPpSG7wrXOGD6Sc7IFeX6xDnmL+Lk82oY4O4N7ajWhFToX
	PC5dUyJWj1/1w4QCtSn/oiw9sR4+eC41WCaNRgrbuG5QXzP+bjeOm+oJjQXGuoOceh3h
	TFx2W+t6gQXEOvJvV7YHACUHCcbt4rR/fJfdYBhntasRBu+ZKVlbxI5xl+jgYBTyL8vf
	1xlg==
X-Gm-Message-State: AKGB3mILNBb3kQ2HBekHNH2MQbJHWfJ1Dfo3kBlSsEQCBjSi3XclreAE
	ooZSPxvqoIzYiPZKsBZldwU0qQvdx8STeDz7sO0=
X-Google-Smtp-Source: AGs4zMZxBIgLZVvep+usRaXPoLEpBSdxHXi02iBSojoiQHHLDZBrhkPOfXEbVrAPAalu/FHG9Aym7reBrOzL8cAParA=
X-Received: by 10.36.127.198 with SMTP id r189mr7307207itc.116.1512769067000; 
	Fri, 08 Dec 2017 13:37:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.62.132 with HTTP; Fri, 8 Dec 2017 13:37:46 -0800 (PST)
In-Reply-To: <CAGsrAHew-9w0BTy8r_qUDLc_q28R1QVq0uqv511xrXckN3ASyQ@mail.gmail.com>
References: <CAGT+Up6W9Z5itBhV2qr8RXFW6Ksb2qu60Xe17tdGjXzQWjae0Q@mail.gmail.com>
	<CAGsrAHew-9w0BTy8r_qUDLc_q28R1QVq0uqv511xrXckN3ASyQ@mail.gmail.com>
From: Yahya Ahmed <yahya.coder@gmail.com>
Date: Fri, 8 Dec 2017 23:37:46 +0200
Message-ID: <CAGT+Up4m43AF-C9Fx8vpoT8RXjG_B9AxVSfBTMEsEjB3t8X5Sw@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 21:37:49 -0000
X-Groupsio-MsgNum: 39081
Content-Type: multipart/related; boundary="q1otm11nwd9H6CwyiSIa"

--q1otm11nwd9H6CwyiSIa
Content-Type: multipart/alternative; boundary="001a11459d9adda6e3055fdafe23"

--001a11459d9adda6e3055fdafe23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Mohammed,

The mentioned link is using LinuxFB while what I'm trying to do is to build
Qt5 with an X11 window system like the one in core-image-x11 or
core-image-sato
It'd be great if you have any idea how to do it

Regards,=E2=80=8C

On Mon, Dec 4, 2017 at 1:54 PM, mohammed aqdam <mohammedaqdam@gmail.com>
wrote:

> Hi yahya,
>
> Follow this link to build yocto image with qt5...
> http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html
>
> Warm regards,
> Mohammed Aqdam
>
> On Dec 4, 2017 1:09 AM, "Yahya Ahmed" <yahya.coder@gmail.com> wrote:
>
>> Hello,
>>
>>
>> I've been trying to add Qt5 support to a core-image-sato image using
>> Yocto's Poky Pyro on Raspberry Pi 3.
>>
>> In my bblayer.conf I added these lines:
>>
>> BBLAYERS ?=3D " \
>>         /poky-pyro/meta \
>>         /poky-pyro/meta-poky \
>>         /poky-pyro/meta-yocto-bsp \
>>         /poky-pyro/meta-openembedded/meta-oe \
>>         /poky-pyro/meta-openembedded/meta-multimedia \
>>         /poky-pyro/meta-openembedded/meta-networking \
>>         /poky-pyro/meta-openembedded/meta-perl \
>>         /poky-pyro/meta-openembedded/meta-python \
>>         /poky-pyro/meta-raspberrypi \
>>         /poky-pyro/meta-qt5 \
>>   "
>>
>> In my local.conf I added these lines:
>>
>> DISTRO_FEATURES_append =3D " opengl "
>> IMAGE_INSTALL_append =3D " qtbase qtdeclarative qtquickcontrols2 qtmulti=
media qttools cinematicexperience "
>>
>> Bitbake finished building the image successfully, but when I run
>> Qt5_cenimaticExperience on the target I get this error message:
>>
>> QXcbIntegration: Cannot create platform OpenGL context, neither GLX nor
>> EGL are enabled.
>>
>> Any help would be very much appreciated!
>> Thank You,
>> --
>> Yahya Ahmed
>>
>>
>>
>>
>> =E2=80=8C
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>


--=20
Yahya Ahmed

--001a11459d9adda6e3055fdafe23
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/69f72da75693fa9a14e48fab151352fc64812309.png?u=3D943036"/>=
Hello Mohammed,<div><br/></div><div>The mentioned link is using LinuxFB whi=
le what I&#39;m trying to do is to build Qt5 with an X11 window system like=
 the one in core-image-x11 or core-image-sato</div><div>It&#39;d be great i=
f you have any idea how to do it</div><div><br/></div><div>Regards,=E2=80=
=8C</div><div class=3D"gmail_extra"><br/><div class=3D"gmail_quote">On Mon=
, Dec 4, 2017 at 1:54 PM, mohammed aqdam <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:mohammedaqdam@gmail.com" target=3D"_blank">mohammedaqdam@gmail.com</a=
>&gt;</span> wrote:<br/><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><s=
pan style=3D"font-family:sans-serif">Hi yahya,</span><div dir=3D"auto" styl=
e=3D"font-family:sans-serif"><br/></div><div dir=3D"auto" style=3D"font-fam=
ily:sans-serif">Follow this link to build yocto image with qt5...</div><div=
 dir=3D"auto" style=3D"font-family:sans-serif"><a href=3D"http://www.jumpno=
wtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html" target=3D"_blank">http:/=
/www.jumpnowtek.com/rpi/<wbr/>Raspberry-Pi-Systems-with-<wbr/>Yocto.html</a=
><br/></div><div dir=3D"auto" style=3D"font-family:sans-serif"><br/></div><=
div dir=3D"auto" style=3D"font-family:sans-serif">Warm regards,</div><div d=
ir=3D"auto" style=3D"font-family:sans-serif">Mohammed Aqdam</div></div><div=
 class=3D"gmail_extra"><br/><div class=3D"gmail_quote"><div><div class=3D"h=
5">On Dec 4, 2017 1:09 AM, &#34;Yahya Ahmed&#34; &lt;<a href=3D"mailto:yahy=
a.coder@gmail.com" target=3D"_blank">yahya.coder@gmail.com</a>&gt; wrote:<b=
r type=3D"attribution"/></div></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><d=
iv class=3D"h5"><div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mai=
ltrack-img" alt=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D95A98F3E=
14621_14359@groups.io"/><div><span style=3D"color:rgb(36,39,41);font-family=
:Arial,&#34;Helvetica Neue&#34;,Helvetica,sans-serif;font-size:15px">Hello,=
</span><br/></div><div><p style=3D"margin:0px 0px 1em;padding:0px;border:0p=
x;font-variant-numeric:inherit;font-stretch:inherit;font-size:15px;line-hei=
ght:inherit;font-family:Arial,&#34;Helvetica Neue&#34;,Helvetica,sans-serif=
;vertical-align:baseline;clear:both;color:rgb(36,39,41)"><br/></p><p style=
=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric:inherit=
;font-stretch:inherit;font-size:15px;line-height:inherit;font-family:Arial,=
&#34;Helvetica Neue&#34;,Helvetica,sans-serif;vertical-align:baseline;clear=
:both;color:rgb(36,39,41)">I&#39;ve been trying to add Qt5 support to a=C2=
=A0<code style=3D"margin:0px;padding:1px 5px;border:0px;font-style:inherit=
;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:13=
px;line-height:inherit;font-family:Consolas,Menlo,Monaco,&#34;Lucida Consol=
e&#34;,&#34;Liberation Mono&#34;,&#34;DejaVu Sans Mono&#34;,&#34;Bitstream =
Vera Sans Mono&#34;,&#34;Courier New&#34;,monospace,sans-serif;vertical-ali=
gn:baseline;background-color:rgb(239,240,241);white-space:pre-wrap">core-im=
age-sato</code>=C2=A0image using Yocto&#39;s Poky Pyro on Raspberry Pi 3.</=
p><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeri=
c:inherit;font-stretch:inherit;font-size:15px;line-height:inherit;font-fami=
ly:Arial,&#34;Helvetica Neue&#34;,Helvetica,sans-serif;vertical-align:basel=
ine;clear:both;color:rgb(36,39,41)">In my bblayer.conf I added these lines:=
</p><pre style=3D"margin-top:0px;margin-bottom:1em;padding:5px;border:0px;f=
ont-variant-numeric:inherit;font-stretch:inherit;font-size:13px;line-height=
:inherit;font-family:Consolas,Menlo,Monaco,&#34;Lucida Console&#34;,&#34;Li=
beration Mono&#34;,&#34;DejaVu Sans Mono&#34;,&#34;Bitstream Vera Sans Mono=
&#34;,&#34;Courier New&#34;,monospace,sans-serif;vertical-align:baseline;wi=
dth:auto;max-height:600px;overflow:auto;background-color:rgb(239,240,241);w=
ord-wrap:normal;color:rgb(36,39,41)"><code style=3D"margin:0px;padding:0px;=
border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font=
-stretch:inherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&#34=
;Lucida Console&#34;,&#34;Liberation Mono&#34;,&#34;DejaVu Sans Mono&#34;,&=
#34;Bitstream Vera Sans Mono&#34;,&#34;Courier New&#34;,monospace,sans-seri=
f;vertical-align:baseline;white-space:inherit">BBLAYERS ?=3D &#34; \
        /poky-pyro/meta \
        /poky-pyro/meta-poky \
        /poky-pyro/meta-yocto-bsp \
        /poky-pyro/meta-openembedded/m<wbr/>eta-oe \
        /poky-pyro/meta-openembedded/m<wbr/>eta-multimedia \
        /poky-pyro/meta-openembedded/m<wbr/>eta-networking \
        /poky-pyro/meta-openembedded/m<wbr/>eta-perl \
        /poky-pyro/meta-openembedded/m<wbr/>eta-python \
        /poky-pyro/meta-raspberrypi \
        /poky-pyro/meta-qt5 \
  &#34;
</code></pre><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-va=
riant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:inher=
it;font-family:Arial,&#34;Helvetica Neue&#34;,Helvetica,sans-serif;vertical=
-align:baseline;clear:both;color:rgb(36,39,41)">In my local.conf I added th=
ese lines:</p><pre style=3D"margin-top:0px;margin-bottom:1em;padding:5px;bo=
rder:0px;font-variant-numeric:inherit;font-stretch:inherit;font-size:13px;l=
ine-height:inherit;font-family:Consolas,Menlo,Monaco,&#34;Lucida Console&#3=
4;,&#34;Liberation Mono&#34;,&#34;DejaVu Sans Mono&#34;,&#34;Bitstream Vera=
 Sans Mono&#34;,&#34;Courier New&#34;,monospace,sans-serif;vertical-align:b=
aseline;width:auto;max-height:600px;overflow:auto;background-color:rgb(239,=
240,241);word-wrap:normal;color:rgb(36,39,41)"><code style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;line-height:inherit;font-family:Consolas,Menlo,M=
onaco,&#34;Lucida Console&#34;,&#34;Liberation Mono&#34;,&#34;DejaVu Sans M=
ono&#34;,&#34;Bitstream Vera Sans Mono&#34;,&#34;Courier New&#34;,monospace=
,sans-serif;vertical-align:baseline;white-space:inherit">DISTRO_FEATURES_ap=
pend =3D &#34; opengl &#34;
IMAGE_INSTALL_append =3D &#34; qtbase qtdeclarative qtquickcontrols2 qtmul=
timedia qttools cinematicexperience &#34;
</code></pre><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-va=
riant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:inher=
it;font-family:Arial,&#34;Helvetica Neue&#34;,Helvetica,sans-serif;vertical=
-align:baseline;clear:both;color:rgb(36,39,41)">Bitbake finished building t=
he image successfully, but when I run Qt5_cenimaticExperience on the target=
 I get this error message:</p><blockquote style=3D"margin:0px 0px 10px;padd=
ing:10px;border-width:0px 0px 0px 2px;border-top-style:initial;border-right=
-style:initial;border-bottom-style:initial;border-left-style:solid;border-t=
op-color:initial;border-right-color:initial;border-bottom-color:initial;bor=
der-left-color:rgb(255,235,142);font-variant-numeric:inherit;font-stretch:i=
nherit;font-size:15px;line-height:inherit;font-family:Arial,&#34;Helvetica =
Neue&#34;,Helvetica,sans-serif;vertical-align:baseline;quotes:none;backgrou=
nd-color:rgb(255,248,220);color:rgb(36,39,41)"><p style=3D"margin:0px;paddi=
ng:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inher=
it;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:i=
nherit;vertical-align:baseline;clear:both">QXcbIntegration: Cannot create p=
latform OpenGL context, neither GLX nor EGL are enabled.</p></blockquote><p=
 style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric:in=
herit;font-stretch:inherit;font-size:15px;line-height:inherit;font-family:A=
rial,&#34;Helvetica Neue&#34;,Helvetica,sans-serif;vertical-align:baseline;=
clear:both;color:rgb(36,39,41)">Any help would be very much appreciated!</p=
><div>Thank You,</div>-- <br/><div class=3D"gmail_signature"><div dir=3D"lt=
r"><div><div dir=3D"ltr">Yahya Ahmed<div>=C2=A0</div></div></div></div></di=
v>
<br/><br/><br/>=E2=80=8C</div></div>
<br/></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br/>
______________________________<wbr/>_________________<br/>
yocto mailing list<br/>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br/>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferre=
r" target=3D"_blank">https://lists.yoctoproject.org<wbr/>/listinfo/yocto</a=
><br/>
<br/></font></span></blockquote></div></div>
</blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div dir=3D"ltr">Yahya Ahmed<div><br/></div></div></div></div>
</div></div>
</body></html>

--001a11459d9adda6e3055fdafe23--

--q1otm11nwd9H6CwyiSIa
Content-Id: <attach_0_15D95A98F3E14621_14359@groups.io>
X-Attachment-Id: attach_0_15D95A98F3E14621_14359@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--q1otm11nwd9H6CwyiSIa--
