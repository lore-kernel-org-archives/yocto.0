Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00949E00D20; Tue, 26 Sep 2017 06:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52EBFE00D2A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 06:18:54 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id a43so13219754wrc.0
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 06:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=o24gLB8Uvrg2Vu1st0vcLxddPD69JsaZqyjU5VMutlY=;
	b=Vl3IvXyBCgdvRN94g+wMcPISBB4CPBsANfe96WjMm1ZkQVpRUXy+DO36n9w8duLreP
	g17K+BgtBNe3hWlS3KJrpj86LHLji4qU/IhQVoFDn039M2q7d4Xm5tUtt8Tu3WMFaOLG
	Y35sb0WE1rEQvyOSAZYKGwtn4MOx9U4KnjimIYwkAI54l1vCu5DDHHe8Q3G0O8HzUqvZ
	4YAxzeMLGF5r9MKJNNUp7L40NXXf+aLjJSxEQ4X9pfPwBfNHr4qkVZJZFl/78+qrvHn1
	oATxCV/C1trpwtdRMAW0xakieAMGNOp5OlSNnm/8ceYJkIn0nvOSpqcfAphkuaEGqpsL
	58yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=o24gLB8Uvrg2Vu1st0vcLxddPD69JsaZqyjU5VMutlY=;
	b=CxBIlGebtO+v7XVvWS7Wdq6wT3vZhRJsH8+4qDau1hdMCUJnqFp3D2pwDhHUmcT6X6
	dFNBAbDHVDt5lFWdbESvI4kpjOo8lCiuQlqGURlp7r1nhUWmk2LIQA1/A6T7tPvZBZ73
	GnMlPVpBTdObXKnKKeOqgo9hh3nOlInXoS+Sr5IFEHW1wz+PglZrOcLrKpOgEV/vfYwh
	Ej2jevsO6bDY+NRKAkWhX43/3X3Knxans5bYJN2M23OcYjA++sQk52z3MkplJ8J+GSPD
	usYHmMSHpkA1T3mEuAYwvx3useXgyim3fm0yWBgthG6Rzpyq38YwKvq1tf6CGes+J0tJ
	wlTw==
X-Gm-Message-State: AHPjjUgNnXce24l0A11H1zpAL6XnmzzGUvdRqXIg5jQb//L5zSHSc7oT
	nCzUfr3kfM2/NIjb6cNn7UIt1IB7Dq4cbvW4NG1G5Q==
X-Google-Smtp-Source: AOwi7QCYoGkygncjbTwjR/mkWDHYVzsImo6JW2Bq9QVA3NYZKTLXcxHLYeFcrH5fJLLrMbEp6zILFhMn4mDrYFQSRm4=
X-Received: by 10.223.134.93 with SMTP id 29mr10271242wrw.60.1506431933657;
	Tue, 26 Sep 2017 06:18:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.228.213 with HTTP; Tue, 26 Sep 2017 06:18:52 -0700 (PDT)
In-Reply-To: <CAGAf8LzkrzSzg=wO4==jioEDoRZRPLuhe+iEnQW+Opnxyy6YmA@mail.gmail.com>
References: <CAGAf8LzkrzSzg=wO4==jioEDoRZRPLuhe+iEnQW+Opnxyy6YmA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 26 Sep 2017 15:18:52 +0200
Message-ID: <CAGAf8Lxn3tOQmrH9uf315O1BrV=-ETkiLm8Uyi9H7d29WqTWvw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel change in YOCTO
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
X-List-Received-Date: Tue, 26 Sep 2017 13:18:57 -0000
Content-Type: multipart/alternative; boundary="001a11491ad448b763055a178454"

--001a11491ad448b763055a178454
Content-Type: text/plain; charset="UTF-8"

Sorry for the noise...

[user@localhost machine]$ pwd
/home/user/projects/poky/meta-yocto-bsp/conf/machine
[user@localhost machine]$ cat genericx86-64.conf
#@TYPE: Machine
#@NAME: Generic X86_64.

#@DESCRIPTION: Machine configuration for generic X86_64 (64-bit) PCs and
servers. Supports a moderately wide range of drivers that should boot and
be usable on "typical" hardware.

DEFAULTTUNE ?= "core2-64"
require conf/machine/include/tune-core2.inc
require conf/machine/include/genericx86-common.inc

*PREFERRED_VERSION_linux-yocto ?= "4.10%"*

SERIAL_CONSOLES_CHECK = "ttyS0"
[user@localhost machine]$

Zoran
_______

On Tue, Sep 26, 2017 at 2:15 PM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello,
>
> I have a bit dummy question. I have older Pyro distro, compiled for
> qemux86_64. It has there kernel 4.10.17, and there are two interesting
> directories, where one can find definitions of the kernels:
>
> [user@localhost poky]$ find . -name *.bbappend
> ...
> ./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> ./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
> ./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend <<===
> Introduced later
> ./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
> ./meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
> ...
>
> And the .bb scripts are located in:
> ./meta/recipes-kernel/linux/linux-yocto-tiny_4.1.bb
> ./meta/recipes-kernel/linux/linux-dummy.bb
> ./meta/recipes-kernel/linux/linux-yocto_4.9.bb
> ./meta/recipes-kernel/linux/linux-yocto_4.1.bb
> ./meta/recipes-kernel/linux/linux-yocto-rt_4.1.bb
> ./meta/recipes-kernel/linux/linux-yocto-dev.bb
> ./meta/recipes-kernel/linux/linux-yocto-rt_4.12.bb
> ./meta/recipes-kernel/linux/linux-generic_4.13.3.bb <<=== Introduced
> later (git HEAD checkout)
> ./meta/recipes-kernel/linux/linux-yocto-tiny_4.9.bb
> ./meta/recipes-kernel/linux/linux-yocto_4.10.bb
> ./meta/recipes-kernel/linux/linux-yocto-tiny_4.4.bb
> ./meta/recipes-kernel/linux/linux-yocto-rt_4.9.bb
> ./meta/recipes-kernel/linux/linux-yocto_4.4.bb
> ./meta/recipes-kernel/linux/linux-yocto_4.12.bb <<=== Introduced later
> ./meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb
> ./meta/recipes-kernel/linux/kernel-devsrc.bb
>
> Whatever I did (introduced kernel_4.12.12 with the same set of the scripts
> from master - different git headers), I was not able to switch kernel while
> building qemux86-64!?
>
> Even at the end (in desperation to understand from where dependencies are
> coming) I deleted .git in poky/, and deleted everything in build/, except
> conf/bbappend.conf and conf/local.conf?!
>
> But still, kernel 4.10.17 is always taken... No idea why?
>
> user@localhost build]$ bitbake -c fetchall core-image-sato
> WARNING: Host distribution "fedora-26" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> Loading cache: 100% |#############################
> ############################################################
> ########################################################################|
> Time: 0:00:01
> Loaded 1300 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "x86_64-poky-linux"
> MACHINE           = "qemux86-64"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.3.1"
> TUNE_FEATURES     = "m64 core2"
> TARGET_FPU        = ""
> meta
> meta-poky
> *meta-yocto-bsp    = "<unknown>:<unknown>" <<=== .git deleted prior
> fetching*
>
> Initialising tasks: 100% |#############################
> ############################################################
> ###################################################################|
> Time: 0:00:18
> NOTE: Executing RunQueue Tasks
>
> Summary: There were 11 WARNING messages shown.
> [user@localhost build]$
> _______
>
> Questions:
> [1] Should I blindly follow:
> http://www.yoctoproject.org/docs/2.3.2/kernel-dev/kernel-dev
> .html#creating-and-preparing-a-layer
> Where it is written that new layer must be introduced for the new kernel,
> also (after layer and scripts creation) placed in
> .../build/conf/bbappend.conf?
>
> [2] If [1] is a must, where I can read about reasons why this requirement
> exists?? Maybe BSP and kernel have some invisible dependencies??
>
> [3] Where are these invisible kernel dependencies? So is there something
> (?) kernel depends on, although I always believed that everything else is
> dependent on kernel (kernel is HW dependend via device drivers), since
> kernel lives on its own (except some BSP data - kernel command line passed
> to it at the boot time, which should have no influence on dependency of any
> kind between kernel boot-loader and kernel itself)?!
>
> Thank you,
> Zoran
>
>

--001a11491ad448b763055a178454
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry for the noise...<br><br>[user@localhost machine=
]$ pwd<br>/home/user/projects/poky/meta-yocto-bsp/conf/machine<br>[user@loc=
alhost machine]$ cat genericx86-64.conf<br>#@TYPE: Machine<br>#@NAME: Gener=
ic X86_64.<br><br>#@DESCRIPTION: Machine configuration for generic X86_64 (=
64-bit) PCs and servers. Supports a moderately wide range of drivers that s=
hould boot and be usable on &quot;typical&quot; hardware.<br><br>DEFAULTTUN=
E ?=3D &quot;core2-64&quot;<br>require conf/machine/include/tune-core2.inc<=
br>require conf/machine/include/genericx86-common.inc<br><br><span style=3D=
"color:rgb(255,0,0)"><u><i><b>PREFERRED_VERSION_linux-yocto ?=3D &quot;4.10=
%&quot;</b></i></u></span><br><br>SERIAL_CONSOLES_CHECK =3D &quot;ttyS0&quo=
t;<br>[user@localhost machine]$<br><br></div>Zoran<br>_______<br></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 26, 2017 =
at 2:15 PM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zor=
an.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div><div>Hello,<br><br></div>I have a bit dummy question. I have older Pyro=
 distro, compiled for qemux86_64. It has there kernel 4.10.17, and there ar=
e two interesting directories, where one can find definitions of the kernel=
s:</div><div><br></div><div>[user@localhost poky]$ find . -name *.bbappend<=
br>...<br>./meta-yocto-bsp/recipes-<wbr>kernel/linux/linux-yocto_4.1.<wbr>b=
bappend<br>./meta-yocto-bsp/recipes-<wbr>kernel/linux/linux-yocto_4.10.<wbr=
>bbappend<br>./meta-yocto-bsp/recipes-<wbr>kernel/linux/linux-yocto_4.12.<w=
br>bbappend &lt;&lt;=3D=3D=3D Introduced later<br>./meta-yocto-bsp/recipes-=
<wbr>kernel/linux/linux-yocto_4.4.<wbr>bbappend<br>./meta-yocto-bsp/recipes=
-<wbr>kernel/linux/linux-yocto_4.9.<wbr>bbappend<br>...</div><div><br></div=
><div>And the .bb scripts are located in:</div><div>./meta/recipes-kernel/l=
inux/<a href=3D"http://linux-yocto-tiny_4.1.bb" target=3D"_blank">li<wbr>nu=
x-yocto-tiny_4.1.bb</a><br>./meta/recipes-kernel/linux/<a href=3D"http://li=
nux-dummy.bb" target=3D"_blank">li<wbr>nux-dummy.bb</a><br>./meta/recipes-k=
ernel/linux/<a href=3D"http://linux-yocto_4.9.bb" target=3D"_blank">li<wbr>=
nux-yocto_4.9.bb</a><br>./meta/recipes-kernel/linux/<a href=3D"http://linux=
-yocto_4.1.bb" target=3D"_blank">li<wbr>nux-yocto_4.1.bb</a><br>./meta/reci=
pes-kernel/linux/<a href=3D"http://linux-yocto-rt_4.1.bb" target=3D"_blank"=
>li<wbr>nux-yocto-rt_4.1.bb</a><br>./meta/recipes-kernel/linux/<a href=3D"h=
ttp://linux-yocto-dev.bb" target=3D"_blank">li<wbr>nux-yocto-dev.bb</a><br>=
./meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-rt_4.12.bb" targe=
t=3D"_blank">li<wbr>nux-yocto-rt_4.12.bb</a> <br>./meta/recipes-kernel/linu=
x/<a href=3D"http://linux-generic_4.13.3.bb" target=3D"_blank">li<wbr>nux-g=
eneric_4.13.3.bb</a> &lt;&lt;=3D=3D=3D Introduced later (git HEAD checkout)=
<br>./meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-tiny_4.9.bb" =
target=3D"_blank">li<wbr>nux-yocto-tiny_4.9.bb</a><br>./meta/recipes-kernel=
/linux/<a href=3D"http://linux-yocto_4.10.bb" target=3D"_blank">li<wbr>nux-=
yocto_4.10.bb</a><br>./meta/recipes-kernel/linux/<a href=3D"http://linux-yo=
cto-tiny_4.4.bb" target=3D"_blank">li<wbr>nux-yocto-tiny_4.4.bb</a><br>./me=
ta/recipes-kernel/linux/<a href=3D"http://linux-yocto-rt_4.9.bb" target=3D"=
_blank">li<wbr>nux-yocto-rt_4.9.bb</a><br>./meta/recipes-kernel/linux/<a hr=
ef=3D"http://linux-yocto_4.4.bb" target=3D"_blank">li<wbr>nux-yocto_4.4.bb<=
/a><br>./meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_4.12.bb" t=
arget=3D"_blank">li<wbr>nux-yocto_4.12.bb</a> &lt;&lt;=3D=3D=3D Introduced =
later<br>./meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-rt_4.4.b=
b" target=3D"_blank">li<wbr>nux-yocto-rt_4.4.bb</a><br>./meta/recipes-kerne=
l/linux/<a href=3D"http://kernel-devsrc.bb" target=3D"_blank">ke<wbr>rnel-d=
evsrc.bb</a><br><br></div><div>Whatever I did (introduced kernel_4.12.12 wi=
th the same set of the scripts from master - different git headers), I was =
not able to switch kernel while building qemux86-64!?</div><div><br></div><=
div>Even at the end (in desperation to understand from where dependencies a=
re coming) I deleted .git in poky/, and deleted everything in build/, excep=
t conf/bbappend.conf and conf/local.conf?!</div><div><br></div><div>But sti=
ll, kernel 4.10.17 is always taken... No idea why?<br></div><div><br>user@l=
ocalhost build]$ bitbake -c fetchall core-image-sato<br>WARNING: Host distr=
ibution &quot;fedora-26&quot; has not been validated with this version of t=
he build system; you may possibly experience unexpected failures. It is rec=
ommended that you use a tested distribution.<br>Loading cache: 100% |######=
#######################<wbr>##############################<wbr>############=
##################<wbr>##############################<wbr>#################=
#############<wbr>############| Time: 0:00:01<br>Loaded 1300 entries from d=
ependency cache.<br>NOTE: Resolving any missing task queue dependencies<br>=
<br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;1.34.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=
 =3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;x86_64-poky-linux&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;qemux86-64&quot;<br>DISTR=
O=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;2.3.1&quot;<br>=
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m64 core2&quot;<br>TARGET_F=
PU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>meta=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><span style=
=3D"color:rgb(255,0,0)"><b>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;&lt;u=
nknown&gt;:&lt;unknown&gt;&quot; &lt;&lt;=3D=3D=3D .git deleted prior fetch=
ing</b></span><br><br>Initialising tasks: 100% |###########################=
##<wbr>##############################<wbr>##############################<wb=
r>##############################<wbr>##############################<wbr>###=
####| Time: 0:00:18<br>NOTE: Executing RunQueue Tasks<br><br>Summary: There=
 were 11 WARNING messages shown.<br>[user@localhost build]$=C2=A0</div><div=
>_______</div><div><br></div><div>Questions:</div><div>[1] Should I blindly=
 follow: <br><div id=3D"m_-5012773752676567252gmail-:ru" class=3D"m_-501277=
3752676567252gmail-a3s m_-5012773752676567252gmail-aXjCH m_-501277375267656=
7252gmail-m15ebdf4efe5eff73"><a href=3D"http://www.yoctoproject.org/docs/2.=
3.2/kernel-dev/kernel-dev.html#creating-and-preparing-a-layer" target=3D"_b=
lank"><font color=3D"blue" size=3D"2" face=3D"sans-serif">http://www.yoctop=
roject.org/do<wbr>cs/2.3.2/kernel-dev/kernel-dev<wbr>.html#creating-and-pre=
paring-<wbr>a-layer</font></a></div><div class=3D"m_-5012773752676567252gma=
il-a3s m_-5012773752676567252gmail-aXjCH m_-5012773752676567252gmail-m15ebd=
f4efe5eff73"><font size=3D"2" face=3D"sans-serif">Where it is written that =
new layer must be introduced for the new kernel, also (after layer and scri=
pts creation) placed in .../build/conf/bbappend.conf?</font></div><div clas=
s=3D"m_-5012773752676567252gmail-a3s m_-5012773752676567252gmail-aXjCH m_-5=
012773752676567252gmail-m15ebdf4efe5eff73"><font size=3D"2" face=3D"sans-se=
rif"><br></font></div><div class=3D"m_-5012773752676567252gmail-a3s m_-5012=
773752676567252gmail-aXjCH m_-5012773752676567252gmail-m15ebdf4efe5eff73"><=
font size=3D"2" face=3D"sans-serif">[2] If [1] is a must, where I can read =
about reasons why this requirement exists?? Maybe BSP and kernel have some =
invisible dependencies??<br></font></div><div class=3D"m_-50127737526765672=
52gmail-a3s m_-5012773752676567252gmail-aXjCH m_-5012773752676567252gmail-m=
15ebdf4efe5eff73"><font size=3D"2" face=3D"sans-serif"><br></font></div><di=
v class=3D"m_-5012773752676567252gmail-a3s m_-5012773752676567252gmail-aXjC=
H m_-5012773752676567252gmail-m15ebdf4efe5eff73"><font size=3D"2" face=3D"s=
ans-serif">[3] Where are these invisible kernel dependencies? So is there s=
omething (?) kernel depends on, although I always believed that everything =
else is dependent on kernel (kernel is HW dependend via device drivers), si=
nce kernel lives on its own (except some BSP data - kernel command line pas=
sed to it at the boot time, which should have no influence on dependency of=
 any kind between kernel boot-loader and kernel itself)?!<br></font></div><=
div class=3D"m_-5012773752676567252gmail-a3s m_-5012773752676567252gmail-aX=
jCH m_-5012773752676567252gmail-m15ebdf4efe5eff73"><font size=3D"2" face=3D=
"sans-serif"><br></font></div><div class=3D"m_-5012773752676567252gmail-a3s=
 m_-5012773752676567252gmail-aXjCH m_-5012773752676567252gmail-m15ebdf4efe5=
eff73"><font size=3D"2" face=3D"sans-serif">Thank you,</font></div><div cla=
ss=3D"m_-5012773752676567252gmail-a3s m_-5012773752676567252gmail-aXjCH m_-=
5012773752676567252gmail-m15ebdf4efe5eff73"><font size=3D"2" face=3D"sans-s=
erif">Zoran</font></div><div class=3D"m_-5012773752676567252gmail-a3s m_-50=
12773752676567252gmail-aXjCH m_-5012773752676567252gmail-m15ebdf4efe5eff73"=
><font size=3D"2" face=3D"sans-serif"><br>
</font></div></div></div>
</blockquote></div><br></div>

--001a11491ad448b763055a178454--
