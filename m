Return-Path: <sgh@sgh.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30B6FE00B68; Thu, 29 May 2014 08:38:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.10.10.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mx-aarh-3.stofanet.dk (unknown [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3945E00A2F
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 08:38:24 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1Wq2PO-0003xc-1Z; Thu, 29 May 2014 17:38:22 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 2E1CA7ECAF;
	Thu, 29 May 2014 17:38:22 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Thu, 29 May 2014 17:38:23 +0200
Message-ID: <2317978.pEesILAVCv@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-27-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <53874D1F.8090504@bsmucker.eu.org>
References: <537F9583.50407@bsmucker.eu.org> <53874D1F.8090504@bsmucker.eu.org>
MIME-Version: 1.0
Subject: Re: Yocto with Initial RamFS
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
X-List-Received-Date: Thu, 29 May 2014 15:38:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Torsdag den 29. maj 2014 08:07:11 skrev Brian Smucker:
> Hi,
>=20
> Was wondering why this has not been answered.  Maybe it is too dumb o=
f a
> question? If so, let me know or point me to some documentation.
>=20

I'm declaring an initramfs-image like this. As you can see the recipe i=
s=20
derived from core-image-minimal-initramfs. The package initramfs-vm pro=
vides=20
the script /init executed on boot.

The "assembling" of the actual bootable image with initramfs and rootfs=
 (in my=20
case a squashfs) is done in another script.

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<=
<<<<<
# initramfs for vm-image. Derived from core-image-minimal-initramfs
DESCRIPTION =3D "Small image capable of booting a a squashfs+aufs files=
ystem"

IMAGE_INSTALL =3D "initramfs-vm-boot busybox udev base-passwd"

# Do not pollute the initrd image with rootfs features
IMAGE_FEATURES =3D ""
IMAGE_LINGUAS =3D ""
#DISTRO_FEATURES =3D ""

inherit core-image

IMAGE_FSTYPES =3D "cpio"

IMAGE_PREPROCESS_COMMAND =3D "cb16_remote_bloat;"

cb16_remote_bloat() {
        rm -r ${IMAGE_ROOTFS}/boot
}
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<=
<<<<<

--=20
S=F8ren Holm

