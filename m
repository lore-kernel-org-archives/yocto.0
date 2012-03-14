Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B64C2E011D1
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 15:05:07 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 14 Mar 2012 15:05:06 -0700
Received: by lbon10 with SMTP id n10so1024195lbo.25
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 15:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=ygnuoSuYKZ3D866Br7inAb2v2vnd1eVOGNzgo3RbymA=;
	b=opem7ZG0+9+tOZCYDOXWPC1nSwW5/sXeR+h6w6k1yIbL0WXs8+p1gRQ3zSmaOPDqwb
	MFZphNba2LFdidC+CWp+XYxSXK7cJOKBmH09WFfyosZJz8kl44Xq0e1YBz5lLvacYcdw
	YefNZ7wiDV8cLKHjo244+1MqpkRuuVeUFIcOWePBAxyuu4eP0jK/oUph6PecslEtAk7m
	s8t/hzNRg4RT9F9qm7yab0NDTGEpZA7wbxZsHQ8A0yH2vnegRI4lQrF4viqhk3yFa0Fg
	MtdPbUX1aZC1hNX5J3wPE0MRZPZEjI5fmtvD8TEdbNTTB71FVuz9DchypwbfvD2tinhg
	j2wg==
MIME-Version: 1.0
Received: by 10.152.115.69 with SMTP id jm5mr3163071lab.25.1331762704160; Wed,
	14 Mar 2012 15:05:04 -0700 (PDT)
Received: by 10.112.98.133 with HTTP; Wed, 14 Mar 2012 15:05:04 -0700 (PDT)
Date: Wed, 14 Mar 2012 15:05:04 -0700
Message-ID: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQloM4cT4tWD65Pya18C3LyijFePXuv+ljejiuigApsTK/RsZIPN3hZ17kuqJjeg6Mg2QmXm
Subject: [Announcement] 1.2 Milestone 3 Released
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
X-List-Received-Date: Wed, 14 Mar 2012 22:05:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

We are pleased to announce the third milestone of the coming release
of Yocto 1.2. This milestone release is available at:

   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
   or
   http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2

Additional tarballs for meta-qt3 and the eclipse plugin are available at:

   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2

with mirror locations at:

   http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
   http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2

For information on 1.2 M3 test results see:

   http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report

Thank you everyone for all the hard work.

- ------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

- --------------------
edison-6.1.0-m3 Errata
- --------------------
Release Name: poky-edison-6.1.0-m3
Branch:  1.2_M3
Tag:  1.2_M3.final
Hash:  320558f494c618f53e0c773db3ea0109476e8359
md5:  24a90ec80d90c7f6757d9be50c2efe47  poky-edison-6.1.0-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edison-6.1.0-m3.tar.bz2

Release Name: eclipse-poky-edison-6.1.0-m3
Branch:  1.2_M3
Tag:  1.2_M3.final
Hash:  06652a1b3f7a82481b4a7f1fee279ce1c616013b
md5:  eaa2d0e9a5554463b1d44b8b5f9d29e0  eclipse-poky-edison-6.1.0-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2

Release Name: meta-qt3-edison-6.1.0-m3
Branch:  1.2_M3
Tag:  1.2_M3.final
Hash:  7e283e296d589256bef1a5652b72f264aba72e1a
md5:  89d04eaf3aead8322c3b601190391f2d  meta-qt3-edison-6.1.0-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-edison-6.1.0-m3.tar.bz2

- --------------------
Features
- --------------------
- - HOB2 with redesigned UI and workflow implementation
- - Build appliance features and stability.
- - Error handling improvement such as display a summary of warning
and error messages at the end of Bitbake command.
- - Oracle/Sun Hotspot JDK/JRE support.
- - POSIX support
- - Enhancement to the Eclipse plug-in for Bitbake commander

- --------------------
Known Issues
- --------------------
- - Bug 2066 - Glxgears failed in qemuarm/qemuppc/qemumips.
- - Bug 1898-[beagleboard C4] X server cannot startup with 3.0 kernel.
- - Bug 1906 -[QEMU] loses focus in qemux86-64 terminal When I press
key [CTRL+L]
- - Bug 1912-[beagleboard C4] Segmentation fault when reboot the
system with 3.0 kernel
- - Bug 1917-[non-GPLv3] image fails to boot up with no root filesystem found
- - Bug 1918-[x32] insane.bbclass reports error for x32 kernel
- - Bug 1899-[multilib] do_rootfs failed for lib-connman-gnome with ipk
- - Bug 1903-[HOB] do_rootfs failed with dummy-image against a clean working dir
- - Bug 1910-[HOB] git recipes not shown in package view due to
inconsistent package name
- - Bug 1911-[HOB] non-GPLv3 build not work


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.16 (GNU/Linux)

iQEcBAEBAgAGBQJPYRW0AAoJEEyK+E/MEkQPd8MIALCvjFoOhM8yU7osB/YYqBWC
6NfnzRmPLnySGoeN3oobKomLG9ZoGmrwwuSfYfAlf3w6TDTAOunSi6x/94L1P6pa
5cOiSCkZGYP4OLBDfGynciCRLTjmqREq7I6uEHscvvG9n8f5uN99hVG8zc99JAzi
Cu2z4iyr/qV/WLzJj7Fg9QPAWLUp3xtrgiqaa+0W26qdea6go6hbdbhZ0tYhf/HE
duXPgjgwhGHUKNFli3UDchJRdGoIvm/TLkKfzqgFEDdE/5lbKPvWg6Q21Ec04ZM9
N8OqoAJJMOUtVztl3CIJ7bA2/zTNazIzLBVFiodtzpKJr9FMJsJKp+GpJybuCKg=
=n5IG
-----END PGP SIGNATURE-----

