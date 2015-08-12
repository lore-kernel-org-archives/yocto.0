Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59DC4E00A5B; Wed, 12 Aug 2015 01:28:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ajlennon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BFB0E00A26
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 01:28:38 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so103854660wic.1
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 01:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=ZTe5ZfsD/KjTf+GB1RYA2QLdBp9UO3TIE8c2WjWTcAM=;
	b=fXhwzdbBeI4sgnNmLC47oqu9wWSXbQ0kPeP5GQ7tBQO+usaans46rfMf2vjyszsqmZ
	+B+b5gaVEMStVp9jgdSzY/oIT/Ka5HLRi7+UuVF13nEUBEdJ0dUNEYqNatSNPS5TgNwG
	NhxH4Y7DDGnXAe9anZ0Oup5v042WcW5L3rRYNxTwWhITpoCbdpviunFNI3d6zuHvikcM
	V7WJ/nX69Et7hHRZxzZzLagBpY4hjgaiiXPk5SW/NTGan9Ej9SUihflCthUktP+xCBzr
	oR2zjWI9zrAg6KQMB7T1n799GJmj6KeC2rEu61nTMcOemCjyiKFjBOtmiY3niKxanaII
	4uHg==
X-Received: by 10.180.189.17 with SMTP id ge17mr42874258wic.90.1439368118047; 
	Wed, 12 Aug 2015 01:28:38 -0700 (PDT)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net.
	[86.17.157.93]) by smtp.googlemail.com with ESMTPSA id
	ho10sm6718450wjb.39.2015.08.12.01.28.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Aug 2015 01:28:34 -0700 (PDT)
To: petter@technux.se, Andrei <andrei@gherzan.ro>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<bffae54a0f874d525599dfe7ffdb64b0@technux.se>
	<55CA4B05.5090803@gmail.com>
	<b6fd404fd9e7d7966a1cdf37b4523d98@technux.se>
From: Alex J Lennon <ajlennon@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55CB03AF.9030904@gmail.com>
Date: Wed, 12 Aug 2015 09:28:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <b6fd404fd9e7d7966a1cdf37b4523d98@technux.se>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 12 Aug 2015 08:28:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 12/08/2015 09:08, Petter Mabäcker wrote:
> 2015-08-11 21:20 skrev Alex J Lennon:
> 
>> On 11/08/2015 19:54, Petter Mabäcker wrote:
>>> 2015-08-11 19:04 skrev Alex J Lennon:
>>>> - remove placeholder defconfig and custom copying logic - use
>>>> KBUILD_DEFCONFIG for default in-tree configurations instead - do not
>>>> replace all Yocto configured settings in do_configure_prepen see:
>>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474
>>>> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk
>>>> <mailto:ajlennon@dynamicdevices.co.uk>
>>>> <mailto:ajlennon@dynamicdevices.co.uk
>>>> <mailto:ajlennon@dynamicdevices.co.uk>>> ---
>>>> recipes-kernel/linux/linux-raspberrypi.inc | 15 ++++-----------
>>>> recipes-kernel/linux/linux-raspberrypi/defconfig | 1 -
>>>> recipes-kernel/linux/linux.inc | 6 +++--- 3 files changed, 7
>>>> insertions(+), 15 deletions(-) delete mode 100644
>>>> recipes-kernel/linux/linux-raspberrypi/defconfig diff --git
>>>> a/recipes-kernel/linux/linux-raspberrypi.inc
>>>> b/recipes-kernel/linux/linux-raspberrypi.inc index 7e36408..e38d905
>>>> 100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
>>>> b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,17 +6,14 @@
>>>> SECTION = "kernel" LICENSE = "GPLv2" LIC_FILES_CHKSUM =
>>>> "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7" -SRC_URI += "
>>>> \ - file://defconfig \ - " - COMPATIBLE_MACHINE = "raspberrypi" PV =
>>>> "${LINUX_VERSION}+git${SRCREV}" -# NOTE: For now we pull in the
>>>> default config from the RPi kernel GIT tree.
>>>> -KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
>>>> -KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig" +KMACHINE ?=
>>>> "${MACHINE}" +KCONFIG_MODE = "--alldefconfig"
>>>> +KBUILD_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
>>>> +KBUILD_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig" # CMDLINE for
>>>> raspberrypi CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200
>>>> kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>>>> @@ -38,10 +35,6 @@ python __anonymous () { d.setVar("DEPENDS",
>>>> depends) } -do_kernel_configme_prepend() { - install -m 0644
>>>> ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig
>>>> || die "No default configuration for ${MACHINE} /
>>>> ${KERNEL_DEFCONFIG} available." -} - do_install_prepend() { install
>>>> -d ${D}/lib/firmware } diff --git
>>>> a/recipes-kernel/linux/linux-raspberrypi/defconfig
>>>> b/recipes-kernel/linux/linux-raspberrypi/defconfig deleted file mode
>>>> 100644 index ecbf32c..0000000 ---
>>>> a/recipes-kernel/linux/linux-raspberrypi/defconfig +++ /dev/null @@
>>>> -1 +0,0 @@ -# Dummy file to get through do_kernel_configme. diff
>>>> --git a/recipes-kernel/linux/linux.inc
>>>> b/recipes-kernel/linux/linux.inc index fae78b7..103512b 100644 ---
>>>> a/recipes-kernel/linux/linux.inc +++
>>>> b/recipes-kernel/linux/linux.inc @@ -33,8 +33,7 @@
>>>> kernel_configure_variable() { } do_configure_prepend() { - # Clean
>>>> .config - echo "" > ${B}/.config + mv -f ${B}/.config
>>>> ${B}/.config.patched CONF_SED_SCRIPT="" # oabi / eabi support @@
>>>> -109,7 +108,8 @@ do_configure_prepend() { # Keep this the last line
>>>> # Remove all modified configs and add the rest to .config - sed -e
>>>> "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config' +
>>>> sed -e "${CONF_SED_SCRIPT}" < '${B}/.config.patched' >>
>>>> '${B}/.config' + rm -f ${B}/.config.patched yes '' | oe_runmake
>>>> oldconfig } -- 1.9.1
>>> Nice, some small comments only. Please write a short summary of the
>>> feature (kernel-yocto: allow in-tree defconfig) but keep the bugzilla
>>> as a reference for further info. Always good to have some background
>>> found
>> This is seems a significant core change so I wanted to make sure these
>> individual changes were as easily searchable as possible in case any
>> problems arise in future. Can you provide an example of what you are
>> suggesting for the commit msg?
> Perhaps something like:
> 
> Start using the "in-tree defconfig" solution provided in poky[0]. To specify an "in-tree" defconfig file, edit the recipe that builds your kernel so that it has the following command form:
> 
>      KBUILD_DEFCONFIG_KMACHINE ?= defconfig_file
>                 
> 
> You need to append the variable with KMACHINE and then supply the path to your "in-tree" defconfig file. 
> 
> In order to achieve this in meta-raspberrypi will need to:
> 
> - start using KBUILD_DEFCONFIG_KMACHINE
> - Remove placeholder defconfig and custom copying logic.
> - Avoid replacing all Yocto project configured settings in do_configure_prepend.
> 
> For more background regarding this migration read the bugzilla bug info[1].
> 
> [0] - http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
> [1] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474
> 

Very comprehensive. Many thanks.

>>> directly in the commit msg itself. Have you tested it using both
>>> poky:master and poky:fido?
>> Rpi2 fido 3.18.16 with/without sound patch, 4.1.3 with/without sound patch.
>>
>> BR,
>>
>> Alex
> 
> Ok, since there has been some changes (not only the early DT change) in
> poky:master it would be good to do the same tests there. Andrei have to
> correct me if wrong, but since we have a fido branch in meta-raspberrypi
> that's the branch that is recommended to use against poky:fido, 'master'
> is in first place verified against poky:master (latest and greatest).
>

Four test builds was enough yesterday. I will look at master when I get
a chance. As we pursue the conversation on a review process a related
conversation is getting an automated build system going again as I think
it would be very useful in this context.

DynamicDevices may be able to help here. I had a very positive
experience with AppVeyor when I was putting the Mono Win32 automated
build system together and am wondering what's currently best for Linux
automated building (Jenkins?). Maybe that conversation is best broken
out in the Github vs Gerrit vs A.N.Other thread.

BR, Alex

