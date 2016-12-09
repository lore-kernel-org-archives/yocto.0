Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0662E00C80; Fri,  9 Dec 2016 04:35:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F963E00C4B
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 04:35:32 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id x190so15839327qkb.0
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 04:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pGXYgyqJG3Q7jWHCjMU2Npgy0h+qQE+xq6tl+se0VRE=;
	b=qNPKnViF/y0+WI1L6AJCQUgOfhWUT69VbFcd72V1p2RYBoNqFdaRgw7lH+Ar/Bd5qg
	Qjlh3zpTR6aNDXOr7YlwisTnBWAg7KCAA6L0brjs/0fHWEqCEb90K4nZMIPhXawC8fs5
	AbhVAQA6vO+4fT3VcqaINXvzd7QWfOxmYZ9e8iAlN1NeXZ1oChQlzb6UyhVOKWDOIsKJ
	4ON2DEBN8tzOVEKdUusiE+Ct1NDnqVj6nMmQDzRsbyM1Ktjs2qosLIsREoJienALRuHg
	IzrllL/eZFxUAYbmYINDSREgCORBIxdekory9S2ArabXsMnSUA7kEMjDE9L79T5Ve2Qr
	OGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pGXYgyqJG3Q7jWHCjMU2Npgy0h+qQE+xq6tl+se0VRE=;
	b=VrZf2h62nKNaFu+RsSSAhaWaODSE+thTTk6LX5MJX6uMWkRLhs5PWgGbY9bGpfra2D
	rR4ZiVVct457hw61+mJhevMp2+ND85F5UUZ+KD5rORiR8y87sElVL7jNwFZRf3r70U6d
	UDwu8vMAOHGo2hN82v/Xkagd4+HVw4z75QY5VWoQvzVlKirhDLZ+hMYVO5xJ/etWkaiy
	sA3c/mcOoBh2gSZCBOrT2VGX3+X7YRVuKFzP+EGeFfpp16t1EE0f9dnyvHjJeuBZr50x
	CesTUxJPFhIDSp7+fAWNy66oZFhnhx+SFEawO1B8Yt/p60n3htniNwpeEhyzaMAFpzeX
	ZcJw==
X-Gm-Message-State: AKaTC00T8UtEvsm6lP7UtijYZlRLU7DcD2XsIP+8xJCUALQJyKgqVmX8AeTWvORT+w4IF329M18hPVYlAYm/eYAt
X-Received: by 10.55.39.88 with SMTP id n85mr66804908qkn.244.1481286932149;
	Fri, 09 Dec 2016 04:35:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Fri, 9 Dec 2016 04:35:11 -0800 (PST)
In-Reply-To: <02e201d25213$77eea330$67cbe990$@renuelectronics.com>
References: <02e201d25213$77eea330$67cbe990$@renuelectronics.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Dec 2016 12:35:11 +0000
Message-ID: <CAJTo0LaXozB7S1XJbWv1jzutoLWQPQ-QHMhB2x6mEBqDuTvm-A@mail.gmail.com>
To: Alankar Dhobale <alankar.dhobale@renuelectronics.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Qt make: g++: Command not found issue with SDK generated for soloX
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
X-List-Received-Date: Fri, 09 Dec 2016 12:35:36 -0000
Content-Type: multipart/alternative; boundary=94eb2c094b1666fd14054338fdfd

--94eb2c094b1666fd14054338fdfd
Content-Type: text/plain; charset=UTF-8

As per the documentation, the compiler isn't just "gcc" but has the full
platform triple in:

http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#makefile-based-projects

One you've sourced the setup script these are set as $CC and so on, so your
makefile should be using $CC instead of 'gcc'.

Ross

On 9 December 2016 at 11:57, Alankar Dhobale <
alankar.dhobale@renuelectronics.com> wrote:

> i have used following steps to get and build the BSP for soloX sabre
> board. i am using Krogoth branch to build the bsp and populate sdk
>
>
>
> https://github.com/Freescale/fsl-community-bsp-platform
>
>
>
>
>
> then i added qt support in the build by following
>
>
>
> http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
>
>
>
>
>
> after that i bitbaked toolchain for this using following
>
> $ bitbake meta-toolchain-qt5
>
>
>
> after this i generated sdk using following command
>
>
>
> $ bitbake <image-name> -c populate_sdk
>
>
>
> and then i installed the sdk on my development machine, it is installed
> under
>
> /opt/poky/2.1.1/
>
>
>
> now i installed and setup latest Qt by using following steps
>
>
>
> https://community.nxp.com/thread/309578
>
>
>
>
>
> After all this setup done, i created a simple console application and
> trying to build it, and i get an error as
>
>
>
> 14:10:10: Running steps for project HelloWorld...
> 14:10:10: Configuration unchanged, skipping qmake step.
> 14:10:10: Starting: "/usr/bin/make"
> g++ -c -pipe -O2 -std=gnu++0x -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG
> -DQT_CORE_LIB -I../HelloWorld -I. -I/opt/poky/2.1.1/sysroots/
> cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5
> -I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/QtCore
> -I. -I/opt/poky/2.1.1/sysroots/cortexa9hf-neon-poky-linux-
> gnueabi/usr/lib/qt5/mkspecs/linux-g++ -o main.o ../HelloWorld/main.cpp
> make: g++: Command not found
> make: *** [main.o] Error 127
> 14:10:10: The process "/usr/bin/make" exited with code 2.
> Error while building/deploying project HelloWorld (kit: mx6solox)
> The kit mx6solox has configuration issues which might be the root cause
> for this problem.
> When executing step "Make"
> 14:10:10: Elapsed time: 00:00.
>
>
>
> i have googled a lot but could not find any solution on this.
>
>
>
> Can somebody please help on this...
>
>
>
>
>
> Kind Regards,
>
> *Alankar Dhobale*
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c094b1666fd14054338fdfd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As per the documentation, the compiler isn&#39;t just &quo=
t;gcc&quot; but has the full platform triple in:<div><br></div><div><a href=
=3D"http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#makefil=
e-based-projects">http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manua=
l.html#makefile-based-projects</a><br></div><div><br></div><div>One you&#39=
;ve sourced the setup script these are set as $CC and so on, so your makefi=
le should be using $CC instead of &#39;gcc&#39;.</div><div><br></div><div>R=
oss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 9 December 2016 at 11:57, Alankar Dhobale <span dir=3D"ltr">&lt;<a href=3D=
"mailto:alankar.dhobale@renuelectronics.com" target=3D"_blank">alankar.dhob=
ale@renuelectronics.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"m_-71=
76079680622200282WordSection1"><p style=3D"margin:0in;margin-bottom:.0001pt=
;background:white;vertical-align:baseline"><span style=3D"font-size:11.5pt;=
font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f">i h=
ave used following steps to get and build=C2=A0the BSP for soloX sabre boar=
d. i am using Krogoth branch to build the bsp and populate sdk<u></u><u></u=
></span></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;v=
ertical-align:baseline;word-wrap:break-word;font-variant-ligatures:normal;f=
ont-variant-caps:normal;text-align:start;min-height:8pt;word-spacing:0px"><=
span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans=
-serif&quot;;color:#51626f">=C2=A0<u></u><u></u></span></p><p style=3D"marg=
in:0in;margin-bottom:.0001pt;background:white;vertical-align:baseline;word-=
wrap:break-word;font-variant-ligatures:normal;font-variant-caps:normal;text=
-align:start;word-spacing:0px"><span style=3D"font-size:11.5pt;font-family:=
&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f"><a href=3D"http=
s://github.com/Freescale/fsl-community-bsp-platform" target=3D"_blank">http=
s://github.com/Freescale/<wbr>fsl-community-bsp-platform</a><u></u><u></u><=
/span></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;ver=
tical-align:baseline"><span style=3D"font-size:11.5pt;font-family:&quot;Hel=
vetica&quot;,&quot;sans-serif&quot;;color:#51626f"><u></u>=C2=A0<u></u></sp=
an></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertic=
al-align:baseline"><span style=3D"font-size:11.5pt;font-family:&quot;Helvet=
ica&quot;,&quot;sans-serif&quot;;color:#51626f">=C2=A0<u></u><u></u></span>=
</p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-=
align:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-vari=
ant-caps:normal;text-align:start;word-spacing:0px"><span style=3D"font-size=
:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#516=
26f">then i added qt support in the build by following=C2=A0<u></u><u></u><=
/span></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;ver=
tical-align:baseline;word-wrap:break-word;font-variant-ligatures:normal;fon=
t-variant-caps:normal;text-align:start;min-height:8pt;word-spacing:0px"><sp=
an style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-s=
erif&quot;;color:#51626f">=C2=A0<u></u><u></u></span></p><p style=3D"margin=
:0in;margin-bottom:.0001pt;background:white;vertical-align:baseline;word-wr=
ap:break-word;font-variant-ligatures:normal;font-variant-caps:normal;text-a=
lign:start;word-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&q=
uot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f"><a href=3D"http:/=
/wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard" target=
=3D"_blank">http://wiki.wandboard.org/<wbr>index.php/Building_Qt5_using_<wb=
r>yocto_on_Wandboard</a><u></u><u></u></span></p><p style=3D"margin:0in;mar=
gin-bottom:.0001pt;background:white;vertical-align:baseline"><span style=3D=
"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;=
color:#51626f"><u></u>=C2=A0<u></u></span></p><p style=3D"margin:0in;margin=
-bottom:.0001pt;background:white;vertical-align:baseline"><span style=3D"fo=
nt-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;col=
or:#51626f">=C2=A0<u></u><u></u></span></p><p style=3D"margin:0in;margin-bo=
ttom:.0001pt;background:white;vertical-align:baseline;word-wrap:break-word;=
font-variant-ligatures:normal;font-variant-caps:normal;text-align:start;wor=
d-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#51626f">after that i bitbaked toolchain=
 for this using following<u></u><u></u></span></p><p style=3D"margin:0in;ma=
rgin-bottom:.0001pt;background:white;vertical-align:baseline;word-wrap:brea=
k-word;font-variant-ligatures:normal;font-variant-caps:normal;text-align:st=
art;word-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&quot;Hel=
vetica&quot;,&quot;sans-serif&quot;;color:#51626f">$ bitbake meta-toolchain=
-qt5<u></u><u></u></span></p><p style=3D"margin:0in;margin-bottom:.0001pt;b=
ackground:white;vertical-align:baseline;word-wrap:break-word;font-variant-l=
igatures:normal;font-variant-caps:normal;text-align:start;min-height:8pt;wo=
rd-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&quot;Helvetica=
&quot;,&quot;sans-serif&quot;;color:#51626f">=C2=A0<u></u><u></u></span></p=
><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-ali=
gn:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-variant=
-caps:normal;text-align:start;word-spacing:0px"><span style=3D"font-size:11=
.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f=
">after this i generated sdk using following command<u></u><u></u></span></=
p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-al=
ign:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-varian=
t-caps:normal;text-align:start;min-height:8pt;word-spacing:0px"><span style=
=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quo=
t;;color:#51626f">=C2=A0<u></u><u></u></span></p><p style=3D"margin:0in;mar=
gin-bottom:.0001pt;background:white;vertical-align:baseline;word-wrap:break=
-word;font-variant-ligatures:normal;font-variant-caps:normal;text-align:sta=
rt;word-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&quot;Helv=
etica&quot;,&quot;sans-serif&quot;;color:#51626f">$ bitbake &lt;image-name&=
gt; -c populate_sdk<u></u><u></u></span></p><p style=3D"margin:0in;margin-b=
ottom:.0001pt;background:white;vertical-align:baseline;word-wrap:break-word=
;font-variant-ligatures:normal;font-variant-caps:normal;text-align:start;mi=
n-height:8pt;word-spacing:0px"><span style=3D"font-size:11.5pt;font-family:=
&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f">=C2=A0<u></u><u=
></u></span></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:whi=
te;vertical-align:baseline;word-wrap:break-word;font-variant-ligatures:norm=
al;font-variant-caps:normal;text-align:start;word-spacing:0px"><span style=
=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quo=
t;;color:#51626f">and then i installed the sdk on my development machine, i=
t is installed under<u></u><u></u></span></p><p style=3D"margin:0in;margin-=
bottom:.0001pt;background:white;vertical-align:baseline;word-wrap:break-wor=
d;font-variant-ligatures:normal;font-variant-caps:normal;text-align:start;w=
ord-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&quot;Helvetic=
a&quot;,&quot;sans-serif&quot;;color:#51626f">/opt/poky/2.1.1/<u></u><u></u=
></span></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;v=
ertical-align:baseline;word-wrap:break-word;font-variant-ligatures:normal;f=
ont-variant-caps:normal;text-align:start;min-height:8pt;word-spacing:0px"><=
span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans=
-serif&quot;;color:#51626f">=C2=A0<u></u><u></u></span></p><p style=3D"marg=
in:0in;margin-bottom:.0001pt;background:white;vertical-align:baseline;word-=
wrap:break-word;font-variant-ligatures:normal;font-variant-caps:normal;text=
-align:start;word-spacing:0px"><span style=3D"font-size:11.5pt;font-family:=
&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f">now i installed=
 and setup latest Qt by using following steps<u></u><u></u></span></p><p st=
yle=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-align:bas=
eline;word-wrap:break-word;font-variant-ligatures:normal;font-variant-caps:=
normal;text-align:start;min-height:8pt;word-spacing:0px"><span style=3D"fon=
t-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;colo=
r:#51626f">=C2=A0<u></u><u></u></span></p><p style=3D"margin:0in;margin-bot=
tom:.0001pt;background:white;vertical-align:baseline;word-wrap:break-word;f=
ont-variant-ligatures:normal;font-variant-caps:normal;text-align:start;word=
-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&q=
uot;,&quot;sans-serif&quot;;color:#51626f"><a href=3D"https://community.nxp=
.com/thread/309578" target=3D"_blank">https://community.nxp.com/<wbr>thread=
/309578</a><u></u><u></u></span></p><p style=3D"margin:0in;margin-bottom:.0=
001pt;background:white;vertical-align:baseline"><span style=3D"font-size:11=
.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f=
"><u></u>=C2=A0<u></u></span></p><p style=3D"margin:0in;margin-bottom:.0001=
pt;background:white;vertical-align:baseline"><span style=3D"font-size:11.5p=
t;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f">=
=C2=A0<u></u><u></u></span></p><p style=3D"margin:0in;margin-bottom:.0001pt=
;background:white;vertical-align:baseline;word-wrap:break-word;font-variant=
-ligatures:normal;font-variant-caps:normal;text-align:start;word-spacing:0p=
x"><span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;=
sans-serif&quot;;color:#51626f">After all this setup done, i created a simp=
le console application and trying to build it, and i get an error as<u></u>=
<u></u></span></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:w=
hite;vertical-align:baseline;word-wrap:break-word;font-variant-ligatures:no=
rmal;font-variant-caps:normal;text-align:start;min-height:8pt;word-spacing:=
0px"><span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quo=
t;sans-serif&quot;;color:#51626f">=C2=A0<u></u><u></u></span></p><p style=
=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-align:baseli=
ne;word-wrap:break-word;font-variant-ligatures:normal;font-variant-caps:nor=
mal;text-align:start;word-spacing:0px"><span style=3D"font-size:11.5pt;font=
-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f">14:10:1=
0: Running steps for project HelloWorld...<br>14:10:10: Configuration uncha=
nged, skipping qmake step.<br>14:10:10: Starting: &quot;/usr/bin/make&quot;=
<span class=3D"m_-7176079680622200282apple-converted-space">=C2=A0</span><b=
r>g++ -c -pipe -O2 -std=3Dgnu++0x -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG=
 -DQT_CORE_LIB -I../HelloWorld -I. -I/opt/poky/2.1.1/sysroots/<wbr>cortexa9=
hf-neon-poky-linux-<wbr>gnueabi/usr/include/qt5 -I/opt/poky/2.1.1/sysroots/=
<wbr>cortexa9hf-neon-poky-linux-<wbr>gnueabi/usr/include/qt5/QtCore -I. -I/=
opt/poky/2.1.1/sysroots/<wbr>cortexa9hf-neon-poky-linux-<wbr>gnueabi/usr/li=
b/qt5/mkspecs/<wbr>linux-g++ -o main.o ../HelloWorld/main.cpp<br>make: g++:=
 Command not found<br>make: *** [main.o] Error 127<br>14:10:10: The process=
 &quot;/usr/bin/make&quot; exited with code 2.<br>Error while building/depl=
oying project HelloWorld (kit: mx6solox)<br>The kit mx6solox has configurat=
ion issues which might be the root cause for this problem.<br>When executin=
g step &quot;Make&quot;<br>14:10:10: Elapsed time: 00:00.<u></u><u></u></sp=
an></p><p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertic=
al-align:baseline;word-wrap:break-word;font-variant-ligatures:normal;font-v=
ariant-caps:normal;text-align:start;min-height:8pt;word-spacing:0px"><span =
style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-seri=
f&quot;;color:#51626f">=C2=A0<u></u><u></u></span></p><p style=3D"margin:0i=
n;margin-bottom:.0001pt;background:white;vertical-align:baseline;word-wrap:=
break-word;font-variant-ligatures:normal;font-variant-caps:normal;text-alig=
n:start;word-spacing:0px"><span style=3D"font-size:11.5pt;font-family:&quot=
;Helvetica&quot;,&quot;sans-serif&quot;;color:#51626f">i have googled a lot=
 but could not find any solution on this.<u></u><u></u></span></p><p style=
=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-align:baseli=
ne;word-wrap:break-word;font-variant-ligatures:normal;font-variant-caps:nor=
mal;text-align:start;min-height:8pt;word-spacing:0px"><span style=3D"font-s=
ize:11.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#=
51626f">=C2=A0<u></u><u></u></span></p><p style=3D"margin:0in;margin-bottom=
:.0001pt;background:white;vertical-align:baseline;word-wrap:break-word;font=
-variant-ligatures:normal;font-variant-caps:normal;text-align:start;word-sp=
acing:0px"><span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot=
;,&quot;sans-serif&quot;;color:#51626f">Can somebody please help on this...=
<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p =
class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:10.0pt;color:black">Kind Regards,<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><b><span style=3D"color:black">Alankar Dhobale</span=
></b><span style=3D"font-family:&quot;Times New Roman&quot;,&quot;serif&quo=
t;"><u></u><u></u></span></p></div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c094b1666fd14054338fdfd--
