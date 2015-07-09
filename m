Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CD86E00A45; Thu,  9 Jul 2015 13:24:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39C5EE009D7
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 13:24:47 -0700 (PDT)
Received: by laar3 with SMTP id r3so253744168laa.0
	for <yocto@yoctoproject.org>; Thu, 09 Jul 2015 13:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=XIN6kNiEEvXUuzDCWfwEs/lZhpxAo7yM+EYfqYhrFDg=;
	b=LkeFbbCOE/2KV6awzjWGM68QvF/m3mlZkVI+hF6Ud7iLrwxjm4OZEPAfySkVofebjT
	J7AmLqtbrwPevRk8SZechFOvxGgMnl6OP3Su5GmY2CCsVBG9x3Wm4Iiu4fx8dXllQNIM
	M4NjM6uVWJ0YpavWXjxClPrywMm+d8a3Ad6IW01sJLaElv8eCHUJ3MEE56dk33XVWOT1
	0iBORJ2/wFs5FBKKigOmcWP5e8JpNKNgH57FWmNejN6uoqgJjPsu5yFGlm3hvcFNQx2b
	anW12LQWCiFpRt7RlX0rAlJJATeGMMRLqNmjoQQpc1Pdeha3vGRlfTOcPrqLYcB67HQz
	PcdA==
X-Gm-Message-State: ALoCoQkkZF1bue5Yr5fxiYbX7sk+RPeOCvsqSrHtbTEd6FtyC7prRNmNyVQNCS1v0DdXvI6bx1bR
X-Received: by 10.152.36.41 with SMTP id n9mr16579515laj.79.1436473485493;
	Thu, 09 Jul 2015 13:24:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.147.232 with HTTP; Thu, 9 Jul 2015 13:24:05 -0700 (PDT)
X-Originating-IP: [81.108.63.159]
In-Reply-To: <CAHiDW_GkQHOhqLKPg5+1uVZ0trBY3vfQDQEnkMrW58foFv_cpg@mail.gmail.com>
References: <674E4B49C1A61B4592185A7FB9B55276317002@post>
	<CAHiDW_GkQHOhqLKPg5+1uVZ0trBY3vfQDQEnkMrW58foFv_cpg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 9 Jul 2015 22:24:05 +0200
Message-ID: <CAK18fxGWe5Ym2424ro84r3oP1pehNDy=TmUcRxFsoXpFa49NcA@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?UTF-8?Q?Tobias_Bostr=C3=B6m?= <tobias.bostrom@tritech.se>
Subject: Re: [meta-raspberrypi] libepoxy do_configure fails
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
X-List-Received-Date: Thu, 09 Jul 2015 20:24:53 -0000
Content-Type: multipart/alternative; boundary=089e0158b608d51fa7051a770bd0

--089e0158b608d51fa7051a770bd0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 2, 2015 at 8:20 PM, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> On 2 July 2015 at 12:47, Tobias Bostr=C3=B6m <tobias.bostrom@tritech.se> =
wrote:
>
>>
>> Hello!
>>
>>  I'm currently trying to build the core-image-x11 for the raspberry
>> pi.However, when doing the task responsible for configuring libepoxy,
>> bitbake fails. The error message i get is "no package 'egl' found". Belo=
w
>> is parts error messages I received. Anyone got any ideas on what the
>> problem might be?
>>
>>  Best regards,
>> Tobias Bostr=C3=B6m
>>
>>  | checking whether -lc should be explicitly linked in... no
>>  | checking dynamic linker characteristics... GNU/Linux ld.so
>>  | checking how to hardcode library paths into programs... immediate
>>  | checking whether stripping libraries is possible... yes
>>  | checking if libtool supports shared libraries... yes
>>  | checking whether to build shared libraries... yes
>>  | checking whether to build static libraries... no
>>  | checking for special C compiler options needed for large files... no
>>  | checking for _FILE_OFFSET_BITS value needed for large files... 64
>>  | checking KHR/khrplatform.h usability... yes
>>  | checking KHR/khrplatform.h presence... yes
>>  | checking for KHR/khrplatform.h... yes
>>  | checking if arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -marm
>>  -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex=
-a7
>> --sysroot=3D/home/tobiasb/Development/build/tmp/sysroots/raspberrypi2
>> -std=3Dgnu99 supports -Wno-int-conversion... yes
>>  | checking for X11... yes
>>  | checking for EGL... no
>>  | configure: error: Package requirements (egl) were not met:
>>  |
>>  | No package 'egl' found
>>  |
>>  | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>  | installed software in a non-standard prefix.
>>  |
>>  | Alternatively, you may set the environment variables EGL_CFLAGS
>>  | and EGL_LIBS to avoid the need to call pkg-config.
>>
>
>
> libepoxy expects something to provide a 'egl.pc' pkg-config file, and
> apparently the virtual/egl provider on the raspberry ("userland") doesn't
> do that. That may be an optimistic expectation on epoxys part but it's no=
t
> alone: at least weston has as similar check.
>
> Upstream issue is here: https://github.com/raspberrypi/userland/issues/24=
5
> . It links to some pkg-config files that could be used in the userland
> recipe in the meanwhile.
>
>
>

I remember  seeing some patches in the past which addressed these pc files.
Unfortunately we lost these patches with our gerrit transition. Would you
be able to push patches for this? (hint:
https://github.com/heiher/raspberrypi-firmware-pkgconfig/tree/master/pkgcon=
fig
)

--
Andrei Gherzan

--089e0158b608d51fa7051a770bd0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jul 2, 2015 at 8:20 PM, Jussi Kukkonen <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204=
,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><div><div>On 2 July 2015 at 12:=
47, Tobias Bostr=C3=B6m <span dir=3D"ltr">&lt;<a href=3D"mailto:tobias.bost=
rom@tritech.se" target=3D"_blank">tobias.bostrom@tritech.se</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">




<div>
<div>
<p></p>
</div>
<br>
<div style=3D"direction:ltr;font-family:Tahoma;color:rgb(0,0,0);font-size:1=
0pt">Hello!
<div><br>
</div>
<div>I&#39;m currently trying to build the core-image-x11 for the raspberry=
 pi.However, when doing the task responsible for configuring libepoxy, bitb=
ake fails. The error message i get is &quot;no package &#39;egl&#39; found&=
quot;. Below is parts error messages I received. Anyone
 got any ideas on what the problem might be?</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Tobias Bostr=C3=B6m</div>
<div><br>
</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking whether -lc should be explicitly linked in... no</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking dynamic linker characteristics... GNU/Linux ld.so</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking how to hardcode library paths into programs... immediate</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking whether stripping libraries is possible... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking if libtool supports shared libraries... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking whether to build shared libraries... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking whether to build static libraries... no</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking for special C compiler options needed for large files... no</div=
>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking for _FILE_OFFSET_BITS value needed for large files... 64</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking KHR/khrplatform.h usability... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking KHR/khrplatform.h presence... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking for KHR/khrplatform.h... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking if arm-poky-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -marm =C2=
=A0-mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex-=
a7 --sysroot=3D/home/tobiasb/Development/build/tmp/sysroots/raspberrypi2 -s=
td=3Dgnu99 supports -Wno-int-conversion... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking for X11... yes</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| checking for EGL... no</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| configure: error: Package requirements (egl) were not met:</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
|</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| No package &#39;egl&#39; found</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
|</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| Consider adjusting the PKG_CONFIG_PATH environment variable if you</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| installed software in a non-standard prefix.</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
|</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| Alternatively, you may set the environment variables EGL_CFLAGS</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| and EGL_LIBS to avoid the need to call pkg-config.</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
</div></div></div></blockquote><div><br></div><div><br></div></div></div><d=
iv>libepoxy expects something to provide a &#39;egl.pc&#39; pkg-config file=
, and apparently the virtual/egl provider on the raspberry=C2=A0(&quot;user=
land&quot;) doesn&#39;t do that. That may be an optimistic expectation on e=
poxys part but it&#39;s not alone: at least weston has as similar check.</d=
iv><div><br></div><div>Upstream issue is here: <a href=3D"https://github.co=
m/raspberrypi/userland/issues/245" target=3D"_blank">https://github.com/ras=
pberrypi/userland/issues/245</a> . It links to some pkg-config files that c=
ould be used in the userland recipe in the meanwhile.=C2=A0</div><div><br><=
/div><div>=C2=A0</div></div></div></div></blockquote><div><br></div>I remem=
ber =C2=A0seeing some patches in the past which addressed these pc files. U=
nfortunately we lost these patches with our gerrit transition. Would you be=
 able to push patches for this? (hint:=C2=A0<a href=3D"https://github.com/h=
eiher/raspberrypi-firmware-pkgconfig/tree/master/pkgconfig" target=3D"_blan=
k">https://github.com/heiher/raspberrypi-firmware-pkgconfig/tree/master/pkg=
config</a>)=C2=A0<br><br clear=3D"all"><div><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div></div></div><div>=
=C2=A0</div></div></div></div>

--089e0158b608d51fa7051a770bd0--
