Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB508E00A90; Tue, 11 Aug 2015 01:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ajlennon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31846E00A80
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 01:31:48 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so184179053wib.0
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 01:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=APYVWe20figg1l34YVsWMIKkfpe429srRdSjchkBoZA=;
	b=CgPVHkdevhaw2/nx1Dgpa5GfVqxDgyCfZ5P8xnzf4GMclVaQD4DeOTOWHkJYuf0+d6
	JlXlwGeYj51zZ/fV2R6tFWfBvZ24XbcEPuEjXG+0c2LCYOdjWUn4gmM1iycvyfxMzVBe
	JTsDKXdTPYJEo78a9hqKhak69GM+9lH3e8Je/DaB/psqeHOzHNQEU5OyTRgjmIzD+G7m
	rH3SiKmOkY/xObv4sH30cnHc0JnRd9WAgZarCMHSoOk8dMAPy6kePKSns3uFo8SgTNSd
	DalFCoFoiE9h5gaEMroyKmXolCa6PsBIVRwQyIFZSZuObkeM+77cg51hv6CPiF0w9Drs
	X2rg==
X-Received: by 10.194.63.42 with SMTP id d10mr58922058wjs.92.1439281907826;
	Tue, 11 Aug 2015 01:31:47 -0700 (PDT)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net.
	[86.17.157.93]) by smtp.googlemail.com with ESMTPSA id
	fb3sm17752818wib.21.2015.08.11.01.31.44
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Aug 2015 01:31:44 -0700 (PDT)
To: petter@technux.se
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<fc34ba0543c946b98d8d736ff5e66421@technux.se>
From: Alex J Lennon <ajlennon@gmail.com>
Message-ID: <55C9B2EE.2090406@gmail.com>
Date: Tue, 11 Aug 2015 09:31:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <fc34ba0543c946b98d8d736ff5e66421@technux.se>
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
X-List-Received-Date: Tue, 11 Aug 2015 08:31:51 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 11/08/2015 08:58, Petter Mabäcker wrote:
> 2015-08-10 13:08 skrev Alex J Lennon:
> 
>> This requires some changes to KERNEL_DEVICETREE as the dtb
>> layout has changed to support overlays. This change also
>> makes us ready to support kernel 4.x series
>>
>> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
>> ---
>>  conf/machine/include/rpi-base.inc              | 22 ++++++++++------------
>>  recipes-kernel/linux/linux-raspberrypi_3.18.bb |  9 +++++++--
>>  2 files changed, 17 insertions(+), 14 deletions(-)
>>
>> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
>> index 1dda207..8caa5ba 100644
>> --- a/conf/machine/include/rpi-base.inc
>> +++ b/conf/machine/include/rpi-base.inc
>> @@ -23,18 +23,16 @@ KERNEL_DEVICETREE ?= " \
>>      bcm2708-rpi-b-plus.dtb \
>>      bcm2709-rpi-2-b.dtb \
>>      \
>> -    ds1307-rtc-overlay.dtb \
>> -    hifiberry-amp-overlay.dtb \
>> -    hifiberry-dac-overlay.dtb \
>> -    hifiberry-dacplus-overlay.dtb \
>> -    hifiberry-digi-overlay.dtb \
>> -    iqaudio-dac-overlay.dtb \
>> -    iqaudio-dacplus-overlay.dtb \
>> -    lirc-rpi-overlay.dtb \
>> -    pcf8523-rtc-overlay.dtb \
>> -    pps-gpio-overlay.dtb \
>> -    w1-gpio-overlay.dtb \
>> -    w1-gpio-pullup-overlay.dtb \
>> +    overlays/hifiberry-amp-overlay.dtb \
>> +    overlays/hifiberry-dac-overlay.dtb \
>> +    overlays/hifiberry-dacplus-overlay.dtb \
>> +    overlays/hifiberry-digi-overlay.dtb \
>> +    overlays/iqaudio-dac-overlay.dtb \
>> +    overlays/iqaudio-dacplus-overlay.dtb \
>> +    overlays/lirc-rpi-overlay.dtb \
>> +    overlays/pps-gpio-overlay.dtb \
>> +    overlays/w1-gpio-overlay.dtb \
>> +    overlays/w1-gpio-pullup-overlay.dtb \
>>      "
>>  KERNEL_IMAGETYPE ?= "Image"
>>  
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
>> index 6d8b155..18c2020 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
>> @@ -1,6 +1,11 @@
>> -LINUX_VERSION ?= "3.18.11"
>> +LINUX_VERSION ?= "3.18.16"
>>  
>> -SRCREV = "d64fa8121fca9883d6fb14ca06d2abf66496195e"
>> +SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
>>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
>>  
>>  require linux-raspberrypi.inc
>> +
>> +# Create missing out of tree 'overlays' directory prior to install step
>> +do_compile_append() {
>> +  mkdir -p ${B}/arch/arm/boot/dts/overlays
>> +}
>> -- 1.9.1
>>
> Hi Alex,
> 
> At least I get problems during compile step with above change (I'm
> building for rpi2). So are your sure '${B}/arch/arm/boot/dts/overlays'
> isn't needed during compile? I tried with changing above from append to
> prepand instead and then it worked fine for me (when building 3.18 kernel).
> 
> (from log.do_compile, complete log can be found at:
> http://www.technux.se/logs/log.do_compile.4398.fail )
> 
>   KSYM    .tmp_kallsyms1.o
>   KSYM    .tmp_kallsyms2.o
>   LD      vmlinux
>   SORTEX  vmlinux
>   SYSMAP  System.map
>   OBJCOPY arch/arm/boot/Image
>   Kernel: arch/arm/boot/Image is ready
> NOTE: make -j 4 bcm2708-rpi-b.dtb
>   DTC     arch/arm/boot/dts/bcm2708-rpi-b.dtb
> NOTE: make -j 4 bcm2708-rpi-b-plus.dtb
>   DTC     arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb
> NOTE: make -j 4 bcm2709-rpi-2-b.dtb
>   DTC     arch/arm/boot/dts/bcm2709-rpi-2-b.dtb
> NOTE: make -j 4 overlays/hifiberry-amp-overlay.dtb
>   DTC     arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb
> cc1: fatal error: opening output file arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp: No such file or directory
> compilation terminated.
> make[3]: *** [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error 1
> make[2]: *** [overlays/hifiberry-amp-overlay.dtb] Error 2
> make[1]: *** [sub-make] Error 2
> make: *** [__sub-make] Error 2
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile (log file is located at /home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/temp/log.do_compile.4398)
> 
> 
> BR, Petter
> 
> 
> 

Hi Petter,

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


