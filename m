Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F877E00D43; Wed, 24 Apr 2019 08:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23557E00D0F
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 08:01:36 -0700 (PDT)
Received: from [IPv6:2001:470:b30d:2:c604:15ff:0:f0e] (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:f0e])
	by kozue.soulik.info (Postfix) with ESMTPSA id 04CDF100D4C;
	Thu, 25 Apr 2019 00:01:50 +0900 (JST)
To: Trevor Woerner <twoerner@gmail.com>
References: <20190423132514.21996-1-ayaka@soulik.info>
	<20190423132514.21996-2-ayaka@soulik.info>
	<20190423174716.GA7171@linux-uys3>
From: ayaka <ayaka@soulik.info>
Message-ID: <2f71e460-b646-d046-5e26-e9c3bac6bdae@soulik.info>
Date: Wed, 24 Apr 2019 23:01:30 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190423174716.GA7171@linux-uys3>
Cc: yocto@yoctoproject.org, romain.perier@gmail.com
Subject: Re: [PATCH v2 01/10] conf/machine: add support for rk3399
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
X-List-Received-Date: Wed, 24 Apr 2019 15:01:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 4/24/19 1:47 AM, Trevor Woerner wrote:
> On Tue 2019-04-23 @ 09:25:05 PM, Randy 'ayaka' Li wrote:
>> RK3399 is a new generation powerful SoC from Rockchip, which has
>> Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.
>>
>> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
>> ---
>>   conf/machine/excavator-rk3399.conf | 12 ++++++++++++
>>   conf/machine/firefly-rk3399.conf   | 14 ++++++++++++++
>>   conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
>>   3 files changed, 43 insertions(+)
>>   create mode 100644 conf/machine/excavator-rk3399.conf
>>   create mode 100644 conf/machine/firefly-rk3399.conf
>>   create mode 100644 conf/machine/include/rk3399.inc
>>
>> diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk3399.conf
>> new file mode 100644
>> index 0000000..8506a50
>> --- /dev/null
>> +++ b/conf/machine/excavator-rk3399.conf
>> @@ -0,0 +1,12 @@
>> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +#@TYPE: Machine
>> +#@NAME: EXCAVATOR 3399
>> +
>> +include conf/machine/include/rk3399.inc
>> +
>> +KERNEL_DEVICETREE = "rockchip/rk3399-sapphire-excavator.dtb"
>> +UBOOT_MACHINE = "evb-rk3399_defconfig"
>> +
>> +GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=B921B045-1DF0 rootfstype=ext4 init=/sbin/init"
>> diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk3399.conf
>> new file mode 100644
>> index 0000000..4e35c3d
>> --- /dev/null
>> +++ b/conf/machine/firefly-rk3399.conf
>> @@ -0,0 +1,14 @@
>> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +#@TYPE: Machine
>> +#@NAME: Firefly RK3399
>> +#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance Platform.
>> +#http://www.t-firefly.com/en/
>> +
>> +include conf/machine/include/rk3399.inc
>> +
>> +KERNEL_DEVICETREE = "rockchip/rk3399-firefly.dtb"
>> +UBOOT_MACHINE = "evb-rk3399_defconfig"
>> +
>> +GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=B921B045-1DF0 rootfstype=ext4 init=/sbin/init"
>> diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
>> new file mode 100644
>> index 0000000..9237616
>> --- /dev/null
>> +++ b/conf/machine/include/rk3399.inc
>> @@ -0,0 +1,17 @@
>> +# Copyright (C) 2019 SUMOMO Computer Association
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +SOC_FAMILY = "rk3399"
>> +
>> +require conf/machine/include/tune-cortexa72.inc
>> +require conf/machine/include/soc-family.inc
>> +require conf/machine/include/rockchip-defaults.inc
>> +
>> +SERIAL_CONSOLES = "1500000;ttyS2"
>> +KERNEL_IMAGETYPE = "Image"
>> +KBUILD_DEFCONFIG = "defconfig"
>> +
>> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
> Using u-boot-rockchip causes build failures. In both cases (excavator-rk3399
> and firefly-rk3399) I get:
>
> 	| #
> 	| # configuration written to .config
> 	| #
> 	| make[1]: Leaving directory '/z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/build'
> 	| make: Leaving directory '/z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/git'
> 	| /z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/temp/run.do_configure.27647: line 113: merge_config.sh: command not found
> 	| WARNING: /z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/temp/run.do_configure.27647:1 exit 127 from 'merge_config.sh -m .config'
> 	| ERROR: Function failed: do_configure (log file is located at /z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/temp/log.do_configure.27647)
>
> Do you have an updated recipe for u-boot-rockchip?

Yes, it is a bug in the recent u-boot-rockchip recipes, I have just sent 
out patches to fix them, you may have a check.

And about this serial of patches, I sent "conf: use rockchip kernel 4.4 
for firefly release" by mistake, you may ignore this one.

>
>> +
>> +IMAGE_FSTYPES = "rockchip-gpt-img"
>> +IMAGE_CLASSES = "rockchip-gpt-img"
>> -- 
>> 2.20.1
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

