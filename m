Return-Path: <marekslomiany@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4254E00D6A; Tue, 19 Dec 2017 01:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marekslomiany[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43FD2E00D6A
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 01:42:30 -0800 (PST)
Received: by mail-pf0-f181.google.com with SMTP id v26so10905464pfl.7
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 01:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dw8JQ6lCL2S51HVU5oX9FOn0PasL4LtJuBix/SgoGMo=;
	b=D4e5OW8YOwfKTIw2QynLLN8e7mUo0E9pV7DH/ISnFwgOFp9Nv8lqTVwUW4az9CHScB
	ufeM+fWsB513bppa6Fo+3PHGk/h2GI9Ush00PjXeQ9gLaVlvu7XkNMUBzY95C+mYkQy/
	KCNA8f6vbd06nywB2lLS2Efoub/ONAtyc49xn5Og0+wUb0NWkmxOIAwXl/u0YDticiYX
	HyceZ2EOLpM8p83baaYHNeWPSQZXpmFSTAUFKPxIZYDlNZEP/GynZ1dt5ydll9MCKHvZ
	0mvi57GGJNr3fM5tybYuIHX4vmAoq71WNFqb4lL1IHDckWyH+hGvhX9LNL3397FOkrD7
	p+Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dw8JQ6lCL2S51HVU5oX9FOn0PasL4LtJuBix/SgoGMo=;
	b=WgT7ifFeuxyoK9W/f7UkMYdah6E0ZJLxnzV5tsvMgUZ5RORxuWoc1K+rbvng2o1F1A
	bHPylE6im2zdxKsn3maBCdVe6W0qRn2AmbWA1/N+5uAo9rAiFBb0ohQQwhRgdRTjntag
	8yrzh4Df57WXv0KW2TTNVcm3gNmZURjPWJUNlISG3ST8Pz1vEY/itl9Glz8JVwATxo0g
	JAPDsV/SbbqlxoXm+RHz1/xejPa6VPepcDrGZjg+DO227vRh7mG6IyqjuYW1+KC0a3N2
	EIh5In0qrTAYEutUN5m4+ry1LdAUlgsidksDkbygvGbd8Iz0A7JPxUdbByL14jl1kUY3
	Y+VA==
X-Gm-Message-State: AKGB3mK2qNOvfF6DsKs1UsvsDSq4F2uHU7HtS+H9bo62UWqxe/Vyfcs2
	wjGdrJW0/q7BDW1X82uR5sDG2BitkOWkx2gwzTY=
X-Google-Smtp-Source: ACJfBosmUdESkUusnEd6Z1RCipg9Z4O3dX1ItBFDPPCMJozXGYbiRjAeNSnk62nNG2+y/U3QxAu6XzrSHXVnN7p7lUM=
X-Received: by 10.98.214.21 with SMTP id r21mr2676513pfg.74.1513676550399;
	Tue, 19 Dec 2017 01:42:30 -0800 (PST)
MIME-Version: 1.0
References: <CAJCDnYYgN=nFYwOz5inC3W5jZojj1QdAG9ck90rXAiPZ1b0xCg@mail.gmail.com>
	<CALw8SCV2M54g94qCYA2Xa7nVYCTOgzkzNkt6u7qefCdpwvVurw@mail.gmail.com>
In-Reply-To: <CALw8SCV2M54g94qCYA2Xa7nVYCTOgzkzNkt6u7qefCdpwvVurw@mail.gmail.com>
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Tue, 19 Dec 2017 09:42:19 +0000
Message-ID: <CAJCDnYafdTDa6NR1hNJrepwcDaTWuwvP6KKLucQ3RZGZnQz8GQ@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wrong distro name in toolchain
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
X-List-Received-Date: Tue, 19 Dec 2017 09:42:31 -0000
Content-Type: multipart/alternative; boundary="94eb2c14fea0176a8c0560ae4989"

--94eb2c14fea0176a8c0560ae4989
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

About mixing branches - I have recreated the problem on new location to
check that the problem persist. Here is new setup:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "am335x-evm"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.4.1"
TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard"
TARGET_FPU           =3D "hard"
meta                 =3D "rocko:abec40e5ebc6f1b804cf698e365737224a57c41d"
meta-oe              =3D "rocko:6e3fc5b8d904d06e3aa77e9ec9968ab37a798188"
meta-et              =3D "rocko:abec40e5ebc6f1b804cf698e365737224a57c41d"
meta-ti              =3D "master:8fcd2f60720acf46555b45a1a48ad1fa0c52b75a"
meta-qt5             =3D "rocko:d87335a50a9dd35d890786edbd79b8953fdaa11a"
meta-poky
meta-yocto-bsp       =3D "rocko:abec40e5ebc6f1b804cf698e365737224a57c41d"

meta-poky is in rocko too - I don't know why it didn't show but I have
double checked it.
meta-ti does'nt have rocko, so it is in master.

This time, as I am using poky, after deploying and sourcing sdk I had to
copy ./sysroots/x86_64-pokysdk-linux/ to ./sysroots/x86_64-oesdk-linux/ so
it's basicly the same and it doesn't make difference if I build it with
"bitbake <image> -c populate_sdk" or "bitbake meta-toolchain-qt5" - result
is the same (not counting that second option doesn't give me additional
libs from my image).
Recipe with our own applications has same issue as on my previous setup.
As I have written - the problem is not in generated sdk that I use for
out-of-yocto build, but it is when I build my code within yocto with recipe
and image.
To answer your question about image - on my setup I have my own image
recipe, now on this test setup i used core-image-minimal with additional qt
packages added via local.conf file.

To sum up: There are two problems: first is when using generated sdk - the
problem is that in sdk subdirectories there is x86_64-pokysdk-linux, but
cmake is looking for x86_64-oesdk-linux. This can by bypassed copying
*pokysdk* to *oesdk*.
second problem is when building from recipe - it looks similar, but I can't
find proper directories to try out solution which I just described in first
problem.

I hope it is now clearer what my problem is.

Regards,
Marek

pon., 18 gru 2017 o 23:30 u=C5=BCytkownik Mirza Krak <mirza.krak@gmail.com>
napisa=C5=82:

> 2017-12-18 12:11 GMT+01:00 Marek S=C5=82omiany <marekslomiany@gmail.com>:
> > Hi, I'm having problem while building Qt application inside of yocto an=
d
> > using generated SDK.
> > I have bypassed it when using generated SDK, which I describe here.
> >
> > My setup in short:
> > I'm using for Qt this layer git://github.com/meta-qt5/meta-qt5.git in
> rocko
> > branch
> > beside Qt, other layers that might be important:
> > meta-poky (rocko)
> > meta-oe (morty)
> > meta-python (morty)
> > meta-networking (morty)
> > meta-ti (morty)
>
> First of, why are you mixing branches here? You should use the same
> branch on all the layer for better chances for it to work
> out-of-the-box. There have been a lot of changes to the "core" from
> morty to rocko and trying to mix them probably raises some "extra"
> problems that you would not normally get.
>
> >
> > The platform is am335x
> > distro name is "etos"
> >
> > I had some problems with sdk (at first I added Qt to my build but
> > applications were developped and build by my coleagues using external
> > toolchains).
> > Recently I've added recipes for those apps to my layer.
> > To test if code I got from my team is building fine, I have generated S=
DK
> > using "bitbake <image-name> -c populate_sdk" and deployed it in default
> path
> > which is /opt/etos/1.0/. When I have sourced it and tried to configure =
I
> > got:
>
> What image did you build when you generated the SDK?
>
> meta-qt5 seems to provide a recipe for a toolchain containing all the
> Qt stuff including qmake [1].  Try that out if you haven't already by
> simply running:
>
>    bitbake meta-toolchain-qt5
>
> [1].
> https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/meta/meta-too=
lchain-qt5.bb
>
> --
> Med V=C3=A4nliga H=C3=A4lsningar / Best Regards
>
> Mirza Krak
>

--94eb2c14fea0176a8c0560ae4989
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">About mixing branches - I have recreated the problem on ne=
w location to check that the problem persist. Here is new setup:<div><div>B=
B_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.36.0&quot;</div><d=
iv>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linu=
x&quot;</div><div>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;universal&q=
uot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-=
poky-linux-gnueabi&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;am335x-evm&quot;</div><div>DISTRO =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.4.1&quot;</div><div>TUNE_FEATURES =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7a vfp thumb neon callconventi=
on-hard&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;hard&quot;</div><div>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;rocko:abec40e5ebc6f1b804cf698e365737224a57c41d&quot=
;</div><div>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &qu=
ot;rocko:6e3fc5b8d904d06e3aa77e9ec9968ab37a798188&quot;</div><div>meta-et =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;rocko:abec40e5ebc=
6f1b804cf698e365737224a57c41d&quot;</div><div>meta-ti =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:8fcd2f60720acf46555b45a1a48ad1f=
a0c52b75a&quot;</div><div>meta-qt5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;rocko:d87335a50a9dd35d890786edbd79b8953fdaa11a&quot;</div><di=
v>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto-=
bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:abec40e5ebc6f1b804cf698e365737224a=
57c41d&quot;</div><div><br></div><div>meta-poky is in rocko too - I don&#39=
;t know why it didn&#39;t show but I have double checked it.</div><div>meta=
-ti does&#39;nt have rocko, so it is in master.</div><div><br></div><div>Th=
is time, as I am using poky, after deploying and sourcing sdk I had to copy=
 ./sysroots/x86_64-pokysdk-linux/ to ./sysroots/x86_64-oesdk-linux/ so it&#=
39;s basicly the same and it doesn&#39;t make difference if I build it with=
 &quot;bitbake &lt;image&gt; -c populate_sdk&quot; or &quot;bitbake meta-to=
olchain-qt5&quot; - result is the same (not counting that second option doe=
sn&#39;t give me additional libs from my image).</div><div>Recipe with our =
own applications has same issue as on my previous setup.</div><div>As I hav=
e written - the problem is not in generated sdk that I use for out-of-yocto=
 build, but it is when I build my code within yocto with recipe and image.<=
/div><div>To answer your question about image - on my setup I have my own i=
mage recipe, now on this test setup i used core-image-minimal with addition=
al qt packages added via local.conf file.</div><div><br></div><div>To sum u=
p: There are two problems: first is when using generated sdk - the problem =
is that in sdk subdirectories there is=C2=A0x86_64-pokysdk-linux, but cmake=
 is looking for=C2=A0x86_64-oesdk-linux. This can by bypassed copying *poky=
sdk* to *oesdk*.</div><div>second problem is when building from recipe - it=
 looks similar, but I can&#39;t find proper directories to try out solution=
 which I just described in first problem.</div><div><br></div><div>I hope i=
t is now clearer what my problem is.</div><div><br></div><div>Regards,</div=
><div>Marek</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">pon., 18 g=
ru 2017 o 23:30=C2=A0u=C5=BCytkownik Mirza Krak &lt;<a href=3D"mailto:mirza=
.krak@gmail.com">mirza.krak@gmail.com</a>&gt; napisa=C5=82:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">2017-12-18 12:11 GMT+01:00 Marek S=C5=82omiany &lt=
;<a href=3D"mailto:marekslomiany@gmail.com" target=3D"_blank">marekslomiany=
@gmail.com</a>&gt;:<br>
&gt; Hi, I&#39;m having problem while building Qt application inside of yoc=
to and<br>
&gt; using generated SDK.<br>
&gt; I have bypassed it when using generated SDK, which I describe here.<br=
>
&gt;<br>
&gt; My setup in short:<br>
&gt; I&#39;m using for Qt this layer git://<a href=3D"http://github.com/met=
a-qt5/meta-qt5.git" rel=3D"noreferrer" target=3D"_blank">github.com/meta-qt=
5/meta-qt5.git</a> in rocko<br>
&gt; branch<br>
&gt; beside Qt, other layers that might be important:<br>
&gt; meta-poky (rocko)<br>
&gt; meta-oe (morty)<br>
&gt; meta-python (morty)<br>
&gt; meta-networking (morty)<br>
&gt; meta-ti (morty)<br>
<br>
First of, why are you mixing branches here? You should use the same<br>
branch on all the layer for better chances for it to work<br>
out-of-the-box. There have been a lot of changes to the &quot;core&quot; fr=
om<br>
morty to rocko and trying to mix them probably raises some &quot;extra&quot=
;<br>
problems that you would not normally get.<br>
<br>
&gt;<br>
&gt; The platform is am335x<br>
&gt; distro name is &quot;etos&quot;<br>
&gt;<br>
&gt; I had some problems with sdk (at first I added Qt to my build but<br>
&gt; applications were developped and build by my coleagues using external<=
br>
&gt; toolchains).<br>
&gt; Recently I&#39;ve added recipes for those apps to my layer.<br>
&gt; To test if code I got from my team is building fine, I have generated =
SDK<br>
&gt; using &quot;bitbake &lt;image-name&gt; -c populate_sdk&quot; and deplo=
yed it in default path<br>
&gt; which is /opt/etos/1.0/. When I have sourced it and tried to configure=
 I<br>
&gt; got:<br>
<br>
What image did you build when you generated the SDK?<br>
<br>
meta-qt5 seems to provide a recipe for a toolchain containing all the<br>
Qt stuff including qmake [1].=C2=A0 Try that out if you haven&#39;t already=
 by<br>
simply running:<br>
<br>
=C2=A0 =C2=A0bitbake meta-toolchain-qt5<br>
<br>
[1]. <a href=3D"https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt=
/meta/meta-toolchain-qt5.bb" rel=3D"noreferrer" target=3D"_blank">https://g=
ithub.com/meta-qt5/meta-qt5/blob/master/recipes-qt/meta/meta-toolchain-qt5.=
bb</a><br>
<br>
--<br>
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards<br>
<br>
Mirza Krak<br>
</blockquote></div></div></div>

--94eb2c14fea0176a8c0560ae4989--
