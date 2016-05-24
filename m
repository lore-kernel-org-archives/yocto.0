Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33A3DE00B1A; Tue, 24 May 2016 04:08:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98531E00B04
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 04:08:17 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id n129so19291199wmn.1
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 04:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=EFTWIz8dUwUBPwx6aJtVcgDFfBDthppubDVGBjfrC1A=;
	b=LRXb93JwJgsgmTDulCm2P4AXfq9zAqZsVHfvbRcd9C7uNjvQefqzeOIvSPKXaFbHqZ
	/gx2O8PEiAIM9nAPj92oTJkstIT4BQsdu1/7QBOVdwhuXXsC3dON4ZzG9HE1IU3fgHw0
	OswNKNZOyj7Tb+xK4bzIphAXB5ti7NGWyZKqUvVJzcLqE2GeI2jvq/BEVAGsPaOP+e0p
	MMNJmSPsr1YscxRLSnBhgnbu1HxBj2wwlcZLQ4UwJCKgxx/l4reAmlPg6JYIMeCK4njn
	KFRufu+WoxtknJj3RlW94BW3u0e0uNY/rWDpP1g1wF9QBgi/LqjVtrOMpI33PFWAVPHC
	pgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=EFTWIz8dUwUBPwx6aJtVcgDFfBDthppubDVGBjfrC1A=;
	b=RWzKiP3cmyeZ/g7Td0tUBB8QOLTlnMFuJzpjMVy+FeMRV2RS7upJz+DVg/EY4batXq
	3Xdmfjok84DErtZcJbC7ejBZvv3VRDQEmDCywl6861YbPSyhef9SgsFb/ubij8LXP0C5
	OK2QqBFY+sljlPNnYZGoMTVMcZfc1opBCikuBwMhX9NY3WA0ndwCjSoEnqQiNyZC9qde
	2tzwLM0sjQuzBmXAMMqhMWyUAytbJPemhLg1eiSPOMIcKSM+oERoIALofe9OYjMhAJKn
	F10senBXPIISCgam6lTNtHxd1HkZ+ynyGCl0Jn28wqhaLQiGToPwjAh1QjPherZr2pVB
	nkig==
X-Gm-Message-State: AOPr4FWCeDCG5q0YbGj3L21Bi2rSL53krkqmO2FAXL7AUlICMc5epbnJqsqL6l56DGhTqA==
X-Received: by 10.28.168.133 with SMTP id r127mr23097517wme.9.1464088096234;
	Tue, 24 May 2016 04:08:16 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id b22sm3112067wmb.9.2016.05.24.04.08.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 May 2016 04:08:15 -0700 (PDT)
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
References: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
	<574425FE.1030909@elfin.de> <02ac01d1b5a9$0149cf90$03dd6eb0$@neuf.fr>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <5744361E.3030607@elfin.de>
Date: Tue, 24 May 2016 13:08:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <02ac01d1b5a9$0149cf90$03dd6eb0$@neuf.fr>
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
X-List-Received-Date: Tue, 24 May 2016 11:08:20 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 24.05.2016 12:42, Herve Jourdain wrote:
> Hi Piotr,
Hi,
There were issues with patches 02, 07 and 12.
02- due to different overlay naming (overlays/vc4-kms-v3d-overlay.dtb 
instead of overlays/vc4-kms-v3d.dtbo) and 07 and 12 due to bump of 
linux-raspberrypi from 4.4.8 to 4.4.9 (on master).
> I know that the omxplayer would not build at this time, because VC4 and
> userland will conflict, and currently omxplayer depends on userland.
> I will check if it can be supported with VC4 driver enabled, but for the
> moment it's true I disabled it in my build.
>
> Regarding your patches:
> 1. Are you using linux kernel 4.4? You should set
> PREFERRED_VERSION_linux-raspberrypi = "4.4.%" somewhere, either in your
> distro configuration file, or your local.conf.
>      If you do so, it should get kernel 4.4.10, which requires .dtbo files
> for overlay. As mentioned in the patch, support for VC4 in 4.1 is not
> stable, and therefore not supported.
I did that :-)
> 2. I've seen only one TODO, did you make only one modification?
There were issues with patches 02, 07 and 12.
02- due to different overlay naming (overlays/vc4-kms-v3d-overlay.dtb 
instead of overlays/vc4-kms-v3d.dtbo) and 07 and 12 due to bump of 
linux-raspberrypi from 4.4.8 to 4.4.9 (on master).

Now I see that 02 whas not necessary- I just missed the patch you 
provided earlier.
> 3. There are other patches that are needed to be applied, before this patch
> series is applied: 2 for .dtbo support (1 in meta-raspberrypi, 1 in meta), 1
> for mesa (to allow packaging with empty DRI).
Ok. I didn't know. Can you confirm that I have the right patches?
Patch for meta is from thread "[yocto] [PATCH v2 0/1] Support for .dtbo 
files for dtb overlays"?
Patch for meta-raspberrypi is "[yocto] [meta-raspberrypi][PATCH 0/8] 
Support for vc4 graphics driver"?
Patch for mesa is part of those patches above?
> I'll take a look at the omxplayer issue as soon as I can, in the meanwhile I
> recommend to not use it...
This would be great. Thank you.
>
> Herve
>
> -----Original Message-----
> From: piotr.lewicki [mailto:piotr.lewicki@elfin.de]
> Sent: mardi 24 mai 2016 11:59
> To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH v2 00/13] Support for VC4
> graphics driver
>
> I have tried these patches, but there were some hunks and errors during
> applying to current master revision
> (69840c0bbe03c2e61601e2377c8e2adc264e0478).
> Building 'rpi-hwup-image' passed, but while building 'rpi-test-image'
> (omxplayer recipe) I have noticed some errors due to missing files:
> - IL/OMX_Core.h
> - VG/openvg.h
> - bcm_host.h
>
> I'm attaching omxplayer_build_errors.txt with build log and my patch with
> changes created by Herve (adapted to current master revision) -
> Support_for_VC4_graphics_driver.patch (Herve- if you decide to use that and
> resend v3 of patches - please remove my TODO from
> "conf/machine/include/rpi-base.inc"
>
> Could you take a look at that and help me resolve those issues?
>
>
> I currently have a problem that I'm forced to use Raspbian because playing
> FHD/1080p videos with omxplayer from Yocto runs choppy (I'm not sure if
> that's the right word, but playback is not smooth) while with Raspbian it
> works perfect.
> Do you think that enabling VC4 graphics driver can solve my issue?
> Did any of you experienced similar problems? Do you have some other solution
> or do you know what's the cause of this?
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
>> This patch series enables the support for the VC4 graphics driver from
> Eric Anholt.
>> There was a previous patch series by Javier Martinez Canillas, but it
> required use of a different kernel.
>> VC4 is now supported in the raspberrypi official kernel, at least for
> 4.4.9+.
>> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed
> unreasonable to support VC4 with 4.1 kernels.
>> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and
> later.
>> This patch series proposes to support VC4 by only adding 'vc4graphics' to
> MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all the
> necessary configuration/changes to use the VC4 driver, including
> mesa/wayland/weston currently, and adding the overlay required.
>> In order for this series to work, some previous patches are needed
> (support for .dtbo, and fix of the mesa packaging when there is no DRI
> driver).
>> The memory reserved for the VC4 driver has default values depending on the
> version of the board used, but it can be configured by setting VC4_CMA_SIZE
> to a value supported by the overlay ('cma-256', 'cma-192', 'cma-128',
> 'cma-96', 'cma-64').
>> 'cma-256' is the recommended value, but it might not be possible on boards
> with 512MB or DRAM, or less...
>> 'cma-64' is known to not being able to support FHD/1080p.
>>
>> It was tested with wayland/weston, without the support for X11.
>>
>> This patch series depends on two other patch series previously posted,
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

