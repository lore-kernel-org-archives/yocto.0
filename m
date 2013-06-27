Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E642FE00722
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 08:20:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5RFKBki015757
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Jun 2013 08:20:11 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 27 Jun 2013 08:20:11 -0700
Message-ID: <51CC5824.90604@windriver.com>
Date: Thu, 27 Jun 2013 11:20:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>
References: <91586D499ADFD74FBCFB8425266A5DE4013B91292051@pluto.melinkcorp.local>
	<51CBB4A8.80200@windriver.com> <51CBCC7C.3080107@windriver.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B9129209C@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4013B9129209C@pluto.melinkcorp.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel patch is unpacked but not applied
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
X-List-Received-Date: Thu, 27 Jun 2013 15:20:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-27 08:50 AM, Bryan Evenson wrote:
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Thursday, June 27, 2013 1:24 AM
>> To: Bryan Evenson
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Kernel patch is unpacked but not applied
>>
>> On 13-06-26 11:42 PM, Bruce Ashfield wrote:
>>> On 13-06-26 11:08 PM, Bryan Evenson wrote:
>>>> I am building a custom Linux kernel under poky-dylan and I am having
>>>> an issue with patches being unpacked but not applied.  I have two
>>>> layers that have a bbappend file for the kernel.  Generally, this is
>>>> what each bbappend file looks like:
>>>>
>>>> #First .bbappend
>>>>
>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>> COMPATIBLE_MACHINE_mach1 = "mach1"
>>>> COMPATIBLE_MACHINE_mach2 = "mach2"
>>>> SRC_URI_append_mach2 = " file://${MACHINE}/${KBRANCH}/0001-
>> blah.patch \
>>>>       file://${MACHINE}/${KBRANCH}/0002-blah.patch \
>>>>       "
>>>>
>>>> # Increment the recipe revision
>>>> PRINC := "${@int(PRINC) + 1}"
>>>>
>>>> # Second .bbappend
>>>>
>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>> COMPATIBLE_MACHINE_mach1 = "mach1"
>>>> COMPATIBLE_MACHINE_mach2 = "mach2"
>>>> SRC_URI_append_mach2 = " file://${MACHINE}/${KBRANCH}/0003-
>> blah.patch \
>>>>       file://${MACHINE}/${KBRANCH}/0004-blah.patch \
>>>>       "
>>>>
>>>> # Increment the recipe revision
>>>> PRINC := "${@int(PRINC) + 1}"
>>>>
>>>> All of the patch files are properly unpacked, but the last two
>>>> patches are not being applied.  If I open the devshell for the
>> kernel
>>>> (bitbake -c devshell linux-yocto-custom) I can see in the git log
>>>> that the first patch set was applied.  The second patch set exists
>>>> but is not applied.  If I call "guilt push" repeatedly from the
>>>> devshell, the patches from the second set are cleanly applied.  My
>>>> guess is that something doesn't like the second SRC_URI_append call.
>>>> Any ideas on how to fix it?
>>>
>>> It shouldn't matter. Let me try and set up something that reproduces
>>> the problem and get back to you.
>>>
>>> Strangely .. I'm actively debugging something similar here already,
>> so
>>> I may be able to re-use it.
>>>
>>> Stay tuned.
>>>
>>> Out of curiosity, have you tried this on master ?
>>
>
> I have not tried this on master.  Here is the relevant build information:
>
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "at91sam9x5ek"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.1"
> TUNE_FEATURES     = "armv5 thumb dsp arm926ejs"
> TARGET_FPU        = "soft"
> meta-melink       = "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
> meta-atmel        = "master:b2a9c072730b0f6b2a669a8de613e5e1d59453e6"
> meta
> meta-yocto
> meta-yocto-bsp    = "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
> meta-oe           = "dylan:13ae5105ee30410136beeae66ec41ee4a8a2e2b0"
>
> So I'm at the HEAD of the Dylan branch for both poky and meta-oe.
> The kernel patches are in both the meta-atmel layer and the meta-melink
> Layter.  Ignore that version string for meta-melink; it's not a git
> repository so it's just grabbing the info from poky.
>
>> So I tried to recreate this on master, and things worked for me. Which
>> I figured would happen, since this will make it harder to fix ... and
>> that's how it always works out.
>>
>> I created two layers, with four patches to the main linux Makefile.
>> They all add something to the description:
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>> SRC_URI_append = " file://0001-makefile-one.patch \
>>                      file://0002-makefile-two.patch"
>>
>>
>>
>> PRINC := "${@int(PRINC) + 1}"
>>
>> and
>>
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> SRC_URI_append = " file://0003-makefile-three.patch \
>>                      file://0004-makefile-four.patch"
>>
>>
>>
>> PRINC := "${@int(PRINC) + 1}"
>>
>> .. and alas, the all were applied:
>>
>>   > grep NAME Makefile
>> NAME = Displaced Humerus Anterior one two three four
>>
>> ....
>>
>> Can you send me the exact names of your patches ? I'm wondering if an
>> already applied check is triggering and preventing the auto push.
>>
>
> Here are the patch names in the first layer (meta-atmel):
>
> " file://${MACHINE}/${KBRANCH}/UBI.cfg \
>      file://${MACHINE}/${KBRANCH}/dma.cfg \
>      file://${MACHINE}/${KBRANCH}/usb-c.patch \
>      file://${MACHINE}/${KBRANCH}/usart3.patch \
>      file://${MACHINE}/${KBRANCH}/rtc.patch \
>      file://${MACHINE}/${KBRANCH}/serial_dma.patch \
>      ${@base_contains("MACHINE_FEATURES", "watchdog", "file://${MACHINE}/${KBRANCH}/watchdog.patch", " ", d)} \
>      "
>
> If you're wondering about that last line, I added a watchdog
> feature to the meta-atmel layer to enable or disable the watchdog
> for the kernel, U-Boot and the AT91Bootstrap.
>
> And here are the patch names for the second layer (meta-melink):
>
> SRC_URI_append_at91sam9x5ek = " file://${MACHINE}/${KBRANCH}/mq.cfg \
>      file://${MACHINE}/${KBRANCH}/gpio.cfg \
>      file://${MACHINE}/${KBRANCH}/ad5446.cfg \
>      file://${MACHINE}/${KBRANCH}/rs485.patch;apply=yes \
>      file://${MACHINE}/${KBRANCH}/usart1.patch;apply=yes \
>      file://${MACHINE}/${KBRANCH}/mmc.patch;apply=yes \
>      file://${MACHINE}/${KBRANCH}/one-wire.patch;apply=yes \
>      "
>
> I tried adding the "apply=yes" to the second layer patches, and they still
> were not applied.  Incidentally, the configuration changes (.cfg files)
> *are* being applied.  So if I understand correctly, do_unpack is getting
> the correct files, do_patch is not applying all the patches, but
> do_configure is applying all the configuration changes.
>
> If it helps, the meta-atmel layer I am using is available here:
> https://github.com/evensonbryan/meta-atmel.  I just pushed an update a few
> minutes ago, so it has what I am using.

I've got a working baseline, using the meta-atmel layer, I see the
5 patches applied:

  f3864ee Add watchdog support.
  d8a2978dc Add DMA support for USARTs.
  c31d2cd Turn on RTC
  6d7277d Add USART3 to SAM9G25 device tree.
  9b38b15 Add USB-C to device tree.

But I of course don't have your meta-melink layer, so I'll have a go
at adding some similarly named, but different patches and see if the
problem can be reproduced.

Cheers,

Bruce


>
> I'll let you know if I discover anything new.
>
> Thanks,
> Bryan
>
>> Bruce
>>
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> Thanks,
>>>> Bryan
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>


