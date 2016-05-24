Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94192E00B33; Tue, 24 May 2016 05:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66F66E00B2F
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 05:06:13 -0700 (PDT)
Received: from nbhjo (LFbn-1-3582-159.w90-127.abo.wanadoo.fr [90.127.97.159])
	by msfrf2620.sfr.fr (SMTP Server) with ESMTP id 9C9851C005028;
	Tue, 24 May 2016 14:06:11 +0200 (CEST)
Received: from nbhjo (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2620.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 24 May 2016 14:06:11 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: "'piotr.lewicki'" <piotr.lewicki@elfin.de>, yocto@yoctoproject.org
References: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
	<574425FE.1030909@elfin.de> <02ac01d1b5a9$0149cf90$03dd6eb0$@neuf.fr>
	<5744361E.3030607@elfin.de>
In-Reply-To: <5744361E.3030607@elfin.de>
Date: Tue, 24 May 2016 14:06:09 +0200
Message-ID: <02b401d1b5b4$a8bca0d0$fa35e270$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIFRltlcCuMq69488C5jTuhiZEeAAGjB3VmA0hFjzICg/JaV58lXKOg
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi][PATCH v2 00/13] Support for VC4 graphics driver
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
X-List-Received-Date: Tue, 24 May 2016 12:06:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Piotr,

Please make sure you have the latest series, the 02 was modified actually,
and is different from what you have.
If meta-raspberrypi was changed since I sent the patch, then there might be
some need to rebase it. Dear list, do you need me to send a v3 taking into
account the latest modifications of the meta-raspberrypi master, if any?
The other patch threads, that are needed, are:
1. [yocto][meta-raspberrypi][PATCH v3 0/5] Support for .dtbo files for dtb
overlays, required by kernels 4.4.6+
2. [yocto][PATCH v2 0/1] Support for .dtbo files for dtb overlays
3. [OE-core][mesa][PATCH v2 0/1] Fix mesa_populate_packages() when dri is
disabled [I believe Ross Burton has modified the original one to use
oe.path.join() when committing it]

To be more specific, I will most likely start by fixing gst-omx (which
currently wants to use userland on RPI), then go for omxplayer.

Herve

-----Original Message-----
From: piotr.lewicki [mailto:piotr.lewicki@elfin.de] 
Sent: mardi 24 mai 2016 13:08
To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH v2 00/13] Support for VC4
graphics driver

On 24.05.2016 12:42, Herve Jourdain wrote:
> Hi Piotr,
Hi,
There were issues with patches 02, 07 and 12.
02- due to different overlay naming (overlays/vc4-kms-v3d-overlay.dtb
instead of overlays/vc4-kms-v3d.dtbo) and 07 and 12 due to bump of
linux-raspberrypi from 4.4.8 to 4.4.9 (on master).
> I know that the omxplayer would not build at this time, because VC4 
> and userland will conflict, and currently omxplayer depends on userland.
> I will check if it can be supported with VC4 driver enabled, but for 
> the moment it's true I disabled it in my build.
>
> Regarding your patches:
> 1. Are you using linux kernel 4.4? You should set 
> PREFERRED_VERSION_linux-raspberrypi = "4.4.%" somewhere, either in 
> your distro configuration file, or your local.conf.
>      If you do so, it should get kernel 4.4.10, which requires .dtbo 
> files for overlay. As mentioned in the patch, support for VC4 in 4.1 
> is not stable, and therefore not supported.
I did that :-)
> 2. I've seen only one TODO, did you make only one modification?
There were issues with patches 02, 07 and 12.
02- due to different overlay naming (overlays/vc4-kms-v3d-overlay.dtb
instead of overlays/vc4-kms-v3d.dtbo) and 07 and 12 due to bump of
linux-raspberrypi from 4.4.8 to 4.4.9 (on master).

Now I see that 02 whas not necessary- I just missed the patch you provided
earlier.
> 3. There are other patches that are needed to be applied, before this 
> patch series is applied: 2 for .dtbo support (1 in meta-raspberrypi, 1 
> in meta), 1 for mesa (to allow packaging with empty DRI).
Ok. I didn't know. Can you confirm that I have the right patches?
Patch for meta is from thread "[yocto] [PATCH v2 0/1] Support for .dtbo
files for dtb overlays"?
Patch for meta-raspberrypi is "[yocto] [meta-raspberrypi][PATCH 0/8] Support
for vc4 graphics driver"?
Patch for mesa is part of those patches above?
> I'll take a look at the omxplayer issue as soon as I can, in the 
> meanwhile I recommend to not use it...
This would be great. Thank you.
>
> Herve
>
> -----Original Message-----
> From: piotr.lewicki [mailto:piotr.lewicki@elfin.de]
> Sent: mardi 24 mai 2016 11:59
> To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH v2 00/13] Support for 
> VC4 graphics driver
>
> I have tried these patches, but there were some hunks and errors 
> during applying to current master revision 
> (69840c0bbe03c2e61601e2377c8e2adc264e0478).
> Building 'rpi-hwup-image' passed, but while building 'rpi-test-image'
> (omxplayer recipe) I have noticed some errors due to missing files:
> - IL/OMX_Core.h
> - VG/openvg.h
> - bcm_host.h
>
> I'm attaching omxplayer_build_errors.txt with build log and my patch 
> with changes created by Herve (adapted to current master revision) - 
> Support_for_VC4_graphics_driver.patch (Herve- if you decide to use 
> that and resend v3 of patches - please remove my TODO from 
> "conf/machine/include/rpi-base.inc"
>
> Could you take a look at that and help me resolve those issues?
>
>
> I currently have a problem that I'm forced to use Raspbian because 
> playing FHD/1080p videos with omxplayer from Yocto runs choppy (I'm 
> not sure if that's the right word, but playback is not smooth) while 
> with Raspbian it works perfect.
> Do you think that enabling VC4 graphics driver can solve my issue?
> Did any of you experienced similar problems? Do you have some other 
> solution or do you know what's the cause of this?
>
>
> Thanks,
> Piotr Lewicki
>
>
> On 20.05.2016 13:51, Herve Jourdain wrote:
>> This v2 series addresses the following issues with the first series:
>> a. Fix the 4.4.10 kernel revision
>> b. Effectively add vc4-kms-v3d overlay to the list of overlays to 
>> build (forgotten previously) c. Make the parameter to the v4c-kms-v3d 
>> overlay configurable d. Add default values for the cma parameter to 
>> the v4c-kms-v3d overlay, depending on the board (and the memory it
>> has)
>>
>> This patch series enables the support for the VC4 graphics driver 
>> from
> Eric Anholt.
>> There was a previous patch series by Javier Martinez Canillas, but it
> required use of a different kernel.
>> VC4 is now supported in the raspberrypi official kernel, at least for
> 4.4.9+.
>> The support in 4.1 exists, but it is NOT STABLE, so it has been 
>> deemed
> unreasonable to support VC4 with 4.1 kernels.
>> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 
>> and
> later.
>> This patch series proposes to support VC4 by only adding 
>> 'vc4graphics' to
> MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all 
> the necessary configuration/changes to use the VC4 driver, including 
> mesa/wayland/weston currently, and adding the overlay required.
>> In order for this series to work, some previous patches are needed
> (support for .dtbo, and fix of the mesa packaging when there is no DRI 
> driver).
>> The memory reserved for the VC4 driver has default values depending 
>> on the
> version of the board used, but it can be configured by setting 
> VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 
> 'cma-192', 'cma-128', 'cma-96', 'cma-64').
>> 'cma-256' is the recommended value, but it might not be possible on 
>> boards
> with 512MB or DRAM, or less...
>> 'cma-64' is known to not being able to support FHD/1080p.
>>
>> It was tested with wayland/weston, without the support for X11.
>>
>> This patch series depends on two other patch series previously 
>> posted,
> that enable the support for .dtbo overlay files.
>> Herve Jourdain (13):
>>     rpi-default-providers.inc: change default providers to support
>>       vc4graphics
>>     rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>>     raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>>       vc4graphics
>>     raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>>       vc4graphics
>>     raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>>       vc4graphics
>>     raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>>       vc4graphics
>>     firmware.inc: bump version to support vc4graphics
>>     rpi-config_git.bb: add v4c overlay to config.txt to support
>>       vc4graphics
>>     wayland/weston_%.bbappend: modify configuration options to support
>>       vc4graphics
>>     weston/weston_%.bbappend: modify configuration options to support
>>       vc4graphics
>>     mesa_%.bbappend: new file to add the correct configuration options to
>>       support vc4graphics
>>     linux-raspberrypi_4.4.bb: bump the kernel revision to 4.4.10 to
>>       support vc4graphics
>>     linux-rpi.inc: add the configuration options required to support
>>       vc4graphics
>>
>>    conf/machine/include/rpi-base.inc              |  1 +
>>    conf/machine/include/rpi-default-providers.inc |  8 ++++----
>>    conf/machine/raspberrypi.conf                  |  2 ++
>>    conf/machine/raspberrypi0.conf                 |  2 ++
>>    conf/machine/raspberrypi2.conf                 |  2 ++
>>    conf/machine/raspberrypi3.conf                 |  2 ++
>>    recipes-bsp/bootfiles/rpi-config_git.bb        | 10 +++++++++-
>>    recipes-bsp/common/firmware.inc                |  4 ++--
>>    recipes-graphics/mesa/mesa_%.bbappend          |  4 ++++
>>    recipes-graphics/wayland/weston_%.bbappend     |  6 ++----
>>    recipes-graphics/weston/weston_%.bbappend      | 13 +++++++------
>>    recipes-kernel/linux/linux-raspberrypi_4.4.bb  |  4 ++--
>>    recipes-kernel/linux/linux-rpi.inc             | 10 ++++++++++
>>    13 files changed, 49 insertions(+), 19 deletions(-)
>>    create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>>
>
Thanks,
Piotr Lewicki


