Return-Path: <gizero@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74F19E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:18:25 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so596891qcs.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=ZZUKzuhkqPP/MNYEWtzA5LqU9OsIpyPzBufif1ZoO28=;
	b=sBm1Kw3mNL6+5xz1DnmZvifRA2Ra7fZD2wRCirW0vyuaresg40WH2Uy51WROQ5aI/8
	FnLrsk0JRf4MXhzk0n1GlmjEzv3Ft5gO8HJseUSumRKGoAioJV9gDZWWccz2muJYT+jJ
	ZPVFlI68U6qo8JT00IQRxBbgychLqXITz9qVHDr0lwGRPRNm5q95TbqR/fiSEnrCXWxs
	flJeaSE8k9yuKiKjKKRu21w55u4z+GyftHEBigWHD0+yHW95kOskYfv58nl/HNdwVa7/
	Q7PkqvjDsCNYDhsmqFrm/8PfjgHC/9HtXy1IhBsICa4MaUNWG9hgdNwdQdCspSVwFRhf
	cthA==
MIME-Version: 1.0
Received: by 10.229.136.195 with SMTP id s3mr1222501qct.60.1333127904782; Fri,
	30 Mar 2012 10:18:24 -0700 (PDT)
Received: by 10.229.157.199 with HTTP; Fri, 30 Mar 2012 10:18:24 -0700 (PDT)
Date: Fri, 30 Mar 2012 19:18:24 +0200
Message-ID: <CAC+thW2bpSsoHOC2feOEowp1POB2zFG4eSDiiKs6xa7xP+qwDg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: Suspicious warnings while beta testing yocto 1.2
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
X-List-Received-Date: Fri, 30 Mar 2012 17:18:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

While beta testing yocto 1.2 I'm building for beagleboard with:

OE Build Configuration:
BB_VERSION        =3D "1.15.1"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "beagleboard"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.1+snapshot-20120330"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa8"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto        =3D "<unknown>:<unknown>"

I see warnings complaining that some options set by the BSP are not
valid for the kernel being built. This is the first time I noticed and
it's confusing me. After some search I find a past conversation where
it was suggested that warnings like this for a Yocto maintained BSP
should be considered bugs. Can anyone explain this? Build is
completing successfully. Not yet tested the kernel on actual hardware.
Later I will see if something similar also happens in edison not.

Here is the log:

This BSP sets 15 invalid/obsolete kernel options.
These config options are not offered anywhere within this kernel.
The full list can be found in your workspace at:
/home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/beagl=
eboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b7514109=
6b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta/cf=
g/yocto/standard/beagleboard/invalid.cfg

This BSP sets 50 kernel options that are possibly non-hardware related.
The full list can be found in your workspace at:
/home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/beagl=
eboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b7514109=
6b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta/cf=
g/yocto/standard/beagleboard/specified_non_hdw.cfg

WARNING: There were 12 hardware options requested that do not
         have a corresponding value present in the final ".config" file.
         This probably means you aren't getting the config you wanted.
The full list can be found in your workspace at:
/home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/beagl=
eboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b7514109=
6b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta/cf=
g/yocto/standard/beagleboard/mismatch.cfg

Waiting a second to make sure you get a chance to see this...

If useful I can provide the list of options as per given log files.

