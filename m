Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B80B9E0086D; Tue, 11 Aug 2015 07:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F9DE005A2
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 07:02:30 -0700 (PDT)
X-Halon-ID: a3a6d60e-4031-11e5-8db1-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 11 Aug 2015 16:02:44 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 11 Aug 2015 16:02:26 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <55C9F42D.2050909@dynamicdevices.co.uk>
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<fc34ba0543c946b98d8d736ff5e66421@technux.se>
	<55C9B2EE.2090406@gmail.com>
	<af77dd672b17395613fdd2d09285aa46@technux.se>
	<CAJ8H0rJe3Nz+d32ksyZ3iP7w9rzV5AkvCKsZy=qpFAmSbHjPpg@mail.gmail.com>
	<034593ed817a9a220ef7074e598f9b2d@technux.se>
	<55C9F42D.2050909@dynamicdevices.co.uk>
Message-ID: <3ad440473bcb6e0b15f98fb3abcb1cd9@technux.se>
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
X-List-Received-Date: Tue, 11 Aug 2015 14:02:38 -0000
Content-Type: multipart/alternative;
	boundary="=_ae694e9cc08e37875da3842b1b2a4b07"

--=_ae694e9cc08e37875da3842b1b2a4b07
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-11 15:10 skrev Alex J Lennon: 

> On 11/08/2015 11:34,
Petter Mabäcker wrote: 
> 
>> 2015-08-11 11:03 skrev Alex Lennon: 
>>

>>> On Tuesday, August 11, 2015, Petter Mabäcker <petter@technux.se>
wrote:
>>> 
>>>> 2015-08-11 10:31 skrev Alex J Lennon: 
>>>> 
>>>>> On
11/08/2015 08:58, Petter Mabäcker wrote:
>>>>> 
>>>>>> 2015-08-10 13:08
skrev Alex J Lennon: 
>>>>>> 
>>>>>>> This requires some changes to
KERNEL_DEVICETREE as the dtb layout has changed to support overlays.
This change also makes us ready to support kernel 4.x series
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk
<mailto:ajlennon@dynamicdevices.co.uk>> ---
conf/machine/include/rpi-base.inc | 22 ++++++++++------------
recipes-kernel/linux/linux-raspberrypi_3.18.bb [1] | 9 +++++++-- 2 files
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
--git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb [1]
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb [1] index
6d8b155..18c2020 100644 ---
a/recipes-kernel/linux/linux-raspberrypi_3.18.bb [1] +++
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb [1] @@ -1,6 +1,11 @@
-LINUX_VERSION ?= "3.18.11" +LINUX_VERSION ?= "3.18.16" -SRCREV =
"d64fa8121fca9883d6fb14ca06d2abf66496195e" +SRCREV =
"1bb18c8f721ef674a447f3622273f2e2de7a205c" SRC_URI = "git://
[2]github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y [3]"
require linux-raspberrypi.inc + +# Create missing out of tree 'overlays'
directory prior to install step +do_compile_append() { + mkdir -p
${B}/arch/arm/boot/dts/overlays +} -- 1.9.1
>>>>>> Hi Alex, At least I
get problems during compile step with above change (I'm building for
rpi2). So are your sure '${B}/arch/arm/boot/dts/overlays' isn't needed
during compile? I tried with changing above from append to
> 
>>>>>>
prepand instead and then it worked fine for me (when building 3.18
kernel). (from log.do_compile, complete log can be found at:
http://www.technux.se/logs/log.do_compile.4398.fail [4] ) KSYM
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
>>>>> 
>>>>> Hi Petter,
>>>>> 
>>>>> Thanks for testing that
out. That is indeed exactly what I was seeing
>>>>> before I added the
directory creation.
>>>>> 
>>>>> I did do the following test for both
3.18.x and 4.1.3 kernels (rpi2)
>>>>> 
>>>>> bitbake -f -c cleansstate
virtual/kernel
>>>>> bitbake -f virtual/kernel
>>>>> 
>>>>> I've just
re-run that again here and it works for me as-is. I thought
>>>>>
cleansstate was causing me to build from scratch so I'm unclear as
to
>>>>> why I'm not seeing the problem...
>>>>> 
>>>>> NB. I'd also add
that for preference I'd like to see the kernel build
>>>>> Makefile
patched with whatever is in 4.1 to create that needed overlays
>>>>>
directory but I've had a look and can't spot it.
>>>>> 
>>>>>
Cheers,
>>>>> 
>>>>> Alex
>>>> 
>>>> Hmm Ok, might be some "pebcak" from
my side, since I was using an old sstate, but according to my history I
did 'cleanall' before I got the problem. But will re-try this on a
completely new build without any old savings (it will take some time to
test however..). What struck me was that the failure occurred in
do_compile (from what I can tell the failure in my logs occur before
your _append had been able to do anything about it?). I will analyse the
run.do_compile if the failure occurs again and see if that make any
sense. I will let you know if the problem occurs again. But since both
you and Herve haven't seen any problem I guess it's something I'm doing
wrong..
>>> 
>>> Thanks. As I was trying to figure out what was going on
I did also drop into a devshell and run the configure/compile/install
steps manually and it was the install step failing so I'd be a little
surprised but let's see. 
>>> 
>>> Cheer, Alex
>> 
>> I think I know
what the problem is. Are you building using poky:fido? Because I found a
very interesting commit in this area from May that isn't included in
'fido' from what I can see. d2e26ef kernel: Build DTBs early ... kernel:
Build DTBs early Pull out the compilation of the DTB blobs right after
the kernel's own do_compile function finishes. This makes them available
just in time for the kernel image construction functions. ... This is
also confirmed in the below run.do_compile log. So I guess a my
suggestion with a _prepend instead will solve the problem. 
>> 
>>
do_compile() {
>> kernel_do_compile
>> if test -n " bcm2708-rpi-b.dtb
bcm2708-rpi-b-plus.dtb bcm2709-rpi-2-b.dtb
overlays/hifiberry-amp-overlay.dtb overlays/hifiberry-dac-overlay.dtb
overlays/hifiberry-dacplus-overlay.d
>> tb
overlays/hifiberry-digi-overlay.dtb overlays/iqaudio-dac-overlay.dtb
overlays/iqaudio-dacplus-overlay.dtb overlays/lirc-rpi-overlay.dtb
overlays/pps-gpio-overlay.dtb overlays/w1-gpio-overla
>> y.dtb
overlays/w1-gpio-pullup-overlay.dtb "; then
>> for DTB in
bcm2708-rpi-b.dtb bcm2708-rpi-b-plus.dtb bcm2709-rpi-2-b.dtb
overlays/hifiberry-amp-overlay.dtb overlays/hifiberry-dac-overlay.dtb
overlays/hifiberry-dacplus-ov
>> erlay.dtb
overlays/hifiberry-digi-overlay.dtb overlays/iqaudio-dac-overlay.dtb
overlays/iqaudio-dacplus-overlay.dtb overlays/lirc-rpi-overlay.dtb
overlays/pps-gpio-overlay.dtb overlays/w1-gpio
>> -overlay.dtb
overlays/w1-gpio-pullup-overlay.dtb ; do
>> if echo ${DTB} | grep -q
'/dts/'; then
>> bbwarn "${DTB} contains the full path to the the dts
file, but only the dtb name should be used."
>> DTB=`basename ${DTB} |
sed 's,.dts$,.dtb,g'`
>> fi
>> oe_runmake ${DTB}
>> done
>> fi
>> mkdir
-p
/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/linux-raspberrypi2-standard-build/arch/arm/boot/dts/overlays
>>

>> }
>> 
>> BR, Petter
> 
> Petter, hopefully that v2 patch-set
addresses the issue. I have re-built here and it still works ok under
fido.
> 
> I also have a patch-set for Redmine #44
(http://redmine.gherzan.com/issues/44 [5]) to Yocto-ify the kernel build
to support fragments. This consists of a patch to make fragments work
and a test patch with fragment to build audio into the kernel.
> 
>
Andrei doesn't want audio built into the kernel, which I understand, but
it works for a test. 
> 
> That "yoctoification" work is older than the
3.x/4.x changes but should still be relevant I think. I'd like to get
that in before others start doing the clever stuff around vc4 and so
forth. If I send up to the list can you review?
> 
> Thanks,
Alex

Sounds good. I agree we should try to get that issue integrated as
soon as possible. Send it and I will help review, if my time allows it I
can start by reviewing the series that is linked to in redmine
meanwhile. 

/Petter 

Links:
------
[1]
http://linux-raspberrypi_3.18.bb
[2] git://
[3]
http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y
[4]
http://www.technux.se/logs/log.do_compile.4398.fail
[5]
http://redmine.gherzan.com/issues/44

--=_ae694e9cc08e37875da3842b1b2a4b07
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-11 15:10 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored --><br /><br />
<div class=3D"moz-cite-prefix">On 11/08/2015 11:34, Petter Mab&auml;cker wr=
ote:</div>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<p>2015-08-11 11:03 skrev Alex Lennon:</p>
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;"><br /><br /> On Tuesday, August 11, 2015, Pe=
tter Mab&auml;cker &lt;<a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:petter@technux.se">petter@technux.se</a>&gt; wrote:<br />
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;"><span style=3D"text-decoration: u=
nderline;"></span>
<div style=3D"font-family: Helvetica,Arial,sans-serif;">
<p>2015-08-11 10:31 skrev Alex J Lennon:</p>
<blockquote style=3D"padding-left: 5px; margin-left: 5px; width: 100%;">
<pre>On 11/08/2015 08:58, Petter Mab&auml;cker wrote:</pre>
<blockquote style=3D"padding-left: 5px; margin-left: 5px; width: 100%;">201=
5-08-10 13:08 skrev Alex J Lennon:
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">This requires some changes to KERNEL_DEVICET=
REE as the dtb layout has changed to support overlays. This change also mak=
es us ready to support kernel 4.x series Signed-off-by: Alex J Lennon &lt;<=
a class=3D"moz-txt-link-abbreviated" href=3D"mailto:ajlennon@dynamicdevices=
=2Eco.uk">ajlennon@dynamicdevices.co.uk</a> &lt;mailto:<a>ajlennon@dynamicd=
evices.co.uk</a>&gt;&gt; --- conf/machine/include/rpi-base.inc | 22 +++++++=
+++------------ recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3=
=2E18.bb">linux-raspberrypi_3.18.bb</a> | 9 +++++++-- 2 files changed, 17 i=
nsertions(+), 14 deletions(-) diff --git a/conf/machine/include/rpi-base.in=
c b/conf/machine/include/rpi-base.inc index 1dda207..8caa5ba 100644 --- a/c=
onf/machine/include/rpi-base.inc +++ b/conf/machine/include/rpi-base.inc @@=
 -23,18 +23,16 @@ KERNEL_DEVICETREE ?=3D " \ bcm2708-rpi-b-plus.dtb \ bcm27=
09-rpi-2-b.dtb \ \ - ds1307-rtc-overlay.dtb \ - hifiberry-amp-overlay.dtb \=
 - hifiberry-dac-overlay.dtb \ - hifiberry-dacplus-overlay.dtb \ - hifiberr=
y-digi-overlay.dtb \ - iqaudio-dac-overlay.dtb \ - iqaudio-dacplus-overlay=
=2Edtb \ - lirc-rpi-overlay.dtb \ - pcf8523-rtc-overlay.dtb \ - pps-gpio-ov=
erlay.dtb \ - w1-gpio-overlay.dtb \ - w1-gpio-pullup-overlay.dtb \ + overla=
ys/hifiberry-amp-overlay.dtb \ + overlays/hifiberry-dac-overlay.dtb \ + ove=
rlays/hifiberry-dacplus-overlay.dtb \ + overlays/hifiberry-digi-overlay.dtb=
 \ + overlays/iqaudio-dac-overlay.dtb \ + overlays/iqaudio-dacplus-overlay=
=2Edtb \ + overlays/lirc-rpi-overlay.dtb \ + overlays/pps-gpio-overlay.dtb =
\ + overlays/w1-gpio-overlay.dtb \ + overlays/w1-gpio-pullup-overlay.dtb \ =
" KERNEL_IMAGETYPE ?=3D "Image" diff --git a/recipes-kernel/linux/<a href=
=3D"http://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a> b/recip=
es-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb">linux-raspberr=
ypi_3.18.bb</a> index 6d8b155..18c2020 100644 --- a/recipes-kernel/linux/<a=
 href=3D"http://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a> ++=
+ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb">linux=
-raspberrypi_3.18.bb</a> @@ -1,6 +1,11 @@ -LINUX_VERSION ?=3D "3.18.11" +LI=
NUX_VERSION ?=3D "3.18.16" -SRCREV =3D "d64fa8121fca9883d6fb14ca06d2abf6649=
6195e" +SRCREV =3D "1bb18c8f721ef674a447f3622273f2e2de7a205c" SRC_URI =3D "=
<a class=3D"moz-txt-link-freetext" href=3D"git://">git://</a><a href=3D"htt=
p://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y">gi=
thub.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y</a>" requ=
ire linux-raspberrypi.inc + +# Create missing out of tree 'overlays' direct=
ory prior to install step +do_compile_append() { + mkdir -p ${B}/arch/arm/b=
oot/dts/overlays +} -- 1.9.1</blockquote>
Hi Alex, At least I get problems during compile step with above change (I'm=
 building for rpi2). So are your sure '${B}/arch/arm/boot/dts/overlays' isn=
't needed during compile? I tried with changing above from append to</block=
quote>
</blockquote>
</div>
</blockquote>
</blockquote>
</blockquote>
<br />
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;">
<div style=3D"font-family: Helvetica,Arial,sans-serif;">
<blockquote style=3D"padding-left: 5px; margin-left: 5px; width: 100%;">
<blockquote style=3D"padding-left: 5px; margin-left: 5px; width: 100%;">pre=
pand instead and then it worked fine for me (when building 3.18 kernel). (f=
rom log.do_compile, complete log can be found at: <a href=3D"http://www.tec=
hnux.se/logs/log.do_compile.4398.fail">http://www.technux.se/logs/log.do_co=
mpile.4398.fail</a> ) KSYM .tmp_kallsyms1.o KSYM .tmp_kallsyms2.o LD vmlinu=
x SORTEX vmlinux SYSMAP System.map OBJCOPY arch/arm/boot/Image Kernel: arch=
/arm/boot/Image is ready NOTE: make -j 4 bcm2708-rpi-b.dtb DTC arch/arm/boo=
t/dts/bcm2708-rpi-b.dtb NOTE: make -j 4 bcm2708-rpi-b-plus.dtb DTC arch/arm=
/boot/dts/bcm2708-rpi-b-plus.dtb NOTE: make -j 4 bcm2709-rpi-2-b.dtb DTC ar=
ch/arm/boot/dts/bcm2709-rpi-2-b.dtb NOTE: make -j 4 overlays/hifiberry-amp-=
overlay.dtb DTC arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb cc1: f=
atal error: opening output file arch/arm/boot/dts/overlays/.hifiberry-amp-o=
verlay.dtb.dts.tmp: No such file or directory compilation terminated. make[=
3]: *** [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error 1 make=
[2]: *** [overlays/hifiberry-amp-overlay.dtb] Error 2 make[1]: *** [sub-mak=
e] Error 2 make: *** [__sub-make] Error 2 ERROR: oe_runmake failed ERROR: F=
unction failed: do_compile (log file is located at /home/epetmab/programmin=
g/yocto/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-ras=
pberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/temp/log.do=
_compile.4398) BR, Petter</blockquote>
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
</div>
</blockquote>
<div>&nbsp;</div>
<div>Thanks. As I was trying to figure out what was going on I did also dro=
p into a devshell&nbsp;and run the configure/compile/install steps manually=
 and it was the install step failing&nbsp;so I'd be a little surprised but =
let's see.<span></span></div>
<div>&nbsp;</div>
<div>Cheer, Alex&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</blockquote>
<p>I think I know what the problem is. Are you building using poky:fido? Be=
cause I found a very interesting commit in this area from May that isn't in=
cluded in 'fido' from what I can see. d2e26ef kernel: Build DTBs early ..=
=2E kernel: Build DTBs early Pull out the compilation of the DTB blobs righ=
t after the kernel's own do_compile function finishes. This makes them avai=
lable just in time for the kernel image construction functions. ... This is=
 also confirmed in the below run.do_compile log. So I guess a my suggestion=
 with a _prepend instead will solve the problem.</p>
<pre>do_compile() {
    kernel_do_compile
        if test -n "     bcm2708-rpi-b.dtb     bcm2708-rpi-b-plus.dtb     b=
cm2709-rpi-2-b.dtb         overlays/hifiberry-amp-overlay.dtb     overlays/=
hifiberry-dac-overlay.dtb     overlays/hifiberry-dacplus-overlay.d
tb     overlays/hifiberry-digi-overlay.dtb     overlays/iqaudio-dac-overlay=
=2Edtb     overlays/iqaudio-dacplus-overlay.dtb     overlays/lirc-rpi-overl=
ay.dtb     overlays/pps-gpio-overlay.dtb     overlays/w1-gpio-overla
y.dtb     overlays/w1-gpio-pullup-overlay.dtb     "; then
                for DTB in      bcm2708-rpi-b.dtb     bcm2708-rpi-b-plus.dt=
b     bcm2709-rpi-2-b.dtb         overlays/hifiberry-amp-overlay.dtb     ov=
erlays/hifiberry-dac-overlay.dtb     overlays/hifiberry-dacplus-ov
erlay.dtb     overlays/hifiberry-digi-overlay.dtb     overlays/iqaudio-dac-=
overlay.dtb     overlays/iqaudio-dacplus-overlay.dtb     overlays/lirc-rpi-=
overlay.dtb     overlays/pps-gpio-overlay.dtb     overlays/w1-gpio
-overlay.dtb     overlays/w1-gpio-pullup-overlay.dtb     ; do
                        if echo ${DTB} | grep -q '/dts/'; then
                                bbwarn "${DTB} contains the full path to th=
e the dts file, but only the dtb name should be used."
                                DTB=3D`basename ${DTB} | sed 's,\.dts$,.dtb=
,g'`
                        fi
                        oe_runmake ${DTB}
                done
        fi
  mkdir -p /tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18=
=2E16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/linux-raspberrypi2-sta=
ndard-build/arch/arm/boot/dts/overlays

}

</pre>
<p>BR, Petter</p>
<p>&nbsp;</p>
</blockquote>
<br /> Petter, hopefully that v2 patch-set addresses the issue. I have re-b=
uilt here and it still works ok under fido.<br /><br /> I also have a patch=
-set for Redmine #44 (<a class=3D"moz-txt-link-freetext" href=3D"http://red=
mine.gherzan.com/issues/44">http://redmine.gherzan.com/issues/44</a>) to Yo=
cto-ify the kernel build to support fragments. This consists of a patch to =
make fragments work and a test patch with fragment to build audio into the =
kernel.<br /><br /> Andrei doesn't want audio built into the kernel, which =
I understand, but it works for a test. <br /><br /> That "yoctoification" w=
ork is older than the 3.x/4.x changes but should still be relevant I think=
=2E I'd like to get that in before others start doing the clever stuff arou=
nd vc4 and so forth. If I send up to the list can you review?<br /><br /> T=
hanks, Alex</blockquote>
<p>Sounds good. I agree we should try to get that issue integrated as soon =
as possible. Send it and I will help review, if my time allows it I can sta=
rt by reviewing the series that is linked to in redmine meanwhile.</p>
<p>/Petter</p>
</body></html>

--=_ae694e9cc08e37875da3842b1b2a4b07--
