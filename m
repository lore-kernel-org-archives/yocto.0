Return-Path: <matetuske@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 689E3E00E36; Thu,  8 Feb 2018 07:49:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matetuske[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB87E00D5F
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 07:49:29 -0800 (PST)
Received: by mail-qt0-f193.google.com with SMTP id t25so6721486qtg.3
	for <yocto@yoctoproject.org>; Thu, 08 Feb 2018 07:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LPhLu7Ct/baFL4ZXiOxepNjdLGobwrE8DxikZa2dEq0=;
	b=cI+vhZEk9dlP/YKCm0yFo8ihPi+KRooenlOUYu0VIIaMCb79eNUTzwwfvSuiIRQz9L
	nECm67T1nTv8eCpfptteuApSuOpvGJGQiw57eSUdgj0jlv0WDxwvuUTUdqWNNF8TaBXs
	Fxm12bnbqqRwJI9+XQK1qXcaFU1iZjTEz35uwe9MM+eRo4FTiFhXJWd4i9oz35lTRtSq
	wmiZX7jYHF67UIrQi1kw5LZTeVzp6p3sBvfzkfmjkWMwu7Oc8hsA+jQ0HUjLJg9uq3Mh
	aMbXILjsLqegCpNY14M9NPsxEUwdu8UgTwg3vvo8gSKZKMSubzOnQ580mAlvoRdneOIa
	guJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LPhLu7Ct/baFL4ZXiOxepNjdLGobwrE8DxikZa2dEq0=;
	b=KhrRbfaUBvq9Zii4LFIhaSzm11vRm19TzOG+/z8gDz/NET5Yur8ZZ68q8dxPFLE5vr
	rI7xLIFHC9bsIVCIUyH6Ki3D7DN2KRuHg2lfSTWX8/q8NC+T3U9+0HHNc6UzwDHQt8nz
	Hop6BPPQ3hvE8z3acJFmXyHq49FYf9pufedMyvA49e8IssOeGlbuPCyKxMAGedVcfu6I
	DwzGbJr/cs/WyU7GU86wwprqnUE/vV3HyjPaMtM3jMAw6UvRcwt6LYkyLbInw2XSQJev
	lXO0Ma9omJb0HitcDJ6oe/xhb8M1WU9OsShNFUoNosVYl/vmtN2h+AihndwhFATVqxJ0
	P92Q==
X-Gm-Message-State: APf1xPCZNgVq1mhht9qHBUBUh98FwQNbE9eJKjYtOE9DcmqWvFjSng3Z
	spojZ4Z4VvvB1Lsgf0W8KPL1QuPfqnwr4xee7A5zK7sq
X-Google-Smtp-Source: AH8x2279nNxmzSI8sH5GlZC1XDFD7RcGtuDccf+FFZ46p8frjz7/5VFU2pA/acxanzIjAZCS0ViiJoGQ30JRi9PLWW4=
X-Received: by 10.200.46.73 with SMTP id s9mr1768192qta.317.1518104968795;
	Thu, 08 Feb 2018 07:49:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.173.91 with HTTP; Thu, 8 Feb 2018 07:48:58 -0800 (PST)
In-Reply-To: <5DDA13F5-FD4C-4A18-8A8D-5A311097EEF2@dynamicdevices.co.uk>
References: <CAMm5SjSds4Fs=4vu=owwfKpJo_EYbOe5MzAdNesgzzMhJ2ytxg@mail.gmail.com>
	<5DDA13F5-FD4C-4A18-8A8D-5A311097EEF2@dynamicdevices.co.uk>
From: =?UTF-8?B?TcOhdMOpIFTDvHNrZQ==?= <matetuske@gmail.com>
Date: Thu, 8 Feb 2018 16:48:58 +0100
Message-ID: <CAMm5SjRp-DE_7mVw2rCeTLSc50HJneZDrdbGNn9j04ReOz=9fg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: mono build issue
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
X-List-Received-Date: Thu, 08 Feb 2018 15:49:31 -0000
Content-Type: multipart/alternative; boundary="001a113d673e659a250564b55b32"

--001a113d673e659a250564b55b32
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

thank you for the help. Here are some information about the configuration

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "raspberrypi"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.4.1"
TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-hard"
TARGET_FPU           =3D "hard"
meta
meta-poky            =3D "rocko:21ba45aa77e4d43a93cd96d859707a4758e8b64b"
meta-oe
meta-multimedia
meta-networking
meta-perl
meta-python          =3D "rocko:a65c1acb1822966c3553de9fc98d8bb6be705c4e"
meta-qt5             =3D "rocko:db881bb4917628ad3eb1fa7c4f27915cf2ae60f4"
meta-raspberrypi     =3D "rocko:510009f0c825cd7992d2d37e9ed0007f6c3be723"
meta-security        =3D "rocko:3d4183b6b4d4ac530c232bcff338af6a9158f8df"
meta-rpi             =3D "rocko:ef2d1e76fb91859eb5de322b71df9bcb2a17ff61"
meta-icontrall       =3D "rocko:21ba45aa77e4d43a93cd96d859707a4758e8b64b"
meta-mono            =3D "rocko:9c9d3a5ba5196595915b0ebfd1e6acaffb640c0a"

The problem still exists sadly.

Matthew

On Thu, Feb 8, 2018 at 8:13 AM, Alex J Lennon <ajlennon@dynamicdevices.co.u=
k
> wrote:

>
>
> On 7 Feb 2018, at 22:43, M=C3=A1t=C3=A9 T=C3=BCske <matetuske@gmail.com> =
wrote:
>
> Hi,
>
> I try to build custom image with mono. Previously I did it successfully,
> but now I ran into some issue and I cannot solve it.
>
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Mic=
rosoft.Build.Engine.dll contained in package mono-libs-3.5 requires mono(Sy=
stem.Xml), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Mic=
rosoft.Build.Utilities.v3.5.dll contained in package mono-libs-3.5 requires=
 mono(System), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdep=
s]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Mic=
rosoft.Build.Engine.dll contained in package mono-libs-3.5 requires mono(ms=
corlib), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-config=
uration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-=
configuration-crypto requires mono(mscorlib), but no providers found in RDE=
PENDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-config=
uration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-=
configuration-crypto requires mono(System.Xml), but no providers found in R=
DEPENDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-config=
uration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-=
configuration-crypto requires mono(System), but no providers found in RDEPE=
NDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-config=
uration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-=
configuration-crypto requires mono(System.Configuration), but no providers =
found in RDEPENDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-config=
uration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-=
configuration-crypto requires mono(Mono.Security), but no providers found i=
n RDEPENDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6-api/Mon=
o.Debugger.Soft.dll contained in package mono-api-4.6 requires mono(Mono.Ce=
cil), but no providers found in RDEPENDS_mono-api-4.6? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.2-api/M=
ono.Debugger.Soft.dll contained in package mono-api-4.6.2 requires mono(Mon=
o.Cecil), but no providers found in RDEPENDS_mono-api-4.6.2? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.7-api/Mon=
o.Debugger.Soft.dll contained in package mono-api-4.7 requires mono(Mono.Ce=
cil), but no providers found in RDEPENDS_mono-api-4.7? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/xbuild/Micr=
osoft/NuGet/Microsoft.NuGet.Build.Tasks.dll contained in package mono-xbuil=
d requires mono(mscorlib), but no providers found in RDEPENDS_mono-xbuild? =
[file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.1-api/M=
ono.Debugger.Soft.dll contained in package mono-api-4.6.1 requires mono(Mon=
o.Cecil), but no providers found in RDEPENDS_mono-api-4.6.1? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/gac/Mono.Me=
ssaging.RabbitMQ/4.0.0.0__0738eb9f132ed756/Mono.Messaging.RabbitMQ.dll cont=
ained in package mono-gac requires mono(mscorlib), but no providers found i=
n RDEPENDS_mono-gac? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.5/Microso=
ft.CodeAnalysis.Scripting.dll contained in package mono-libs-4.5 requires m=
ono(System.Runtime.Loader), but no providers found in RDEPENDS_mono-libs-4.=
5? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA run found fatal errors. Please c=
onsider fixing them.
> ERROR: mono-5.4.1.6-r0 do_package_qa: Function failed: do_package_qa
>
> Can you help me with this?
>
>
> regards,
>
> Matthew
>
> Hi,
>
> I=E2=80=99m in the middle of the Red Sea at the moment but if you can pro=
vide your
> build configuration I=E2=80=99ll take a look next week (assuming this has=
n=E2=80=99t been
> resolved in the meantime)
>
> Cheers,
>
> Alex
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113d673e659a250564b55b32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>thank you for the help. Here are so=
me information about the configuration</div><div><pre id=3D"gmail-hterm:cop=
y-to-clipboard-source" style=3D"color:rgb(0,0,0);font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing=
:0px;text-decoration-style:initial;text-decoration-color:initial"><pre id=
=3D"gmail-hterm:copy-to-clipboard-source" style=3D"color:rgb(0,0,0);font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfor=
m:none;word-spacing:0px;text-decoration-style:initial;text-decoration-color=
:initial">Build Configuration:
BB_VERSION           =3D &quot;1.36.0&quot;
BUILD_SYS            =3D &quot;x86_64-linux&quot;
NATIVELSBSTRING      =3D &quot;universal&quot;
TARGET_SYS           =3D &quot;arm-poky-linux-gnueabi&quot;
MACHINE              =3D &quot;raspberrypi&quot;
DISTRO               =3D &quot;poky&quot;
DISTRO_VERSION       =3D &quot;2.4.1&quot;
TUNE_FEATURES        =3D &quot;arm armv6 vfp arm1176jzfs callconvention-har=
d&quot;
TARGET_FPU           =3D &quot;hard&quot;
meta
meta-poky            =3D &quot;rocko:21ba45aa77e4d43a93cd96d859707a4758e8b6=
4b&quot;
meta-oe
meta-multimedia
meta-networking
meta-perl
meta-python          =3D &quot;rocko:a65c1acb1822966c3553de9fc98d8bb6be705c=
4e&quot;
meta-qt5             =3D &quot;rocko:db881bb4917628ad3eb1fa7c4f27915cf2ae60=
f4&quot;
meta-raspberrypi     =3D &quot;rocko:510009f0c825cd7992d2d37e9ed0007f6c3be7=
23&quot;
meta-security        =3D &quot;rocko:3d4183b6b4d4ac530c232bcff338af6a9158f8=
df&quot;
meta-rpi             =3D &quot;rocko:ef2d1e76fb91859eb5de322b71df9bcb2a17ff=
61&quot;
meta-icontrall       =3D &quot;rocko:21ba45aa77e4d43a93cd96d859707a4758e8b6=
4b&quot;
meta-mono            =3D &quot;rocko:9c9d3a5ba5196595915b0ebfd1e6acaffb640c=
0a&quot;</pre></pre></div><div>The problem still exists sadly.</div><div><b=
r></div><div>Matthew</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Feb 8, 2018 at 8:13 AM, Alex J Lennon <span dir=3D=
"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank=
">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"auto"><div><div class=3D"h5"><div></div><div><br>=
</div><div><br>On 7 Feb 2018, at 22:43, M=C3=A1t=C3=A9 T=C3=BCske &lt;<a hr=
ef=3D"mailto:matetuske@gmail.com" target=3D"_blank">matetuske@gmail.com</a>=
&gt; wrote:<br><br></div><blockquote type=3D"cite"><div><div dir=3D"ltr">Hi=
,<div><br></div><div>I try to build custom image with mono. Previously I di=
d it successfully, but now I ran into some issue and I cannot solve it.</di=
v><pre id=3D"m_-8009293542037944502gmail-hterm:copy-to-clipboard-source" st=
yle=3D"color:rgb(0,0,0);font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;word-spacing:0px;text-decoration-styl=
e:initial;text-decoration-color:initial">ERROR: mono-5.4.1.6-r0 do_package_=
qa: QA Issue: /usr/lib/mono/3.5-api/<wbr>Microsoft.Build.Engine.dll contain=
ed in package mono-libs-3.5 requires mono(System.Xml), but no providers fou=
nd in RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/<wbr>=
Microsoft.Build.Utilities.v3.<wbr>5.dll contained in package mono-libs-3.5 =
requires mono(System), but no providers found in RDEPENDS_mono-libs-3.5? [f=
ile-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/<wbr>=
Microsoft.Build.Engine.dll contained in package mono-libs-3.5 requires mono=
(mscorlib), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-<wbr>con=
figuration-crypto/4.5/Mono.<wbr>Configuration.Crypto.dll contained in packa=
ge mono-configuration-crypto requires mono(mscorlib), but no providers foun=
d in RDEPENDS_mono-configuration-<wbr>crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-<wbr>con=
figuration-crypto/4.5/Mono.<wbr>Configuration.Crypto.dll contained in packa=
ge mono-configuration-crypto requires mono(System.Xml), but no providers fo=
und in RDEPENDS_mono-configuration-<wbr>crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-<wbr>con=
figuration-crypto/4.5/Mono.<wbr>Configuration.Crypto.dll contained in packa=
ge mono-configuration-crypto requires mono(System), but no providers found =
in RDEPENDS_mono-configuration-<wbr>crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-<wbr>con=
figuration-crypto/4.5/Mono.<wbr>Configuration.Crypto.dll contained in packa=
ge mono-configuration-crypto requires mono(System.Configuration), but no pr=
oviders found in RDEPENDS_mono-configuration-<wbr>crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-<wbr>con=
figuration-crypto/4.5/Mono.<wbr>Configuration.Crypto.dll contained in packa=
ge mono-configuration-crypto requires mono(Mono.Security), but no providers=
 found in RDEPENDS_mono-configuration-<wbr>crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6-api/Mono.=
<wbr>Debugger.Soft.dll contained in package mono-api-4.6 requires mono(Mono=
.Cecil), but no providers found in RDEPENDS_mono-api-4.6? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.2-api/Mon=
o.<wbr>Debugger.Soft.dll contained in package mono-api-4.6.2 requires mono(=
Mono.Cecil), but no providers found in RDEPENDS_mono-api-4.6.2? [file-rdeps=
]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.7-api/Mono.=
<wbr>Debugger.Soft.dll contained in package mono-api-4.7 requires mono(Mono=
.Cecil), but no providers found in RDEPENDS_mono-api-4.7? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/xbuild/<wbr>M=
icrosoft/NuGet/Microsoft.<wbr>NuGet.Build.Tasks.dll contained in package mo=
no-xbuild requires mono(mscorlib), but no providers found in RDEPENDS_mono-=
xbuild? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.1-api/Mon=
o.<wbr>Debugger.Soft.dll contained in package mono-api-4.6.1 requires mono(=
Mono.Cecil), but no providers found in RDEPENDS_mono-api-4.6.1? [file-rdeps=
]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/gac/Mono.<wbr=
>Messaging.RabbitMQ/4.0.0.0__<wbr>0738eb9f132ed756/Mono.<wbr>Messaging.Rabb=
itMQ.dll contained in package mono-gac requires mono(mscorlib), but no prov=
iders found in RDEPENDS_mono-gac? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.5/Microsoft=
.<wbr>CodeAnalysis.Scripting.dll contained in package mono-libs-4.5 require=
s mono(System.Runtime.Loader), but no providers found in RDEPENDS_mono-libs=
-4.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA run found fatal errors. Please con=
sider fixing them.
ERROR: mono-5.4.1.6-r0 do_package_qa: Function failed: do_package_qa<br></p=
re><div><pre id=3D"m_-8009293542037944502gmail-hterm:copy-to-clipboard-sour=
ce" style=3D"color:rgb(0,0,0);font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;word-spacing:0px;text-decoratio=
n-style:initial;text-decoration-color:initial"><span style=3D"font-family:a=
rial,sans-serif;color:rgb(34,34,34)">Can you help me with this?</span>
</pre><pre id=3D"m_-8009293542037944502gmail-hterm:copy-to-clipboard-source=
" style=3D"color:rgb(0,0,0);font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;word-spacing:0px;text-decoration-=
style:initial;text-decoration-color:initial"><span style=3D"font-family:ari=
al,sans-serif;color:rgb(34,34,34)"><br></span></pre><pre id=3D"m_-800929354=
2037944502gmail-hterm:copy-to-clipboard-source" style=3D"color:rgb(0,0,0);f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;word-spacing:0px;text-decoration-style:initial;text-decoration=
-color:initial"><span style=3D"font-family:arial,sans-serif;color:rgb(34,34=
,34)">regards,</span></pre><pre id=3D"m_-8009293542037944502gmail-hterm:cop=
y-to-clipboard-source" style=3D"color:rgb(0,0,0);font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing=
:0px;text-decoration-style:initial;text-decoration-color:initial"><span sty=
le=3D"font-family:arial,sans-serif;color:rgb(34,34,34)">Matthew</span></pre=
></div></div>
</div></blockquote></div></div><div>Hi,</div><div><br></div><div>I=E2=80=99=
m in the middle of the Red Sea at the moment but if you can provide your bu=
ild configuration I=E2=80=99ll take a look next week (assuming this hasn=E2=
=80=99t been resolved in the meantime)</div><div><br></div><div>Cheers,</di=
v><div><br></div><div>Alex</div><span class=3D"HOEnZb"><font color=3D"#8888=
88"><div><br></div><br><blockquote type=3D"cite"><div><span>-- </span><br><=
span>______________________________<wbr>_________________</span><br><span>y=
octo mailing list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org"=
 target=3D"_blank">yocto@yoctoproject.org</a></span><br><span><a href=3D"ht=
tps://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://list=
s.yoctoproject.<wbr>org/listinfo/yocto</a></span><br></div></blockquote></f=
ont></span></div></blockquote></div><br></div>

--001a113d673e659a250564b55b32--
