Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DEB8E0129D
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 09:08:35 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id gd11so747714vcb.25
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 09:08:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=/TBKyPRnEypVot7htbPpYyCm4ZzQqwDPPpYgl/9NxPU=;
	b=pWmQpFdlD0n9OJP8evw91VDlMNUpqJQj4y+KD09gsvbtR24hAlqBVq0EuxypNsFT4N
	TtHmKAh//Cx8C71zG6iMxjCTa4zuQzFd0z7NZQrevNaNzLjfZpSvThtptNbD1LxHxKJq
	h6WmgQkxWsqALQ1JArADEQcc67ZxAsPIT1Dl8LeVx7ZIkYar3gnDAr2k5Zv4tGAUt2Ei
	9gslTtnumaldLHM1U20KRdWgnxPudr4tzR2lPng1IbPgwSkzgQlWJ+gv9hVjstqR5HDb
	uRcdWsM5VfWcK5MZkmrcDQNxu6h06Si0Fb2qroC7SFixYMSmmbF+D46tqGmLBA4sILvs
	WPNQ==
MIME-Version: 1.0
X-Received: by 10.220.186.137 with SMTP id cs9mr22102987vcb.6.1368547714688;
	Tue, 14 May 2013 09:08:34 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Tue, 14 May 2013 09:08:34 -0700 (PDT)
Date: Tue, 14 May 2013 09:08:34 -0700
Message-ID: <CAPhnLPAWM3ZuU_Jz40KeMRNtdVzX09kWt01oZ01mbGvKZRbPwA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQkuQ6f1z45tdTM9txbpFGAVzeXzF/2Gsj2MGuId7OKqsEibJjOw55Jkk9cGA+3Xicf98drK
Subject: [Announcement] meta-intel release for dylan-9.0.0 (yocto-1.4)
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
X-List-Received-Date: Tue, 14 May 2013 16:08:35 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

All,

We are pleased to announce the release of the meta-intel layer. This
release of meta-intel contains the following board support packages:

- Intel=AE 3rd Generation Core=99 Platforms: Core i3, i5, i7 (Ivy Bridge)
- Intel=AE Xeon=AE E3-1125C/E3-1105C Processors with Intel Communication
Chipset 89xx (Crystal Forest Gladden Platform)
- Intel=AE Xeon=AE E5-2600 and E5-2400 (Formerly Sandy Bridge-EP/EN)
Processors with Intel Communication Chipset 89xx (Crystal Forest
Server Platform)
- Intel=AE Atom=99 E640T Processor with Intel EG20T Controller Hub
Development Kit (Queens Bay) with Open Source VESA Graphics (Fish
River Island 2)
- Intel=AE Xeon=AE E5-2600 and E5-2400 Series Processors with Intel
C604/C602-J Chipset (Romley-EP/EN Platform)
- Intel=AE Atom=99 Z5xx Processor With Intel US15W Controller Hub (eMenlow)
- Intel=AE Atom=99 E4xx Processor With Intel=AE 82801Hm I/O Controller (n45=
0)
- Intel=AE Atom=99 E6xx Processor With Intel EG20T Controller Hub
Development Kit (Crown Bay)
- Intel=AE Xeon=AE C5500/C3500 Series Processors With Intel 3420 PCH
Chipset (Jasper Forest)
- Intel=AE Atom=99 E640T Processor with Intel EG20T Controller Hub
Development Kit (Queens Bay) with IEMGD (Fish River Island 2)
- Intel=AE Atom=99 E6xx Processor With Intel EG20T Controller Hub
Development Kit with Open Source Graphics (Crown Bay)
- Intel=AE 2nd Generation Core=99 Platforms: Core i3, i5, i7 (Sandy Bridge)
- Next Unit of Computing Kit DC3217IYE (nuc)
- Intel=AE Atom=99 E6xx Processor With Intel EG20T Controller Hub
Development Kit with Open Source Graphics (Queens Bay) (SYS940X)
- Intel=AE Atom=99 E6xx Processor With Intel EG20T Controller Hub
Development Kit (Queens Bay) with IEMGD (SYS940X)

The entire layer may be downloaded at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machines/meta-in=
tel-dylan-9.0.0.tar.bz2

------------------
Downloads
------------------

Name: chiefriver
md5sum: 2d146565e7057023ba49992887776a78
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/chiefriver/meta-chiefriver-dylan-9.0.0.tar.bz2

Name: crownbay
md5sum: 3993e3849220d3bca12426b07b60e215
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/crownbay/meta-crownbay-dylan-9.0.0.tar.bz2

Name: crystalforest-gladden
md5sum: d204fe31ea51c2e45bc3b37e5097853e
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/crystalforest-gladden/meta-crystalforest-gladden-dylan-9.0.0.tar.bz2

Name: crystalforest-server
md5sum: 87eb03b5f729b01c1cc92408ee3d6b94
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/crystalforest-server/meta-crystalforest-server-dylan-9.0.0.tar.bz2

Name: emenlow
md5sum: f4c7c022383a3472bfffe4ecca385b44
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/emenlow/meta-emenlow-dylan-9.0.0.tar.bz2

Name: emenlow-noemgd
md5sum: bb8be6dc41c0b99a6ce257f8ddb7cf2e
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/emenlow-noemgd/meta-emenlow-noemgd-dylan-9.0.0.tar.bz2

Name: fri2
md5sum: 2f1e48e0f46c51da1ebb3ce24570822f
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/fri2/meta-fri2-dylan-9.0.0.tar.bz2

Name: fri2-noemgd
md5sum: 0cc9e78be3310fbb5cf6d24b38458d4a
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/fri2-noemgd/meta-fri2-noemgd-dylan-9.0.0.tar.bz2

Name: jasperforest
md5sum: 211cda77359255b84e3989b2f0ea5e12
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/jasperforest/meta-jasperforest-dylan-9.0.0.tar.bz2

Name: n450
md5sum: 2bc9b2ab84f2f0e263f2edad3f56fefa
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/n450/meta-n450-dylan-9.0.0.tar.bz2

Name: nuc
md5sum: 887e6b7a845f4f6b2d8d765087523d1e
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/nuc/meta-nuc-dylan-9.0.0.tar.bz2

Name: romley
md5sum: ed7106ddc30e16aa48dee8db6762f800
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/romley/meta-romley-dylan-9.0.0.tar.bz2

Name: sugarbay
md5sum: 40c0a346b76c90cf856ec3d64e61c775
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/sugarbay/meta-sugarbay-dylan-9.0.0.tar.bz2

Name: sys940x
md5sum: 9aab6d85d5fc69c093b62e7488b2b77f
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/sys940x/meta-sys940x-dylan-9.0.0.tar.bz2

Name: sys940x-noemgd
md5sum: b0a87aa5ff627cf300947e36ecd93454
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/machin=
es/sys940x-noemgd/meta-sys940x-noemgd-dylan-9.0.0.tar.bz2

------------------
Features
------------------
Following are features, updates, and known issues for this v1.4
release of the meta-intel layer of the Yocto Project.
New Features and Updates

    - LTSI Kernel: The v1.4 release of the meta-intel BSPs now also
includes LTSI enabled v3.4 kernel recipes along with the default
(v3.8.4) linux-yocto kernel recipes.
    - The emenlow BSP has been changed to use the Intel EMGD graphics
driver stack in place of the earlier Poulsbo Graphics Driver Stack.
    - A new emenlow-noemgd BSP has been created, which uses fully open
source gma500 graphics driver stack.
    - A new nuc BSP has been created to support Intel=92s Next Unit of
Computing platforms.
    - The EMGD graphics driver stack has been upgraded from v1.14 to
the latest, v1.16 for all the meta-intel BSPs using the Intel EMGD
graphics stack, namely crownbay, emenlow, fri2 and sys940x.
    - All the meta-intel BSPs using Intel Linux graphics stack, namely
sugarbay, chiefriver and nuc, now utilize the version 2012Q4 of the
Intel Linux Graphics Stack.
    - For the fri2-noemgd BSP, X is enabled for different supported
hardware platforms by using the fbdev X driver in place of the
earlier vesa X driver.
    - The method of specifying BSP Video Acceleration configuration
has been changed in this release. Instead of using the VA_FEATURES
variable, a new variable named MACHINE_HWCODECS is used to specify
which video codecs to include in the generated image.
    - For all the meta-intel BSPs, the default kernel recipe, which is
linux-yocto, is updated to v3.8.4.
    - New Linux-yocto-dev kernel recipes, which are used for
development of the next kernel are now provided for these meta-intel
BSPs: chiefriver, crownbay, crownbay-noemgd, emenlow, emenlow-noemgd,
fri2, fri2-noemgd, jasperforest, nuc, sugarbay, sys940x,
sys940x-noemgd.
    - v3.4 of real time kernel recipes (linux-yocto-rt_v3.4) are now
provided for these meta-intel BSPs: chiefriver, crownbay,
crownbay-noemgd, crystalforest, emenlow, emenlow-noemgd, fri2,
fri2-noemgd, jasperforest, n450, nuc, sugarbay, sys940x,
sys940x-noemgd.
    - v3.8 of real time kernel recipes (linux-yocto-rt_v3.8) are now
provided for these meta-intel BSPs: chiefriver, crownbay,
crownbay-noemgd, emenlow, emenlow-noemgd, fri2, fri2-noemgd,
jasperforest, n450, nuc, sugarbay, sys940x, sys940x-noemgd.
    - As part of the BSP retirement process, the Cedartrail BSP has
been retired from the Yocto Project as of this 1.4 release. But the
1.3 version of the BSP is still available and maintained with critical
bug fixes.

------------------
Known Issues
------------------
    [Bug #4180] USB devices auto disabling: On the Sugarbay platform,
it is observed that some of the USB devices were getting automatically
disabled after a few seconds of inactivity. A workaround for this
issue is: pass boot parameter usbcore.autosuspend=3D-1 to the kernel,
which avoids this auto suspension. This issue is observed with the
v3.8.4 kernel, and it may also show on other hardware platforms.

