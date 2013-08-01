Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15C33E014E4
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 10:41:18 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id b10so1139938eae.38
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2013 10:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=/BLR0918HqO7g4yAqw8ZYhQXcibZwD60eA1hwfYCmTc=;
	b=fEd3KChs4JozuRXfEzdr2RKiGQhgP22a8jk5etM+hpGm6pZnnfZQkQCzTv4PCj9Ff2
	6HHGc3yFmV81SjmSDd61mMNN6USDkRZu5fmgq3dVBi4eGPsx1IY8Oxq9NBpMGhzhUzCp
	tjg7w/iAsH6HEDMbvem2+VUjr0cko4bStIDx+/sHsYz6cZlVTar2G0506AKHXYQAT3mG
	hmUGrFZugWbwkbu2PZWQjjzAfEQ4xLWvwg9qN/cwkp9HiZD72Ydn6MceHHmEDJC6sreL
	/XqF6p+nxBtt8naprpoFpr7zysHRK+V2pPNVnYuYQ2ZYn2JQuJdwWBTXtEKpdAz9dyR5
	TuCA==
MIME-Version: 1.0
X-Received: by 10.15.107.74 with SMTP id ca50mr2393494eeb.72.1375378877572;
	Thu, 01 Aug 2013 10:41:17 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Thu, 1 Aug 2013 10:41:17 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4013B910EC9FD@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC9FD@pluto.melinkcorp.local>
Date: Thu, 1 Aug 2013 13:41:17 -0400
Message-ID: <CALmOhg=kywWNAFeKac4kVT-f9QBTjKjV0Uqzr7it2Go5imO56g@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Bryan Evenson <bevenson@melinkcorp.com>
X-Gm-Message-State: ALoCoQk21xqmUTff/l+sDZFINFhDJSBJGMbpiuzpf31PAIU+qpdB+jCwltZkjmHRHVZEdyWi2peb
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
X-List-Received-Date: Thu, 01 Aug 2013 17:41:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 17 June 2013 12:49, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> The above recipe yields an image that is includes the opkg executable, bu=
t opkg support is incomplete.  Namely, calling opkg yields the error " * op=
kg_conf_load: Could not create lock file /var/lib/opkg/lock: No such file o=
r directory."  I can see that the folder /var/lib/opkg was not created on m=
y filesystem.  If I create this directory and then call "opkg list-installe=
d", I get an empty list back.
>
> What more do I need to add to the image recipe so that the image knows wh=
at packages were installed on it?  And what do I need to add so that the /v=
ar/lib/opkg directory is created?

If I follow the instructions in Yocto's quick-start-guide and perform
a simple build of core-image-minimal using today's master and make
almost no changes to the configuration (other than to switch to ipk),
the resulting image:
- will not contain the opkg tools
- will have an empty /var/lib/opkg directory (this directory exists,
but is empty)

Build Configuration:
BB_VERSION        =3D "1.19.1"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "openSUSE-project-12.3"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4+snapshot-20130801"
TUNE_FEATURES     =3D "armv5 thumb dsp"
TARGET_FPU        =3D "soft"
meta
meta-yocto
meta-yocto-bsp    =3D "master:9de0ad47462c13ac4a2d73e12e92be6c1b4e0415"

If I then modify the configuration to add "package-management" to the
EXTRA_IMAGE_FEATURES variable and rebuild, the resulting image:
- will have the opkg tools
- will have a non-empty /var/lib/opkg directory
- I can issue a command such as "$ opkg list" and get:
root@qemuarm:~# opkg list
base-files - 3.0.14-r73
base-passwd - 3.5.26-r2
busybox - 1.21.1-r0
busybox-hwclock - 1.21.1-r0
busybox-syslog - 1.21.1-r0
busybox-udhcpc - 1.21.1-r0
init-ifupdown - 1.0-r3
initscripts - 1.0-r141
libblkid1 - 2.23.1-r0
libc6 - 2.18-r0
libcrypto1.0.0 - 1.0.1e-r15.0
libkmod2 - 9+git0+62081c0f68-r0.0
libopkg1 - 1:0.1.8+svnr649-r13.0
libuuid1 - 2.23.1-r0
libwrap0 - 7.6-r10
libz1 - 1.2.8-r0
modutils-initscripts - 1.0-r6
netbase - 1:5.1-r0
openssh - 6.2p2-r0
openssh-keygen - 6.2p2-r0
openssh-scp - 6.2p2-r0
openssh-ssh - 6.2p2-r0
openssh-sshd - 6.2p2-r0
opkg - 1:0.1.8+svnr649-r13.0
opkg-collateral - 1.0-r2
opkg-config-base - 1.0-r1
packagegroup-core-boot - 1.0-r11
packagegroup-core-ssh-openssh - 1.0-r1
poky-feed-config-opkg - 1.0-r2
run-postinsts - 1.0-r9
shadow - 4.1.4.3-r13
shadow-securetty - 4.1.4.3-r2
sysvinit - 2.88dsf-r11
sysvinit-inittab - 2.88dsf-r9
sysvinit-pidof - 2.88dsf-r11
udev - 182-r7
udev-cache - 182-r7
udev-utils - 182-r7
update-alternatives-cworth - 1:0.1.8+svnr649-r13.0
update-rc.d - 0.7-r5


When I perform these same steps using dylan, it does not work

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "openSUSE-project-12.3"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.1"
TUNE_FEATURES     =3D "armv5 thumb dsp"
TARGET_FPU        =3D "soft"
meta
meta-yocto
meta-yocto-bsp    =3D "dylan:899e5cca99ec952ff72c81b74a731150841122f4"

Without "package-management" in the configuration opkg is not
installed in the image (as expected). However, with
"package-management" in the configuration the opkg tools are installed
in the image, but /var/lib/opkg is still empty and the "$ opkg list"
command returns empty.

