Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3793DE00A94; Tue, 11 Aug 2015 02:00:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C711E00A80
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 02:00:09 -0700 (PDT)
X-Halon-ID: 67949fa1-4007-11e5-8dac-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 11 Aug 2015 11:00:25 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 11 Aug 2015 11:00:04 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Alex J Lennon <ajlennon@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <55C9B2EE.2090406@gmail.com>
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<fc34ba0543c946b98d8d736ff5e66421@technux.se>
	<55C9B2EE.2090406@gmail.com>
Message-ID: <af77dd672b17395613fdd2d09285aa46@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to 3.18.16
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Aug 2015 09:00:15 -0000
Content-Type: multipart/alternative;
	boundary="=_133c737320d5d59f6a43a5a5c6ed3764"

--=_133c737320d5d59f6a43a5a5c6ed3764
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-11 10:31 skrev Alex J Lennon: 

> On 11/08/2015 08:58,
Petter Mabäcker wrote:
> 
>> 2015-08-10 13:08 skrev Alex J Lennon: 
>>

>>> This requires some changes to KERNEL_DEVICETREE as the dtb layout
has changed to support overlays. This change also makes us ready to
support kernel 4.x series Signed-off-by: Alex J Lennon
<ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
--- conf/machine/include/rpi-base.inc | 22 ++++++++++------------
recipes-kernel/linux/linux-raspberrypi_3.18.bb | 9 +++++++-- 2 files
changed, 17 insertions(+), 14 deletions(-) diff --git
a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 1dda207..8caa5ba 100644 --- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc @@ -23,18 +23,16 @@
KERNEL_DEVICETREE ?= " bcm2708-rpi-b-plus.dtb bcm2709-rpi-2-b.dtb -
ds1307-rtc-overlay.dtb - hifiberry-amp-overlay.dtb -
hifiberry-dac-overlay.dtb - hifiberry-dacplus-overlay.dtb -
hifiberry-digi-overlay.dtb - iqaudio-dac-overlay.dtb -
iqaudio-dacplus-overlay.dtb - lirc-rpi-overlay.dtb -
pcf8523-rtc-overlay.dtb - pps-gpio-overlay.dtb - w1-gpio-overlay.dtb -
w1-gpio-pullup-overlay.dtb + overlays/hifiberry-amp-overlay.dtb +
overlays/hifiberry-dac-overlay.dtb +
overlays/hifiberry-dacplus-overlay.dtb +
overlays/hifiberry-digi-overlay.dtb + overlays/iqaudio-dac-overlay.dtb +
overlays/iqaudio-dacplus-overlay.dtb + overlays/lirc-rpi-overlay.dtb +
overlays/pps-gpio-overlay.dtb + overlays/w1-gpio-overlay.dtb +
overlays/w1-gpio-pullup-overlay.dtb " KERNEL_IMAGETYPE ?= "Image" diff
--git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb index 6d8b155..18c2020
100644 --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb +++
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb @@ -1,6 +1,11 @@
-LINUX_VERSION ?= "3.18.11" +LINUX_VERSION ?= "3.18.16" -SRCREV =
"d64fa8121fca9883d6fb14ca06d2abf66496195e" +SRCREV =
"1bb18c8f721ef674a447f3622273f2e2de7a205c" SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
require linux-raspberrypi.inc + +# Create missing out of tree 'overlays'
directory prior to install step +do_compile_append() { + mkdir -p
${B}/arch/arm/boot/dts/overlays +} -- 1.9.1
>> Hi Alex, At least I get
problems during compile step with above change (I'm building for rpi2).
So are your sure '${B}/arch/arm/boot/dts/overlays' isn't needed during
compile? I tried with changing above from append to prepand instead and
then it worked fine for me (when building 3.18 kernel). (from
log.do_compile, complete log can be found at:
http://www.technux.se/logs/log.do_compile.4398.fail [1] ) KSYM
.tmp_kallsyms1.o KSYM .tmp_kallsyms2.o LD vmlinux SORTEX vmlinux SYSMAP
System.map OBJCOPY arch/arm/boot/Image Kernel: arch/arm/boot/Image is
ready NOTE: make -j 4 bcm2708-rpi-b.dtb DTC
arch/arm/boot/dts/bcm2708-rpi-b.dtb NOTE: make -j 4
bcm2708-rpi-b-plus.dtb DTC arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb
NOTE: make -j 4 bcm2709-rpi-2-b.dtb DTC
arch/arm/boot/dts/bcm2709-rpi-2-b.dtb NOTE: make -j 4
overlays/hifiberry-amp-overlay.dtb DTC
arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb cc1: fatal error:
opening output file
arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp: No such
file or directory compilation terminated. make[3]: ***
[arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error 1 make[2]:
*** [overlays/hifiberry-amp-overlay.dtb] Error 2 make[1]: *** [sub-make]
Error 2 make: *** [__sub-make] Error 2 ERROR: oe_runmake failed ERROR:
Function failed: do_compile (log file is located at
/home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/temp/log.do_compile.4398)
BR, Petter
> 
> Hi Petter,
> 
> Thanks for testing that out. That is
indeed exactly what I was seeing
> before I added the directory
creation.
> 
> I did do the following test for both 3.18.x and 4.1.3
kernels (rpi2)
> 
> bitbake -f -c cleansstate virtual/kernel
> bitbake
-f virtual/kernel
> 
> I've just re-run that again here and it works for
me as-is. I thought
> cleansstate was causing me to build from scratch
so I'm unclear as to
> why I'm not seeing the problem...
> 
> NB. I'd
also add that for preference I'd like to see the kernel build
> Makefile
patched with whatever is in 4.1 to create that needed overlays
>
directory but I've had a look and can't spot it.
> 
> Cheers,
> 
>
Alex

Hmm Ok, might be some "pebcak" from my side, since I was using an
old sstate, but according to my history I did 'cleanall' before I got
the problem. But will re-try this on a completely new build without any
old savings (it will take some time to test however..). What struck me
was that the failure occurred in do_compile (from what I can tell the
failure in my logs occur before your _append had been able to do
anything about it?). I will analyse the run.do_compile if the failure
occurs again and see if that make any sense. I will let you know if the
problem occurs again. But since both you and Herve haven't seen any
problem I guess it's something I'm doing wrong.. 

BR, Petter


Links:
------
[1] http://www.technux.se/logs/log.do_compile.4398.fail

--=_133c737320d5d59f6a43a5a5c6ed3764
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-11 10:31 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On 11/08/2015 08:58, Petter Mab&auml;cker wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">2015-08-10 13:08 skrev Alex J Lennon:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">This requires some changes to KERNEL_=
DEVICETREE as the dtb layout has changed to support overlays. This change a=
lso makes us ready to support kernel 4.x series Signed-off-by: Alex J Lenno=
n &lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevi=
ces.co.uk</a> &lt;mailto:<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">a=
jlennon@dynamicdevices.co.uk</a>&gt;&gt; --- conf/machine/include/rpi-base=
=2Einc | 22 ++++++++++------------ recipes-kernel/linux/linux-raspberrypi_3=
=2E18.bb | 9 +++++++-- 2 files changed, 17 insertions(+), 14 deletions(-) d=
iff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-ba=
se.inc index 1dda207..8caa5ba 100644 --- a/conf/machine/include/rpi-base.in=
c +++ b/conf/machine/include/rpi-base.inc @@ -23,18 +23,16 @@ KERNEL_DEVICE=
TREE ?=3D " \ bcm2708-rpi-b-plus.dtb \ bcm2709-rpi-2-b.dtb \ \ - ds1307-rtc=
-overlay.dtb \ - hifiberry-amp-overlay.dtb \ - hifiberry-dac-overlay.dtb \ =
- hifiberry-dacplus-overlay.dtb \ - hifiberry-digi-overlay.dtb \ - iqaudio-=
dac-overlay.dtb \ - iqaudio-dacplus-overlay.dtb \ - lirc-rpi-overlay.dtb \ =
- pcf8523-rtc-overlay.dtb \ - pps-gpio-overlay.dtb \ - w1-gpio-overlay.dtb =
\ - w1-gpio-pullup-overlay.dtb \ + overlays/hifiberry-amp-overlay.dtb \ + o=
verlays/hifiberry-dac-overlay.dtb \ + overlays/hifiberry-dacplus-overlay.dt=
b \ + overlays/hifiberry-digi-overlay.dtb \ + overlays/iqaudio-dac-overlay=
=2Edtb \ + overlays/iqaudio-dacplus-overlay.dtb \ + overlays/lirc-rpi-overl=
ay.dtb \ + overlays/pps-gpio-overlay.dtb \ + overlays/w1-gpio-overlay.dtb \=
 + overlays/w1-gpio-pullup-overlay.dtb \ " KERNEL_IMAGETYPE ?=3D "Image" di=
ff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/=
linux/linux-raspberrypi_3.18.bb index 6d8b155..18c2020 100644 --- a/recipes=
-kernel/linux/linux-raspberrypi_3.18.bb +++ b/recipes-kernel/linux/linux-ra=
spberrypi_3.18.bb @@ -1,6 +1,11 @@ -LINUX_VERSION ?=3D "3.18.11" +LINUX_VER=
SION ?=3D "3.18.16" -SRCREV =3D "d64fa8121fca9883d6fb14ca06d2abf66496195e" =
+SRCREV =3D "1bb18c8f721ef674a447f3622273f2e2de7a205c" SRC_URI =3D "git://g=
ithub.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y" require=
 linux-raspberrypi.inc + +# Create missing out of tree 'overlays' directory=
 prior to install step +do_compile_append() { + mkdir -p ${B}/arch/arm/boot=
/dts/overlays +} -- 1.9.1</blockquote>
Hi Alex, At least I get problems during compile step with above change (I'm=
 building for rpi2). So are your sure '${B}/arch/arm/boot/dts/overlays' isn=
't needed during compile? I tried with changing above from append to prepan=
d instead and then it worked fine for me (when building 3.18 kernel). (from=
 log.do_compile, complete log can be found at: <a href=3D"http://www.technu=
x.se/logs/log.do_compile.4398.fail">http://www.technux.se/logs/log.do_compi=
le.4398.fail</a> ) KSYM .tmp_kallsyms1.o KSYM .tmp_kallsyms2.o LD vmlinux S=
ORTEX vmlinux SYSMAP System.map OBJCOPY arch/arm/boot/Image Kernel: arch/ar=
m/boot/Image is ready NOTE: make -j 4 bcm2708-rpi-b.dtb DTC arch/arm/boot/d=
ts/bcm2708-rpi-b.dtb NOTE: make -j 4 bcm2708-rpi-b-plus.dtb DTC arch/arm/bo=
ot/dts/bcm2708-rpi-b-plus.dtb NOTE: make -j 4 bcm2709-rpi-2-b.dtb DTC arch/=
arm/boot/dts/bcm2709-rpi-2-b.dtb NOTE: make -j 4 overlays/hifiberry-amp-ove=
rlay.dtb DTC arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb cc1: fata=
l error: opening output file arch/arm/boot/dts/overlays/.hifiberry-amp-over=
lay.dtb.dts.tmp: No such file or directory compilation terminated. make[3]:=
 *** [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error 1 make[2]=
: *** [overlays/hifiberry-amp-overlay.dtb] Error 2 make[1]: *** [sub-make] =
Error 2 make: *** [__sub-make] Error 2 ERROR: oe_runmake failed ERROR: Func=
tion failed: do_compile (log file is located at /home/epetmab/programming/y=
octo/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspbe=
rrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/temp/log.do_co=
mpile.4398) BR, Petter</blockquote>
<pre>Hi Petter,

Thanks for testing that out. That is indeed exactly what I was seeing
before I added the directory creation.

I did do the following test for both 3.18.x and 4.1.3 kernels (rpi2)

bitbake -f -c cleansstate virtual/kernel
bitbake -f virtual/kernel

I've just re-run that again here and it works for me as-is. I thought
cleansstate was causing me to build from scratch so I'm unclear as to
why I'm not seeing the problem...

NB. I'd also add that for preference I'd like to see the kernel build
Makefile patched with whatever is in 4.1 to create that needed overlays
directory but I've had a look and can't spot it.

Cheers,

Alex
<br />
</pre>
</blockquote>
<p>Hmm Ok, might be some "pebcak" from my side, since I was using an old ss=
tate, but according to my history I did 'cleanall' before I got the problem=
=2E But will re-try this on a completely new build without any old savings =
(it will take some time to test however..). What struck me was that the fai=
lure occurred in do_compile (from what I can tell the failure in my logs oc=
cur before your _append had been able to do anything about it?). I will ana=
lyse the run.do_compile if the failure occurs again and see if that make an=
y sense. I will let you know if the problem occurs again. But since both yo=
u and Herve haven't seen any problem I guess it's something I'm doing wrong=
=2E.</p>
<p>BR, Petter</p>
</body></html>

--=_133c737320d5d59f6a43a5a5c6ed3764--
