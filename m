Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13F66E00D6F; Mon,  6 May 2019 07:40:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 May 2019 07:40:42 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C1B8E00D83
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 07:40:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 93690212003;
	Mon,  6 May 2019 16:35:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id OwMYivk80ocb; Mon,  6 May 2019 16:35:37 +0200 (CEST)
Received: from localhost.localdomain (unknown [62.140.137.93])
	(Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id ECC9F212001;
	Mon,  6 May 2019 16:35:36 +0200 (CEST)
To: yocto@yoctoproject.org, JH <jupiter.hce@gmail.com>
References: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <008fb84a-45f1-3574-5c5a-ca22c9abaea1@basmevissen.nl>
Date: Mon, 6 May 2019 16:35:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
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
X-List-Received-Date: Mon, 06 May 2019 14:40:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 5/5/19 2:03 PM, JH wrote:
> Hi,
> 

Hi JH,

> I think the device tree blob is build from device tree source, but I
> could not find any dts files in recipe source directory, there are
> many dts files in build directory and there are dtb in build
> directory.
> 

Already answered by Gabriele.

> If I have a device tree source, where I should put it and how to
> define the recipe to built it?
> 

My usual way of doing it is as follows:

I usually don't need to make large modifications to the kernel source, 
so I don't need to clone the kernel, but use the default kernel for the 
SoC with some patches.

I use a platform support layer and add a .bbappend file for the (arm) 
kernel to add a custom dts and .config files, together with some small 
patches:

*** File meta-<platform>/recipes-kernel/linux/linux-<version>_%.bbappend:

THISAPPENDFILESDIR := "${THISDIR}/files"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

require linux-set-custom-defconfig.inc
require linux-add-custom-dts.inc

# The first patch simply appends my custom DTS to the list of DTD files 
in the Makefile
SRC_URI += \
         "file://add-custom-dts.patch \
          file://some_other.patch \
          file://another_driver_patch.patch \
         "

*** File meta-<platform>/recipes-kernel/linux/linux-add-custom-dts.inc

do_add_platform_dts() {
	cp -f "${THISAPPENDFILESDIR}/custom.dts" \
             "${WORKDIR}/git/arch/arm/boot/dts"
}

addtask add_platform_dts before do_preconfigure after do_patch

*** File meta-<platform>/recipes-kernel/linux/linux-set-custom-defconfig.inc

do_set_custom_defconfig() {
         cp -f "${THISAPPENDFILESDIR}/defconfig" "${WORKDIR}/defconfig"
}

addtask set_custom_defconfig before do_preconfigure after do_patch


It is maybe a bit complex, but it saves cloning the kernel for the sake 
of just adding a single DTS with defconfig and a few patches.

Hope this helps,

Bas.

