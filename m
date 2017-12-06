Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4DA1E00D5F; Wed,  6 Dec 2017 07:26:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8029E00D00
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 07:26:19 -0800 (PST)
Received: by mail-wr0-f181.google.com with SMTP id s66so4315175wrc.9
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 07:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P4CdtAErSGxOveNxaIaI8swlbznGgsgP0D4UfR/G8Nc=;
	b=DXORxErvaCVRqytUfHicEhL4kKnhhg8HlhJjxl8l7t2gI3/5u8EdyRIOiw+39DHZSD
	ZxPr93kOuqg7ovtPIN48S+G0WQgjhzC+pNRQM4VauTyJnSgxx901zWZXAJN+EGrGcTEN
	3RI2nceZHbZ3FcHhTTN5fwOEfRcCvqPLEQK4lUsqHSrWyPzs8YX67Br8dZhPupn8x9Fh
	PPvwQhiGS7kwnjOevkk8OwHEhJKJzDKwY9VUMqAhxJrLblWAsp/nU2Joi9v8naxmf6Be
	hZDTpJOMd2JYfiZUmEGMdAThX6jsHGfDewTvzWZd7L952Jf8/4AKHAkz5xzgpeY7gOoE
	n1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P4CdtAErSGxOveNxaIaI8swlbznGgsgP0D4UfR/G8Nc=;
	b=k5l8/hE0eAWSQ1RS46Wnvb7EYSRPPjtuGpBkgHEcnkV8wNjdwR/7StZUJQ9MOTUlVt
	vWuVsiSpCibEE+L31X6Pi2nxZh4HgSliHHJBhzw7q7ZSj8uj6a7mPUmm1sKcb0Wcv9uY
	50YUuUR8Qn/MC7S2MjPjKWDITKcpXEM7aoI2pZEF3vRz6/+qt9Fcgjq56ZSmhANL8vj5
	ppKrI0b9BCZC9xpFTpH4eurYeNGydwIdkNdXW7qLURUsBYr/7xuGDlsODZOnITCdHgYu
	wYYy2Ubp6LnhXbEYWUIpXVm2TXsc6MJHwjeYvjX5aUond27xI7mIJIvy05Z5LUcLypvn
	Cigg==
X-Gm-Message-State: AJaThX72G6Js8M9GpinUftpp2iTIQdaBnD2k2Bs4AN+DUkoIKakLsm6J
	2vmsGyfOCumUGCgyyczgdCb61HFidKnQkPO6Dcg=
X-Google-Smtp-Source: AGs4zMaXcu10Wm0LRKQjNYccWTUuz/NFZhsZgdFa9XRItgwnVNSwc8Gp/MQQUQOfiar5L35CEsI4OH0ZJ+syLuxInQ8=
X-Received: by 10.223.162.204 with SMTP id t12mr21130270wra.258.1512573978634; 
	Wed, 06 Dec 2017 07:26:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Wed, 6 Dec 2017 07:26:17 -0800 (PST)
In-Reply-To: <5ffc9929-5b23-8146-5ae0-baacd73816ca@vitheia.com>
References: <24c7418f-b077-f224-2cc8-ce399a2967db@vitheia.com>
	<CAGAf8LwLZWp7x+O=wvyXb3Vm-7p0TT7hBaEkNCgrB80OYTN2bQ@mail.gmail.com>
	<5ffc9929-5b23-8146-5ae0-baacd73816ca@vitheia.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 6 Dec 2017 16:26:17 +0100
Message-ID: <CAGAf8LwjjCn7WKcgCdhrx=ec5U_C4kNDkeStk8CzRNdF-nFMwg@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: bitbake menuconfig fails
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
X-List-Received-Date: Wed, 06 Dec 2017 15:26:21 -0000
Content-Type: multipart/alternative; boundary="f403045ea6a4b16c7d055fad925c"

--f403045ea6a4b16c7d055fad925c
Content-Type: text/plain; charset="UTF-8"

Hello Mircea,

I am using just normal YOCTO (rocko), as the test platform to perform
various tests on qemux86-64 and to do some
deeper learning.

My host is Fedora 26 VM (over WIN10 64 PRO, using VMWare Workstation12 as
VMM), and here is CLI transcript
for you:

[user@localhost build]$ uname -r
4.13.16-202.fc26.x86_64
[user@localhost build]$ dnf list installed | grep ncurses
ncurses.x86_64                          6.0-8.20170212.fc26     @anaconda

ncurses-base.noarch                     6.0-8.20170212.fc26     @anaconda

ncurses-c++-libs.x86_64                 6.0-8.20170212.fc26     @fedora

ncurses-compat-libs.x86_64              6.0-8.20170212.fc26     @fedora

ncurses-devel.x86_64                    6.0-8.20170212.fc26     @fedora

ncurses-libs.x86_64                     6.0-8.20170212.fc26     @anaconda

[user@localhost build]$ bitbake -s | grep ncurses
nativesdk-ncurses                            :6.0+20170715-r0

ncurses                                      :6.0+20170715-r0

ncurses-native                               :6.0+20170715-r0

[user@localhost build]$ bitbake script
Loading cache: 100%
|#########################################################################|
Time: 0:00:00
Loaded 1276 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.35.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "qemux86-64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.4"
TUNE_FEATURES     = "m64 core2"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp
meta-mylayer      = "rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80"

Initialising tasks: 100%
|#########################################################################|
Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 564 tasks of which 564 didn't need to be
rerun and all succeeded.
NOTE: Writing buildhistory
[user@localhost build]$
_______

You can try also these commands by yourself, as basis for further
investigation on your YOCTO distro and host OS you
are using (krogoth, 2.1.2, Debian 8 (jessie).

This also confirms your thoughts, my best guess. :-)

Zoran

On Wed, Dec 6, 2017 at 1:20 PM, Mircea Gliga <mircea.gliga@vitheia.com>
wrote:

> Thanks Zoran
> What you say makes perfect sense.
> I also got the feeling that something doesn't match between the new kernel
> and yocto.
> Maybe I should also upgrade yocto.
>
> Thanks again.
>
>
> On 06/12/17 09:22, Zoran Stojsavljevic wrote:
>
> Hello Mircea,
>
> From my point of view:
>
> *> /usr/bin/ld: cannot find -lncursesw*
> > collect2: error: ld returned 1 exit status
> > scripts/Makefile.host:111: recipe for target 'scripts/kconfig/mconf'
> failed
>
> The first line explains it all. You could not configure 4.14, since for
> this you should have ncurses package. I would further say, the
> YOCTO ncurses version you have, which is used for 4.8 is outdated, so you
> need newer (matching) YOCTO version for 4.14.
>
> Why you are able to configure 4.14 outside of yocto? Because you use
> another version of ncurses, one which is host native to
> Debian 8. YOCTO probably uses some other host based ncurses inside YOCTO
> (in Open Embedded/meta layer, my best guess).
>
> Zoran
>
> On Wed, Dec 6, 2017 at 7:31 AM, Mircea Gliga <mircea.gliga@vitheia.com>
> wrote:
>
>> Hello
>>
>> We are using in our layer a kernel 4.8 recipe (linux-stable_4.8.bb)-
>> everything ok.
>> I'm trying to upgrade to 4.14, I created a new recipe
>> linux-stable_4.14.bb. They live side by side, for now.
>> But with the 4.14 kernel when running `bitbake -c menuconfig
>> linux-stable`, the new terminal comes up and I get the following error:
>>
>>   HOSTCC  scripts/basic/fixdep
>>   GEN     ./Makefile
>>   HOSTCC  scripts/kconfig/mconf.o
>>   HOSTCC  scripts/kconfig/zconf.tab.o
>>   HOSTCC  scripts/kconfig/lxdialog/checklist.o
>>   HOSTCC  scripts/kconfig/lxdialog/util.o
>>   HOSTCC  scripts/kconfig/lxdialog/inputbox.o
>>   HOSTCC  scripts/kconfig/lxdialog/textbox.o
>>   HOSTCC  scripts/kconfig/lxdialog/yesno.o
>>   HOSTCC  scripts/kconfig/lxdialog/menubox.o
>>   HOSTLD  scripts/kconfig/mconf
>> /usr/bin/ld: cannot find -lncursesw
>> collect2: error: ld returned 1 exit status
>> scripts/Makefile.host:111: recipe for target 'scripts/kconfig/mconf'
>> failed
>> make[3]: *** [scripts/kconfig/mconf] Error 1
>> /media/mircea/ExtLinux/Adventure/testBuildServer/product-sam
>> a5-kernel/yocto/build/tmp/work-shared/cuxe/kernel-source/Makefile:548:
>> recipe for target 'menuconfig' failed
>> make[2]: *** [menuconfig] Error 2
>> Makefile:146: recipe for target 'sub-make' failed
>> make[1]: *** [sub-make] Error 2
>> Makefile:24: recipe for target '__sub-make' failed
>> make: *** [__sub-make] Error 2
>> Command failed.
>>
>>
>> If I rename linux-stable_4.14.bb to linux-stable_4.14.bb___, then run
>> bitbake again (now the build system is working with the 4.8 kernel again)
>> => menuconfig starts and works as expected.
>>
>> I'm using krogoth, 2.1.2, Debian 8 (jessie)
>>
>> I also tried to config the kernel outside of yocto, downloaded
>> https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.4.tar.xz,
>> extracted and run make menuconfig => works as expected
>>
>> Any hints are appreciated.
>>
>> Thanks
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>

--f403045ea6a4b16c7d055fad925c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Mircea,</div><div><br></div><div>I am using jus=
t normal YOCTO (rocko), as the test platform to perform various tests on qe=
mux86-64 and to do some</div><div>deeper learning.</div><div><br></div><div=
>My host is Fedora 26 VM (over WIN10 64 PRO, using VMWare Workstation12 as =
VMM), and here is CLI transcript</div><div>for you:</div><div><br></div><di=
v>[user@localhost build]$ uname -r</div><div>4.13.16-202.fc26.x86_64</div><=
div>[user@localhost build]$ dnf list installed | grep ncurses</div><div>ncu=
rses.x86_64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 6.0-8.20170212.fc26=C2=A0 =C2=A0 =C2=A0@anacond=
a=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>ncurses-base.noarch=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06.0-8.20170212.f=
c26=C2=A0 =C2=A0 =C2=A0@anaconda=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>ncurs=
es-c++-libs.x86_64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A06.0-8.20170212.fc26=C2=A0 =C2=A0 =C2=A0@fedora=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div>ncurses-compat-libs.x86_64=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 6.0-8.20170212.fc26=C2=A0 =C2=A0 =C2=A0@fedora=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>ncurses-devel.x86_64=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6.0-8.20170212.fc2=
6=C2=A0 =C2=A0 =C2=A0@fedora=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>nc=
urses-libs.x86_64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A06.0-8.20170212.fc26=C2=A0 =C2=A0 =C2=A0@anaconda=C2=A0 =
=C2=A0 =C2=A0 =C2=A0</div><div>[user@localhost build]$ bitbake -s | grep nc=
urses</div><div>nativesdk-ncurses=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :6.0+20170715-r0=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</div><div>ncurses=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 :6.0+20170715-r0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>ncurse=
s-native=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:6.0+20170715-r0=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</div><div>[user@localhost build]$ bitbake script</div><div>Loadin=
g cache: 100% |############################################################=
#############| Time: 0:00:00</div><div>Loaded 1276 entries from dependency =
cache.</div><div>NOTE: Resolving any missing task queue dependencies</div><=
div><br></div><div>Build Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;1.35.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=
=A0 =C2=A0=3D &quot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-poky-linux&quot;</div><div>MACHINE=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86-64&quot;</div><div>DISTRO=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;</div><div>DISTR=
O_VERSION=C2=A0 =C2=A0 =3D &quot;2.4&quot;</div><div>TUNE_FEATURES=C2=A0 =
=C2=A0 =C2=A0=3D &quot;m64 core2&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</div><div>meta-yocto-bsp=C2=A0 =C2=A0=C2=A0</div><div>meta-mylayer=
=C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:65d23bd7986615fdfb0f1717b615534a2a14ab=
80&quot;</div><div><br></div><div>Initialising tasks: 100% |###############=
##########################################################| Time: 0:00:01</=
div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue =
Tasks</div><div>NOTE: Tasks Summary: Attempted 564 tasks of which 564 didn&=
#39;t need to be rerun and all succeeded.</div><div>NOTE: Writing buildhist=
ory</div><div>[user@localhost build]$=C2=A0</div><div>_______</div><div><br=
></div><div>You can try also these commands by yourself, as basis for furth=
er investigation on your YOCTO distro and host OS you</div><div>are using (=
<span style=3D"font-size:12.8px">krogoth, 2.1.2, Debian 8 (jessie).</span><=
/div><div><br></div><div>This also confirms your thoughts, my best guess. :=
-)</div><div><br></div><div>Zoran</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Wed, Dec 6, 2017 at 1:20 PM, Mircea Gliga <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:mircea.gliga@vitheia.com" target=3D"_=
blank">mircea.gliga@vitheia.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    Thanks Zoran<br>
    What you say makes perfect sense. <br>
    I also got the feeling that something doesn&#39;t match between the new
    kernel and yocto. <br>
    Maybe I should also upgrade yocto.<br>
    <br>
    Thanks again.<div><div class=3D"h5"><br>
    <br>
    <div class=3D"m_2413360481872567206moz-cite-prefix">On 06/12/17 09:22, =
Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hello Mircea,
        <div><br>
        </div>
        <div>From my point of view:</div>
        <div><br>
        </div>
        <div><i><u>&gt;=C2=A0<span style=3D"font-size:12.8px">/usr/bin/ld:
                cannot find -lncursesw</span></u></i></div>
        <span style=3D"font-size:12.8px">&gt; collect2: error: ld returned
          1 exit status</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">&gt; scripts/Makefile.host:111:
          recipe for target &#39;scripts/kconfig/mconf&#39; failed</span>
        <div><span style=3D"font-size:12.8px"><br>
          </span></div>
        <div><span style=3D"font-size:12.8px">The first line explains it
            all. You could not configure 4.14, since for this you should
            have ncurses package. I would further say, the</span></div>
        <div><span style=3D"font-size:12.8px">YOCTO ncurses version you
            have, which is used for 4.8 is outdated, so you need newer
            (matching) YOCTO version for 4.14.</span></div>
        <div><span style=3D"font-size:12.8px"><br>
          </span></div>
        <div><span style=3D"font-size:12.8px">Why you are able to
            configure 4.14 outside of yocto? Because you use another
            version of ncurses, one which is host native to</span></div>
        <div><span style=3D"font-size:12.8px">Debian 8. YOCTO probably
            uses some other host based ncurses inside YOCTO (in Open
            Embedded/meta layer, my best guess).</span></div>
        <div><span style=3D"font-size:12.8px"><br>
          </span></div>
        <div><span style=3D"font-size:12.8px">Zoran</span></div>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Wed, Dec 6, 2017 at 7:31 AM, Mircea
          Gliga <span dir=3D"ltr">&lt;<a href=3D"mailto:mircea.gliga@vithei=
a.com" target=3D"_blank">mircea.gliga@vitheia.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hello<br>
            <br>
            We are using in our layer a kernel 4.8 recipe (<a href=3D"http:=
//linux-stable_4.8.bb" rel=3D"noreferrer" target=3D"_blank">linux-stable_4.=
8.bb</a>)-
            everything ok.<br>
            I&#39;m trying to upgrade to 4.14, I created a new recipe <a hr=
ef=3D"http://linux-stable_4.14.bb" rel=3D"noreferrer" target=3D"_blank">lin=
ux-stable_4.14.bb</a>.
            They live side by side, for now.<br>
            But with the 4.14 kernel when running `bitbake -c menuconfig
            linux-stable`, the new terminal comes up and I get the
            following error:<br>
            <br>
            =C2=A0 HOSTCC=C2=A0 scripts/basic/fixdep<br>
            =C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 ./Makefile<br>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/mconf.o<br>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o<br>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/check<wbr>list.o<b=
r>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/util.<wbr>o<br>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/input<wbr>box.o<br=
>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/textb<wbr>ox.o<br>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/yesno<wbr>.o<br>
            =C2=A0 HOSTCC=C2=A0 scripts/kconfig/lxdialog/menub<wbr>ox.o<br>
            =C2=A0 HOSTLD=C2=A0 scripts/kconfig/mconf<br>
            /usr/bin/ld: cannot find -lncursesw<br>
            collect2: error: ld returned 1 exit status<br>
            scripts/Makefile.host:111: recipe for target
            &#39;scripts/kconfig/mconf&#39; failed<br>
            make[3]: *** [scripts/kconfig/mconf] Error 1<br>
            /media/mircea/ExtLinux/Adventu<wbr>re/testBuildServer/product-s=
am<wbr>a5-kernel/yocto/build/tmp/work<wbr>-shared/cuxe/kernel-source/<wbr>M=
akefile:548:
            recipe for target &#39;menuconfig&#39; failed<br>
            make[2]: *** [menuconfig] Error 2<br>
            Makefile:146: recipe for target &#39;sub-make&#39; failed<br>
            make[1]: *** [sub-make] Error 2<br>
            Makefile:24: recipe for target &#39;__sub-make&#39; failed<br>
            make: *** [__sub-make] Error 2<br>
            Command failed.<br>
            <br>
            <br>
            If I rename <a href=3D"http://linux-stable_4.14.bb" rel=3D"nore=
ferrer" target=3D"_blank">linux-stable_4.14.bb</a>
            to linux-stable_4.14.bb___, then run bitbake again (now the
            build system is working with the 4.8 kernel again) =3D&gt;
            menuconfig starts and works as expected.<br>
            <br>
            I&#39;m using krogoth, 2.1.2, Debian 8 (jessie)<br>
            <br>
            I also tried to config the kernel outside of yocto,
            downloaded <a href=3D"https://cdn.kernel.org/pub/linux/kernel/v=
4.x/linux-4.14.4.tar.xz" rel=3D"noreferrer" target=3D"_blank">https://cdn.k=
ernel.org/pub/lin<wbr>ux/kernel/v4.x/linux-4.14.4.ta<wbr>r.xz</a>,
            extracted and run make menuconfig =3D&gt; works as expected<br>
            <br>
            Any hints are appreciated.<br>
            <br>
            Thanks<span class=3D"m_2413360481872567206HOEnZb"><font color=
=3D"#888888"><br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
                <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/lis=
tinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>

--f403045ea6a4b16c7d055fad925c--
