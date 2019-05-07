Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4EF4E00D11; Tue,  7 May 2019 02:36:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C593E00CF4
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 02:36:36 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 85E44212003;
	Tue,  7 May 2019 11:36:35 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id gJVnS9rlr-Jw; Tue,  7 May 2019 11:36:34 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 7944A212001;
	Tue,  7 May 2019 11:36:34 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 07 May 2019 11:36:34 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
In-Reply-To: <CAAx3WaAothTZrdYMb6rD=V3st3_ob2vMWL1WK5LnO6kSZQOAmw@mail.gmail.com>
References: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
	<008fb84a-45f1-3574-5c5a-ca22c9abaea1@basmevissen.nl>
	<CAA=hcWQ40ZCRwSnvxpqTGkBR24TwL6MsqvsqpruoFFaut+MjeA@mail.gmail.com>
	<CAAx3WaAothTZrdYMb6rD=V3st3_ob2vMWL1WK5LnO6kSZQOAmw@mail.gmail.com>
Message-ID: <a1bf8b283577661f2d4e0d6d1e4aeccc@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.7
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to define and build device tree in Yocto?
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
X-List-Received-Date: Tue, 07 May 2019 09:36:38 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2019-05-07 08:41, Gabriele Zampieri wrote:

> Hi all,
> 
> Bas' defconfig trick (do_set_custom_defconfig) is already implemented 
> by Yocto itself: just add a file called defconfig to SRC_URI and the 
> system will apply it for you  (you can read kernel_do_configure in 
> kernel.bbclass) . For more information check 
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#changing-the-configuration
> 

Yes, that is the better solution. Not sure why I did not use it. I 
created the "do_set_custom_defconfig" years ago. Maybe to be able in the 
future to select one of different defconfigs based upon a local.conf 
setting. There can only be one in the kernel bbclass. I would prefer to 
be able to add multiple files ending on e.g. _defconfig and be able to 
set a variable to select the one to use.

Maybe we can define something similar for the device tree file source 
file in the bbclass. It would obviously only be valid for architectures 
supporting device trees.

>> how did you do the defconfig usually?
> 
> The link I put above asks this question too.
> 
>>> # The first patch simply appends my custom DTS to the list of DTD 
>>> files in the Makefile
> 
> and
> 
>>> I usually don't need to make large modifications to the kernel 
>>> source,
>>> so I don't need to clone the kernel, but use the default kernel for 
>>> the
>>> SoC with some patches.
> 
> How do you generate that patches?
> 
> I know that the kernel repo is huge, but having a local kernel tree can 
> be very useful and allows you to do all the patchworks easily. It also 
> speeds up the test if you are planning to upgrade some part of it.
> 

I use custom BSP development environment that contains a small build 
environment for building the device tree from source, u-boot 
development, kernel tree (shallow) clone, extended mfgtools ramdisk with 
some utilities and a customized version of mfgtools that loads the 
before-mentioned parts in RAM and starts them. This allows me to do very 
quick cycles.

The kernel patches are created using git against a (shallow) clone of 
the kernel I want to use. Mostly it is nothing more than a few small 
fixes.
U-boot is a full clone as I setup a new board definition for the custom 
board (mostly derived from an existing dev board, both hw and sw wise).

-- Bas.

> Best regards,
> 
> Gabriele
> 
> Il giorno mar 7 mag 2019 alle ore 02:14 JH <jupiter.hce@gmail.com> ha 
> scritto:
> 
>> Hi Bas and Gabriele,
>> 
>> Thank you so much for you advice.
>> 
>>> My usual way of doing it is as follows:
>>> 
>>> I usually don't need to make large modifications to the kernel 
>>> source,
>>> so I don't need to clone the kernel, but use the default kernel for 
>>> the
>>> SoC with some patches.
>> 
>> So do I.
>> 
>>> I use a platform support layer and add a .bbappend file for the (arm)
>>> kernel to add a custom dts and .config files, together with some 
>>> small
>>> patches:
>>> 
>>> *** File 
>>> meta-<platform>/recipes-kernel/linux/linux-<version>_%.bbappend:
>>> 
>>> THISAPPENDFILESDIR := "${THISDIR}/files"
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>> 
>>> require linux-set-custom-defconfig.inc
>>> require linux-add-custom-dts.inc
>>> 
>>> # The first patch simply appends my custom DTS to the list of DTD 
>>> files
>>> in the Makefile
>>> SRC_URI += \
>>> "file://add-custom-dts.patch \
>>> file://some_other.patch \
>>> file://another_driver_patch.patch \
>>> "
>>> 
>>> *** File 
>>> meta-<platform>/recipes-kernel/linux/linux-add-custom-dts.inc
>>> 
>>> do_add_platform_dts() {
>>> cp -f "${THISAPPENDFILESDIR}/custom.dts" \
>>> "${WORKDIR}/git/arch/arm/boot/dts"
>>> }
>> 
>> That is exactly I am looking for the proper location of the dts files,
>> thank you so much.
>> 
>>> addtask add_platform_dts before do_preconfigure after do_patch
>>> 
>>> *** File
>>> meta-<platform>/recipes-kernel/linux/linux-set-custom-defconfig.inc
>>> 
>>> do_set_custom_defconfig() {
>>> cp -f "${THISAPPENDFILESDIR}/defconfig" "${WORKDIR}/defconfig"
>>> }
>>> 
>>> addtask set_custom_defconfig before do_preconfigure after do_patch
>> 
>> Good advice, I missed that one, how did you do the defconfig usually?
>> Compile it in kernel source like using following command?
>> 
>> make ARCH=arm imx_v6_v7_defconfig
>> 
>>> It is maybe a bit complex, but it saves cloning the kernel for the 
>>> sake
>>> of just adding a single DTS with defconfig and a few patches.
>> 
>> That is procedure I was looking for.
>> 
>>> Hope this helps,
>> 
>> Great helps, thank you so much.
>> 
>> - jupiter
>> 
>>> Bas.
>>> 
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

