Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E7C7E00939; Thu,  2 Jul 2015 11:21:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97094E006C6
	for <yocto@yoctoproject.org>; Thu,  2 Jul 2015 11:21:00 -0700 (PDT)
Received: by oiyy130 with SMTP id y130so62211047oiy.0
	for <yocto@yoctoproject.org>; Thu, 02 Jul 2015 11:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vwd2jzds/vdZiYdfyTnh7jam/vfmNp1CcNK8SyfJuR8=;
	b=ZJTab/6kzOUtSMJm+1I6vMkGsWXSE84EQvxYOjdZu8rTk1qOj08lhwLL4M4zjRNsMv
	cdNXig5Yrc4QR2yU3GojXSzIsQSfA4TIV+1gbqV6Jrr81OqBeiM+NbksWrXjdbMO1tdP
	iq8r9EDAm3pOKs7UgX/OH1ev9bPX2BfsliLN2bPdcwYjLEc/6CbjTcvGFYcLv13YJQdA
	baMzb3di8C5pEfGZxqJvCf1hQTE4rI7qWiPQLTQzDsMzPiWlv8rlfcjdp3fs0PJ+JqkY
	KYTP8y8WbiPVicegmoxOt9M5kOEq3d6xxlZxRf3l+DTCC+PgNMqdKfh2GBZkPqNGFwev
	3sSA==
X-Gm-Message-State: ALoCoQmgN57YP3aCo7f9YHwFbF1dG9B0nDxT+V3kaz+9UHbK26ff07ytsvskZRMkT8UzVXqksyhs
X-Received: by 10.60.118.193 with SMTP id ko1mr31037223oeb.38.1435861259201;
	Thu, 02 Jul 2015 11:20:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.225.2 with HTTP; Thu, 2 Jul 2015 11:20:29 -0700 (PDT)
In-Reply-To: <674E4B49C1A61B4592185A7FB9B55276317002@post>
References: <674E4B49C1A61B4592185A7FB9B55276317002@post>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 2 Jul 2015 21:20:29 +0300
Message-ID: <CAHiDW_GkQHOhqLKPg5+1uVZ0trBY3vfQDQEnkMrW58foFv_cpg@mail.gmail.com>
To: =?UTF-8?Q?Tobias_Bostr=C3=B6m?= <tobias.bostrom@tritech.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 02 Jul 2015 18:21:04 -0000
X-Groupsio-MsgNum: 25330
Content-Type: multipart/related; boundary=047d7b4149404e00dd0519e88024

--047d7b4149404e00dd0519e88024
Content-Type: multipart/alternative; boundary=047d7b4149404e00d90519e88023

--047d7b4149404e00d90519e88023
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2 July 2015 at 12:47, Tobias Bostr=C3=B6m <tobias.bostrom@tritech.se> wr=
ote:

>
> Hello!
>
>  I'm currently trying to build the core-image-x11 for the raspberry
> pi.However, when doing the task responsible for configuring libepoxy,
> bitbake fails. The error message i get is "no package 'egl' found". Below
> is parts error messages I received. Anyone got any ideas on what the
> problem might be?
>
>  Best regards,
> Tobias Bostr=C3=B6m
>
>  | checking whether -lc should be explicitly linked in... no
>  | checking dynamic linker characteristics... GNU/Linux ld.so
>  | checking how to hardcode library paths into programs... immediate
>  | checking whether stripping libraries is possible... yes
>  | checking if libtool supports shared libraries... yes
>  | checking whether to build shared libraries... yes
>  | checking whether to build static libraries... no
>  | checking for special C compiler options needed for large files... no
>  | checking for _FILE_OFFSET_BITS value needed for large files... 64
>  | checking KHR/khrplatform.h usability... yes
>  | checking KHR/khrplatform.h presence... yes
>  | checking for KHR/khrplatform.h... yes
>  | checking if arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -marm
>  -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex-=
a7
> --sysroot=3D/home/tobiasb/Development/build/tmp/sysroots/raspberrypi2
> -std=3Dgnu99 supports -Wno-int-conversion... yes
>  | checking for X11... yes
>  | checking for EGL... no
>  | configure: error: Package requirements (egl) were not met:
>  |
>  | No package 'egl' found
>  |
>  | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>  | installed software in a non-standard prefix.
>  |
>  | Alternatively, you may set the environment variables EGL_CFLAGS
>  | and EGL_LIBS to avoid the need to call pkg-config.
>


libepoxy expects something to provide a 'egl.pc' pkg-config file, and
apparently the virtual/egl provider on the raspberry ("userland") doesn't
do that. That may be an optimistic expectation on epoxys part but it's not
alone: at least weston has as similar check.

Upstream issue is here: https://github.com/raspberrypi/userland/issues/245
. It links to some pkg-config files that could be used in the userland
recipe in the meanwhile.

 - Jussi



| See the pkg-config man page for more details.
>  | Configure failed. The contents of all config.log files follows to aid
> debugging
>  | ERROR: oe_runconf failed
>  | WARNING: exit code 1 from a shell command.
>  | ERROR: Function failed: do_configure (log file is located at
> /home/tobiasb/Development/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-l=
inux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.40=
56)
>  ERROR: Task 5
> (/home/tobiasb/Development/poky/meta/recipes-graphics/libepoxy/
> libepoxy_git.bb, do_configure) failed with exit code '1'
>  NOTE: Tasks Summary: Attempted 566 tasks of which 565 didn't need to be
> rerun and 1 failed.
> No currently running tasks (527 of 574)
>
>
>
> * Tobias Bostr=C3=B6m tobias.bostrom@tritech.se <tobias.bostrom@tritech.s=
e> *
>
>
>  www.tritech.se
>
> +46 31 763 38 00
>
> Nordstadstorget 6
>
> SE-411 05 G=C3=B6teborg, Sweden
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b4149404e00d90519e88023
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
 July 2015 at 12:47, Tobias Bostr=C3=B6m <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:tobias.bostrom@tritech.se" target=3D"_blank">tobias.bostrom@tritech.s=
e</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex">




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
</div></div></div></blockquote><div><br></div><div><br></div><div>libepoxy =
expects something to provide a &#39;egl.pc&#39; pkg-config file, and appare=
ntly the virtual/egl provider on the raspberry=C2=A0(&quot;userland&quot;) =
doesn&#39;t do that. That may be an optimistic expectation on epoxys part b=
ut it&#39;s not alone: at least weston has as similar check.</div><div><br>=
</div><div>Upstream issue is here: <a href=3D"https://github.com/raspberryp=
i/userland/issues/245">https://github.com/raspberrypi/userland/issues/245</=
a> . It links to some pkg-config files that could be used in the userland r=
ecipe in the meanwhile.=C2=A0</div><div><br></div><div>=C2=A0- Jussi</div><=
div><br></div><div><br></div><div><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div><div styl=
e=3D"direction:ltr;font-family:Tahoma;color:rgb(0,0,0);font-size:10pt"><div=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.800=
0001907349px;background-color:rgb(255,255,255)">| See the pkg-config man pa=
ge for more details.</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| Configure failed. The contents of all config.log files follows to aid deb=
ugging</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| ERROR: oe_runconf failed</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| WARNING: exit code 1 from a shell command.</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
| ERROR: Function failed: do_configure (log file is located at /home/tobias=
b/Development/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/l=
ibepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.4056)</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
ERROR: Task 5 (/home/tobiasb/Development/poky/meta/recipes-graphics/libepox=
y/<a href=3D"http://libepoxy_git.bb/" style=3D"color:rgb(17,85,204)" target=
=3D"_blank">libepoxy_git.bb</a>, do_configure) failed with exit code &#39;1=
&#39;</div>
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8000001907349px;background-color:rgb(255,255,255)">
NOTE: Tasks Summary: Attempted 566 tasks of which 565 didn&#39;t need to be=
 rerun and 1 failed.</div>
<div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:12.8000001907349px;background-color:rgb(255,255,255)">No currently runn=
ing tasks (527 of 574)</span>=C2=A0=C2=A0 =C2=A0</div>
</div>
<div><br>
</div>
<div><img border=3D"0" hspace=3D"0" align=3D"top" src=3D"cid:tritech-logo1f=
36e6">
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9pt;font-family:Arial,sa=
ns-serif;color:black"></span></b><br>
</p>
<b><span style=3D"font-size:9pt;font-family:Arial,sans-serif;color:black">
<p style=3D"margin-bottom:6pt;margin-top:6pt"><span style=3D"font-size:9pt;=
font-weight:bold;color:rgb(0,0,0)">Tobias Bostr=C3=B6m</span></p>
<p style=3D"margin-bottom:6pt;margin-top:6pt"><span style=3D"font-size:9pt;=
font-weight:bold;color:rgb(0,0,0)"></span></p>
<p style=3D"margin-bottom:6pt;margin-top:6pt"><br>
</p>
<p style=3D"margin-bottom:6pt;margin-top:6pt"><span style=3D"font-size:9pt;=
color:rgb(75,172,198)"><a href=3D"mailto:tobias.bostrom@tritech.se" target=
=3D"_blank">tobias.bostrom@tritech.se</a></span></p>
<p style=3D"margin-bottom:6pt;margin-top:6pt"><span style=3D"font-size:9pt;=
color:rgb(0,0,0)"></span></p>
</span></b>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif"></span><br>
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:rgb(51,167,215)"><a href=3D"http://www.tritech.se" target=3D"_b=
lank"><font color=3D"#4bacc6">www.tritech.se</font></a></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:black"><a href=3D"tel:%2B46%2031%20763%2038%2000" value=3D"+463=
17633800" target=3D"_blank">+46 31 763 38 00</a></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:black">Nordstadstorget 6</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:black">SE-411 05 G=C3=B6teborg, Sweden</span></p>
</div>
<br>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--047d7b4149404e00d90519e88023--

--047d7b4149404e00dd0519e88024
Content-Type: image/jpeg; name=tritech-logo1f36e6
Content-Disposition: inline; filename=tritech-logo1f36e6
Content-Transfer-Encoding: base64
Content-ID: <tritech-logo1f36e6>
X-Attachment-Id: 2923916549dc8f4_0.0.1

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

--047d7b4149404e00dd0519e88024--
