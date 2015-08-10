Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3D99E00349; Mon, 10 Aug 2015 01:02:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B227FE00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 01:02:07 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id C32C6462CB;
	Mon, 10 Aug 2015 01:02:05 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<55C082ED.6030405@technux.se> <55C0E347.9030508@osg.samsung.com>
	<929d9c24776929cd07c370278d4c2768@technux.se>
	<55C306C6.5040703@osg.samsung.com> <20150809230114.GK17962@resin>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <55C85A7B.4010008@osg.samsung.com>
Date: Mon, 10 Aug 2015 10:02:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150809230114.GK17962@resin>
Cc: yocto@yoctoproject.org, Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 0/5] Add support for 4.1 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Mon, 10 Aug 2015 08:02:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hello Andrei,

On 08/10/2015 01:01 AM, Andrei Gherzan wrote:
> Cheers!
> 
> First of all good work. Additionally to the comments I made in patches, find
> some here.
>

Thanks a lot.
 
> On Thu, Aug 06, 2015 at 09:03:34AM +0200, Javier Martinez Canillas wrote:
>> Hello Petter,
>>
>> On 08/05/2015 10:48 PM, Petter Mabäcker wrote:
>>>
>>>
>>> 2015-08-04 18:07 skrev Javier Martinez Canillas:
>>>
>>>> Hello Petter,
>>>>
>>>
>>>> Thanks a lot for your feedback.
>>>>
>>>> On 08/04/2015 11:16 AM, Petter
>>> Mabäcker wrote:
>>>>
>>>>> On 07/30/2015 10:34 AM, Javier Martinez Canillas
>>> wrote:
>>>>>
>>>>>> Hello Andrei, This series adds support for Eric Anholt's
>>> v4.1 kernel, that has support for the vc4 DRM/KMS driver. Which is the
>>> new open source graphics driver stack for the Raspberry Pi to be used
>>> instead of the userland driver. We are using it in the Tizen port to
>>> RPI2 [0] and are trying to push all the patches back to the tizen-distro
>>> and meta-raspberrypi OE layers so I'm posting these patches to get your
>>> feedback. The v4.1 kernel is under heavy development so is a
>>> work-in-progress and should not be used in production. That's why a
>>> default preference of -1 is set and the kernel only is enabled if the
>>> "vc4-gfx" feature is added to the DISTRO_FEATURES variable. But even
>>> when it's still a development kernel, having the recipe in the
>>> meta-raspberrypi will allow people to test it. The patches are for:
>>> Patch 1/5 makes optional to add the kgdboc kernel command line parameter
>>> Patch 2/5 allows to set the mask_gpu_interrupt0 option in config.txt
>>> Patch 3/5 changes the partition layout to add more space for boot files
>>> Patch 4/5 adds a recipe for the 4.1 and some patches to make it stable
>>> Patch 5/5 switchs the default providers according to the gfx stack used
>>> One problem I found is that the latest RPI kernels changed the path for
>>> the DT overlays after commit 739c586c8757 ("BCM270X_DT: Move the
>>> overlays into a subdirectory, adding the README") [1] so the kernel
>>> fails to build with the default KERNEL_DEVICETREE. I tried to change
>>> get_dts() function logic to take this into account but found that it
>>> would had been a more intrusive change and KERNEL_DEVICETREE will have
>>> to be changed anyways once the recipes for the other kernels are updated
>>> to the latest HEAD so for now I just define the following on local.conf
>>> to make it build:
>>>>> As long as we bump SRCREV for 3.18 kernel as well,
>>> I see no problem. Since then the KERNEL_DEVICETREE default value can
>>> look the same in all situations (both 3.18 and 4.x can handle the new
>>> structure and we get no compatibility issues) and for older kernels
>>> (3.12 and 3.14) it doesn't matter since they don't have native device
>>> tree support and will turn device tree support off by default.
>>>>
>>>> Yes,
>>> that's what I meant when I said that the problem will be solved once
>>>>
>>> all the recipes for DT enabled kernels are updated to the latest
>>> branch
>>>> HEAD. But I didn't want to do that in this series since I
>>> wanted the
>>>> changes to be as less intrusive as possible.
>>>
>>> Ok, sounds
>>> reasonable. Alex found some problems when bumping 3.18 to latest but
>>> when that is solved he can push the 3.18 bumping and prepare the
>>> KERNEL_DEVICETREE variable with the new subdir for overlays.
>>>
>>
>> Awesome.
>>
> 
> Yes. This will be address along with rpi kernel bump to 4.X.
>

Great.
 
>>>>>
>>> KERNEL_DEVICETREE = " bcm2708-rpi-b.dtb bcm2708-rpi-b-plus.dtb
>>> bcm2709-rpi-2-b.dtb overlays/hifiberry-amp-overlay.dtb
>>> overlays/hifiberry-dac-overlay.dtb
>>> overlays/hifiberry-dacplus-overlay.dtb
>>> overlays/hifiberry-digi-overlay.dtb overlays/iqaudio-dac-overlay.dtb
>>> overlays/iqaudio-dacplus-overlay.dtb overlays/lirc-rpi-overlay.dtb
>>> overlays/pps-gpio-overlay.dtb overlays/w1-gpio-overlay.dtb
>>> overlays/w1-gpio-pullup-overlay.dtb " [0]:
>>> http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/ [1]
>>> [1]: https://github.com/raspberrypi/linux/commit/739c586c8757 [2] Best
>>> regards, --- Javier Martinez Canillas Open Source Group Samsung Research
>>> America Derek Foreman (4): rpi-config: Allow to mask GPU irqs
>>> sdcard_image-rpi.bbclass: Allocate more space for boot partition
>>> linux-raspberrypi: Add a 4.1 linux kernel with vc4 support
>>> rpi-default-providers: Switch providers according to used gfx stack
>>> Mauro Carvalho Chehab (1): linux-raspberrypi.inc: Make kgdboc kernel
>>> param optional README | 38 +++++-- classes/sdcard_image-rpi.bbclass | 6
>>> +- conf/machine/include/rpi-default-providers.inc | 8 +-
>>> conf/machine/include/rpi-default-versions.inc | 2 +-
>>> recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++
>>> recipes-kernel/linux/linux-raspberrypi.inc | 5 +-
>>> ..._defconfig-Enable-config-options-for-vc4-.patch | 48 +++++++++
>>> ...-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch | 85 +++++++++++++++
>>> .../0003-drm-vc4-Use-the-fbdev_cma-helpers.patch | 115
>>> +++++++++++++++++++++ .../0004-drm-vc4-Allow-vblank-to-be-disabled.patch
>>> | 26 +++++ .../0005-drm-vc4-Disable-KMS-operations.patch | 95
>>> +++++++++++++++++ recipes-kernel/linux/linux-raspberrypi_4.1.bb | 16 +++
>>> 12 files changed, 433 insertions(+), 17 deletions(-) create mode 100644
>>> recipes-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
>>> create mode 100644
>>> recipes-kernel/linux/linux-raspberrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch
>>> create mode 100644
>>> recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch
>>> create mode 100644
>>> recipes-kernel/linux/linux-raspberrypi/0004-drm-vc4-Allow-vblank-to-be-disabled.patch
>>> create mode 100644
>>> recipes-kernel/linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch
>>> create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb
>>>> Nice
>>> and interesting changes, but you really should sync this with Alex
>>> Lennon as well since he currently are working with integrating 4.1 into
>>> meta-raspberrypi. An other opinion is that you should start by trying to
>>> integrate relevant kernel changes both from
>>> 'git://github.com/anholt/linux.git;protocol=git;branch=vc4-kms-v3d-rpi2'
>>> and the integration patches into the currently used upstream
>>> (https://github.com/raspberrypi/linux [3]) and I also think it's a good
>>> idea to ensure that the new code is added within kernel config options
>>> so it's easy to enable/disable the vc4 support. Then at least I think
>>> this more easily can be integrated in meta-raspberrypi.
>>>
> 
> That would definitely be the preferate way but would involve some additional
> work in tracking the patches. So, as an initial state, I am fine with a
> different kernel recipe (with a different name).
>

Ok, I was waiting for your feedback before preparing v2.
 
>>> I didn't know
>>> there was a work in progress to integrate the 4.1 tree.
>>> Although that is
>>> for the branch in https://github.com/raspberrypi/linux [3]that does not
>>> have the Broa> n't expect that to be a trivial task. I certainly don't
>>> know if have the bandwidth to do it. Also, it is under heavy development
>>> so will be hard to track. Another option is to have two recipes for 4.1,
>>> one for the raspberrypi tree with userland and another one with the tree
>>> with the VC4 DRM/KMS driver. Or use the same recipe but with a different
>>> SRC_URI for each case. I tried to isolate all the VC4 support so is
>>> enabled and disable easily using a config option.
>>>>
>>>> Ok, in that case
>>> I think we don't have so much options. I vote for two recipes in that
>>> case (at least to start with) something like
>>> recipe-kernel/linux/linux-raspberrypi-vc4 or similar.
>>> r
>>>
>>
> 
> Vote++
>

Ok.
 
>> Ok, that makes sense for me. I'll wait a couple of days to see if there
>> are more feedback and post a v2 based on your (an others) suggestions.
>>
>> Thanks a lot!
>>
>>> Best
>>> regards,
>>>
>>
>> Best regards,
>> --
>> Javier Martinez Canillas
>> Open Source Group
>> Samsung Research America
> 
> --
> Andrei Gherzan
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

