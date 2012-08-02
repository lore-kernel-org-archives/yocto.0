Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4791CE0141D
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 13:41:06 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 02 Aug 2012 13:41:05 -0700
Received: by qcmv28 with SMTP id v28so5216225qcm.25
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 13:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=cewUQH/pCNwr2sAVrMpxZCsUgULvF0runVpHSgEdyn0=;
	b=DtrY6ebV3mvVBBmzKcJF+CXzRZ19ucIQeT+9aCFsM9Hm7csBIcQhL03tke3D6zL8v8
	Fb2kWZYzvFjCqg6YgbW2BZpWbibsmCxPZEB51qBEE8ZMdW2TfWrEEs/kLulj6id7l9oQ
	VjZeDUr7aFx7nH+DTFP8gRznI2+dn1IS4nnoUk7wzdzNlFhHutwc7cJ+fuLZxxz+/9GY
	dSwi7jeM6tfmQh1BTgTc+rrazhab7jUD/svKbRFfFU53sZfpYc3zb7mVsi5SUwueQ54v
	xPuyBGk/iJBdTxxyNu1pKGDXHAFUbpqn2yViV0wwa6QQv/8R2pCtOxvS9Y2JMYbxyPb4
	xl6g==
MIME-Version: 1.0
Received: by 10.224.203.132 with SMTP id fi4mr43999198qab.76.1343940064754;
	Thu, 02 Aug 2012 13:41:04 -0700 (PDT)
Received: by 10.229.178.194 with HTTP; Thu, 2 Aug 2012 13:41:04 -0700 (PDT)
Date: Thu, 2 Aug 2012 13:41:04 -0700
Message-ID: <CAPhnLPD+V-P8uExPCc3-SVwk4xE_PGeTz-KNa+A-2xhakrPUCw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQmSk+5tbDEcsTcAH709ax7m9jP/uGMkKb4avSLQZDFo+mNPKpYR6w1+ks5ulR5t+GnDWec4
Subject: [ANNOUNCEMENT] 1.3 Milestone 2 released
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
X-List-Received-Date: Thu, 02 Aug 2012 20:41:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

Hello,

We are pleased to announce the second milestone of the coming release
of Yocto 1.3. This milestone release is available at:

  http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m2/poky-yocto-1.3-m2.tar.bz2
  or
  http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m2/poky-yocto-1.3-m2.tar.bz2

Additional tarballs for meta-qt3 and the eclipse plugin are available at:

  http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m2/eclipse-poky-yocto-1.3-m2.tar.bz2
  http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m2/meta-qt3-yocto-1.3-m2.tar.bz2

with mirror locations at:

  http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m2/eclipse-poky-yocto-1.3-m2.tar.bz2
  http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m2/meta-qt3-yocto-1.3-m2.tar.bz2

For information on 1.3 M2 test results see:

  http://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report

Thank you everyone for all the hard work.

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

- --------------------
yocto-1.3-m2 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.3-m2
Branch:  1.3_M2
Tag:  1.3_M2.final
Hash:  4989ec8ba8760bf12def6990e91f3d8881af6e25
md5:  e11c4dc68a124ee2af0aa7fc4260d376  eclipse-poky-yocto-1.3-m2.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m2/eclipse-poky-yocto-1.3-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m2/eclipse-poky-yocto-1.3-m2.tar.bz2

Release Name: meta-qt3-yocto-1.3-m2
Branch:  1.3_M2
Tag:  1.3_M2.final
Hash:  f8475d5c5935695d4d1dfff1d7be30f49e162094
md5:  c3bb68408016c996142b7bb8f49051f0  meta-qt3-yocto-1.3-m2.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m2/meta-qt3-yocto-1.3-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m2/meta-qt3-yocto-1.3-m2.tar.bz2

Release Name: poky-yocto-1.3-m2
Branch:  1.3_M2
Tag:  1.3_M2.final
Hash:  20dc7d276682defc29b3a64ccf9fb87b4cf4fb79
md5:  7ba1063aa612ec440bc8fa3ad93b2f9f  poky-yocto-1.3-m2.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m2/poky-yocto-1.3-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m2/poky-yocto-1.3-m2.tar.bz2

- --------------------
Known Issues
- --------------------
Bug 2646 Windows switching failure
Bug  2415  connman doesn't provide a 3g configuration utility
Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp tool
Bug 2783 do_bootdirectdisk fail when build build-appliance-image on
Ubuntu11.10 X86_64 platform
Bug 2589 [yocto-kernel] fail to build core-image-sato when add patch into the
kernel
Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk
Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscripts
Bug 2572 [multilib] failed dependency for util-linux with multilib build
Bug 2780 btrfs format image build fails due to kernel do_patch failure
Bug 1452 32bit kernel generated oprofile data file can not be read by remote
64bit operation
Bug 1908 pkg.m4 is missing in package pkgconfig-nativesdk again
Bug 2534 [Regression]Glxgears failed on qemuarm/mips/ppc on Ubuntu 11.10 64bit
Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0
Bug 2802 [Hob]Deploy image button not available
Bug 2695 [HOB]Settings are not saved

- --------------------
Features
- --------------------
1. ADT support for latest Eclipse Juno release.
2. Support for TCF after refactoring for TCF 1.0.
3. Enhancement to 'bitbake -g' to print all packages to be built.
4. Generating charts for build statistics and profiling.
5. HOB improvement such as image drop down list customization and many bug
fixes.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJQGuTJAAoJEEyK+E/MEkQPOWwIAJ2lcZ4Q7hkTQBFTWsB4ynB1
dvPIODB/0/KdTH/6iCIe2zQhIDnkNZgMCCFYtmt4SoYrmKCRLyzmOvHDDneo+yPj
OYpRDhFooXTHiyaz9qomPlEwiDDgme044mL01ZgovpW+4Rf6IwdqjFrnMRIaqFOP
n64nCxAo0OFyQh6QdO2J2BvHQtHLkxH6eD3exHsBeTKEgPaJroDZL+d+jDt4Xt2z
x8wGFI2DPNLrQQVmJySOy2I6vC/oGw6XC44e9JGGZhFLCB7vKXykFPUGuMnIZtlV
gfryAB2N9hsN4D6Lx19CAobpoTytMRkWKp3SBZJImEEwwDXr52JVH/KkZ2HZqJk=
=THyc
-----END PGP SIGNATURE-----

