Return-Path: <elazarl@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 502EEE007E8; Thu, 17 Nov 2016 09:28:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (elazarl[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB02EE004E5
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 09:27:58 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id g23so23399783wme.1
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 09:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ArivO7VHiHugLBMTyAtRVTDacaZPS1ePfW1ISpn4VXo=;
	b=nbKEYrv6oC32RpLOQde3xYop5dfWPXs1lfRvafio2f9uxrIrD+1+EEFHH0I9g8RSAa
	IDTtuU+LKQV4syRIIKsLWsi1QwP2wTOslx2vTtsVwq4h5HkRbEUTh8RuoLbZThkswJon
	QGu8RNqwu0hWVXoA7zRZBBgsSdgXq49YC2R97gPre8Use611BOiHU4frkoGS7eHaIuxt
	ECHn+aSo2y84pLuVTmtg6LAwakdfnj8pQrDtMXt8NFFlMuZ6Rjniur0K4Igc0Db2o0Uo
	XbwoDJUvwwUB8oL6BSJAo/jBHXsRm3bMeyDHo+9a1femQEiZ6QXAP40WUtDH3nGT8j3V
	VxBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ArivO7VHiHugLBMTyAtRVTDacaZPS1ePfW1ISpn4VXo=;
	b=JECP+aSuKG46Ls47FMNI9UflNe1DNE3wc/m6HMBX7vayEfB7Fmo5pg8AJaY3u3iLwE
	r0+Wcq66l7CWljSXQ/T8zxB77JxajADtNyZIXw8/N+6E/AgHqE/H9/yiPh4JMVlYTUSD
	9Gr7oAQpdMWhthM4sDl/3pRYiEkyyWYVIvvdtKAzBCy2OSs0Di4fdeqOGiCFVaZwuZ1M
	Iy1U0h6u5OzhRhFUonPM4RXA8jzi3t1tA8sC4GEL+UVhE6iHvDUYkRq8UxIevuDHSsGC
	OFZw6lRR2H4fv92t7aVk4HuA68LQ2MuB0vafRMFuWANgvejkp4vaPIU30S2MLv3Oc66a
	uk3g==
X-Gm-Message-State: AKaTC03HHyqo23B+9zY0bn+xVyQWsu21QJS0HLxXm/uhJm9V8bjqNx/yFivp4b7bVR53Q3FZBHRDAyRyQr7D5Q==
X-Received: by 10.46.33.169 with SMTP id h41mr2044564lji.52.1479403677468;
	Thu, 17 Nov 2016 09:27:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.114.174.74 with HTTP; Thu, 17 Nov 2016 09:27:56 -0800 (PST)
In-Reply-To: <2e4225b6-42ed-26f4-d158-75c96214d98f@gmail.com>
References: <CAHNTFm+FxmRv5OOf9geKdQ_hPfzcoi-chviAWDmy1jK_aDTHnQ@mail.gmail.com>
	<2e4225b6-42ed-26f4-d158-75c96214d98f@gmail.com>
From: Elazar Leibovich <elazarl@gmail.com>
Date: Thu, 17 Nov 2016 19:27:56 +0200
Message-ID: <CAHNTFmLF531v9bQaDpo0dXxCNftq9PO_Ovmwd8yUWSiR7wVSsg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: undefined references to `__dso_handle'
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
X-List-Received-Date: Thu, 17 Nov 2016 17:28:06 -0000
Content-Type: multipart/alternative; boundary=001a1142bf72accbe705418282f7

--001a1142bf72accbe705418282f7
Content-Type: text/plain; charset=UTF-8

As far as I  know, no customization, I didn't even switch GCC's version. I
installed clang alongside gcc, but didn't change the default.

Can you refer me to what you have in mind that might be customized, and
I'll check?

On Thu, Nov 17, 2016 at 7:23 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 11/16/16 2:05 AM, Elazar Leibovich wrote:
> > Hi,
> >
> > I followed the quickstart tutorial, branch morty, to create the most
> basic
> > image on local QEMU, and I got compilation errors for __dso_handle
> missing.
> > I'm using ubuntu 16.
> > Here is an example output:
> > ++ -nostdlib++  -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib
> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/
> lib/crti.o
> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/
> lib/arm-poky-linux-gnueabi/6.2.0/crtbeginS.o
> >  .libs/compatibility.o .libs/compatibility-debug_list.o
> > .libs/compatibility-debug_list-2.o .libs/compatibility-c++0x.o
> > .libs/compatibility-atomic-c++0x.o .libs/compatibility-thread-c++0x.o
> > .libs/compatibility-chrono.o .libs/compatibility-condvar.o
> >  -Wl,--whole-archive ../libsupc++/.libs/libsupc++convenience.a
> > ../src/c++98/.libs/libc++98convenience.a
> > ../src/c++11/.libs/libc++11convenience.a -Wl,--no-whole-archive  -lm
> > -L/media/elazar/788854CC88548B10/poky/build/
> tmp/sysroots/x86_64-linux/usr/lib/arm-poky-linux-gnueabi/
> gcc/arm-poky-linux-gnueabi/6.2.0
> > -L/media/elazar/788854CC88548B10/poky/build/
> tmp/sysroots/raspberrypi3/lib
> > -L/media/elazar/788854CC88548B10/poky/build/
> tmp/sysroots/raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0
> > -L/media/elazar/788854CC88548B10/poky/build/
> tmp/sysroots/raspberrypi3/usr/lib
> > -lc -lgcc_s
> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/
> lib/arm-poky-linux-gnueabi/6.2.0/crtendS.o
> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr/
> lib/crtn.o
> >  -march=armv7ve -marm -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7
> > -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=gnu
> > -Wl,--as-needed -Wl,--version-script=libstdc++-symbols.ver   -Wl,-soname
> > -Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22
> > | .libs/compatibility-c++0x.o: In function
> > `__static_initialization_and_destruction_0':
> > |
> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-
> poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-
> gnueabi/libstdc++-v3/src/../../../../../../../../../work-
> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/
> compatibility-c++0x.cc:215:
> > undefined reference to `__dso_handle'
> > | ../src/c++11/.libs/libc++11convenience.a(system_error.o): In function
> > `__static_initialization_and_destruction_0':
> > |
> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-
> poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-
> gnueabi/libstdc++-v3/src/c++11/../../../../../../../../../
> ../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++
> 11/system_error.cc:71:
> > undefined reference to `__dso_handle'
> > | ../src/c++98/.libs/libc++98convenience.a(mt_allocator.o): In function
> > `get_freelist':
> > |
> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-
> poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-
> gnueabi/libstdc++-v3/src/c++98/../../../../../../../../../
> ../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++
> 98/mt_allocator.cc:64:
> > undefined reference to `__dso_handle'
> > | ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In function
> > `std::get_catalogs()':
> > |
> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-
> poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-
> gnueabi/libstdc++-v3/src/c++98/c++locale.cc:251:
> > undefined reference to `__dso_handle'
> > | ../src/c++11/.libs/libc++11convenience.a(condition_variable.o): In
> function
> > `key_init':
> > |
> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-
> poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-
> gnueabi/libstdc++-v3/src/c++11/../../../../../../../../../
> ../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++
> 11/condition_variable.cc:133:
> > undefined reference to `__dso_handle'
> > |
> > ../src/c++11/.libs/libc++11convenience.a(future.o):/
> usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-
> linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-
> gnueabi/libstdc++-v3/src/c++11/../../../../../../../../../
> ../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/future.cc:64:
> > more undefined references to `__dso_handle' follow
> > | collect2: error: ld returned 1 exit status
> >
> > I'll be happy for help, haven't found similar error when searching the
> web
>
> is it pristine ubuntu 16.04 or do you have any customization, new packages
> etc
> installed on top
>
> >
> >
>
>

--001a1142bf72accbe705418282f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As far as I =C2=A0know, no customization, I didn&#39;t eve=
n switch GCC&#39;s version. I installed clang alongside gcc, but didn&#39;t=
 change the default.<div><br></div><div>Can you refer me to what you have i=
n mind that might be customized, and I&#39;ll check?=C2=A0</div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Nov 17, 2016 a=
t 7:23 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.=
com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 11/16/16 2:05 AM, Elazar Leibovich wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I followed the quickstart tutorial, branch morty, to create the most b=
asic<br>
&gt; image on local QEMU, and I got compilation errors for __dso_handle mis=
sing.<br>
&gt; I&#39;m using ubuntu 16.<br>
&gt; Here is an example output:<br>
&gt; ++ -nostdlib++=C2=A0 -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib<b=
r>
&gt; /media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/raspb=
errypi3/usr/<wbr>lib/crti.o<br>
&gt; /media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/raspb=
errypi3/usr/<wbr>lib/arm-poky-linux-gnueabi/6.<wbr>2.0/crtbeginS.o<br>
&gt;=C2=A0 .libs/compatibility.o .libs/compatibility-debug_<wbr>list.o<br>
&gt; .libs/compatibility-debug_<wbr>list-2.o .libs/compatibility-c++0x.o<br=
>
&gt; .libs/compatibility-atomic-c++<wbr>0x.o .libs/compatibility-thread-c++=
<wbr>0x.o<br>
&gt; .libs/compatibility-chrono.o .libs/compatibility-condvar.o<br>
&gt;=C2=A0 -Wl,--whole-archive ../libsupc++/.libs/libsupc++<wbr>convenience=
.a<br>
&gt; ../src/c++98/.libs/libc++<wbr>98convenience.a<br>
&gt; ../src/c++11/.libs/libc++<wbr>11convenience.a -Wl,--no-whole-archive=
=C2=A0 -lm<br>
&gt; -L/media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/x86=
_64-linux/usr/<wbr>lib/arm-poky-linux-gnueabi/<wbr>gcc/arm-poky-linux-gnuea=
bi/6.<wbr>2.0<br>
&gt; -L/media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/ras=
pberrypi3/lib<br>
&gt; -L/media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/ras=
pberrypi3/usr/<wbr>lib/arm-poky-linux-gnueabi/6.<wbr>2.0<br>
&gt; -L/media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/ras=
pberrypi3/usr/<wbr>lib<br>
&gt; -lc -lgcc_s<br>
&gt; /media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/raspb=
errypi3/usr/<wbr>lib/arm-poky-linux-gnueabi/6.<wbr>2.0/crtendS.o<br>
&gt; /media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/raspb=
errypi3/usr/<wbr>lib/crtn.o<br>
&gt;=C2=A0 -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mc=
pu=3Dcortex-a7<br>
&gt; -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=3D=
gnu<br>
&gt; -Wl,--as-needed -Wl,--version-script=3Dlibstdc++<wbr>-symbols.ver=C2=
=A0 =C2=A0-Wl,-soname<br>
&gt; -Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22<br>
&gt; | .libs/compatibility-c++0x.o: In function<br>
&gt; `__static_initialization_and_<wbr>destruction_0&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky=
-linux-gnueabi.arm-poky-<wbr>linux-gnueabi/arm-poky-linux-<wbr>gnueabi/libs=
tdc++-v3/src/../..<wbr>/../../../../../../../work-<wbr>shared/gcc-6.2.0-r0/=
gcc-6.2.0/<wbr>libstdc++-v3/src/c++11/<wbr>compatibility-c++0x.cc:215:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++11/.libs/libc++<wbr>11convenience.a(system_error.<wbr>o): =
In function<br>
&gt; `__static_initialization_and_<wbr>destruction_0&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky=
-linux-gnueabi.arm-poky-<wbr>linux-gnueabi/arm-poky-linux-<wbr>gnueabi/libs=
tdc++-v3/src/c++<wbr>11/../../../../../../../../../<wbr>../work-shared/gcc-=
6.2.0-r0/<wbr>gcc-6.2.0/libstdc++-v3/src/c++<wbr>11/system_error.cc:71:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++98/.libs/libc++<wbr>98convenience.a(mt_allocator.<wbr>o): =
In function<br>
&gt; `get_freelist&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky=
-linux-gnueabi.arm-poky-<wbr>linux-gnueabi/arm-poky-linux-<wbr>gnueabi/libs=
tdc++-v3/src/c++<wbr>98/../../../../../../../../../<wbr>../work-shared/gcc-=
6.2.0-r0/<wbr>gcc-6.2.0/libstdc++-v3/src/c++<wbr>98/mt_allocator.cc:64:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++98/.libs/libc++<wbr>98convenience.a(c++locale.o): In funct=
ion<br>
&gt; `std::get_catalogs()&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky=
-linux-gnueabi.arm-poky-<wbr>linux-gnueabi/arm-poky-linux-<wbr>gnueabi/libs=
tdc++-v3/src/c++<wbr>98/c++locale.cc:251:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++11/.libs/libc++<wbr>11convenience.a(condition_<wbr>variabl=
e.o): In function<br>
&gt; `key_init&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky=
-linux-gnueabi.arm-poky-<wbr>linux-gnueabi/arm-poky-linux-<wbr>gnueabi/libs=
tdc++-v3/src/c++<wbr>11/../../../../../../../../../<wbr>../work-shared/gcc-=
6.2.0-r0/<wbr>gcc-6.2.0/libstdc++-v3/src/c++<wbr>11/condition_variable.cc:1=
33:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; |<br>
&gt; ../src/c++11/.libs/libc++<wbr>11convenience.a(future.o):/<wbr>usr/src/=
debug/gcc-runtime/6.2.<wbr>0-r0/gcc-6.2.0/build.arm-poky-<wbr>linux-gnueabi=
.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-<wbr>gnueabi/libstdc++-v3/src/c=
++<wbr>11/../../../../../../../../../<wbr>../work-shared/gcc-6.2.0-r0/<wbr>=
gcc-6.2.0/libstdc++-v3/src/c++<wbr>11/future.cc:64:<br>
&gt; more undefined references to `__dso_handle&#39; follow<br>
&gt; | collect2: error: ld returned 1 exit status<br>
&gt;<br>
&gt; I&#39;ll be happy for help, haven&#39;t found similar error when searc=
hing the web<br>
<br>
</div></div>is it pristine ubuntu 16.04 or do you have any customization, n=
ew packages etc<br>
installed on top<br>
<br>
&gt;<br>
&gt;<br>
<br>
</blockquote></div><br></div>

--001a1142bf72accbe705418282f7--
