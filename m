Return-Path: <prvs=182b94058=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FEF9E00C02
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 00:52:45 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhsKAAcfVlOsEApK/2dsb2JhbABZhCyqZZkygS90gicFOlEBFRUULxMmAQQbDIgyzDkXjiWDXIEUBI8QkGGPAoIr
X-IPAS-Result: AhsKAAcfVlOsEApK/2dsb2JhbABZhCyqZZkygS90gicFOlEBFRUULxMmAQQbDIgyzDkXjiWDXIEUBI8QkGGPAoIr
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Yocto Project Discussion ML (yocto@yoctoproject.org)"
	<yocto@yoctoproject.org>
Thread-Topic: Problem with own kernel recipe on Dora
Thread-Index: Ac9d/6ScmbsBUwlWRTabvACrZE7qtg==
Date: Tue, 22 Apr 2014 07:52:41 +0000
Message-ID: <F7680723A1CA6840825A59020FA77064010BC709@sdexmbx1srv.skidata.net>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.111.80]
MIME-Version: 1.0
Subject: Problem with own kernel recipe on Dora
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
X-List-Received-Date: Tue, 22 Apr 2014 07:52:47 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Yocto-Community,
as the subject already says I've a problem with my kernel recipe after the =
"migration" from the Dylan to the Dora (10.0.1) branch.
I've tried the 10.0.1 release tag as well as the current dora master (50e9c=
cb2aff7b9f9dca4fda99a6832c60f64de3b).

The kernel recipe I'm using is derived from the skeleton:
DESCRIPTION =3D "Linux Kernel"
SECTION =3D "kernel"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7=
"
inherit kernel
KSRC =3D "/home/leri/VCS/git/linux"
KBRANCH =3D "master"
SRC_URI =3D "git://${KSRC};protocol=3Dfile;branch=3D${KBRANCH};name=3Dkerne=
l;nocheckout=3D1"
SRCREV =3D "2014_03_07"
PR =3D "sd_15.2"
LINUX_VERSION =3D "${PV}"
LINUX_VERSION_EXTENSION =3D "-${PR}+${SRCREV}"
COMPATIBLE_MACHINE =3D "skidata-harmony|smartcpu"
KERNEL_IMAGETYPE =3D "uImage"
SRC_URI +=3D "file://defconfig"
require recipes-kernel/linux/linux-yocto.inc


This recipe was working well with the Dylan branch and following changes:
-SRC_URI =3D "git://${KSRC};protocol=3Dfile;branch=3D${KBRANCH};name=3Dkern=
el;nocheckout=3D1"
+SRC_URI =3D "git://${KSRC};protocol=3Dfile;branch=3D${KBRANCH};name=3Dkern=
el"
+S =3D "${WORKDIR}/git"


When compiled with the dora branch the kernel hangs at "Starting kernel..."=
 and doesn't start:
## Booting kernel from Legacy Image at 00000000 ...
   Image Name:   Linux-3.1.10-sd_15.2
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3181616 Bytes =3D 3 MiB
   Load Address: 00008000
   Entry Point:  00008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...


I've already looked through the migration notes in the manual but I'm unabl=
e to find any hints...
Are there any ideas why the kernel doesn't start with the Dora branch?

Thank you for your help!

best regards,
Richard

