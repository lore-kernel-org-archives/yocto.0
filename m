Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18EE3E00974; Thu, 26 Mar 2015 23:06:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B183E00832
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 23:05:57 -0700 (PDT)
Received: by obcjt1 with SMTP id jt1so64047296obc.2
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 23:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=qObnEESjVPvT7Py7nIRQOVoMzhq3x3jsSQJAQP0Yz34=;
	b=BK9TVOnAS8wOKL1ilErn5FAxfbL2jwZQzWEWrN3H4JSpartixanEgdYDRgQ2KbV5yt
	d51WIoRHfb762/UcnnmCSLLOHPDt1VNpD9Z6HaVHQaBOuH2iqAdzaVx+rdfEt5Dk/p3e
	tjIITCK71fphP6ld1VjJAQUFgV5uhcBozAeb+zWK6MGvhQg8hhxA3F3EzpW0+oAdlGgZ
	YhMLsHcIwlP4+oaGtcHKS0S3Q5vUGrlYFIvrcrzw2XBi14evcAtX/uUH0yKKi6bYSfet
	xWwGojLqF5AonUeFsKZJ0PuXoxNqLBktY6MaO+2Y+MCAQb/tYJHhkEIOdlxXdl3Zn8ed
	vy6g==
X-Gm-Message-State: ALoCoQmdy5lUZuCPjD9UgeI8gVUedPeVwBE75N6KkTtlm4ATsD7/cbJDw0cLyUTdHlsi7BGbPjqy
MIME-Version: 1.0
X-Received: by 10.60.57.36 with SMTP id f4mr15013438oeq.6.1427436356642; Thu,
	26 Mar 2015 23:05:56 -0700 (PDT)
Received: by 10.60.102.104 with HTTP; Thu, 26 Mar 2015 23:05:56 -0700 (PDT)
In-Reply-To: <CABNKipL1TqKWj89zJcFOj3hbDDVZgZHRWtSFDN7KnQDZz4T7Ow@mail.gmail.com>
References: <CABNKipL1TqKWj89zJcFOj3hbDDVZgZHRWtSFDN7KnQDZz4T7Ow@mail.gmail.com>
Date: Fri, 27 Mar 2015 11:35:56 +0530
Message-ID: <CABNKipJFmCy8e87sHq_3=-ZeGvfV9OsiaXd7ipcrLDmE_ETRBA@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: Re: eglibc build error
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
X-List-Received-Date: Fri, 27 Mar 2015 06:06:01 -0000
Content-Type: multipart/alternative; boundary=089e0149be18fa428f05123eecd2

--089e0149be18fa428f05123eecd2
Content-Type: text/plain; charset=UTF-8

could anyone tell me to recover stack_chk_guard error?

On 25 March 2015 at 16:44, Parthiban Kandasamy <parthiban@ulivesystems.com>
wrote:

> i am using yocto-dora1.5 for beagleboard-xm and i am building customized
> toolchain(meta-toolchain-qt for x11 support) for my target. while building
> got error at the time of linking,
>
> ns_print.c:(.text+0x48a): undefined reference to `__stack_chk_guard'
> | ns_print.c:(.text+0x6cb): undefined reference to `__stack_chk_guard'
> |
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os):
> In function `getanswer':
> | gethnamaddr.c:(.text+0x728): undefined reference to `__stack_chk_guard'
> | gethnamaddr.c:(.text+0x756): undefined reference to `__stack_chk_guard'
> |
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os):
> In function `__GI_res_gethostbyname2':
> | gethnamaddr.c:(.text+0x107c): undefined reference to `__stack_chk_guard'
> |
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os):gethnamaddr.c:(.text+0x1261):
> more undefined references to `__stack_chk_guard' follow
> | collect2: error: ld returned 1 exit status
> | make[2]: ***
> [/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv.so]
> Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: Leaving directory
> `/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/eglibc-2.18/libc/resolv'
> | make[1]: *** [resolv/others] Error 2
> | make[1]: Leaving directory
> `/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/eglibc-2.18/libc'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | WARNING:
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/temp/run.do_compile.21083:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_compile (log file is located at
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/temp/log.do_compile.21083)
> ERROR: Task 816
> (virtual:nativesdk:/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/meta/recipes-core/eglibc/
> eglibc_2.18.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3076 tasks of which 3064 didn't need to be
> rerun and 1 failed.
> NOTE: Writing buildhistory
> No currently running tasks (3076 of 3727)
>
> how can i overcome this error and what will be the SDKMACHINE value to
> assign for my project?
>
> --
> thanks and regards,
> parthiban
>       +919790329795
>



-- 
thanks and regards,
parthiban
      +919790329795

--089e0149be18fa428f05123eecd2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">could anyone tell me to recover stack_chk_guard error?<br>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 25 March=
 2015 at 16:44, Parthiban Kandasamy <span dir=3D"ltr">&lt;<a href=3D"mailto=
:parthiban@ulivesystems.com" target=3D"_blank">parthiban@ulivesystems.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><di=
v>i am using yocto-dora1.5 for beagleboard-xm and i am building customized =
toolchain(meta-toolchain-qt for x11 support) for my target. while building =
got error at the time of linking,<br><br>ns_print.c:(.text+0x48a): undefine=
d reference to `__stack_chk_guard&#39;<br>| ns_print.c:(.text+0x6cb): undef=
ined reference to `__stack_chk_guard&#39;<br>| /home/parthiban/UliveSytems/=
Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/=
x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libres=
olv_pic.a(gethnamaddr.os): In function `getanswer&#39;:<br>| gethnamaddr.c:=
(.text+0x728): undefined reference to `__stack_chk_guard&#39;<br>| gethnama=
ddr.c:(.text+0x756): undefined reference to `__stack_chk_guard&#39;<br>| /h=
ome/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10=
.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2=
.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os): In function `__GI_res_=
gethostbyname2&#39;:<br>| gethnamaddr.c:(.text+0x107c): undefined reference=
 to `__stack_chk_guard&#39;<br>| /home/parthiban/UliveSytems/Parthiban/CODE=
/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-natives=
dk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(geth=
namaddr.os):gethnamaddr.c:(.text+0x1261): more undefined references to `__s=
tack_chk_guard&#39; follow<br>| collect2: error: ld returned 1 exit status<=
br>| make[2]: *** [/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BS=
P/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-lin=
ux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv.so] Error 1<br>| make[2]=
: *** Waiting for unfinished jobs....<br>| make[2]: Leaving directory `/hom=
e/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0=
.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.1=
8-r0/eglibc-2.18/libc/resolv&#39;<br>| make[1]: *** [resolv/others] Error 2=
<br>| make[1]: Leaving directory `/home/parthiban/UliveSytems/Parthiban/COD=
E/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-native=
sdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/eglibc-2.18/libc&#39;<br>| make:=
 *** [all] Error 2<br>| ERROR: oe_runmake failed<br>| WARNING: /home/parthi=
ban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/Beagl=
eBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/tem=
p/run.do_compile.21083:1 exit 1 from<br>|=C2=A0=C2=A0 exit 1<br>| ERROR: Fu=
nction failed: do_compile (log file is located at /home/parthiban/UliveSyte=
ms/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/wo=
rk/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/temp/log.do_comp=
ile.21083)<br>ERROR: Task 816 (virtual:nativesdk:/home/parthiban/UliveSytem=
s/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/meta/recipes-core/e=
glibc/<a href=3D"http://eglibc_2.18.bb" target=3D"_blank">eglibc_2.18.bb</a=
>, do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: At=
tempted 3076 tasks of which 3064 didn&#39;t need to be rerun and 1 failed.<=
br>NOTE: Writing buildhistory<br>No currently running tasks (3076 of 3727)<=
br><br></div>how can i overcome this error and what will be the SDKMACHINE =
value to assign for my project?<span class=3D"HOEnZb"><font color=3D"#88888=
8"><br clear=3D"all"><div><div><br>-- <br><div><div style=3D"text-align:rig=
ht">thanks and regards,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><div style=3D=
"text-align:right">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0=
 <br></div></div></div>
</div></div></font></span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div style=3D"text-align:right">thanks and regards,<br>parthiban =
=C2=A0 =C2=A0 =C2=A0 <br><div style=3D"text-align:right">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0 <br></div></div></div>
</div>

--089e0149be18fa428f05123eecd2--
