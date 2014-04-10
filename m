Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A74D2E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:30:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3AFUn17003055
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Apr 2014 08:30:49 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 10 Apr 2014 08:30:48 -0700
Message-ID: <5346B922.5030705@windriver.com>
Date: Thu, 10 Apr 2014 11:30:42 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Stanacar, StefanX" <stefanx.stanacar@intel.com>, "denis@denix.org"
	<denis@denix.org>
References: <1397116933-20764-1-git-send-email-denis@denix.org>	<1397137009.21633.6.camel@firebird.rb.intel.com>	<1397139316.21633.8.camel@firebird.rb.intel.com>
	<1397143684.21633.9.camel@firebird.rb.intel.com>
In-Reply-To: <1397143684.21633.9.camel@firebird.rb.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"denys@ti.com" <denys@ti.com>
Subject: Re: [meta-yocto][PATCH 1/2] beaglebone.conf: configuration updates
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
X-List-Received-Date: Thu, 10 Apr 2014 15:30:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-10 11:27 AM, Stanacar, StefanX wrote:
>
>
>
> On Thu, 2014-04-10 at 14:14 +0000, Stanacar, StefanX wrote:
>>
>>
>> On Thu, 2014-04-10 at 13:36 +0000, Stanacar, StefanX wrote:
>>> Hi Denys,
>>>
>>> With this patch applied and the updated README I can boot a Beaglebone
>>> Black (rev A6) with a default yocto image/config (I've used
>>> core-image-sato-sdk FWIW). Everything seems fine, I ran a bunch of tests
>>> on the image, except for X - it doesn't start :(.
>>> I've built with fbdev and omapfb too.
>>>
>>> X log for fbdev:
>>> http://pastebin.com/sqNc35U0
>>>
>>> for omapfb:
>>> http://pastebin.com/fMkzMW8U
>>>
>>> Is there anything else that needs to changed/added? I could add a
>>> xorg.conf on the image too, but then it beats the point...
>>>
>>
>> What I was trying to say is that we are missing a .bbappend for
>> xserver-xf86-config that adds the right xorg.conf (either for fbdev or
>> omapfb). I'll try to come up with one.
>
>
> Okay ignore that it didn't helped, I think I know what's missing.. I
> need the latest SRCREV_meta for kernel.

Which I just sent (and which may have prompted your email), so try
the commits I just sent and see if it helps.

Bruce

>
> Cheers,
> Stefan
>
>
>> Cheers,
>> Stefan
>>
>>> Cheers,
>>> Stefan
>>>
>>>
>>> On Thu, 2014-04-10 at 04:02 -0400, Denys Dmytriyenko wrote:
>>>> From: Denys Dmytriyenko <denys@ti.com>
>>>>
>>>> * Use fbdev video driver for xserver-xorg
>>>> * Recommend installing device tree DTB files into rootfs /boot directory
>>>> * Switch back to uImage kernel format from zImage, as U-boot was not updated
>>>>    - default has changed to zImage in newer U-boot 2013.10+, but we use 2013.07
>>>> * Correct copy/paste typo in serial console
>>>>
>>>> Signed-off-by: Denys Dmytriyenko <denys@ti.com>
>>>> ---
>>>>   meta-yocto-bsp/conf/machine/beaglebone.conf | 10 +++++-----
>>>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>> index f2ef0cf..4263715 100644
>>>> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>> @@ -6,11 +6,10 @@ PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>>>>   XSERVER ?= "xserver-xorg \
>>>>              xf86-input-evdev \
>>>>              xf86-input-mouse \
>>>> -           xf86-video-omapfb \
>>>> +           xf86-video-fbdev \
>>>>              xf86-input-keyboard"
>>>>
>>>> -# Ship all kernel modules by default
>>>> -MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>>>> +MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
>>>>
>>>>   EXTRA_IMAGEDEPENDS += "u-boot"
>>>>
>>>> @@ -20,13 +19,14 @@ include conf/machine/include/tune-cortexa8.inc
>>>>   IMAGE_FSTYPES += "tar.bz2 jffs2"
>>>>   EXTRA_IMAGECMD_jffs2 = "-lnp "
>>>>
>>>> -SERIAL_CONSOLE = "115200 ttyO2"
>>>> +SERIAL_CONSOLE = "115200 ttyO0"
>>>>
>>>>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>>>   PREFERRED_VERSION_linux-yocto ?= "3.14%"
>>>>
>>>> -KERNEL_IMAGETYPE = "zImage"
>>>> +KERNEL_IMAGETYPE = "uImage"
>>>>   KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
>>>> +KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>>>>
>>>>   SPL_BINARY = "MLO"
>>>>   UBOOT_SUFFIX = "img"
>>>> --
>>>> 1.9.1
>>>>
>>>
>>
>


