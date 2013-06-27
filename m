Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6C38E014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=eadIL4SFW9vVBJVKL/+3Z2F6v+R0KAjlSThnC+eMkGg=; 
	b=jlbtLzijK9Pr1RUzIwn4b9fl+M9HTUY7fBRI7WxDP2PmSNFFwPX3Y+O5bFOqyXKEk9qLWa/bQ6zhduuYE3iu18rjV5SNR/SQFVxMgzn+KMmSKwds7on38pTaZn0La7H6tzxaMRcd5v3YzLC1nnPmRM8Y8jCIJ09DPtvOoRpXRjc=;
Received: from [109.224.129.17] (port=39683
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1Us72B-000rDc-J2
	for yocto@yoctoproject.org; Thu, 27 Jun 2013 08:54:27 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 27 Jun 2013 08:54:34 +0100
Message-Id: <9AF523D8-45BD-4C28-B6A4-8414A534A52B@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: Problems building core-image-minimal for meta-fsl-asm-extra / 'wandboard-dual'
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
X-List-Received-Date: Thu, 27 Jun 2013 07:54:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to build core-image-minimal for the 'wandboard-dual' machine =
from meta-fsl-arm extra =
(https://github.com/Freescale/meta-fsl-arm-extra).

The README for that layer states that it depends on =
git.openembedded.org/openembedded-core and =
git.yoctoproject.org/meta-fsl-arm, both at branch 'danny' and revision =
'HEAD'.

So, my bblayers looks like:

LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBMASK =3D "udev_.*\.bbappend$"=20

BBLAYERS ?=3D " \
  /media/SSD-RAID/poky-git/meta \
  /media/SSD-RAID/poky-git/meta-yocto \
  /media/SSD-RAID/poky-git/meta-yocto-bsp \
  /media/SSD-RAID/meta-fsl-arm-git \
  /media/SSD-RAID/meta-fsl-arm-extra-git \
  "

(The -git just reminds me that I'm using git repos!).

To (try and) make sure I have the correct branches I've run:

   git checkout origin/danny --- for meta-fsl-arm

and

   git checkout origin/master --- for meta-fsl-arm-extra

The dependencies listed in the README for origin/danny in meta-fsl-arm =
look to fit in with the above.

I've also selected a 'danny' branch within my 'poky' repo:

   git checkout danny-8.0.2

I've then built:

   bitbake core-image-minimal

However, I'm getting an error in u-boot-fslc:

ERROR: Function failed: do_compile (see =
/media/SSD-RAID/build-danny-wandboard/tmp/work/wandboard_dual-poky-linux-g=
nueabi/u-boot-fslc-v2012.10-r4/temp/log.do_compile.31641 for further =
information)
ERROR: Logfile of failure stored in: =
/media/SSD-RAID/build-danny-wandboard/tmp/work/wandboard_dual-poky-linux-g=
nueabi/u-boot-fslc-v2012.10-r4/temp/log.do_compile.31641
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 16 CROSS_COMPILE=3Darm-poky-linux-gnueabi- =
CC=3Darm-poky-linux-gnueabi-gcc  =
--sysroot=3D/media/SSD-RAID/build-danny-wandboard/tmp/sysroots/wandboard-d=
ual wandboard_dl_config
| make: *** No rule to make target `wandboard_dl_config'.  Stop.
| make: *** [wandboard_dl_config] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see =
/media/SSD-RAID/build-danny-wandboard/tmp/work/wandboard_dual-poky-linux-g=
nueabi/u-boot-fslc-v2012.10-r4/temp/log.do_compile.31641 for further =
information)
ERROR: Task 68 =
(/media/SSD-RAID/meta-fsl-arm-git/recipes-bsp/u-boot/u-boot-fslc_2012.10.b=
b, do_compile) failed with exit code '1'

Can anyone point out where I've gone wrong?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




