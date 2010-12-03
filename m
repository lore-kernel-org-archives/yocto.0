Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61DD84C80039
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 23:35:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Dec 2010 21:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="356478930"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 21:34:59 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 3 Dec 2010 13:34:19 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 3 Dec 2010
	13:34:18 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>
Date: Fri, 3 Dec 2010 13:34:15 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AAAHtt2YAAMGBDQ
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FFC4A25@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
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
X-List-Received-Date: Fri, 03 Dec 2010 05:35:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

Since I got a high fever yesterday so did not come to office in the morning=
...

Please see my reply below...

Thanks& Regards,
criping

> -----Original Message-----
> From: Zhang, Jessica
> Sent: Friday, December 03, 2010 8:23 AM
> To: Ke, Liping; Lu, Lianhao; Tian, Kevin
> Cc: yocto@yoctoproject.org
> Subject: RE: yocto_installer test script update
>=20
> Liping,
>=20
> I ran into error right away, and it's a very valid situation that we
> need to be able to handle.  So in the terminal that I test the
> installer, I happened to already have /opt/poky and source the
> environment-setup-i586 script which alter all my host sysroot to be
> under /opt/poky/sysroot/i586-pokysdk-linux/,
> etc...which triggered your opkg autotool project configure failed,
> please see the attached config.log file for details.

I can detect whether some configurations are set in the environment, but su=
ch detection is something like a hack. If user like to set some CC, CFLAGS,=
 seems we need not bother with it. This is the common case of failure. Eg: =
for normal project in open source world, make/make install is the normal in=
stallation process. We will meet the same error. Seems nobody will deal wit=
h it. But if you like, I will add a guard to detect the settings of specifi=
c environment setup. But Lianhao said such detection is strange.

>=20
> Also, yesterday, I spent quite some time re-wrote lots of prompt
> messages in the yocto_main, can you merge them into the new code?

No problem
>=20
> In the installation terminal I saw the following prompt:
> 	Check User Configuration For Arch Type x86
> 	Check User Configuration For Arch Type arm
> 	Check User Configuration For Arch Type powerpc
> 	Check User Configuration For Arch Type mips
> 	Check architecture type x86 whether it needs to download images
> 	Check architecture type arm whether it needs to download images
> 	Check architecture type powerpc whether it needs to download
> images
> 	Check architecture type mips whether it needs to download images
> 	Do you want to go on installing, please enter Y/N:Y
>=20
> 	Beginning installation process...
>=20
> 	Begin to install selected native ADT!
> 	make dir ///var/lib/opkg successfully!
> 	Downloading http://llu-piketon.sh.intel.com/ipk_sdk/Packages.
> 	Downloading http://llu-piketon.sh.intel.com/ipk_sdk/all/Packages.
> 	Downloading
> http://llu-piketon.sh.intel.com/ipk_sdk/i586-nativesdk/Packages.
> 	Downloading
> http://llu-piketon.sh.intel.com/ipk_sdk/i586-i586-canadian/Packages.
> 	Downloading
> http://llu-piketon.sh.intel.com/ipk_sdk/i586-arm-canadian/Packages.
> 	Downloading
> http://llu-piketon.sh.intel.com/ipk_sdk/i586-powerpc-canadian/Packages.
> 	Downloading
> http://llu-piketon.sh.intel.com/ipk_sdk/i586-mips-canadian/Packages.
> 	Downloading
> http://llu-piketon.sh.intel.com/ipk_sdk/i586-x86_64-canadian/Packages.
>=20
> And by looking at your yocto_config file, which as following Host Area
> YOCTOADT_TARGETS=3D"powerpc"
> YOCTOADT_QEMU=3D"Y"
> YOCTOADT_NFS_UTIL=3D"Y"
> YOCTOADT_BITBAKE=3D"Y"
> YOCTOADT_METADATA=3D"Y"
>=20
> #Target Area
> YOCTOADT_TARGET_arm=3D"N"
> YOCTOADT_ROOTFS_arm=3D"sato sdk"
> YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D"sato"
> YOCTOADT_TARGET_SYSROOT_arm=3D"$HOME/test-yocto/arm"
>=20
> YOCTOADT_TARGET_x86=3D"Y"
> YOCTOADT_ROOTFS_x86=3D"sdk minimal"
> YOCTOADT_TARGET_SYSROOT_IMAGE_x86=3D"sdk"
> YOCTOADT_TARGET_SYSROOT_x86=3D"$HOME/test-yocto/x86"
>=20
> YOCTOADT_TARGET_powerpc=3D"N"
> YOCTOADT_ROOTFS_powerpc=3D"sdk sato minimal"
> YOCTOADT_TARGET_SYSROOT_IMAGE_powerpc=3D"minimal"
> YOCTOADT_TARGET_SYSROOT_powerpc=3D"$HOME/test-yocto/mips"
>=20
> YOCTOADT_TARGET_mips=3D"N"
> YOCTOADT_ROOTFS_mips=3D"sdk"
> YOCTOADT_TARGET_SYSROOT_IMAGE_mips=3D"sdk"
> YOCTOADT_TARGET_SYSROOT_mips=3D"$HOME/test-yocto/mips"
>=20
> Questions/comments
> 1. I'm assuming the "Check user configuration" and "Check architecture
> type"
> messages are just for debugging and the in the final code they'll be
> gone right?

Yes. The code is not finished yet. It needs further processing.

>=20
> 2. Why I'm seeing so many downloading for all the cross-canadian for
> all arches? According to your configure file, shouldn't just i586-
> powerpc-canadian?  Also, don't know where the "Downloading http://..."
> message from, are they from the opkg install?

Yes. This information is given by opkg update. It's package information.
When updating, it will fetch all those available repository information.
It has nothing to do with opkg install powerpc related materials.

>=20
> Thanks,
> Jessica
> Ke, Liping wrote:
> > Hi, Jessica
> > I have update the installer on http://llu-piketon.sh.intel.com/. I
> > have tested in your machine roughly, downloading should work if you
> > use wget -Y off to turn off all your proxy settings for testing.
> > Since there're dangling folders in your machine, I can't rudely
> > delete it. You can download the new package and test.
> >
> > There're some other prompt problems I need to adjust. Today is not
> the
> > final code, only for your reviewing and testing.
> >
> > Any problem, just let me know.
> >
> > Thanks& Regards,
> > criping
> >
> >
> >
> >> -----Original Message-----
> >> From: Zhang, Jessica
> >> Sent: Thursday, December 02, 2010 8:19 AM
> >> To: Ke, Liping; Lu, Lianhao; Tian, Kevin
> >> Cc: yocto@yoctoproject.org
> >> Subject: RE: yocto_installer test script update
> >>
> >> Liping,
> >>
> >> I've modified couple files mainly for the messaging, styling, etc.
> >> Also, globaly changed SDK to ADT (Application Development Tools,
> >> which is the new name that came out refering to the toolchains,
> >> etc.). Please see attachment.
> >>
> >> Other comments:
> >> 1. I'd expect after your do the code clean up, the code logic flow
> >> should be more clearer, now the functions and main installation
> code
> >> are mingled together 2. There're couple places that I commented off
> >> with my initial JZ which I don't think there're the needs for the
> >> code, we can walk through them tonight...
> >> 3. For target sysroot setup, I'd expect similar prompt to the user
> >> about the specified configuration and confirmation 4. Also for
> target
> >> sysroot setup, in the yocto_config file, you specify
> >> ROOTFS_powerpc=3D"sdk" TARGET_SYSROOT_IMAGE_powerpc=3D"sato"
> >> I'd expect the installer will run into error since the download
> >> images only contain SDK no sato, sysroot can't be setup using sato,
> >> which I think it's missing from the current code...
> >>
> >> In general it looks good and main flow that needs to be covered are
> >> there...
> >>
> >> Thanks,
> >> Jessica
> >>
> >>
> >> -----Original Message-----
> >> From: Ke, Liping
> >> Sent: Wednesday, December 01, 2010 2:06 AM
> >> To: Zhang, Jessica; Lu, Lianhao; Tian, Kevin
> >> Cc: yocto@yoctoproject.org
> >> Subject: yocto_installer test script update
> >>
> >> Hi, Jessica
> >>
> >> The newer version of the installer is in lianhao's location. You can
> >> directly run ./yocto_installer http://llu-piketon.sh.intel.com/
> Today
> >> we tested both on 32 bit and 64 bit ubuntu host.
> >>
> >> It's very initial and rough, I will move many non-root required ops
> >> into the outer wrapper script later.
> >>
> >> Any early comments are welcomed, just let me know.
> >>
> >> Thanks& Regards,
> >> criping

