Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D35BAE00DC6; Thu, 18 Jan 2018 07:06:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB814E009E6
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 07:06:10 -0800 (PST)
Received: by mail-qt0-f196.google.com with SMTP id m59so30914908qte.11
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 07:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JbXa088ckkQygNQgmnRK2A2MvwSIVRaRv0+8DkhSoHs=;
	b=IVroNcpntVEBjjHpT0NWUc7FUACiItS9LjWa7dEPPhbrZQKauTSybqW1d5hd1R4/BG
	OMcdfOPsY/ZQmSNUHcqwRoeUP5PhSlq7vtSWhcoUckOtSfCVd2r5/fqWqrKjffiZRGHU
	zhw9l0Uy9NZr15jG5gIgvIw6+YrhYpDEbOsshl8abqOB+xZBAMs5bLBWngKmOC4XfRep
	sUaTNdoq5cFTFET6j8/OxDZwzy5n8AbiRIO0B2qkQaMrXavyKqGQL0eUes8QYfnS7gtl
	L47oBccRhCqjQ8HUhABV59TOdnFXzv3qlJNRMkcy+xI+Atxn16nj6YiFkpLOlSwpyj2R
	UTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JbXa088ckkQygNQgmnRK2A2MvwSIVRaRv0+8DkhSoHs=;
	b=FeV+00ZZTc44dStybwxGlrBZg66TGr+jxUbVSjRXstQGzeSpBKprI+pI8CigXrBspB
	CUe/AM/wBnqTa4RXnT2H+jFA9CkabQr+EeE/Ms+tERE1OS2vK8A9WuCL8g1ZZQTJ1+Mf
	o3xHhZcNeq8UtZuTi8oY4bYjaE5IFEG93UB8JefRnNiyPeF8itIgrSCzx14/x6pvd1nx
	5n/VehSyVP4e6xC6/0ZkbE1wD5CMZWulK6/spmqWFi8VXdjmR4B5tFPa/tcbRaMbQrtz
	ey/psKH6dKLZzfA/xWtWSiAMmLg3RJOuwkXzeMd5nnDcaZvLWt4/6he2ucaRLJjINvJR
	/bsw==
X-Gm-Message-State: AKwxytdfc+4emtpASNqt4QYzLGd3bBF4zKMX2BxauJHSiCwAiL4bPCwJ
	4PT7PWEIGHA3+7oloaJrtCC9hSIUCT8TMBCeWzw7BA==
X-Google-Smtp-Source: ACJfBoukb9/AJ26AgKQlit9AJCrARNWBlRhJp5wGYRAkFV3Cjicbqsf7QaiD1cBkPffJ53fgWIHdG48nvYZKdtwCpUA=
X-Received: by 10.200.18.136 with SMTP id y8mr33757714qti.175.1516287969707;
	Thu, 18 Jan 2018 07:06:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.6.141 with HTTP; Thu, 18 Jan 2018 07:05:29 -0800 (PST)
In-Reply-To: <CAHUNapTu4HeiwwdHLFcyNpQV2+F5gw2oQWZWCcSiqLy47hHuyQ@mail.gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAHUNapTu4HeiwwdHLFcyNpQV2+F5gw2oQWZWCcSiqLy47hHuyQ@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
Date: Thu, 18 Jan 2018 09:05:29 -0600
Message-ID: <CALXw4G6g+OPJPMrCZbdXYi+fU2CgV=z8ZUdGhH6z6+__hNJ9iw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 15:06:11 -0000
Content-Type: multipart/alternative; boundary="089e08289ffccfe2fa05630e4d6c"

--089e08289ffccfe2fa05630e4d6c
Content-Type: text/plain; charset="UTF-8"

I can confirm adding #include <X11/Xlib.h> to test/egl_common.c gets past
the original error, but then fails with:


Log data follows:
| DEBUG: Executing shell function do_compile
| [1/2] Compiling c object 'test/glx_beginend@exe/glx_beginend.c.o'
| [2/2] Linking target test/glx_beginend
| FAILED: test/glx_beginend
| arm-poky-linux-gnueabi-gcc  -o test/glx_beginend
'test/glx_beginend@exe/glx_beginend.c.o'
'-Wl,--no-undefined' '-Wl,--as-needed' '-O2' '-pipe' '-g'
'-feliminate-unused-debug-types'
'-fdebug-prefix-map=/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0=/usr/src/debug/libepoxy/1.4.3-r0'
'-fdebug-prefix-map=/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot-native='
'-fdebug-prefix-map=/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot='
'-Wl,-O1' '-Wl,--hash-style=gnu' '-Wl,--as-needed' 'test/libglx_common.a'
'src/libepoxy.so.0.0.0' 'src/libepoxy.so.0.0.0' 'src/libepoxy.so.0.0.0'
'-ldl' '-lX11' '-ldl'
'-Wl,-rpath,/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/build/src'
-march=armv7ve -marm -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
| test/glx_beginend@exe/glx_beginend.c.o: In function `test_without_epoxy':
| /usr/src/debug/libepoxy/1.4.3-r0/libepoxy-1.4.3/test/glx_beginend.c:70:
undefined reference to `glBegin'
| /usr/src/debug/libepoxy/1.4.3-r0/libepoxy-1.4.3/test/glx_beginend.c:85:
undefined reference to `glEnd'
| collect2: error: ld returned 1 exit status
| ninja: build stopped: subcommand failed.
| WARNING:
/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/temp/run.do_compile.2610:1
exit 1 from 'ninja -j 8'
| ERROR: Function failed: do_compile (log file is located at
/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/temp/log.do_compile.2610)
ERROR: Task
(/home/michael/oe/recipes/poky/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb:do_compile)
failed with exit code '1'

Michael Gloff


On Thu, Jan 18, 2018 at 8:08 AM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Thu, Jan 18, 2018 at 4:05 AM, Alexander Kanavin <
> alexander.kanavin@linux.intel.com> wrote:
>
>> On 01/18/2018 10:58 AM, Andrea Galbusera wrote:
>>
>>>
>>> Looks like my first guess was not that bad. Reverting below commit,
>>> which switched to meson build system brought my build back to green.
>>> Also CC-ing the patch author who might suggest further investigations.
>>>
>>>      libepoxy: convert to meson build
>>>
>>>
>> There's probably a missing header include
>>
>>
>
> The original error:
>
>
> ../libepoxy-1.4.3/test/egl_common.c:36:20: error: implicit declaration of function 'XOpenDisplay'; did you mean 'eglGetDisplay'? [-Werror=implicit-function-declaration]
>      Display *dpy = XOpenDisplay(NULL);
>
> implies a missing #include <X11/Xlib.h>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e08289ffccfe2fa05630e4d6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I can confirm adding #include &lt;X11/Xlib.h&gt; to t=
est/egl_common.c gets past the original error, but then fails with:<br><br>=
<br>Log data follows:<br>| DEBUG: Executing shell function do_compile<br>| =
[1/2] Compiling c object &#39;test/glx_beginend@exe/glx_beginend.c.o&#39;<b=
r>| [2/2] Linking target test/glx_beginend<br>| FAILED: test/glx_beginend<b=
r>| arm-poky-linux-gnueabi-gcc=C2=A0 -o test/glx_beginend &#39;test/glx_beg=
inend@exe/glx_beginend.c.o&#39; &#39;-Wl,--no-undefined&#39; &#39;-Wl,--as-=
needed&#39; &#39;-O2&#39; &#39;-pipe&#39; &#39;-g&#39; &#39;-feliminate-unu=
sed-debug-types&#39; &#39;-fdebug-prefix-map=3D/home/michael/oe/recipes/rpi=
-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0=
=3D/usr/src/debug/libepoxy/1.4.3-r0&#39; &#39;-fdebug-prefix-map=3D/home/mi=
chael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueab=
i/libepoxy/1.4.3-r0/recipe-sysroot-native=3D&#39; &#39;-fdebug-prefix-map=
=3D/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-l=
inux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot=3D&#39; &#39;-Wl,-O1&#39; &#3=
9;-Wl,--hash-style=3Dgnu&#39; &#39;-Wl,--as-needed&#39; &#39;test/libglx_co=
mmon.a&#39; &#39;src/libepoxy.so.0.0.0&#39; &#39;src/libepoxy.so.0.0.0&#39;=
 &#39;src/libepoxy.so.0.0.0&#39; &#39;-ldl&#39; &#39;-lX11&#39; &#39;-ldl&#=
39; &#39;-Wl,-rpath,/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-=
neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/build/src&#39; -march=3Darm=
v7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroo=
t=3D/home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-=
linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot -Wl,-O1 -Wl,--hash-style=3Dg=
nu -Wl,--as-needed<br>| test/glx_beginend@exe/glx_beginend.c.o: In function=
 `test_without_epoxy&#39;:<br>| /usr/src/debug/libepoxy/1.4.3-r0/libepoxy-1=
.4.3/test/glx_beginend.c:70: undefined reference to `glBegin&#39;<br>| /usr=
/src/debug/libepoxy/1.4.3-r0/libepoxy-1.4.3/test/glx_beginend.c:85: undefin=
ed reference to `glEnd&#39;<br>| collect2: error: ld returned 1 exit status=
<br>| ninja: build stopped: subcommand failed.<br>| WARNING: /home/michael/=
oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libe=
poxy/1.4.3-r0/temp/run.do_compile.2610:1 exit 1 from &#39;ninja -j 8&#39;<b=
r>| ERROR: Function failed: do_compile (log file is located at /home/michae=
l/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/li=
bepoxy/1.4.3-r0/temp/log.do_compile.2610)<br>ERROR: Task (/home/michael/oe/=
recipes/poky/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb:do_compile) f=
ailed with exit code &#39;1&#39;<br><br></div>Michael Gloff<br><div><br></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, =
Jan 18, 2018 at 8:08 AM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"g=
mail_extra"><div class=3D"gmail_quote">On Thu, Jan 18, 2018 at 4:05 AM, Ale=
xander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@li=
nux.intel.com" target=3D"_blank">alexander.kanavin@linux.<wbr>intel.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><sp=
an class=3D"m_1427214448837679676gmail-">On 01/18/2018 10:58 AM, Andrea Gal=
busera wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"m_1=
427214448837679676gmail-">
<br>
Looks like my first guess was not that bad. Reverting below commit,<br>
which switched to meson build system brought my build back to green.<br>
Also CC-ing the patch author who might suggest further investigations.<br>
<br></span><span class=3D"m_1427214448837679676gmail-">
=C2=A0 =C2=A0 =C2=A0libepoxy: convert to meson build<br>
<br>
</span></blockquote>
<br>
There&#39;s probably a missing header include<br><br></blockquote><div><br>=
=C2=A0</div></div>The original error:<br><br></div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra"><pre style=3D"white-space:pre-wrap;=
font-variant-ligatures:normal">../libepoxy-1.4.3/test/egl_com<wbr>mon.c:36:=
20: error: implicit declaration of function &#39;XOpenDisplay&#39;; did you=
 mean &#39;eglGetDisplay&#39;? [-Werror=3Dimplicit-function-dec<wbr>laratio=
n]
     Display *dpy =3D XOpenDisplay(NULL);<br><br><font size=3D"2"><span sty=
le=3D"font-family:arial,helvetica,sans-serif">implies a missing #include &l=
t;X11/Xlib.h&gt;</span></font></pre></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--089e08289ffccfe2fa05630e4d6c--
