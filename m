Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9CBEE015BA
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 11:51:29 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 1 Aug 2013 14:51:29 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Date: Thu, 1 Aug 2013 14:51:27 -0400
Thread-Topic: [yocto] Creating a core-image-minimal image with package support
Thread-Index: Ac6O3lVnlXknAFREScamIscYmOMIQQACQBjw
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153ADA9D49E@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC9FD@pluto.melinkcorp.local>
	<CALmOhg=kywWNAFeKac4kVT-f9QBTjKjV0Uqzr7it2Go5imO56g@mail.gmail.com>
In-Reply-To: <CALmOhg=kywWNAFeKac4kVT-f9QBTjKjV0Uqzr7it2Go5imO56g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0183679F004E5A018368EC
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating a core-image-minimal image with package support
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
X-List-Received-Date: Thu, 01 Aug 2013 18:51:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Trevor Woerner [mailto:trevor.woerner@linaro.org]
> Sent: Thursday, August 01, 2013 1:41 PM
> To: Bryan Evenson
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Creating a core-image-minimal image with package
> support
>=20
> On 17 June 2013 12:49, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> > The above recipe yields an image that is includes the opkg
> executable, but opkg support is incomplete.  Namely, calling opkg
> yields the error " * opkg_conf_load: Could not create lock file
> /var/lib/opkg/lock: No such file or directory."  I can see that the
> folder /var/lib/opkg was not created on my filesystem.  If I create
> this directory and then call "opkg list-installed", I get an empty list
> back.
> >
> > What more do I need to add to the image recipe so that the image
> knows what packages were installed on it?  And what do I need to add so
> that the /var/lib/opkg directory is created?
>=20
> If I follow the instructions in Yocto's quick-start-guide and perform a
> simple build of core-image-minimal using today's master and make almost
> no changes to the configuration (other than to switch to ipk), the
> resulting image:
> - will not contain the opkg tools
> - will have an empty /var/lib/opkg directory (this directory exists,
> but is empty)
>=20
> Build Configuration:
> BB_VERSION        =3D "1.19.1"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "openSUSE-project-12.3"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4+snapshot-20130801"
> TUNE_FEATURES     =3D "armv5 thumb dsp"
> TARGET_FPU        =3D "soft"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "master:9de0ad47462c13ac4a2d73e12e92be6c1b4e0415"
>=20
> If I then modify the configuration to add "package-management" to the
> EXTRA_IMAGE_FEATURES variable and rebuild, the resulting image:
> - will have the opkg tools
> - will have a non-empty /var/lib/opkg directory
> - I can issue a command such as "$ opkg list" and get:
> root@qemuarm:~# opkg list
> base-files - 3.0.14-r73
> base-passwd - 3.5.26-r2
> busybox - 1.21.1-r0
> busybox-hwclock - 1.21.1-r0
> busybox-syslog - 1.21.1-r0
> busybox-udhcpc - 1.21.1-r0
> init-ifupdown - 1.0-r3
> initscripts - 1.0-r141
> libblkid1 - 2.23.1-r0
> libc6 - 2.18-r0
> libcrypto1.0.0 - 1.0.1e-r15.0
> libkmod2 - 9+git0+62081c0f68-r0.0
> libopkg1 - 1:0.1.8+svnr649-r13.0
> libuuid1 - 2.23.1-r0
> libwrap0 - 7.6-r10
> libz1 - 1.2.8-r0
> modutils-initscripts - 1.0-r6
> netbase - 1:5.1-r0
> openssh - 6.2p2-r0
> openssh-keygen - 6.2p2-r0
> openssh-scp - 6.2p2-r0
> openssh-ssh - 6.2p2-r0
> openssh-sshd - 6.2p2-r0
> opkg - 1:0.1.8+svnr649-r13.0
> opkg-collateral - 1.0-r2
> opkg-config-base - 1.0-r1
> packagegroup-core-boot - 1.0-r11
> packagegroup-core-ssh-openssh - 1.0-r1
> poky-feed-config-opkg - 1.0-r2
> run-postinsts - 1.0-r9
> shadow - 4.1.4.3-r13
> shadow-securetty - 4.1.4.3-r2
> sysvinit - 2.88dsf-r11
> sysvinit-inittab - 2.88dsf-r9
> sysvinit-pidof - 2.88dsf-r11
> udev - 182-r7
> udev-cache - 182-r7
> udev-utils - 182-r7
> update-alternatives-cworth - 1:0.1.8+svnr649-r13.0 update-rc.d - 0.7-r5
>=20
>=20
> When I perform these same steps using dylan, it does not work
>=20
> Build Configuration:
> BB_VERSION        =3D "1.18.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "openSUSE-project-12.3"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4.1"
> TUNE_FEATURES     =3D "armv5 thumb dsp"
> TARGET_FPU        =3D "soft"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "dylan:899e5cca99ec952ff72c81b74a731150841122f4"
>=20
> Without "package-management" in the configuration opkg is not installed
> in the image (as expected). However, with "package-management" in the
> configuration the opkg tools are installed in the image, but
> /var/lib/opkg is still empty and the "$ opkg list"
> command returns empty.

I'm also working off of poky/dylan.  I added "opkg opkg-collateral" to the =
IMAGE_INSTALL variable, in addition to having the "package-management" feat=
ure in IMAGE_FEATURES.  With that setup, my image contains opkg and has the=
 list of packages installed.

Regards,
Bryan


