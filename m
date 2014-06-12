Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 572ADE00B74; Thu, 12 Jun 2014 00:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5791E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 00:31:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 95FD927E02B;
	Thu, 12 Jun 2014 07:31:14 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id T2McdTbRR6uq; Thu, 12 Jun 2014 07:31:10 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 3EACB27E02A;
	Thu, 12 Jun 2014 07:31:10 +0000 (UTC)
Message-ID: <53995739.9030701@dynamicdevices.co.uk>
Date: Thu, 12 Jun 2014 08:31:05 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Jonatan Magnusson <jonatan.magnusson@gmail.com>
References: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
In-Reply-To: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] how to customize kernel config?
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
X-List-Received-Date: Thu, 12 Jun 2014 07:31:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit


On 12/06/2014 07:48, Jonatan Magnusson wrote:
> Hi
>
> I’m trying to use the meta-raspberrypi BSP with Yocto (1.6, Daisy).
>
> It works great, except I have no idea how to use a custom kernel config!
>
> I have a custom kernel recipe that bbappends to the meta-raspberrypi kernel recipe.
>
> I’ve tried using defconfig as well as configuration fragments, but neither work.
>
> I’ve also tried using the kernel_configure_variable function, and that almost works, except if I try to disable an option that is enabled earlier in the the config file, the option is still enabled since kernel_configure_variable only appends to the config file.
>
> Example:
>
> do_configure_append() {
>   kernel_configure_variable SPI_SPIDEV n
> }
>
> So I wonder: how is this supposed to work?
>

I don't think the RPi kernel recipe supports the linux-yocto include and
thus kernel fragments, which would be the preferred way to do things.

(At least if it does I didn't manage to get it working - I am
considering trying to add support for this in).

In the meantime to create a configuration I

bitbake -c menuconfig virtual/kernel

Edit the settings and save the resulting .config file

Then if you go to

bitbake -c devshell virtual/kernel

You can copy the .config file out of there to your source tree

Then the recipe I use to build with that configuration is something like
this, with my_defconfig in a patch
containing linux-raspberrypi folder set for searching with the path prepend,

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

KERNEL_DEFCONFIG = "my_defconfig"

SRC_URI += "file://rov_defconfig"

do_configure_prepend() {
        cp ${WORKDIR}/my_defconfig ${S}/arch/arm/configs
}

Regards,

Alex


