Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B1E8E00B9E; Fri, 16 May 2014 04:17:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EF7E00BAF
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 04:17:36 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 955A327E01A;
	Fri, 16 May 2014 11:17:34 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id tRwiRUUAOpjD; Fri, 16 May 2014 11:17:33 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A60A327E015;
	Fri, 16 May 2014 11:17:33 +0000 (UTC)
Message-ID: <5375F3CD.5000701@dynamicdevices.co.uk>
Date: Fri, 16 May 2014 12:17:33 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
	<5375E88E.9010204@dynamicdevices.co.uk>
	<1534150.uaW2O1Usg6@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1534150.uaW2O1Usg6@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: can one lay hands on a galileo-based dev kit?
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
X-List-Received-Date: Fri, 16 May 2014 11:17:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


> I think you should probably have meta-iot-devkit as well even if you don't use 
> DISTRO = "iot-devkit".

I added meta-iot-devkit in to bblayers and when I bitbake
iot-devkit-image (MACHINE=clanton, DISTRO=iot-devkit) I get orphaned
bbappends.

ERROR: No recipes available for:
 
/data_drive/imx6/rootfs_builder/sources/meta-intel-iot-devkit/meta-iot-devkit/recipes-extended/ethtool/ethtool_3.10.bbappend
 
/data_drive/imx6/rootfs_builder/sources/meta-intel-iot-devkit/meta-iot-devkit/recipes-core/busybox/busybox_1.21.1.bbappend
ERROR: Command execution failed: Exited with 1

>> The latest build failure was a missing grub which I suppose is to be
>> expected as I'm not using the correct/recommended distro (?)
> When you say "missing grub" can you be more specific about the error?

When I take out meta-iot-devkit and build core-image-minimal for
MACHINE=clanton, DISTRO=iot-devkit I get

ERROR: Unable to install packages. Command
'/data_drive/imx6/rootfs_builder/buildgalileoiot2/tmp/sysroots/i686-linux/usr/bin/smart
--data-dir=/data_drive/imx6/rootfs_builder/buildgalileoiot2/tmp/work/clanton-poky-linux/core-image-minimal-initramfs/1.0-r0/rootfs/var/lib/smart
install -y busybox@i586 initramfs-live-install-efi@i586
run-postinsts@all initramfs-live-install@i586 udev@i586
initramfs-live-boot@clanton base-passwd@i586' returned 1:
Loading cache...
Updating cache...               ########################################
[100%]

Computing transaction...error: Can't install
initramfs-live-install-1.0-r9@i586: no package provides grub

There seem to be some grub recipes in meta-clanton-bsp though so... (?)
Maybe if I put meta-intel-iot-devkit back in and sort out the
bbappends... (?)

Cheers,

Alex


