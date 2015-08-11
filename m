Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B668E00A94; Tue, 11 Aug 2015 02:03:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BCFE00A80
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 02:03:45 -0700 (PDT)
Received: by lagz9 with SMTP id z9so67282008lag.3
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 02:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=5sQ9IJTzvI5MFGVErcmSprEv9Y6VIbzBwcgdc9mhPWg=;
	b=slDipfb7R4SEuJuHmej2246x2lgoWpGjiG8SYXGMUwoXVrORsTPVGf51si1p5wSTw6
	qeb9/+Rtw6ZYVNurwB/FOhuFDCcCs+Cuz3Vaid4uMIyBccVCeD3AbI8taDcNMUvWj+wb
	qIzL0uXgkaOD1kDMQnHRDtFxKKlHD4Nud9ivZT8IFyzS+nh4zH/BOLpmwUIWLuyKj7Ua
	QGAihOuDji96MW8CA+7CAYwEy4/O26w2NOkhmMPZtvkbJIZVbtsHW5NnLd5TzJEn6Uvm
	LlJ+zYriFjolF7KvI61Xi9x3nE6uk7DToDym2lCBR3xd2XG8fcaASwLxHFzybsuGx/GA
	bBzQ==
MIME-Version: 1.0
X-Received: by 10.112.201.36 with SMTP id jx4mr25436336lbc.9.1439283823918;
	Tue, 11 Aug 2015 02:03:43 -0700 (PDT)
Sender: ajlennon@gmail.com
Received: by 10.112.162.129 with HTTP; Tue, 11 Aug 2015 02:03:43 -0700 (PDT)
In-Reply-To: <af77dd672b17395613fdd2d09285aa46@technux.se>
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<fc34ba0543c946b98d8d736ff5e66421@technux.se>
	<55C9B2EE.2090406@gmail.com>
	<af77dd672b17395613fdd2d09285aa46@technux.se>
Date: Tue, 11 Aug 2015 11:03:43 +0200
X-Google-Sender-Auth: kzG6AYGRRo8NIzakfx_5EfQ08pM
Message-ID: <CAJ8H0rJe3Nz+d32ksyZ3iP7w9rzV5AkvCKsZy=qpFAmSbHjPpg@mail.gmail.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
To: "petter@technux.se" <petter@technux.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Tue, 11 Aug 2015 09:03:50 -0000
Content-Type: multipart/alternative; boundary=001a11c3767a0e4622051d0561f1

--001a11c3767a0e4622051d0561f1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tuesday, August 11, 2015, Petter Mab=C3=A4cker <petter@technux.se> wrote=
:

> 2015-08-11 10:31 skrev Alex J Lennon:
>
> On 11/08/2015 08:58, Petter Mab=C3=A4cker wrote:
>
> 2015-08-10 13:08 skrev Alex J Lennon:
>
> This requires some changes to KERNEL_DEVICETREE as the dtb layout has
> changed to support overlays. This change also makes us ready to support
> kernel 4.x series Signed-off-by: Alex J Lennon <
> ajlennon@dynamicdevices.co.uk
> <javascript:_e(%7B%7D,'cvml','ajlennon@dynamicdevices.co.uk');> <mailto:
> ajlennon@dynamicdevices.co.uk
> <javascript:_e(%7B%7D,'cvml','ajlennon@dynamicdevices.co.uk');>>> ---
> conf/machine/include/rpi-base.inc | 22 ++++++++++------------
> recipes-kernel/linux/linux-raspberrypi_3.18.bb | 9 +++++++-- 2 files
> changed, 17 insertions(+), 14 deletions(-) diff --git
> a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 1dda207..8caa5ba 100644 --- a/conf/machine/include/rpi-base.inc +++
> b/conf/machine/include/rpi-base.inc @@ -23,18 +23,16 @@ KERNEL_DEVICETREE
> ?=3D " \ bcm2708-rpi-b-plus.dtb \ bcm2709-rpi-2-b.dtb \ \ -
> ds1307-rtc-overlay.dtb \ - hifiberry-amp-overlay.dtb \ -
> hifiberry-dac-overlay.dtb \ - hifiberry-dacplus-overlay.dtb \ -
> hifiberry-digi-overlay.dtb \ - iqaudio-dac-overlay.dtb \ -
> iqaudio-dacplus-overlay.dtb \ - lirc-rpi-overlay.dtb \ -
> pcf8523-rtc-overlay.dtb \ - pps-gpio-overlay.dtb \ - w1-gpio-overlay.dtb =
\
> - w1-gpio-pullup-overlay.dtb \ + overlays/hifiberry-amp-overlay.dtb \ +
> overlays/hifiberry-dac-overlay.dtb \ +
> overlays/hifiberry-dacplus-overlay.dtb \ +
> overlays/hifiberry-digi-overlay.dtb \ + overlays/iqaudio-dac-overlay.dtb =
\
> + overlays/iqaudio-dacplus-overlay.dtb \ + overlays/lirc-rpi-overlay.dtb =
\
> + overlays/pps-gpio-overlay.dtb \ + overlays/w1-gpio-overlay.dtb \ +
> overlays/w1-gpio-pullup-overlay.dtb \ " KERNEL_IMAGETYPE ?=3D "Image" dif=
f
> --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> b/recipes-kernel/linux/linux-raspberrypi_3.18.bb index 6d8b155..18c2020
> 100644 --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb +++
> b/recipes-kernel/linux/linux-raspberrypi_3.18.bb @@ -1,6 +1,11 @@
> -LINUX_VERSION ?=3D "3.18.11" +LINUX_VERSION ?=3D "3.18.16" -SRCREV =3D
> "d64fa8121fca9883d6fb14ca06d2abf66496195e" +SRCREV =3D
> "1bb18c8f721ef674a447f3622273f2e2de7a205c" SRC_URI =3D "git://
> github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y" requ=
ire
> linux-raspberrypi.inc + +# Create missing out of tree 'overlays' director=
y
> prior to install step +do_compile_append() { + mkdir -p
> ${B}/arch/arm/boot/dts/overlays +} -- 1.9.1
>
> Hi Alex, At least I get problems during compile step with above change
> (I'm building for rpi2). So are your sure '${B}/arch/arm/boot/dts/overlay=
s'
> isn't needed during compile? I tried with changing above from append to
> prepand instead and then it worked fine for me (when building 3.18 kernel=
).
> (from log.do_compile, complete log can be found at:
> http://www.technux.se/logs/log.do_compile.4398.fail ) KSYM
> .tmp_kallsyms1.o KSYM .tmp_kallsyms2.o LD vmlinux SORTEX vmlinux SYSMAP
> System.map OBJCOPY arch/arm/boot/Image Kernel: arch/arm/boot/Image is rea=
dy
> NOTE: make -j 4 bcm2708-rpi-b.dtb DTC arch/arm/boot/dts/bcm2708-rpi-b.dtb
> NOTE: make -j 4 bcm2708-rpi-b-plus.dtb DTC
> arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb NOTE: make -j 4
> bcm2709-rpi-2-b.dtb DTC arch/arm/boot/dts/bcm2709-rpi-2-b.dtb NOTE: make =
-j
> 4 overlays/hifiberry-amp-overlay.dtb DTC
> arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb cc1: fatal error:
> opening output file
> arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp: No such fi=
le
> or directory compilation terminated. make[3]: ***
> [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error 1 make[2]: *=
**
> [overlays/hifiberry-amp-overlay.dtb] Error 2 make[1]: *** [sub-make] Erro=
r
> 2 make: *** [__sub-make] Error 2 ERROR: oe_runmake failed ERROR: Function
> failed: do_compile (log file is located at
> /home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-po=
ky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f=
2e2de7a205c-r0/temp/log.do_compile.4398)
> BR, Petter
>
> Hi Petter,
>
> Thanks for testing that out. That is indeed exactly what I was seeing
> before I added the directory creation.
>
> I did do the following test for both 3.18.x and 4.1.3 kernels (rpi2)
>
> bitbake -f -c cleansstate virtual/kernel
> bitbake -f virtual/kernel
>
> I've just re-run that again here and it works for me as-is. I thought
> cleansstate was causing me to build from scratch so I'm unclear as to
> why I'm not seeing the problem...
>
> NB. I'd also add that for preference I'd like to see the kernel build
> Makefile patched with whatever is in 4.1 to create that needed overlays
> directory but I've had a look and can't spot it.
>
> Cheers,
>
> Alex
>
> Hmm Ok, might be some "pebcak" from my side, since I was using an old
> sstate, but according to my history I did 'cleanall' before I got the
> problem. But will re-try this on a completely new build without any old
> savings (it will take some time to test however..). What struck me was th=
at
> the failure occurred in do_compile (from what I can tell the failure in m=
y
> logs occur before your _append had been able to do anything about it?). I
> will analyse the run.do_compile if the failure occurs again and see if th=
at
> make any sense. I will let you know if the problem occurs again. But sinc=
e
> both you and Herve haven't seen any problem I guess it's something I'm
> doing wrong..
>
>
Thanks. As I was trying to figure out what was going on I did also drop
into a devshell and run the configure/compile/install steps manually and it
was the install step failing so I'd be a little surprised but let's see.

Cheer, Alex

--001a11c3767a0e4622051d0561f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Tuesday, August 11, 2015, Petter Mab=C3=A4cker &lt;<a href=3D"ma=
ilto:petter@technux.se">petter@technux.se</a>&gt; wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><u></u>
<div style=3D"font-family:Helvetica,Arial,sans-serif">
<p>2015-08-11 10:31 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left:#1010ff 2px=
 solid;margin-left:5px;width:100%">
<pre>On 11/08/2015 08:58, Petter Mab=C3=A4cker wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left:#1010ff 2px=
 solid;margin-left:5px;width:100%">2015-08-10 13:08 skrev Alex J Lennon:
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left:#1010ff 2px=
 solid;margin-left:5px;width:100%">This requires some changes to KERNEL_DEV=
ICETREE as the dtb layout has changed to support overlays. This change also=
 makes us ready to support kernel 4.x series Signed-off-by: Alex J Lennon &=
lt;<a href=3D"javascript:_e(%7B%7D,&#39;cvml&#39;,&#39;ajlennon@dynamicdevi=
ces.co.uk&#39;);" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a> &lt;m=
ailto:<a href=3D"javascript:_e(%7B%7D,&#39;cvml&#39;,&#39;ajlennon@dynamicd=
evices.co.uk&#39;);" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt=
;&gt; --- conf/machine/include/rpi-base.inc | 22 ++++++++++------------ rec=
ipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" target=3D"_b=
lank">linux-raspberrypi_3.18.bb</a> | 9 +++++++-- 2 files changed, 17 inser=
tions(+), 14 deletions(-) diff --git a/conf/machine/include/rpi-base.inc b/=
conf/machine/include/rpi-base.inc index 1dda207..8caa5ba 100644 --- a/conf/=
machine/include/rpi-base.inc +++ b/conf/machine/include/rpi-base.inc @@ -23=
,18 +23,16 @@ KERNEL_DEVICETREE ?=3D &quot; \ bcm2708-rpi-b-plus.dtb \ bcm2=
709-rpi-2-b.dtb \ \ - ds1307-rtc-overlay.dtb \ - hifiberry-amp-overlay.dtb =
\ - hifiberry-dac-overlay.dtb \ - hifiberry-dacplus-overlay.dtb \ - hifiber=
ry-digi-overlay.dtb \ - iqaudio-dac-overlay.dtb \ - iqaudio-dacplus-overlay=
.dtb \ - lirc-rpi-overlay.dtb \ - pcf8523-rtc-overlay.dtb \ - pps-gpio-over=
lay.dtb \ - w1-gpio-overlay.dtb \ - w1-gpio-pullup-overlay.dtb \ + overlays=
/hifiberry-amp-overlay.dtb \ + overlays/hifiberry-dac-overlay.dtb \ + overl=
ays/hifiberry-dacplus-overlay.dtb \ + overlays/hifiberry-digi-overlay.dtb \=
 + overlays/iqaudio-dac-overlay.dtb \ + overlays/iqaudio-dacplus-overlay.dt=
b \ + overlays/lirc-rpi-overlay.dtb \ + overlays/pps-gpio-overlay.dtb \ + o=
verlays/w1-gpio-overlay.dtb \ + overlays/w1-gpio-pullup-overlay.dtb \ &quot=
; KERNEL_IMAGETYPE ?=3D &quot;Image&quot; diff --git a/recipes-kernel/linux=
/<a href=3D"http://linux-raspberrypi_3.18.bb" target=3D"_blank">linux-raspb=
errypi_3.18.bb</a> b/recipes-kernel/linux/<a href=3D"http://linux-raspberry=
pi_3.18.bb" target=3D"_blank">linux-raspberrypi_3.18.bb</a> index 6d8b155..=
18c2020 100644 --- a/recipes-kernel/linux/<a href=3D"http://linux-raspberry=
pi_3.18.bb" target=3D"_blank">linux-raspberrypi_3.18.bb</a> +++ b/recipes-k=
ernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" target=3D"_blank">=
linux-raspberrypi_3.18.bb</a> @@ -1,6 +1,11 @@ -LINUX_VERSION ?=3D &quot;3.=
18.11&quot; +LINUX_VERSION ?=3D &quot;3.18.16&quot; -SRCREV =3D &quot;d64fa=
8121fca9883d6fb14ca06d2abf66496195e&quot; +SRCREV =3D &quot;1bb18c8f721ef67=
4a447f3622273f2e2de7a205c&quot; SRC_URI =3D &quot;git://<a href=3D"http://g=
ithub.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y" target=
=3D"_blank">github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.=
18.y</a>&quot; require linux-raspberrypi.inc + +# Create missing out of tre=
e &#39;overlays&#39; directory prior to install step +do_compile_append() {=
 + mkdir -p ${B}/arch/arm/boot/dts/overlays +} -- 1.9.1</blockquote>
Hi Alex, At least I get problems during compile step with above change (I&#=
39;m building for rpi2). So are your sure &#39;${B}/arch/arm/boot/dts/overl=
ays&#39; isn&#39;t needed during compile? I tried with changing above from =
append to prepand instead and then it worked fine for me (when building 3.1=
8 kernel). (from log.do_compile, complete log can be found at: <a href=3D"h=
ttp://www.technux.se/logs/log.do_compile.4398.fail" target=3D"_blank">http:=
//www.technux.se/logs/log.do_compile.4398.fail</a> ) KSYM .tmp_kallsyms1.o =
KSYM .tmp_kallsyms2.o LD vmlinux SORTEX vmlinux SYSMAP System.map OBJCOPY a=
rch/arm/boot/Image Kernel: arch/arm/boot/Image is ready NOTE: make -j 4 bcm=
2708-rpi-b.dtb DTC arch/arm/boot/dts/bcm2708-rpi-b.dtb NOTE: make -j 4 bcm2=
708-rpi-b-plus.dtb DTC arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb NOTE: make =
-j 4 bcm2709-rpi-2-b.dtb DTC arch/arm/boot/dts/bcm2709-rpi-2-b.dtb NOTE: ma=
ke -j 4 overlays/hifiberry-amp-overlay.dtb DTC arch/arm/boot/dts/overlays/h=
ifiberry-amp-overlay.dtb cc1: fatal error: opening output file arch/arm/boo=
t/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp: No such file or director=
y compilation terminated. make[3]: *** [arch/arm/boot/dts/overlays/hifiberr=
y-amp-overlay.dtb] Error 1 make[2]: *** [overlays/hifiberry-amp-overlay.dtb=
] Error 2 make[1]: *** [sub-make] Error 2 make: *** [__sub-make] Error 2 ER=
ROR: oe_runmake failed ERROR: Function failed: do_compile (log file is loca=
ted at /home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberryp=
i2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f362=
2273f2e2de7a205c-r0/temp/log.do_compile.4398) BR, Petter</blockquote>
<pre>Hi Petter,

Thanks for testing that out. That is indeed exactly what I was seeing
before I added the directory creation.

I did do the following test for both 3.18.x and 4.1.3 kernels (rpi2)

bitbake -f -c cleansstate virtual/kernel
bitbake -f virtual/kernel

I&#39;ve just re-run that again here and it works for me as-is. I thought
cleansstate was causing me to build from scratch so I&#39;m unclear as to
why I&#39;m not seeing the problem...

NB. I&#39;d also add that for preference I&#39;d like to see the kernel bui=
ld
Makefile patched with whatever is in 4.1 to create that needed overlays
directory but I&#39;ve had a look and can&#39;t spot it.

Cheers,

Alex
<br>
</pre>
</blockquote>
<p>Hmm Ok, might be some &quot;pebcak&quot; from my side, since I was using=
 an old sstate, but according to my history I did &#39;cleanall&#39; before=
 I got the problem. But will re-try this on a completely new build without =
any old savings (it will take some time to test however..). What struck me =
was that the failure occurred in do_compile (from what I can tell the failu=
re in my logs occur before your _append had been able to do anything about =
it?). I will analyse the run.do_compile if the failure occurs again and see=
 if that make any sense. I will let you know if the problem occurs again. B=
ut since both you and Herve haven&#39;t seen any problem I guess it&#39;s s=
omething I&#39;m doing wrong..</p>
<br>
</div></blockquote><div><br></div><div>Thanks. As I was trying to figure ou=
t what was going on I did also drop into a devshell=C2=A0and run the config=
ure/compile/install steps manually and it was the install step failing=C2=
=A0so I&#39;d be a little surprised but let&#39;s see.<span></span></div><d=
iv><br></div><div>Cheer, Alex=C2=A0</div>

--001a11c3767a0e4622051d0561f1--
