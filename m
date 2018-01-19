Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A41FE00DF1; Thu, 18 Jan 2018 17:36:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_10_20,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E424E00D6A
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 17:36:09 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id e2so398643qti.0
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 17:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IzODjsUIh+FosJ2LOQZyzaavT3D3DIrDrCvWzLDFueY=;
	b=bdGQDfjTem83xogA36RDzPlR0x4aArUbduXSd1Z0lx7FMncup3u37s4BMK3kmUdLaC
	q5Vv6AbYfdMDlcOOnrH+z3xfeLBfOR4q6FSTBZskx0s8koq7AOCExE9EuCTwTCI0XopP
	1m3SqUTtVtpM4qtOUVEcCWVrRa9sYIhyT34KUzglT9tbkbhqJJrYTmsP4Y61QbnAxSNj
	Jzyqdi9XkU53cJJAx5IaiyVNS4ha7L0AUYcfleo5txZ5qTLVZEcWTVkH8DOY1G8NPo+D
	lsF4OOzESOGo7XUwkpaaxIAyEGHltZSxeX+xdfeD9PcGkM3MjP9s68DKHxkgRh2XCAvm
	Nrdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IzODjsUIh+FosJ2LOQZyzaavT3D3DIrDrCvWzLDFueY=;
	b=HCv2pcclzhUPFEGdFYgkrAwhvKQIdbOzytvYW6DxATrZesCk/M5UxN9YPBLqyZPXtJ
	xC55D0uPLbNoAh/1LsADXpluwZ69usQwYhiSgafDRs9/3wJiqM7H6RbzjpxufHQjGobA
	yUjQoJA7xEqZDpK+b/thsjy4HjXoTFizIyqvekXmXheu8aFIwHVljNzzvaJAoXq2EFNo
	ELfRocpExFXZVFTrhIaLvz5lu76MRSyxtXQTqxc0FhEKMdPhSTuwBKi/6r22Het3RNlz
	eMMGDHuk0NgSG6sLpsGW+g/5rtv2qwMGhaZqZfhcatBMXqGfnWWgy/YVLtVHjK5TMEUk
	uIpg==
X-Gm-Message-State: AKwxytelRMg9oAqxU+Ub6t+PivmkkY+RIoX2toWjx0eQBLVJix3UcYSb
	fpPpwCRRLp65uMt+vWiqx6e02RQZwEvf6+4QVpt6UA==
X-Google-Smtp-Source: ACJfBotaAyPmj2vPSxtGwf6t0vdJ/CStvGR208itXgSUNj7Q7ILijEZoMxwR2yGe5h8HHl6KYgsD8BOsI3jGpxJSll8=
X-Received: by 10.200.49.231 with SMTP id i36mr31527384qte.116.1516325768520; 
	Thu, 18 Jan 2018 17:36:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.35.45 with HTTP; Thu, 18 Jan 2018 17:35:28 -0800 (PST)
In-Reply-To: <CAHUNapSN3-xrYgtFfP0zbojgUSJnGbsNeg58uFYc0Gi9YZZ1Kg@mail.gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAHUNapTu4HeiwwdHLFcyNpQV2+F5gw2oQWZWCcSiqLy47hHuyQ@mail.gmail.com>
	<CALXw4G6g+OPJPMrCZbdXYi+fU2CgV=z8ZUdGhH6z6+__hNJ9iw@mail.gmail.com>
	<CAHUNapSN3-xrYgtFfP0zbojgUSJnGbsNeg58uFYc0Gi9YZZ1Kg@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
Date: Thu, 18 Jan 2018 19:35:28 -0600
Message-ID: <CALXw4G4dg=wemfsr0i9Vf0TreWFDudhb6uC0O3U6MoxdgLLaPQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 19 Jan 2018 01:36:10 -0000
Content-Type: multipart/alternative; boundary="001a11477420cbfdec0563171aeb"

--001a11477420cbfdec0563171aeb
Content-Type: text/plain; charset="UTF-8"

Thanks Trevor - going in the right direction. There are no "GL" includes or
libs in the recipe sysroot becuase userland does not provide it. Adding
mesa-gl to DEPENDS allows it to complete. Not sure if this is the correct
solution though.

Michael Gloff

On Thu, Jan 18, 2018 at 2:48 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Thu, Jan 18, 2018 at 10:05 AM, Michael Gloff <mgloff@emacinc.com>
> wrote:
>
>> I can confirm adding #include <X11/Xlib.h> to test/egl_common.c gets past
>> the original error, but then fails with:
>>
>>
> thank you for checking :-)
>
>
>>
>>
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | [1/2] Compiling c object 'test/glx_beginend@exe/glx_beginend.c.o'
>> | [2/2] Linking target test/glx_beginend
>> | FAILED: test/glx_beginend
>> | arm-poky-linux-gnueabi-gcc  -o test/glx_beginend 'test/glx_beginend@exe
>> /glx_beginend.c.o' '-Wl,--no-undefined' '-Wl,--as-needed' '-O2' '-pipe'
>> '-g' '-feliminate-unused-debug-types' '-fdebug-prefix-map=/home/mich
>> ael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-
>> poky-linux-gnueabi/libepoxy/1.4.3-r0=/usr/src/debug/libepoxy/1.4.3-r0'
>> '-fdebug-prefix-map=/home/michael/oe/recipes/rpi-build/tmp/
>> work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot-native='
>> '-fdebug-prefix-map=/home/michael/oe/recipes/rpi-build/tmp/
>> work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot='
>> '-Wl,-O1' '-Wl,--hash-style=gnu' '-Wl,--as-needed' 'test/libglx_common.a'
>> 'src/libepoxy.so.0.0.0' 'src/libepoxy.so.0.0.0' 'src/libepoxy.so.0.0.0'
>> '-ldl' '-lX11' '-ldl' '-Wl,-rpath,/home/michael/oe/r
>> ecipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-
>> gnueabi/libepoxy/1.4.3-r0/build/src' -march=armv7ve -marm
>> -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7
>> --sysroot=/home/michael/oe/recipes/rpi-build/tmp/work/cortex
>> a7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot
>> -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
>> | test/glx_beginend@exe/glx_beginend.c.o: In function
>> `test_without_epoxy':
>> | /usr/src/debug/libepoxy/1.4.3-r0/libepoxy-1.4.3/test/glx_beginend.c:70:
>> undefined reference to `glBegin'
>> | /usr/src/debug/libepoxy/1.4.3-r0/libepoxy-1.4.3/test/glx_beginend.c:85:
>> undefined reference to `glEnd'
>> | collect2: error: ld returned 1 exit status
>> | ninja: build stopped: subcommand failed.
>> | WARNING: /home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-
>> vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/temp/run.do_compile.2610:1
>> exit 1 from 'ninja -j 8'
>> | ERROR: Function failed: do_compile (log file is located at
>> /home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-
>> vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/temp/log.do_compile.2610)
>> ERROR: Task (/home/michael/oe/recipes/poky/meta/recipes-graphics/libepox
>> y/libepoxy_1.4.3.bb:do_compile) failed with exit code '1'
>>
>>
> that suggests a missing #include <GL/gl.h>
>

--001a11477420cbfdec0563171aeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Trevor - going in the right direction. There a=
re no &quot;GL&quot; includes or libs in the recipe sysroot becuase userlan=
d does not provide it. Adding mesa-gl to DEPENDS allows it to complete. Not=
 sure if this is the correct solution though.<br><br></div>Michael Gloff<br=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Ja=
n 18, 2018 at 2:48 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"mail=
to:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">On Thu, Jan 18, 2=
018 at 10:05 AM, Michael Gloff <span dir=3D"ltr">&lt;<a href=3D"mailto:mglo=
ff@emacinc.com" target=3D"_blank">mgloff@emacinc.com</a>&gt;</span> wrote:<=
br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div>I can confirm adding #include &lt;X11/X=
lib.h&gt; to test/egl_common.c gets past the original error, but then fails=
 with:<br><br></div></div></blockquote><div><br></div><div>thank you for ch=
ecking :-)<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br><di=
v dir=3D"ltr"><div><br>Log data follows:<br>| DEBUG: Executing shell functi=
on do_compile<br>| [1/2] Compiling c object &#39;test/glx_beginend@exe/glx_=
beg<wbr>inend.c.o&#39;<br>| [2/2] Linking target test/glx_beginend<br>| FAI=
LED: test/glx_beginend<br>| arm-poky-linux-gnueabi-gcc=C2=A0 -o test/glx_be=
ginend &#39;test/glx_beginend@exe/glx_beg<wbr>inend.c.o&#39; &#39;-Wl,--no-=
undefined&#39; &#39;-Wl,--as-needed&#39; &#39;-O2&#39; &#39;-pipe&#39; &#39=
;-g&#39; &#39;-feliminate-unused-debug-type<wbr>s&#39; &#39;-fdebug-prefix-=
map=3D/home/mich<wbr>ael/oe/recipes/rpi-build/tmp/<wbr>work/cortexa7hf-neon=
-vfpv4-<wbr>poky-linux-gnueabi/libepoxy/1.<wbr>4.3-r0=3D/usr/src/debug/<wbr=
>libepoxy/1.4.3-r0&#39; &#39;-fdebug-prefix-map=3D/home/mich<wbr>ael/oe/rec=
ipes/rpi-build/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/=
libepoxy/1.<wbr>4.3-r0/recipe-sysroot-native=3D&#39; &#39;-fdebug-prefix-ma=
p=3D/home/mich<wbr>ael/oe/recipes/rpi-build/tmp/<wbr>work/cortexa7hf-neon-v=
fpv4-<wbr>poky-linux-gnueabi/libepoxy/1.<wbr>4.3-r0/recipe-sysroot=3D&#39; =
&#39;-Wl,-O1&#39; &#39;-Wl,--hash-style=3Dgnu&#39; &#39;-Wl,--as-needed&#39=
; &#39;test/libglx_common.a&#39; &#39;src/libepoxy.so.0.0.0&#39; &#39;src/l=
ibepoxy.so.0.0.0&#39; &#39;src/libepoxy.so.0.0.0&#39; &#39;-ldl&#39; &#39;-=
lX11&#39; &#39;-ldl&#39; &#39;-Wl,-rpath,/home/michael/oe/r<wbr>ecipes/rpi-=
build/tmp/work/cort<wbr>exa7hf-neon-vfpv4-poky-linux-<wbr>gnueabi/libepoxy/=
1.4.3-r0/<wbr>build/src&#39; -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfl=
oat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/michael/oe/rec<wbr>ipes/=
rpi-build/tmp/work/cortex<wbr>a7hf-neon-vfpv4-poky-linux-<wbr>gnueabi/libep=
oxy/1.4.3-r0/<wbr>recipe-sysroot -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded<br>| test/glx_beginend@exe/glx_begi<wbr>nend.c.o: In function `test_wi=
thout_epoxy&#39;:<br>| /usr/src/debug/libepoxy/1.4.3-<wbr>r0/libepoxy-1.4.3=
/test/glx_beg<wbr>inend.c:70: undefined reference to `glBegin&#39;<br>| /us=
r/src/debug/libepoxy/1.4.3-<wbr>r0/libepoxy-1.4.3/test/glx_beg<wbr>inend.c:=
85: undefined reference to `glEnd&#39;<br>| collect2: error: ld returned 1 =
exit status<br>| ninja: build stopped: subcommand failed.<br>| WARNING: /ho=
me/michael/oe/recipes/rpi-b<wbr>uild/tmp/work/cortexa7hf-neon-<wbr>vfpv4-po=
ky-linux-gnueabi/libep<wbr>oxy/1.4.3-r0/temp/run.do_compi<wbr>le.2610:1 exi=
t 1 from &#39;ninja -j 8&#39;<br>| ERROR: Function failed: do_compile (log =
file is located at /home/michael/oe/recipes/rpi-b<wbr>uild/tmp/work/cortexa=
7hf-neon-<wbr>vfpv4-poky-linux-gnueabi/libep<wbr>oxy/1.4.3-r0/temp/log.do_c=
ompi<wbr>le.2610)<br>ERROR: Task (/home/michael/oe/recipes/poky<wbr>/meta/r=
ecipes-graphics/libepox<wbr>y/libepoxy_1.4.3.bb:do_compile<wbr>) failed wit=
h exit code &#39;1&#39;<span class=3D"m_-3816787935602462324HOEnZb"><font c=
olor=3D"#888888"><br><br></font></span></div></div></blockquote><div><br></=
div><div>that suggests a missing #include &lt;GL/gl.h&gt; <br></div></div><=
/div></div>
</blockquote></div><br></div>

--001a11477420cbfdec0563171aeb--
