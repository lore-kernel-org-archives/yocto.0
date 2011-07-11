Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D6DE4C800A9
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 12:10:32 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2011 10:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,516,1304319600"; d="scan'208";a="24523839"
Received: from doubt.jf.intel.com (HELO [10.7.199.62]) ([10.7.199.62])
	by orsmga002.jf.intel.com with ESMTP; 11 Jul 2011 10:10:31 -0700
Message-ID: <4E1B2E88.9060909@linux.intel.com>
Date: Mon, 11 Jul 2011 10:10:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1310314386.git.tom.zanussi@intel.com>	<8b824f53292e21ccb9de938b2c115adf0a9b1aa0.1310314387.git.tom.zanussi@intel.com>	<4E1B2982.4020102@linux.intel.com>
	<1310403377.2313.36.camel@elmorro>
In-Reply-To: <1310403377.2313.36.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/3][KERNEL] meta: add eg20t feature
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Jul 2011 17:10:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/11/2011 09:56 AM, Tom Zanussi wrote:
> On Mon, 2011-07-11 at 09:49 -0700, Darren Hart wrote:
>> That is quite the assortment of config bits - are all of these necessary
>> to explicitly support the eg20t? I'd like to see minimal config
>> fragments both for simplicity as well as avoiding unnecessary kernel
>> tool warnings about redefinitions.
>>
> 
> Yes, I agree, I would also like to see these split up, but I think that
> would be better done as part of our ongoing general option cleanup.
> 
> The particular reason for doing this now is to simply re-use the
> existing crownbay bits as-is for a new BSP.
> 
> Once I have time and can get back to the option cleanup I started with
> the romley options, I'll clean this up too, but at the moment have
> bigger fish to fry...
> 

OK, that's reasonable.

> Tom
> 
>> --
>> Darren
>>
>> On 07/10/2011 09:26 AM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> Option group for Intel Platform Controller Hub EG20T (Topcliff).
>>>
>>> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

>>> ---
>>>  meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |   39 ++++++++++++++++++++++++
>>>  meta/cfg/kernel-cache/features/eg20t/eg20t.scc |    1 +
>>>  2 files changed, 40 insertions(+), 0 deletions(-)
>>>  create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>>>  create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.scc
>>>
>>> diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>>> new file mode 100644
>>> index 0000000..225581c
>>> --- /dev/null
>>> +++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>>> @@ -0,0 +1,39 @@
>>> +# Hardware support for the Platform Controller Hub EG20T
>>> +
>>> +CONFIG_PCH_DMA=y
>>> +CONFIG_PCH_UART_DMA=y
>>> +CONFIG_SERIAL_8250_PCI=y
>>> +CONFIG_SERIAL_8250_PCH=y
>>> +CONFIG_SERIAL_8250_PCH_DMA=y
>>> +
>>> +CONFIG_SERIAL_PCH_UART=y
>>> +CONFIG_SERIAL_CORE=y
>>> +
>>> +CONFIG_SPI=y
>>> +CONFIG_SPI_BITBANG=y
>>> +CONFIG_SPI_GPIO=y
>>> +CONFIG_SPI_TOPCLIFF_PCH=y
>>> + 
>>> +CONFIG_MISC_DEVICES=y
>>> +CONFIG_PCH_PHUB=y
>>> +
>>> +CONFIG_NETDEVICES=y
>>> +CONFIG_NETDEV_1000=y
>>> +CONFIG_PCH_GBE=y
>>> +
>>> +CONFIG_PCH_USBDEV=y
>>> +CONFIG_USB_GADGET=y
>>> +CONFIG_USB_GADGET_EG20T=y
>>> +CONFIG_USB_GADGET_DUALSPEED=y
>>> +CONFIG_USB_GADGET_SELECTED=y
>>> +
>>> +CONFIG_I2C_EG20T=y
>>> +
>>> +CONFIG_GPIOLIB=y
>>> +CONFIG_GPIO_PCH=y
>>> +
>>> +CONFIG_PCH_IEEE1588=y
>>> +
>>> +CONFIG_CAN=y
>>> +CONFIG_CAN_DEV=y
>>> +CONFIG_PCH_CAN=y
>>> diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.scc b/meta/cfg/kernel-cache/features/eg20t/eg20t.scc
>>> new file mode 100644
>>> index 0000000..d690469
>>> --- /dev/null
>>> +++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.scc
>>> @@ -0,0 +1 @@
>>> +kconf hardware eg20t.cfg
>>
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

