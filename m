Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9A91EE0070F
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 05:49:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r21DnfAe000708
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Mar 2013 05:49:41 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.328.9;
	Fri, 1 Mar 2013 05:49:40 -0800
Message-ID: <5130B1EA.4040004@windriver.com>
Date: Fri, 1 Mar 2013 08:49:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
References: <CABTzgQ4aGxsRgpFMBZf0t7KVfmBYihePSbkD_D8azAGdCpTgiA@mail.gmail.com>
	<CA+gsK-osjB9NK4gdMBuJU98d3RZiZqJ6yZBh9jR21hJrkx3gkQ@mail.gmail.com>
	<CABTzgQ6pWQD8Rs=NRCvemTy1WWfeH_Rvb2+XaeSLVx_urXkw5A@mail.gmail.com>
	<CA+gsK-rp8LOrmJ6k+3Xja-j4Acu559g9BE1-eJT5-kZOi7457Q@mail.gmail.com>
	<CABTzgQ6MuY=+-63b5jwxQzaFa3F8pV-jXWyKqLCtwb7oBd2BAw@mail.gmail.com>
In-Reply-To: <CABTzgQ6MuY=+-63b5jwxQzaFa3F8pV-jXWyKqLCtwb7oBd2BAw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: uboot.bin and rootfs but not uImage
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
X-List-Received-Date: Fri, 01 Mar 2013 13:49:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-01 03:53 AM, Satya Swaroop Damarla wrote:
> Hi Rudy,
>
> Thank you for the basic file... I have a question here... The git
> directory is already saved on my work pc. What is the necessity to
> download it again? The reason behind my asking this question is, it is
> secured and so password is required. So, in order to avoid confusion I
> already downloaded it to a directory called
> "/home/damarla/linux-skidata.git". So can I just write
>
> SRC_URI = "dir://home/damarla/linux-skidata.git"
>
> I think in the above way I can just simply remove the KSRC and KBRANCH
> variables from the linux-skidata.bb <http://linux-skidata.bb> file. The
> revision tag is also not required in this cases as we are using the
> kernel provided by the company itself, I mean for the first basic build.

The example code that was posted, already does this. KSRC points to
a git repository on your local machine:

    KSRC ?= "<path to>/linux-skidata.git"

And the protocol is set to "file" in the SRC_URI

    SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel \
        file://defconfig"

There's nothing more that you need to do.

>
> One more thing is the skidata-carrier_defconfig is already in the
> directory git I mentioned above at
> "/home/damarla/linux-skidata.git/arch/arm/configs/skidata-carrier_defconfig"
> ... When compiling the kernel how can we tell the build system to build
> the kernel using that specific defconfig file?

Putting the defconfig on the SRC_URI is all that you have to do.

This information is also covered in the quickstart and development
guides .. have you had a look at them ? If you have a look, you'll
see that more options are available with linux-yocto based recipes
(custom or the ones part of oe-core), which will allow you some more
flexibility in handling modifications to the kernel.

Cheers,

Bruce



>
> Thanks Rudy in advance,
> Satya
>
>
>
>
>
>
> On Thu, Feb 28, 2013 at 9:31 PM, Rudolf Streif
> <rstreif@linuxfoundation.org <mailto:rstreif@linuxfoundation.org>> wrote:
>
>     Hi Satya,
>
>     You will first need a kernel recipe, let's call it linux-skidata.bb
>     <http://linux-skidata.bb>. It can look like this:
>
>     DESCRIPTION = "Skidata Linux Kernel"
>     SECTION = "kernel"
>     LICENSE = "GPLv2"
>
>     LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>
>     PV = "3.2"
>
>     inherit kernel
>
>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:${THISDIR}/${PN}/patches:"
>
>     # GIT repository location
>     KSRC ?= "<path to>/linux-skidata.git"
>
>     # Branch to check out
>     KBRANCH ?= "<branch>"
>
>     # Revision tag or AUTOREV
>     SRCREV ?= "${AUTOREV}"
>
>     SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel \
>        file://defconfig \
>         "
>
>     S = "${WORKDIR}/git"
>
>
>     You will need to provide a defconfig file next to your recipe
>     containing the kernel configuration settings. Your kernel GIT repo
>     may contain a .config that is good for your hardware. In that case
>     you do not need a defconfig but is still a good practice and will
>     allow you to easily change the settings.
>
>     Then you need to adjust your machine configuration file:
>
>     PREFERRED_PROVIDER_virtual/kernel ?= "linux-skidata"
>     PREFERRED_VERSION_skidata ?= "3.2%"
>
>
>     That should do it.
>
>     :rjs
>
>
>     On Thu, Feb 28, 2013 at 11:21 AM, Satya Swaroop Damarla
>     <swaroop.damarla@gmail.com <mailto:swaroop.damarla@gmail.com>> wrote:
>
>         Yes I got an error message when I was building the kernel...
>           Actuallly I have a kernel git given by the company.... I
>         downloaded it and is in my work pc.. How can I tell the build
>         system to use that kernel?
>
>
>         On Thu, Feb 28, 2013 at 8:17 PM, Rudolf Streif
>         <rstreif@linuxfoundation.org
>         <mailto:rstreif@linuxfoundation.org>> wrote:
>
>             Satya,
>
>             your machine configuration file looks ok as far as I can
>             tell. Did you get an error message when building the kernel?
>             Did you try to build just the kernel e.g. bitbake linux-yocto?
>
>             :rjs
>
>
>             On Mon, Feb 25, 2013 at 11:31 PM, Satya Swaroop Damarla
>             <swaroop.damarla@gmail.com
>             <mailto:swaroop.damarla@gmail.com>> wrote:
>
>                 Hello Guys... I think uImage is important but it is not
>                 being generated by the yocto project. It only generated
>                 the rootfs and uboot.bin. Is there any variable that has
>                 to be introduced in the machine.conf (in my case it is
>                 skidata-tamonten.conf)....
>
>                 Here is the configuration file
>
>                 #@TYPE: Machine
>                 #@NAME: skidata-tamonten machine
>                 #@DESCRIPTION: Machine configuration for the Tamonten board
>
>                 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>
>                 IMAGE_FEATURES += "package-management"
>                 EXTRA_IMAGEDEPENDS += " u-boot"
>
>                 # Uncomment the following line to enable the hard
>                 floating point abi. Note that
>                 # this breaks some binary libraries and 3D (neither of
>                 which ship with
>                 # meta-yocto). For maximum compatibility, leave this
>                 disabled.
>                 DEFAULTTUNE ?= "cortexa9t"
>                 include conf/machine/include/tune-cortexa9.inc
>
>                 IMAGE_FSTYPES += "tar.bz2 ext2"
>
>                 SERIAL_CONSOLE = "115200 ttyS0"
>
>                 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>                 PREFERRED_VERSION_linux-yocto ?= "3.2%"
>
>                 KERNEL_IMAGETYPE = " uImage"
>
>                 PREFERRED_VERSION_u-boot ?= "v2013.01.01%"
>
>                 UBOOT_MACHINE = "tec_config"
>                 UBOOT_ENTRYPOINT = "0x17000000"
>                 UBOOT_LOADADDRESS = "0x17000000"
>
>                 MACHINE_FEATURES = "usbgadget usbhost vfat screen
>                 touchscreen keyboard"
>
>
>                 Greets,
>                 Satya
>
>                 _______________________________________________
>                 yocto mailing list
>                 yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>                 https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>             --
>             --
>             *Rudolf J. Streif*
>             Director of Embedded Solutions
>             The Linux Foundation
>
>             rudolf.streif@linux.com <mailto:rudolf.streif@linux.com>
>             Phone: +1.619.631.5383 <tel:%2B1.619.631.5383>
>             Skype: rudolfstreif
>             PGP: RSA 2048/2048 D6E7D28B
>
>             Linux Foundation Events Schedule: events.linuxfoundation.org
>             <http://events.linuxfoundation.org/>
>             Linux Foundation Training Schedule:
>             training.linuxfoundation.org
>             <http://training.linuxfoundation.org/>
>
>
>
>
>
>     --
>     --
>     *Rudolf J. Streif*
>     Director of Embedded Solutions
>     The Linux Foundation
>
>     rudolf.streif@linux.com <mailto:rudolf.streif@linux.com>
>     Phone: +1.619.631.5383 <tel:%2B1.619.631.5383>
>     Skype: rudolfstreif
>     PGP: RSA 2048/2048 D6E7D28B
>
>     Linux Foundation Events Schedule: events.linuxfoundation.org
>     <http://events.linuxfoundation.org/>
>     Linux Foundation Training Schedule: training.linuxfoundation.org
>     <http://training.linuxfoundation.org/>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


