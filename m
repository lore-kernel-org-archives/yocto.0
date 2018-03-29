Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2ADDE008E4; Thu, 29 Mar 2018 07:12:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6B4EE008A2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 07:12:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w2TECIhU019774
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Mar 2018 07:12:18 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 29 Mar 2018 07:12:17 -0700
To: Vincent Daanen <vincent.daanen@orthotaxy.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <4d479834-e8a6-0f65-e34f-2cbd271192bd@windriver.com>
Date: Thu, 29 Mar 2018 10:12:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Thu, 29 Mar 2018 14:12:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 03/28/2018 12:27 PM, Vincent Daanen wrote:
> Hi,
> 
> I want to add CAN driver support to the kernel. Here is the procedure I 
> followed:
> 
>  1. Generate a .config file
>  2. Copy it to meta-myWork/recipes-kernel/linux/files/defconfig
>  3. Update it: set at the end the config to enable CAN as follows
> 
> # CAN Bus
> 
> CONFIG_NET=y
> 
> CONFIG_CAN=y
> 
> CONFIG_CAN_RAW=y
> 
> CONFIG_CAN_BCM=y
> 
> CONFIG_CAN_GW=y
> 
> #
> 
> # CAN Device Drivers
> 
> #
> 
> CONFIG_CAN_VCAN=y
> 
> # CONFIG_CAN_SLCAN is not set
> 
> CONFIG_CAN_DEV=y
> 
> # CONFIG_CAN_CALC_BITTIMING is not set
> 
> # CONFIG_CAN_LEDS is not set
> 
> # CONFIG_CAN_SJA1000 is not set
> 
>  4. Update the linux-yocto_%.bbappend file as follows
> 
> SUMMARY = "Recipe to configure kernel as required"
> 
> LICENSE = "CLOSED"
> 
> inherit kernel-yocto
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> 
> SRC_URI += file://defconfig
> 
>  5. Request rebuilt:
> 
> bitbake linux-yocto-rt -c cleansstate
> 
> bitbake -k linux-yocto-rt
> 
> Once the image started (with qemu), I check if the CAN is enabled (using 
> zcat /proc/config.gz | grep CAN) and I always get “CAN not set”

Do you have all of the CAN* Kconfig dependencies in your defconfig ?
If you don't, the kernel config subsystem will turn them off.

Also note that a 'defconfig' translates to a merge config run (yes,
even with just a defconfig) of 'allnoconfig', so that can also be
turning off dependencies if they were only valid via their default
and were not explicitly specified.

You can set KCONFIG_MODE="alldefconfig" in a linux-yocto bbappend to
change what mode merge-config uses.

Bruce


> 
> I also tried using fragment and I got the same result ☹
> 
> According the user manual, it seems to me I’m doing the right think!
> 
> Does someone know why my defconfig file is not taken into account ?
> 
> Thanks
> 
> Vincent
> 
> 
> 


