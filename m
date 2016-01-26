Return-Path: <srae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B33DAE00BEA; Mon, 25 Jan 2016 16:32:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-gw1-out.broadcom.com (mail-gw1-out.broadcom.com
	[216.31.210.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D801BE00BE3
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 16:32:29 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.22,347,1449561600"; d="scan'208";a="86449875"
Received: from irvexchcas08.broadcom.com (HELO
	IRVEXCHCAS08.corp.ad.broadcom.com) ([10.9.208.57])
	by mail-gw1-out.broadcom.com with ESMTP; 25 Jan 2016 19:18:00 -0800
Received: from IRVEXCHSMTP2.corp.ad.broadcom.com (10.9.207.52) by
	IRVEXCHCAS08.corp.ad.broadcom.com (10.9.208.57) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Mon, 25 Jan 2016 16:32:27 -0800
Received: from mail-irva-13.broadcom.com (10.10.10.20) by
	IRVEXCHSMTP2.corp.ad.broadcom.com (10.9.207.52) with Microsoft SMTP
	Server id 14.3.235.1; Mon, 25 Jan 2016 16:32:28 -0800
Received: from [10.136.4.105] (unknown [10.136.4.105])	by
	mail-irva-13.broadcom.com (Postfix) with ESMTP id E5A6040FE5;
	Mon, 25 Jan 2016 16:28:35 -0800 (PST)
Message-ID: <56A6BE9B.9050207@broadcom.com>
Date: Mon, 25 Jan 2016 16:32:27 -0800
From: Steve Rae <srae@broadcom.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1453755618-11640-1-git-send-email-srae@broadcom.com>
	<789D469E-10A9-4DC2-9232-2955580421CD@gmail.com>
In-Reply-To: <789D469E-10A9-4DC2-9232-2955580421CD@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot-rpi2: use the upstreamed U-Boot
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
X-List-Received-Date: Tue, 26 Jan 2016 00:32:32 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 16-01-25 01:32 PM, Khem Raj wrote:
> Hi Steve
>
>> On Jan 25, 2016, at 1:00 PM, Steve Rae <srae@broadcom.com> wrote:
>>
>> For Raspberry Pi 2, use the U-Boot from "den".
>
>
> Can this be done by using/extending OE-Core recipe please ?
>
>

I modelled it after the existing RPi recipe:
         diff recipes-bsp/u-boot/u-boot-rpi_git.bb 
recipes-bsp/u-boot/u-boot-rpi2_git.bb
sorry -- I don't know enough about this to answer your question...
Which recipe should I "extend"? Could you please provide more details?
Thanks in advance, Steve


>>
>> Signed-off-by: Steve Rae <srae@broadcom.com>
>> ---
>> conf/machine/raspberrypi2.conf        |  1 +
>> recipes-bsp/u-boot/u-boot-rpi2_git.bb | 36 +++++++++++++++++++++++++++++++++++
>> 2 files changed, 37 insertions(+)
>> create mode 100644 recipes-bsp/u-boot/u-boot-rpi2_git.bb
>>
>> diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
>> index 30edae3..50912c9 100644
>> --- a/conf/machine/raspberrypi2.conf
>> +++ b/conf/machine/raspberrypi2.conf
>> @@ -5,4 +5,5 @@
>> DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
>>
>> require conf/machine/include/tune-cortexa7.inc
>> +PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi2"
>> include conf/machine/include/rpi-base.inc
>> diff --git a/recipes-bsp/u-boot/u-boot-rpi2_git.bb b/recipes-bsp/u-boot/u-boot-rpi2_git.bb
>> new file mode 100644
>> index 0000000..ce0d1a0
>> --- /dev/null
>> +++ b/recipes-bsp/u-boot/u-boot-rpi2_git.bb
>> @@ -0,0 +1,36 @@
>> +DESCRIPTION = "U-Boot for Raspberry Pi 2 Model B"
>> +
>> +require recipes-bsp/u-boot/u-boot.inc
>> +
>> +DEPENDS += "rpi-mkimage-native"
>> +
>> +PROVIDES += "u-boot"
>> +
>> +LICENSE = "GPLv2+"
>> +LIC_FILES_CHKSUM = "file://README;md5=587d8d939ae351bb11910921b1eafd42"
>> +
>> +SRCREV = "fa85e826c16b9ce1ad302a57e9c4b24db0d8b930"
>> +SRC_URI = "git://git.denx.de/u-boot.git;branch=master"
>> +
>> +S = "${WORKDIR}/git"
>> +
>> +UBOOT_MACHINE = "rpi2_b"
>> +UBOOT_MAKE_TARGET = "u-boot.bin"
>> +UBOOT_SUFFIX = "img"
>> +
>> +PACKAGE_ARCH = "${MACHINE_ARCH}"
>> +
>> +COMPATIBLE_MACHINE = "raspberrypi2"
>> +
>> +do_compile() {
>> +    oe_runmake mrproper
>> +    oe_runmake rpi_2_defconfig
>> +    oe_runmake CROSS_COMPILE=arm-poky-linux-gnueabi- \
>> +        CC="arm-poky-linux-gnueabi-gcc --sysroot=${PKG_CONFIG_SYSROOT_DIR}"
>> +}
>> +
>> +do_compile_append() {
>> +    # From 'uboot.bin', create 'kernel.img', then rename it to 'u-boot.img'
>> +    ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/imagetool-uncompressed.py u-boot.bin
>> +    mv kernel.img u-boot.img
>> +}
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

