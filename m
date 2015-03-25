Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A933E00954; Wed, 25 Mar 2015 04:14:31 -0700 (PDT)
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
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF70E0091D
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 04:14:26 -0700 (PDT)
Received: by oiag65 with SMTP id g65so18184958oia.2
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 04:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=w3BCD1OsBxHgXyJv8FBAiX738FQEOTqX1Q8la9ctK4k=;
	b=kZ3+Mn/6gWxe2Rmx41OH6B3zRNgVONe3qBscLBuXtziXhepz2EoNL0qXBZGJGH5UI0
	Mys20CIQ+bxQJdi4JluCejK4U22EdbvWN0JRwkRaNkZZB9iM9vD1X5/P8nj5dFF3mStk
	O0C+AqB1txsUmxl8ElyYiwBQ3JMUQNr1Sl5c8RU94WvHolpWNLoQtomGvOj6L2S5ja6E
	OcO8TjsxQdZp4zGKnqsoRvUz2y+US0cY/hMB3RWHrALbJEM8EgYvz7GgeRO4TmaUGz93
	CLKOBZGLGXLVPXq07Lu7ADn5ahKs1T/pA8h07vS0DbL9JR/tmag3ZJO0x9xNHkOeXAKz
	MrfA==
X-Gm-Message-State: ALoCoQl8u2iUqELaTAnHL90TMSXwpWOo21K5cl5ULYZCR3Hc6sYreBi7B+89KfuU8S61dYt63fQB
MIME-Version: 1.0
X-Received: by 10.182.130.166 with SMTP id of6mr7056011obb.53.1427282066161;
	Wed, 25 Mar 2015 04:14:26 -0700 (PDT)
Received: by 10.60.102.104 with HTTP; Wed, 25 Mar 2015 04:14:26 -0700 (PDT)
Date: Wed, 25 Mar 2015 16:44:26 +0530
Message-ID: <CABNKipL1TqKWj89zJcFOj3hbDDVZgZHRWtSFDN7KnQDZz4T7Ow@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: eglibc build error
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
X-List-Received-Date: Wed, 25 Mar 2015 11:14:31 -0000
Content-Type: multipart/alternative; boundary=e89a8f503a5c8c580605121b005b

--e89a8f503a5c8c580605121b005b
Content-Type: text/plain; charset=UTF-8

i am using yocto-dora1.5 for beagleboard-xm and i am building customized
toolchain(meta-toolchain-qt for x11 support) for my target. while building
got error at the time of linking,

ns_print.c:(.text+0x48a): undefined reference to `__stack_chk_guard'
| ns_print.c:(.text+0x6cb): undefined reference to `__stack_chk_guard'
|
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os):
In function `getanswer':
| gethnamaddr.c:(.text+0x728): undefined reference to `__stack_chk_guard'
| gethnamaddr.c:(.text+0x756): undefined reference to `__stack_chk_guard'
|
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os):
In function `__GI_res_gethostbyname2':
| gethnamaddr.c:(.text+0x107c): undefined reference to `__stack_chk_guard'
|
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os):gethnamaddr.c:(.text+0x1261):
more undefined references to `__stack_chk_guard' follow
| collect2: error: ld returned 1 exit status
| make[2]: ***
[/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv.so]
Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory
`/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/eglibc-2.18/libc/resolv'
| make[1]: *** [resolv/others] Error 2
| make[1]: Leaving directory
`/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/eglibc-2.18/libc'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING:
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/temp/run.do_compile.21083:1
exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/temp/log.do_compile.21083)
ERROR: Task 816
(virtual:nativesdk:/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/meta/recipes-core/eglibc/
eglibc_2.18.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3076 tasks of which 3064 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
No currently running tasks (3076 of 3727)

how can i overcome this error and what will be the SDKMACHINE value to
assign for my project?

-- 
thanks and regards,
parthiban
      +919790329795

--e89a8f503a5c8c580605121b005b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>i am using yocto-dora1.5 for beagleboard-xm and i am =
building customized toolchain(meta-toolchain-qt for x11 support) for my tar=
get. while building got error at the time of linking,<br><br>ns_print.c:(.t=
ext+0x48a): undefined reference to `__stack_chk_guard&#39;<br>| ns_print.c:=
(.text+0x6cb): undefined reference to `__stack_chk_guard&#39;<br>| /home/pa=
rthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/B=
eagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0=
/build/resolv/libresolv_pic.a(gethnamaddr.os): In function `getanswer&#39;:=
<br>| gethnamaddr.c:(.text+0x728): undefined reference to `__stack_chk_guar=
d&#39;<br>| gethnamaddr.c:(.text+0x756): undefined reference to `__stack_ch=
k_guard&#39;<br>| /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP=
/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-eglibc/2.18-r0/build/resolv/libresolv_pic.a(gethnamaddr.os): In=
 function `__GI_res_gethostbyname2&#39;:<br>| gethnamaddr.c:(.text+0x107c):=
 undefined reference to `__stack_chk_guard&#39;<br>| /home/parthiban/UliveS=
ytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp=
/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/=
libresolv_pic.a(gethnamaddr.os):gethnamaddr.c:(.text+0x1261): more undefine=
d references to `__stack_chk_guard&#39; follow<br>| collect2: error: ld ret=
urned 1 exit status<br>| make[2]: *** [/home/parthiban/UliveSytems/Parthiba=
n/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-n=
ativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/build/resolv/libresolv.so] =
Error 1<br>| make[2]: *** Waiting for unfinished jobs....<br>| make[2]: Lea=
ving directory `/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/b=
eagleboard-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/=
nativesdk-eglibc/2.18-r0/eglibc-2.18/libc/resolv&#39;<br>| make[1]: *** [re=
solv/others] Error 2<br>| make[1]: Leaving directory `/home/parthiban/Ulive=
Sytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tm=
p/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18-r0/eglibc-2.18/=
libc&#39;<br>| make: *** [all] Error 2<br>| ERROR: oe_runmake failed<br>| W=
ARNING: /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboa=
rd-dora-10.0.0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesd=
k-eglibc/2.18-r0/temp/run.do_compile.21083:1 exit 1 from<br>|=C2=A0=C2=A0 e=
xit 1<br>| ERROR: Function failed: do_compile (log file is located at /home=
/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.=
0/BeagleBuild/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc/2.18=
-r0/temp/log.do_compile.21083)<br>ERROR: Task 816 (virtual:nativesdk:/home/=
parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0=
/meta/recipes-core/eglibc/<a href=3D"http://eglibc_2.18.bb">eglibc_2.18.bb<=
/a>, do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: =
Attempted 3076 tasks of which 3064 didn&#39;t need to be rerun and 1 failed=
.<br>NOTE: Writing buildhistory<br>No currently running tasks (3076 of 3727=
)<br><br></div>how can i overcome this error and what will be the SDKMACHIN=
E value to assign for my project?<br clear=3D"all"><div><div><br>-- <br><di=
v class=3D"gmail_signature"><div style=3D"text-align:right">thanks and rega=
rds,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><div style=3D"text-align:right">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0 <br></div></div></=
div>
</div></div></div>

--e89a8f503a5c8c580605121b005b--
