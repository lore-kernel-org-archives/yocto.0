Return-Path: <yahya.coder@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A905DE00CD3; Sun,  3 Dec 2017 11:39:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahya.coder[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81687E00B1E
	for <yocto@yoctoproject.org>; Sun,  3 Dec 2017 11:39:00 -0800 (PST)
Received: by mail-it0-f47.google.com with SMTP id f143so1786000itb.0
	for <yocto@yoctoproject.org>; Sun, 03 Dec 2017 11:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2rK2RpoWK+EV5UV4iSeLIhnnpg2tPJ2RrAVw18/14nU=;
	b=L2Sdj4SWbpfu1HceJGErByDeeYeME908lhRcv0AdqHDSanpUBW91GfdBZGdNPY7Frq
	i7VtVyN41KgFmerfvptiQMzC8bkjJ8IURgbNDIeled31CvqGzQ7QIcOt5j1HigNJayH3
	9twNB/WRhFU6uVIzZ/l6C788caWMvZuYqmigSw7uNZSLFpbDCSizcUPzccAxjgrKrToS
	YxjdzsxML/+SYBsxhD0c8I/raJLpa2yEtJ8/Q1TXTiM3RtYRZp4WXsVKx0rplvbued2i
	7Se5jJDhbenetJeUo8w84KMBa/ISYiXFg6k7rY/ir6i/mTqcNzLcn/20e0djT4khPzxx
	NiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2rK2RpoWK+EV5UV4iSeLIhnnpg2tPJ2RrAVw18/14nU=;
	b=rZTk+OkOWGf6FSaBDa7SJT7cmJFV7Hs8TU/pYC98C56SNTCET5jnAXI0ZzIZ8/byT2
	txUe6aUJx7UMndMioZOyU/W+OnQB9XxBILCAU8ivL0WlWbw+4/8N2FHoc1AI1EcGU7yx
	PMAhwWndeY7GwS4yUvN/atj1XZbpGs+SD6BESrob2NPT+FIMPSTzUyk48a0ZnWqhXDwB
	Rg4BVDLS8Wxoo3gH1dyFf4yRRz/OTEQZzbPdhWrG72V3HhclVRim4oRi862gosQW63t4
	6pbMpFhc2ci3n0USyTJgyf5kNYX9Oo2AyGawOBA7Wg2z5ijfBOrunuVSgSMGhXeJdL9+
	8C1Q==
X-Gm-Message-State: AKGB3mIovZ3/H89zj4kXxYb+uEndtZMOz3SW5u93h4b9ABaG7KYLSzog
	tkXs3Zn1useEqHgcNd0jAhes09+N+C/veI52oWazyQ==
X-Google-Smtp-Source: AGs4zMYGm+U/Nui4wOOLqZOUpF9802g4UIlxU6tdt+tgL+uSCGZjCJexpfTegn/JmvxjsmCKpPAr7ka07+GD6JJxBeY=
X-Received: by 10.36.127.198 with SMTP id r189mr1808788itc.116.1512329939459; 
	Sun, 03 Dec 2017 11:38:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.62.76 with HTTP; Sun, 3 Dec 2017 11:38:59 -0800 (PST)
From: Yahya Ahmed <yahya.coder@gmail.com>
Date: Sun, 3 Dec 2017 21:38:59 +0200
Message-ID: <CAGT+Up6W9Z5itBhV2qr8RXFW6Ksb2qu60Xe17tdGjXzQWjae0Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [x11][Question] QXcbIntegration: Cannot create platform OpenGL context
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
X-List-Received-Date: Sun, 03 Dec 2017 19:39:01 -0000
Content-Type: multipart/alternative; boundary="001a11459d9ad322bf055f74c0a1"

--001a11459d9ad322bf055f74c0a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,


I've been trying to add Qt5 support to a core-image-sato image using
Yocto's Poky Pyro on Raspberry Pi 3.

In my bblayer.conf I added these lines:

BBLAYERS ?=3D " \
        /poky-pyro/meta \
        /poky-pyro/meta-poky \
        /poky-pyro/meta-yocto-bsp \
        /poky-pyro/meta-openembedded/meta-oe \
        /poky-pyro/meta-openembedded/meta-multimedia \
        /poky-pyro/meta-openembedded/meta-networking \
        /poky-pyro/meta-openembedded/meta-perl \
        /poky-pyro/meta-openembedded/meta-python \
        /poky-pyro/meta-raspberrypi \
        /poky-pyro/meta-qt5 \
  "

In my local.conf I added these lines:

DISTRO_FEATURES_append =3D " opengl "
IMAGE_INSTALL_append =3D " qtbase qtdeclarative qtquickcontrols2
qtmultimedia qttools cinematicexperience "

Bitbake finished building the image successfully, but when I run
Qt5_cenimaticExperience on the target I get this error message:

QXcbIntegration: Cannot create platform OpenGL context, neither GLX nor EGL
are enabled.

Any help would be very much appreciated!
Thank You,
--=20
Yahya Ahmed




=E2=80=8C

--001a11459d9ad322bf055f74c0a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/18f2024=
fb58d02a0b18a7684c1461f6fff7c0fb9.png?u=3D943036"><div><span style=3D"color=
:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-=
serif;font-size:15px">Hello,</span><br></div><div><p style=3D"margin:0px 0p=
x 1em;padding:0px;border:0px;font-variant-numeric:inherit;font-stretch:inhe=
rit;font-size:15px;line-height:inherit;font-family:Arial,&quot;Helvetica Ne=
ue&quot;,Helvetica,sans-serif;vertical-align:baseline;clear:both;color:rgb(=
36,39,41)"><br></p><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;fo=
nt-variant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:=
inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;v=
ertical-align:baseline;clear:both;color:rgb(36,39,41)">I&#39;ve been trying=
 to add Qt5 support to a=C2=A0<code style=3D"margin:0px;padding:1px 5px;bor=
der:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-st=
retch:inherit;font-size:13px;line-height:inherit;font-family:Consolas,Menlo=
,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu=
 Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quo=
t;,monospace,sans-serif;vertical-align:baseline;background-color:rgb(239,24=
0,241);white-space:pre-wrap">core-image-sato</code>=C2=A0image using Yocto&=
#39;s Poky Pyro on Raspberry Pi 3.</p><p style=3D"margin:0px 0px 1em;paddin=
g:0px;border:0px;font-variant-numeric:inherit;font-stretch:inherit;font-siz=
e:15px;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Hel=
vetica,sans-serif;vertical-align:baseline;clear:both;color:rgb(36,39,41)">I=
n my bblayer.conf I added these lines:</p><pre style=3D"margin-top:0px;marg=
in-bottom:1em;padding:5px;border:0px;font-variant-numeric:inherit;font-stre=
tch:inherit;font-size:13px;line-height:inherit;font-family:Consolas,Menlo,M=
onaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu S=
ans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;=
,monospace,sans-serif;vertical-align:baseline;width:auto;max-height:600px;o=
verflow:auto;background-color:rgb(239,240,241);word-wrap:normal;color:rgb(3=
6,39,41)"><code style=3D"margin:0px;padding:0px;border:0px;font-style:inher=
it;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-heigh=
t:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quo=
t;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera S=
ans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:=
baseline;white-space:inherit">BBLAYERS ?=3D &quot; \
        /poky-pyro/meta \
        /poky-pyro/meta-poky \
        /poky-pyro/meta-yocto-bsp \
        /poky-pyro/meta-openembedded/meta-oe \
        /poky-pyro/meta-openembedded/meta-multimedia \
        /poky-pyro/meta-openembedded/meta-networking \
        /poky-pyro/meta-openembedded/meta-perl \
        /poky-pyro/meta-openembedded/meta-python \
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
d!</p><div>Thank You,</div>-- <br><div class=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr">Yahya Ahmed<div>=C2=A0</div></div></div></di=
v></div>
<br><br><br>=E2=80=8C</div></div>

--001a11459d9ad322bf055f74c0a1--
