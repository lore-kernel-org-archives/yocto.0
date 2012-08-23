Return-Path: <martin.jansa@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51C81E01404
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 02:31:59 -0700 (PDT)
Received: by bkty5 with SMTP id y5so159884bkt.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 02:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=0HgSS5iL6CQkXnv6oAqH8j4tmJEYpJiet/IKN1Q5KVI=;
	b=G1Ugy0X4gZSgc3bcdo+CeNqa1fDu0aQxpPQmNR55oSO5/JLIzhvIRt2k9ifZzdn9sf
	IG8AF+/fynSz4lZ0HCWORVvP3QAdv8NJlTHV/klDSjUdwAxlBCf+/RaVevVwcO0T33Cc
	+W7TDwHEuHXCfxOCorhnU1hDizmsw/onSA6eDptMh1Mo041Hhz6aILk7w9lMjcOLoqUW
	HXdi6tP7XqZhmU0KB2mq521XHJT5sZsluRcREn8DWqk2VeCeYh7b3K51RF30pN0wHcju
	+1+qVb5NZeUbV/Nxgp4k8ALe3rHtEg4HkdOQdrrYi+RfLjRanRVFLSss0w7Bk6zggNbN
	sfpw==
Received: by 10.204.130.146 with SMTP id t18mr208980bks.65.1345714317967;
	Thu, 23 Aug 2012 02:31:57 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id g6sm4163414bkg.2.2012.08.23.02.31.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 02:31:56 -0700 (PDT)
Date: Thu, 23 Aug 2012 11:32:02 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Message-ID: <20120823093202.GL3029@jama.jama.net>
References: <20120823111211.dc88b42c-eca6-4b9e-ad44-f26b84dfcdad.mhubig@imko.de>
MIME-Version: 1.0
In-Reply-To: <20120823111211.dc88b42c-eca6-4b9e-ad44-f26b84dfcdad.mhubig@imko.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: Wrong ENTRYPOINT and LOADADDRESS in uImage
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
X-List-Received-Date: Thu, 23 Aug 2012 09:31:59 -0000
X-Groupsio-MsgNum: 8888
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WkHPBKJ2pKcVUM5H"
Content-Disposition: inline

--WkHPBKJ2pKcVUM5H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 23, 2012 at 11:24:20AM +0200, Markus Hubig wrote:
> Hi @all,
>=20
> I have a customized Yocto-Linux Recipe in my BSP, and now I'm seeing that
> the UBOOT_ENTRYPOINT and UBOOT_LOADADDRESS settings in my ${MACHINE}.conf
> is not honored in the resulting uImage.

You need newer oe-core with this commit and KEEPUIMAGE set to "no"

commit 72a7049526ee107005bd39c7bdd814ed71345829
Author: Koen Kooi <koen@dominion.thruhere.net>
Date:   Mon Jul 23 13:45:30 2012 -0700

    kernel bbclass: Recreate uImage only when KEEPUIMAGE !=3D "yes"

    The intent of the uImage code in this class includes the following

    1) be able to specify custom load addresses without needing to patch th=
e kernel
    2) add better information to the uImage description field

    The current state is a NOP anyway, the kernel will always build a uImag=
e when you tell it to 'make uImage'.

    weakly Set KEEPUIMAGE to 'yes' in default-distrovars.inc which preserve=
 the
    current OE-Core behavior. Machines which are being ported from oe.dev a=
nd need to
    regenerate uImage can set this to be empty

    Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
    Signed-off-by: Khem Raj <raj.khem@gmail.com>
    Signed-off-by: Saul Wold <sgw@linux.intel.com>


>=20
> The relevant part of kernel.bbclass is in kernel_do_deploy():
>=20
> | if test "x${KERNEL_IMAGETYPE}" =3D "xuImage" ; then=20
> |
> |     if test -e arch/${ARCH}/boot/uImage ; then
> |         cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NA=
ME}.bin
> |
> |     elif test -e arch/${ARCH}/boot/compressed/vmlinux ; then
> | 	${OBJCOPY} -O binary -R .note -R .comment -S \
> | 	    arch/${ARCH}/boot/compressed/vmlinux linux.bin
> | 	uboot-mkimage -A ${ARCH} -O linux -T kernel -C none \
> | 	    -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} \
> | 	    -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin \
> | 	    ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
> | 	rm -f linux.bin
> |
> |     else
> | 	${OBJCOPY} -O binary -R .note -R .comment -S vmlinux linux.bin
> | 	rm -f linux.bin.gz
> | 	gzip -9 linux.bin
> | 	uboot-mkimage -A ${ARCH} -O linux -T kernel -C gzip \
> | 	    -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} \
> | 	    -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin.gz \
> | 	    ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
> |         rm -f linux.bin.gz
> |     fi
> | fi
>=20
> As you can easily see, if there is an "arch/${ARCH}/boot/uImage" present,
> uboot-mkimage is not used to set the ENTRYPOINT and LOADADDRESS. So I'm
> wondering who is setting these entries instead, and how do I adjust them?
>=20
> Cheers, Markus
>=20
> --=20
> Human beings were created by water to transport it uphill.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--WkHPBKJ2pKcVUM5H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlA1+JIACgkQN1Ujt2V2gBwHeQCfebVR5V15ws7IfC/xHek4tjnx
rZAAnie3JS4BSS0kvmFZ92lGFI6SnLOd
=9Fr3
-----END PGP SIGNATURE-----

--WkHPBKJ2pKcVUM5H--
