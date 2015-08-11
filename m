Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C0B0E00A92; Tue, 11 Aug 2015 06:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL
	blocklist *      [URIs: gherzan.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 927FDE00A92
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 06:10:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 1E77A27E327;
	Tue, 11 Aug 2015 13:10:19 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id RVDpbvTiqgUz; Tue, 11 Aug 2015 13:10:16 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A745427E30B;
	Tue, 11 Aug 2015 13:10:10 +0000 (UTC)
To: petter@technux.se
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<fc34ba0543c946b98d8d736ff5e66421@technux.se>
	<55C9B2EE.2090406@gmail.com>
	<af77dd672b17395613fdd2d09285aa46@technux.se>
	<CAJ8H0rJe3Nz+d32ksyZ3iP7w9rzV5AkvCKsZy=qpFAmSbHjPpg@mail.gmail.com>
	<034593ed817a9a220ef7074e598f9b2d@technux.se>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <55C9F42D.2050909@dynamicdevices.co.uk>
Date: Tue, 11 Aug 2015 14:10:05 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <034593ed817a9a220ef7074e598f9b2d@technux.se>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 11 Aug 2015 13:10:23 -0000
Content-Type: multipart/alternative;
	boundary="------------060604050700050109040803"

--------------060604050700050109040803
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 11/08/2015 11:34, Petter Mabäcker wrote:
>
> 2015-08-11 11:03 skrev Alex Lennon:
>
>>
>>
>> On Tuesday, August 11, 2015, Petter Mabäcker <petter@technux.se
>> <mailto:petter@technux.se>> wrote:
>>
>>     2015-08-11 10:31 skrev Alex J Lennon:
>>
>>         On 11/08/2015 08:58, Petter Mabäcker wrote:
>>
>>             2015-08-10 13:08 skrev Alex J Lennon:
>>
>>                 This requires some changes to KERNEL_DEVICETREE as
>>                 the dtb layout has changed to support overlays. This
>>                 change also makes us ready to support kernel 4.x
>>                 series Signed-off-by: Alex J Lennon
>>                 <ajlennon@dynamicdevices.co.uk
>>                 <mailto:ajlennon@dynamicdevices.co.uk>> ---
>>                 conf/machine/include/rpi-base.inc | 22
>>                 ++++++++++------------
>>                 recipes-kernel/linux/linux-raspberrypi_3.18.bb
>>                 <http://linux-raspberrypi_3.18.bb> | 9 +++++++-- 2
>>                 files changed, 17 insertions(+), 14 deletions(-) diff
>>                 --git a/conf/machine/include/rpi-base.inc
>>                 b/conf/machine/include/rpi-base.inc index
>>                 1dda207..8caa5ba 100644 ---
>>                 a/conf/machine/include/rpi-base.inc +++
>>                 b/conf/machine/include/rpi-base.inc @@ -23,18 +23,16
>>                 @@ KERNEL_DEVICETREE ?= " \ bcm2708-rpi-b-plus.dtb \
>>                 bcm2709-rpi-2-b.dtb \ \ - ds1307-rtc-overlay.dtb \ -
>>                 hifiberry-amp-overlay.dtb \ -
>>                 hifiberry-dac-overlay.dtb \ -
>>                 hifiberry-dacplus-overlay.dtb \ -
>>                 hifiberry-digi-overlay.dtb \ -
>>                 iqaudio-dac-overlay.dtb \ -
>>                 iqaudio-dacplus-overlay.dtb \ - lirc-rpi-overlay.dtb
>>                 \ - pcf8523-rtc-overlay.dtb \ - pps-gpio-overlay.dtb
>>                 \ - w1-gpio-overlay.dtb \ -
>>                 w1-gpio-pullup-overlay.dtb \ +
>>                 overlays/hifiberry-amp-overlay.dtb \ +
>>                 overlays/hifiberry-dac-overlay.dtb \ +
>>                 overlays/hifiberry-dacplus-overlay.dtb \ +
>>                 overlays/hifiberry-digi-overlay.dtb \ +
>>                 overlays/iqaudio-dac-overlay.dtb \ +
>>                 overlays/iqaudio-dacplus-overlay.dtb \ +
>>                 overlays/lirc-rpi-overlay.dtb \ +
>>                 overlays/pps-gpio-overlay.dtb \ +
>>                 overlays/w1-gpio-overlay.dtb \ +
>>                 overlays/w1-gpio-pullup-overlay.dtb \ "
>>                 KERNEL_IMAGETYPE ?= "Image" diff --git
>>                 a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
>>                 <http://linux-raspberrypi_3.18.bb>
>>                 b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
>>                 <http://linux-raspberrypi_3.18.bb> index
>>                 6d8b155..18c2020 100644 ---
>>                 a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
>>                 <http://linux-raspberrypi_3.18.bb> +++
>>                 b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
>>                 <http://linux-raspberrypi_3.18.bb> @@ -1,6 +1,11 @@
>>                 -LINUX_VERSION ?= "3.18.11" +LINUX_VERSION ?=
>>                 "3.18.16" -SRCREV =
>>                 "d64fa8121fca9883d6fb14ca06d2abf66496195e" +SRCREV =
>>                 "1bb18c8f721ef674a447f3622273f2e2de7a205c" SRC_URI =
>>                 "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y
>>                 <http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y>"
>>                 require linux-raspberrypi.inc + +# Create missing out
>>                 of tree 'overlays' directory prior to install step
>>                 +do_compile_append() { + mkdir -p
>>                 ${B}/arch/arm/boot/dts/overlays +} -- 1.9.1
>>
>>             Hi Alex, At least I get problems during compile step with
>>             above change (I'm building for rpi2). So are your sure
>>             '${B}/arch/arm/boot/dts/overlays' isn't needed during
>>             compile? I tried with changing above from append to 
>>

>>             prepand instead and then it worked fine for me (when
>>             building 3.18 kernel). (from log.do_compile, complete log
>>             can be found at:
>>             http://www.technux.se/logs/log.do_compile.4398.fail )
>>             KSYM .tmp_kallsyms1.o KSYM .tmp_kallsyms2.o LD vmlinux
>>             SORTEX vmlinux SYSMAP System.map OBJCOPY
>>             arch/arm/boot/Image Kernel: arch/arm/boot/Image is ready
>>             NOTE: make -j 4 bcm2708-rpi-b.dtb DTC
>>             arch/arm/boot/dts/bcm2708-rpi-b.dtb NOTE: make -j 4
>>             bcm2708-rpi-b-plus.dtb DTC
>>             arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb NOTE: make -j 4
>>             bcm2709-rpi-2-b.dtb DTC
>>             arch/arm/boot/dts/bcm2709-rpi-2-b.dtb NOTE: make -j 4
>>             overlays/hifiberry-amp-overlay.dtb DTC
>>             arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb cc1:
>>             fatal error: opening output file
>>             arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp:
>>             No such file or directory compilation terminated.
>>             make[3]: ***
>>             [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb]
>>             Error 1 make[2]: *** [overlays/hifiberry-amp-overlay.dtb]
>>             Error 2 make[1]: *** [sub-make] Error 2 make: ***
>>             [__sub-make] Error 2 ERROR: oe_runmake failed ERROR:
>>             Function failed: do_compile (log file is located at
>>             /home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/temp/log.do_compile.4398)
>>             BR, Petter
>>
>>         Hi Petter,
>>
>>         Thanks for testing that out. That is indeed exactly what I was seeing
>>         before I added the directory creation.
>>
>>         I did do the following test for both 3.18.x and 4.1.3 kernels (rpi2)
>>
>>         bitbake -f -c cleansstate virtual/kernel
>>         bitbake -f virtual/kernel
>>
>>         I've just re-run that again here and it works for me as-is. I thought
>>         cleansstate was causing me to build from scratch so I'm unclear as to
>>         why I'm not seeing the problem...
>>
>>         NB. I'd also add that for preference I'd like to see the kernel build
>>         Makefile patched with whatever is in 4.1 to create that needed overlays
>>         directory but I've had a look and can't spot it.
>>
>>         Cheers,
>>
>>         Alex
>>
>>     Hmm Ok, might be some "pebcak" from my side, since I was using an
>>     old sstate, but according to my history I did 'cleanall' before I
>>     got the problem. But will re-try this on a completely new build
>>     without any old savings (it will take some time to test
>>     however..). What struck me was that the failure occurred in
>>     do_compile (from what I can tell the failure in my logs occur
>>     before your _append had been able to do anything about it?). I
>>     will analyse the run.do_compile if the failure occurs again and
>>     see if that make any sense. I will let you know if the problem
>>     occurs again. But since both you and Herve haven't seen any
>>     problem I guess it's something I'm doing wrong..
>>
>>  
>> Thanks. As I was trying to figure out what was going on I did also
>> drop into a devshell and run the configure/compile/install steps
>> manually and it was the install step failing so I'd be a little
>> surprised but let's see.
>>  
>> Cheer, Alex 
>>  
>>  
>>  
>
> I think I know what the problem is. Are you building using poky:fido?
> Because I found a very interesting commit in this area from May that
> isn't included in 'fido' from what I can see. d2e26ef kernel: Build
> DTBs early ... kernel: Build DTBs early Pull out the compilation of
> the DTB blobs right after the kernel's own do_compile function
> finishes. This makes them available just in time for the kernel image
> construction functions. ... This is also confirmed in the below
> run.do_compile log. So I guess a my suggestion with a _prepend instead
> will solve the problem.
>
> do_compile() {
>     kernel_do_compile
>         if test -n "     bcm2708-rpi-b.dtb     bcm2708-rpi-b-plus.dtb     bcm2709-rpi-2-b.dtb         overlays/hifiberry-amp-overlay.dtb     overlays/hifiberry-dac-overlay.dtb     overlays/hifiberry-dacplus-overlay.d
> tb     overlays/hifiberry-digi-overlay.dtb     overlays/iqaudio-dac-overlay.dtb     overlays/iqaudio-dacplus-overlay.dtb     overlays/lirc-rpi-overlay.dtb     overlays/pps-gpio-overlay.dtb     overlays/w1-gpio-overla
> y.dtb     overlays/w1-gpio-pullup-overlay.dtb     "; then
>                 for DTB in      bcm2708-rpi-b.dtb     bcm2708-rpi-b-plus.dtb     bcm2709-rpi-2-b.dtb         overlays/hifiberry-amp-overlay.dtb     overlays/hifiberry-dac-overlay.dtb     overlays/hifiberry-dacplus-ov
> erlay.dtb     overlays/hifiberry-digi-overlay.dtb     overlays/iqaudio-dac-overlay.dtb     overlays/iqaudio-dacplus-overlay.dtb     overlays/lirc-rpi-overlay.dtb     overlays/pps-gpio-overlay.dtb     overlays/w1-gpio
> -overlay.dtb     overlays/w1-gpio-pullup-overlay.dtb     ; do
>                         if echo ${DTB} | grep -q '/dts/'; then
>                                 bbwarn "${DTB} contains the full path to the the dts file, but only the dtb name should be used."
>                                 DTB=`basename ${DTB} | sed 's,\.dts$,.dtb,g'`
>                         fi
>                         oe_runmake ${DTB}
>                 done
>         fi
>   mkdir -p /tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/linux-raspberrypi2-standard-build/arch/arm/boot/dts/overlays
>
> }
>
> BR, Petter
>
>  
>

Petter, hopefully that v2 patch-set addresses the issue. I have re-built
here and it still works ok under fido.

I also have a patch-set for Redmine #44
(http://redmine.gherzan.com/issues/44) to Yocto-ify the kernel build to
support fragments. This consists of a patch to make fragments work and a
test patch with fragment to build audio into the kernel.

Andrei doesn't want audio built into the kernel, which I understand, but
it works for a test.

That "yoctoification" work is older than the 3.x/4.x changes but should
still be relevant I think. I'd like to get that in before others start
doing the clever stuff around vc4 and so forth. If I send up to the list
can you review?

Thanks, Alex

--------------060604050700050109040803
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 11/08/2015 11:34, Petter Mabäcker
      wrote:<br>
    </div>
    <blockquote cite="mid:034593ed817a9a220ef7074e598f9b2d@technux.se"
      type="cite">
      <p>2015-08-11 11:03 skrev Alex Lennon:</p>
      <blockquote type="cite" style="padding-left:5px;
        border-left:#1010ff 2px solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignored --><!-- meta ignored --><br>
        <br>
        On Tuesday, August 11, 2015, Petter Mabäcker &lt;<a
          moz-do-not-send="true" href="mailto:petter@technux.se"><a class="moz-txt-link-abbreviated" href="mailto:petter@technux.se">petter@technux.se</a></a>&gt;
        wrote:<br>
        <blockquote class="gmail_quote" style="margin: 0 0 0 .8ex;
          border-left: 1px #ccc solid; padding-left: 1ex;"><span
            style="text-decoration: underline;"></span>
          <div style="font-family: Helvetica,Arial,sans-serif;">
            <p>2015-08-11 10:31 skrev Alex J Lennon:</p>
            <blockquote style="padding-left: 5px; border-left: #1010ff
              2px solid; margin-left: 5px; width: 100%;">
              <pre>On 11/08/2015 08:58, Petter Mabäcker wrote:</pre>
              <blockquote style="padding-left: 5px; border-left: #1010ff
                2px solid; margin-left: 5px; width: 100%;">2015-08-10
                13:08 skrev Alex J Lennon:
                <blockquote style="padding-left: 5px; border-left:
                  #1010ff 2px solid; margin-left: 5px; width: 100%;">This
                  requires some changes to KERNEL_DEVICETREE as the dtb
                  layout has changed to support overlays. This change
                  also makes us ready to support kernel 4.x series
                  Signed-off-by: Alex J Lennon &lt;<a
                    moz-do-not-send="true"><a class="moz-txt-link-abbreviated" href="mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a></a>
                  &lt;mailto:<a moz-do-not-send="true">ajlennon@dynamicdevices.co.uk</a>&gt;&gt;
                  --- conf/machine/include/rpi-base.inc | 22
                  ++++++++++------------ recipes-kernel/linux/<a
                    moz-do-not-send="true"
                    href="http://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a>
                  | 9 +++++++-- 2 files changed, 17 insertions(+), 14
                  deletions(-) diff --git
                  a/conf/machine/include/rpi-base.inc
                  b/conf/machine/include/rpi-base.inc index
                  1dda207..8caa5ba 100644 ---
                  a/conf/machine/include/rpi-base.inc +++
                  b/conf/machine/include/rpi-base.inc @@ -23,18 +23,16
                  @@ KERNEL_DEVICETREE ?= " \ bcm2708-rpi-b-plus.dtb \
                  bcm2709-rpi-2-b.dtb \ \ - ds1307-rtc-overlay.dtb \ -
                  hifiberry-amp-overlay.dtb \ -
                  hifiberry-dac-overlay.dtb \ -
                  hifiberry-dacplus-overlay.dtb \ -
                  hifiberry-digi-overlay.dtb \ - iqaudio-dac-overlay.dtb
                  \ - iqaudio-dacplus-overlay.dtb \ -
                  lirc-rpi-overlay.dtb \ - pcf8523-rtc-overlay.dtb \ -
                  pps-gpio-overlay.dtb \ - w1-gpio-overlay.dtb \ -
                  w1-gpio-pullup-overlay.dtb \ +
                  overlays/hifiberry-amp-overlay.dtb \ +
                  overlays/hifiberry-dac-overlay.dtb \ +
                  overlays/hifiberry-dacplus-overlay.dtb \ +
                  overlays/hifiberry-digi-overlay.dtb \ +
                  overlays/iqaudio-dac-overlay.dtb \ +
                  overlays/iqaudio-dacplus-overlay.dtb \ +
                  overlays/lirc-rpi-overlay.dtb \ +
                  overlays/pps-gpio-overlay.dtb \ +
                  overlays/w1-gpio-overlay.dtb \ +
                  overlays/w1-gpio-pullup-overlay.dtb \ "
                  KERNEL_IMAGETYPE ?= "Image" diff --git
                  a/recipes-kernel/linux/<a moz-do-not-send="true"
                    href="http://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a>
                  b/recipes-kernel/linux/<a moz-do-not-send="true"
                    href="http://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a>
                  index 6d8b155..18c2020 100644 ---
                  a/recipes-kernel/linux/<a moz-do-not-send="true"
                    href="http://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a>
                  +++ b/recipes-kernel/linux/<a moz-do-not-send="true"
                    href="http://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a>
                  @@ -1,6 +1,11 @@ -LINUX_VERSION ?= "3.18.11"
                  +LINUX_VERSION ?= "3.18.16" -SRCREV =
                  "d64fa8121fca9883d6fb14ca06d2abf66496195e" +SRCREV =
                  "1bb18c8f721ef674a447f3622273f2e2de7a205c" SRC_URI =
                  "<a class="moz-txt-link-freetext" href="git://">git://</a><a moz-do-not-send="true"
href="http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y">github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y</a>"
                  require linux-raspberrypi.inc + +# Create missing out
                  of tree 'overlays' directory prior to install step
                  +do_compile_append() { + mkdir -p
                  ${B}/arch/arm/boot/dts/overlays +} -- 1.9.1</blockquote>
                Hi Alex, At least I get problems during compile step
                with above change (I'm building for rpi2). So are your
                sure '${B}/arch/arm/boot/dts/overlays' isn't needed
                during compile? I tried with changing above from append
                to </blockquote>
            </blockquote>
          </div>
        </blockquote>
      </blockquote>
    </blockquote>
    <br>
    <blockquote cite="mid:034593ed817a9a220ef7074e598f9b2d@technux.se"
      type="cite">
      <blockquote type="cite" style="padding-left:5px;
        border-left:#1010ff 2px solid; margin-left:5px; width:100%">
        <blockquote class="gmail_quote" style="margin: 0 0 0 .8ex;
          border-left: 1px #ccc solid; padding-left: 1ex;">
          <div style="font-family: Helvetica,Arial,sans-serif;">
            <blockquote style="padding-left: 5px; border-left: #1010ff
              2px solid; margin-left: 5px; width: 100%;">
              <blockquote style="padding-left: 5px; border-left: #1010ff
                2px solid; margin-left: 5px; width: 100%;">prepand
                instead and then it worked fine for me (when building
                3.18 kernel). (from log.do_compile, complete log can be
                found at: <a moz-do-not-send="true"
                  href="http://www.technux.se/logs/log.do_compile.4398.fail">http://www.technux.se/logs/log.do_compile.4398.fail</a>
                ) KSYM .tmp_kallsyms1.o KSYM .tmp_kallsyms2.o LD vmlinux
                SORTEX vmlinux SYSMAP System.map OBJCOPY
                arch/arm/boot/Image Kernel: arch/arm/boot/Image is ready
                NOTE: make -j 4 bcm2708-rpi-b.dtb DTC
                arch/arm/boot/dts/bcm2708-rpi-b.dtb NOTE: make -j 4
                bcm2708-rpi-b-plus.dtb DTC
                arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb NOTE: make -j 4
                bcm2709-rpi-2-b.dtb DTC
                arch/arm/boot/dts/bcm2709-rpi-2-b.dtb NOTE: make -j 4
                overlays/hifiberry-amp-overlay.dtb DTC
                arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb
                cc1: fatal error: opening output file
                arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp:
                No such file or directory compilation terminated.
                make[3]: ***
                [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb]
                Error 1 make[2]: ***
                [overlays/hifiberry-amp-overlay.dtb] Error 2 make[1]:
                *** [sub-make] Error 2 make: *** [__sub-make] Error 2
                ERROR: oe_runmake failed ERROR: Function failed:
                do_compile (log file is located at
                /home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/temp/log.do_compile.4398)
                BR, Petter</blockquote>
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
            <p>Hmm Ok, might be some "pebcak" from my side, since I was
              using an old sstate, but according to my history I did
              'cleanall' before I got the problem. But will re-try this
              on a completely new build without any old savings (it will
              take some time to test however..). What struck me was that
              the failure occurred in do_compile (from what I can tell
              the failure in my logs occur before your _append had been
              able to do anything about it?). I will analyse the
              run.do_compile if the failure occurs again and see if that
              make any sense. I will let you know if the problem occurs
              again. But since both you and Herve haven't seen any
              problem I guess it's something I'm doing wrong..</p>
          </div>
        </blockquote>
        <div> </div>
        <div>Thanks. As I was trying to figure out what was going on I
          did also drop into a devshell and run the
          configure/compile/install steps manually and it was the
          install step failing so I'd be a little surprised but let's
          see.<span></span></div>
        <div> </div>
        <div>Cheer, Alex </div>
        <div> </div>
        <div> </div>
        <div> </div>
      </blockquote>
      <p>I think I know what the problem is. Are you building using
        poky:fido? Because I found a very interesting commit in this
        area from May that isn't included in 'fido' from what I can see.
        d2e26ef kernel: Build DTBs early ... kernel: Build DTBs early
        Pull out the compilation of the DTB blobs right after the
        kernel's own do_compile function finishes. This makes them
        available just in time for the kernel image construction
        functions. ... This is also confirmed in the below
        run.do_compile log. So I guess a my suggestion with a _prepend
        instead will solve the problem.</p>
      <pre>do_compile() {
    kernel_do_compile
        if test -n "     bcm2708-rpi-b.dtb     bcm2708-rpi-b-plus.dtb     bcm2709-rpi-2-b.dtb         overlays/hifiberry-amp-overlay.dtb     overlays/hifiberry-dac-overlay.dtb     overlays/hifiberry-dacplus-overlay.d
tb     overlays/hifiberry-digi-overlay.dtb     overlays/iqaudio-dac-overlay.dtb     overlays/iqaudio-dacplus-overlay.dtb     overlays/lirc-rpi-overlay.dtb     overlays/pps-gpio-overlay.dtb     overlays/w1-gpio-overla
y.dtb     overlays/w1-gpio-pullup-overlay.dtb     "; then
                for DTB in      bcm2708-rpi-b.dtb     bcm2708-rpi-b-plus.dtb     bcm2709-rpi-2-b.dtb         overlays/hifiberry-amp-overlay.dtb     overlays/hifiberry-dac-overlay.dtb     overlays/hifiberry-dacplus-ov
erlay.dtb     overlays/hifiberry-digi-overlay.dtb     overlays/iqaudio-dac-overlay.dtb     overlays/iqaudio-dacplus-overlay.dtb     overlays/lirc-rpi-overlay.dtb     overlays/pps-gpio-overlay.dtb     overlays/w1-gpio
-overlay.dtb     overlays/w1-gpio-pullup-overlay.dtb     ; do
                        if echo ${DTB} | grep -q '/dts/'; then
                                bbwarn "${DTB} contains the full path to the the dts file, but only the dtb name should be used."
                                DTB=`basename ${DTB} | sed 's,\.dts$,.dtb,g'`
                        fi
                        oe_runmake ${DTB}
                done
        fi
  mkdir -p /tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/linux-raspberrypi2-standard-build/arch/arm/boot/dts/overlays

}

</pre>
      <p>BR, Petter</p>
      <p> </p>
    </blockquote>
    <br>
    Petter, hopefully that v2 patch-set addresses the issue. I have
    re-built here and it still works ok under fido.<br>
    <br>
    I also have a patch-set for Redmine #44
    (<a class="moz-txt-link-freetext" href="http://redmine.gherzan.com/issues/44">http://redmine.gherzan.com/issues/44</a>) to Yocto-ify the kernel build
    to support fragments. This consists of a patch to make fragments
    work and a test patch with fragment to build audio into the kernel.<br>
    <br>
    Andrei doesn't want audio built into the kernel, which I understand,
    but it works for a test. <br>
    <br>
    That "yoctoification" work is older than the 3.x/4.x changes but
    should still be relevant I think. I'd like to get that in before
    others start doing the clever stuff around vc4 and so forth. If I
    send up to the list can you review?<br>
    <br>
    Thanks, Alex<br>
  </body>
</html>

--------------060604050700050109040803--
