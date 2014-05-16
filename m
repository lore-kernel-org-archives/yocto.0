Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A7DFE00B68; Fri, 16 May 2014 04:32:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga09.intel.com (unknown [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8569E00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 04:32:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 May 2014 04:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1067,1389772800"; d="scan'208";a="512722208"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.87])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2014 04:32:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Fri, 16 May 2014 12:32:18 +0100
Message-ID: <2554365.06todV85Gf@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.3-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <5375F3CD.5000701@dynamicdevices.co.uk>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<1534150.uaW2O1Usg6@peggleto-mobl5.ger.corp.intel.com>
	<5375F3CD.5000701@dynamicdevices.co.uk>
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 16 May 2014 11:32:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 16 May 2014 12:17:33 Alex J Lennon wrote:
> > I think you should probably have meta-iot-devkit as well even if you don't
> > use DISTRO = "iot-devkit".
> 
> I added meta-iot-devkit in to bblayers and when I bitbake
> iot-devkit-image (MACHINE=clanton, DISTRO=iot-devkit) I get orphaned
> bbappends.
> 
> ERROR: No recipes available for:
> 
> /data_drive/imx6/rootfs_builder/sources/meta-intel-iot-devkit/meta-iot-devki
> t/recipes-extended/ethtool/ethtool_3.10.bbappend
> 
> /data_drive/imx6/rootfs_builder/sources/meta-intel-iot-devkit/meta-iot-devki
> t/recipes-core/busybox/busybox_1.21.1.bbappend ERROR: Command execution
> failed: Exited with 1

Are you trying to use these layers with 1.6 / master? Until the devkit-daisy 
branch was pushed, the devkit was based on 1.5 (dora).

> >> The latest build failure was a missing grub which I suppose is to be
> >> expected as I'm not using the correct/recommended distro (?)
> > 
> > When you say "missing grub" can you be more specific about the error?
> 
> When I take out meta-iot-devkit and build core-image-minimal for
> MACHINE=clanton, DISTRO=iot-devkit I get
> 
> ERROR: Unable to install packages. Command
> '/data_drive/imx6/rootfs_builder/buildgalileoiot2/tmp/sysroots/i686-linux/us
> r/bin/smart
> --data-dir=/data_drive/imx6/rootfs_builder/buildgalileoiot2/tmp/work/clanto
> n-poky-linux/core-image-minimal-initramfs/1.0-r0/rootfs/var/lib/smart
> install -y busybox@i586 initramfs-live-install-efi@i586
> run-postinsts@all initramfs-live-install@i586 udev@i586
> initramfs-live-boot@clanton base-passwd@i586' returned 1:
> Loading cache...
> Updating cache...               ########################################
> [100%]
> 
> Computing transaction...error: Can't install
> initramfs-live-install-1.0-r9@i586: no package provides grub
> 
> There seem to be some grub recipes in meta-clanton-bsp though so... (?)
> Maybe if I put meta-intel-iot-devkit back in and sort out the
> bbappends... (?)

If you get this error, it means there is a grub recipe but no package called 
"grub" was produced. I don't recieve this error here, but FWIW I don't have a 
grub ipk package in tmp/deploy/ipk either, so this is expected and it 
shouldn't be looking for the package.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

