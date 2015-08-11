Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12B04E00947; Tue, 11 Aug 2015 12:20:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ajlennon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C6D7E00758
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 12:20:48 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so190033753wic.1
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 12:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TNFBfRuTN1TRmuPmhboiy4hetQYFqhcnthXATqaAaEA=;
	b=EHPC924y+nREzfVz10SqsTRzT9OvR2bTnzObyszrII6bd4Wkf4qfLIOr9+KTup7beT
	oaSGXDVMqfmTsoDykQ+guqLr0y8IxPgM8qPYYaVr//J+dgRo95jYbK42RBm93tg8BiGr
	xEKSRa/F4e+aQlZ88MpAYbA4VyXF7XLPIQDQLmKIknV4XxwzFFEUkJRB7tC7m/BHisXM
	Qf+RMBinfVOcAZb+p7xkrf5NztlBaIu8ooYPxW2xOW9I4GzjHfz9AwyKgdBpbvSYWafB
	7mhgPi0dNQZulrLWAN0aaWdnVkjyaW1ASJh/IWdDv/aAgbgzjxpdHGmehMGJSJN5RdHQ
	paOQ==
X-Received: by 10.194.2.51 with SMTP id 19mr63354956wjr.40.1439320846575;
	Tue, 11 Aug 2015 12:20:46 -0700 (PDT)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net.
	[86.17.157.93]) by smtp.googlemail.com with ESMTPSA id
	hn2sm4313587wjc.45.2015.08.11.12.20.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 11 Aug 2015 12:20:43 -0700 (PDT)
To: petter@technux.se, yocto@yoctoproject.org
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<bffae54a0f874d525599dfe7ffdb64b0@technux.se>
From: Alex J Lennon <ajlennon@gmail.com>
Message-ID: <55CA4B05.5090803@gmail.com>
Date: Tue, 11 Aug 2015 20:20:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <bffae54a0f874d525599dfe7ffdb64b0@technux.se>
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: support configuration fragments
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
X-List-Received-Date: Tue, 11 Aug 2015 19:20:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 11/08/2015 19:54, Petter Mabäcker wrote:
> 2015-08-11 19:04 skrev Alex J Lennon:
> 
>> - remove placeholder defconfig and custom copying logic
>> - use KBUILD_DEFCONFIG for default in-tree configurations instead
>> - do not replace all Yocto configured settings in do_configure_prepen
>>
>> see: https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474
>>
>> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi.inc       | 15 ++++-----------
>>  recipes-kernel/linux/linux-raspberrypi/defconfig |  1 -
>>  recipes-kernel/linux/linux.inc                   |  6 +++---
>>  3 files changed, 7 insertions(+), 15 deletions(-)
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>> index 7e36408..e38d905 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -6,17 +6,14 @@ SECTION = "kernel"
>>  LICENSE = "GPLv2"
>>  LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>>  
>> -SRC_URI += " \
>> -        file://defconfig \
>> -        "
>> -
>>  COMPATIBLE_MACHINE = "raspberrypi"
>>  
>>  PV = "${LINUX_VERSION}+git${SRCREV}"
>>  
>> -# NOTE: For now we pull in the default config from the RPi kernel GIT tree.
>> -KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
>> -KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
>> +KMACHINE ?= "${MACHINE}"
>> +KCONFIG_MODE = "--alldefconfig"
>> +KBUILD_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
>> +KBUILD_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
>>  
>>  # CMDLINE for raspberrypi
>>  CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>> @@ -38,10 +35,6 @@ python __anonymous () {
>>              d.setVar("DEPENDS", depends)
>>  }
>>  
>> -do_kernel_configme_prepend() {
>> -    install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
>> -}
>> -
>>  do_install_prepend() {
>>      install -d ${D}/lib/firmware
>>  }
>> diff --git a/recipes-kernel/linux/linux-raspberrypi/defconfig b/recipes-kernel/linux/linux-raspberrypi/defconfig
>> deleted file mode 100644
>> index ecbf32c..0000000
>> --- a/recipes-kernel/linux/linux-raspberrypi/defconfig
>> +++ /dev/null
>> @@ -1 +0,0 @@
>> -# Dummy file to get through do_kernel_configme.
>> diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.inc
>> index fae78b7..103512b 100644
>> --- a/recipes-kernel/linux/linux.inc
>> +++ b/recipes-kernel/linux/linux.inc
>> @@ -33,8 +33,7 @@ kernel_configure_variable() {
>>  }
>>  
>>  do_configure_prepend() {
>> -    # Clean .config
>> -    echo "" > ${B}/.config
>> +    mv -f ${B}/.config ${B}/.config.patched
>>      CONF_SED_SCRIPT=""
>>  
>>      # oabi / eabi support
>> @@ -109,7 +108,8 @@ do_configure_prepend() {
>>  
>>      # Keep this the last line
>>      # Remove all modified configs and add the rest to .config
>> -    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
>> +    sed -e "${CONF_SED_SCRIPT}" < '${B}/.config.patched' >> '${B}/.config'
>> +    rm -f ${B}/.config.patched
>>  
>>      yes '' | oe_runmake oldconfig
>>  }
>> -- 1.9.1
> 
> Nice, some small comments only. Please write a short summary of the
> feature (kernel-yocto: allow in-tree defconfig) but keep the bugzilla as
> a reference for further info. Always good to have some background found

This is seems a significant core change so I wanted to make sure these
individual changes were as easily searchable as possible in case any
problems arise in future. Can you provide an example of what you are
suggesting for the commit msg?

> directly in the commit msg itself. Have you tested it using both
> poky:master and poky:fido?

Rpi2 fido 3.18.16 with/without sound patch, 4.1.3 with/without sound patch.

BR,

Alex

