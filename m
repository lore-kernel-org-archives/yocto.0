Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0273C369D3
	for <webhook@archiver.kernel.org>; Mon, 28 Apr 2025 07:24:26 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.42519.1745824966603399382
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Apr 2025 00:22:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=G8GfiYvR;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6E89A43A40;
	Mon, 28 Apr 2025 07:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1745824964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=vW+xiX1G8sCBjT2058NB0VLd6loPgVocwX5R91WKzAw=;
	b=G8GfiYvRWuWKzk1WG20YXPB7WnQicuTJhUgUmeaX5ZehkNiZoWKil8SlefwQuccBqZDKFA
	mBcoQm9rw9UfdJyRbK2wq20CA/Tj043Kmib2XNNV0qXBS6XwZne8aZOs7zuzbTjkaRmYpC
	TuPKmR4RUUoT0Qx/F6Nf+lN5xsuPl5hB9v7mJGlQFVkf1LZOqYzXuZf67qWMftjRFWk63D
	3g57sD/tyqdc+U2JlHw23rQzMhqnn53fwzxASKPSMCwPBBwgoZEEDsvj4PaCd6wKIRmSrl
	GeFiM2m5bgzsEP5SxnxFMiJm2AAt540e8rYKd4XAxguVMOQhuFp6X9P0LlodiQ==
Message-ID: <c473c4cad723aa3d40cdcb3b86b08a77758513d9.camel@bootlin.com>
Subject: Re: [yocto] How to generate an initrd.img in yocto recipe.
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: yocto@lists.yoctoproject.org, u.apeiron@gmail.com
Cc: thomas.perrot@bootlin.com
Date: Mon, 28 Apr 2025 09:22:43 +0200
In-Reply-To: <CAK+BxzQUexgV-5nznCWkpdCxu_xkuuf8Qry-8AyXs17Ew+i9TQ@mail.gmail.com>
References: 
	<CAK+BxzQUexgV-5nznCWkpdCxu_xkuuf8Qry-8AyXs17Ew+i9TQ@mail.gmail.com>
Autocrypt: addr=thomas.perrot@bootlin.com; prefer-encrypt=mutual;
 keydata=mQGNBF+/ZOUBDAC2DghCjZvmgYcve02OG7dGZ7Iy58uEwne3LB7w7nRwdAxKw7ZaiVqwY
 O+yNGVi+GVx7oA6Wn4pv46z+QDRLQiq6OseuXhkSGCg7U/yBCUq12B/GRGO1Qt2Qi1mJJT1s+1qZ5
 Gxv6Nypz9qKVn94GM2bR1hXBga0t87vBpebThOHmX5d/0dqIcVxRCM7onNb0dDyRoVgLS5rBhQzrL
 CMrJaCy39xZUy0J1SOlH4Mgk6EhJIPYY4wlzikGX6urg+Tc9EjGd78ry0e0p5U5qgjFR5QGJDy1Gn
 U3CfwbT9sowdCASDbQDUoltlv2iWJCLa0xl97KVchCa0pr7HKbFA3J5SLKqFYUBCkFL+5WudYlz2n
 XxiUgyviMQxyK+ij66kEi6/2zFDAecd43pHV7790ptqZBC3Jc67Emj7Vo3ShX6RXPPxxbeCTOF2uk
 I45aJ9XcVFH/MFE96NjXj8uahnIsiTPyuCUoJu8tj7TSQyue874qJqVQvqlFyt2aZYJZ8ruq8AEQE
 AAbQpVGhvbWFzIFBlcnJvdCA8dGhvbWFzLnBlcnJvdEBib290bGluLmNvbT6JAc4EEwEIADgCGwMF
 CwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQSHQHfGpqMKIwOoEiGfwAsFcf4K7QUCX79mdwAKCRCfw
 AsFcf4K7fhbC/wP0kSl6id2E/K3+UdXk6CLMVRbCFLCREzQs5WFpQ6l/I0WGOamhrOgegdszheiVF
 orlUP8d37XSpFAqydhKGaN78V5Dps0Wmwm4lIlS4MtQXJtSLUHXDJLIZLW0pw8tiPLKsd1o/yDkXE
 dnpsjJTRG6SdDSHnyOB2/gh4p+yTaLytFdARk/r4/P26+L+FiH0fFl+RnBt19LPklfKgeDc7GwIif
 ja+nIWpp3W23DAUuI6xduEut25Q89yu7Ci8CliLfAiLy9bIGjBQWU2Y+1/j/7KuPj6VbBsZWLTZY0
 hUmpJSTnWAqc9SMsNxo7NSQuddgviz5e2tqucaRqxP02FGzNa8U4NAKdWaXrlHG5Dglj9XH0DK+SH
 +c96qqFewYD8VPQ6XAGxQcXbrtJmiMor1R2DfziispLRvJcfYs8xqabbCtoS3ouXB9XRi8hn7A2kh
 ME1ryS+Oh63JshXHnw6bmjCpVd/p+fGLIGU6A47pJOpviKR4jEO84pl2ejtDZ3Tc=
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-9AezwuQR6BWcg83ekBdd"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddviedtfeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepkffuhffvveffjghftggfggesghdtreertderjeenucfhrhhomhepvfhhohhmrghsucfrvghrrhhothcuoehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpefhjefhheekteekfeevhefgkefgudfgffevfefhvdehiedvhefhgfelledugffhjeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdgsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopegludelvddrudeikedrtddrvdegtdgnpdhmrghilhhfrhhomhepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepfedprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehurdgrphgvihhrohhnsehgmhgrihhlrdgtohhmpdhrtghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Apr 2025 07:24:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65258


--=-9AezwuQR6BWcg83ekBdd
Content-Type: multipart/alternative; boundary="=-Hp6vVoE1ENIWpPVLHj0u"

--=-Hp6vVoE1ENIWpPVLHj0u
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ulises,

On Sun, 2025-04-27 at 13:39 -0600, Ulises Vega via
lists.yoctoproject.org wrote:
> Hello everyone,
>=20
> I want to generate an initrd.img for booting a beaglebone-ai for the
> automotive grade linux which works with both yocto scrathgap and
> kirkstone.
>=20
> I added the below lines to my local.conf file:
>=20
> #################
> INITRAMFS_IMAGE =3D "core-image-tiny-initramfs"

To build an initramfs, you only need to specify the initramfs image
(e.g., INITRAMFS_IMAGE_NAME) and its type (e.g., INITRAMFS_FSTYPES).
For example:

INITRAMFS_IMAGE =3D "core-image-tiny-initramfs"
INITRAMFS_FSTYPES =3D "cpio.gz"

Moreover, the kernel features required to load and uncompress the
initramfs must be enabled in the defconfig of your kernel. For example:

CONFIG_BLK_DEV_INITRD=3Dy
CONFIG_INITRAMFS_SOURCE=3D""
CONFIG_RD_GZIP=3Dy
CONFIG_DECOMPRESS_GZIP=3Dy

> INITRAMFS_IMAGE_BUNDLE =3D "1"

This is only necessary if you want the initramfs to be packaged into
the kernel binary instead of being a separate binary (or a different
image node of a kernel fitimage).

Kind regards,
Thomas

> INITRAMFS_IMAGE_NAME ?=3D "${INITRAMFS_IMAGE}-${MACHINE}"
> INITRAMFS_KERNEL_IMAGE=3D"${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin"
> VIRTUAL-RUNTIME_dev_manager =3D "busybox-mdev"
> IMAGE_BOOT_FILES:append =3D "
> ${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYPE}"
>=20
> INIT_MANAGER ?=3D "systemd"
>=20
> IMAGE_ROOTFS_MAXSIZE ?=3D "4294967296"
> ROOTFS_PARTITION_SIZE ?=3D "4294967296"
>=20
> SDCARD_ROOTFS ?=3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4"
>=20
> IMAGE_FSTYPES:append =3D " ext4 cpio.gz"
> ##################
>=20
> This is what I found on the web about what I needed to add to
> generate that image. Maybe my initrd.img is being generated but is
> being named "core-image-tiny-initramfs" as the variable
> INITRAMFS_IMAGE indicates.
>=20
> I would like to know if I'm writing the correct variables to generate
> the initrd.img.
>=20
> Thanks.
>=20
> Ulises Vega
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65257):
> https://lists.yoctoproject.org/g/yocto/message/65257
> Mute This Topic: https://lists.yoctoproject.org/mt/112488442/5443093
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[thomas.perrot@bootlin.=
com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


--=-Hp6vVoE1ENIWpPVLHj0u
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode:=
 space; line-break: after-white-space;"><div>Hello Ulises,</div><div><br></=
div><div>On Sun, 2025-04-27 at 13:39 -0600, Ulises Vega via lists.yoctoproj=
ect.org wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; b=
order-left:2px #729fcf solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello =
everyone,</div><div><br></div><div>I want to generate an initrd.img for boo=
ting a beaglebone-ai for the automotive grade linux which works with both y=
octo scrathgap and kirkstone.</div><div><br></div><div>I added the below li=
nes to my local.conf file:</div><div><br></div><div>#################<br>IN=
ITRAMFS_IMAGE =3D "core-image-tiny-initramfs"</div></div></blockquote><div>=
<br></div><div><div>To build an initramfs, you only need to specify the ini=
tramfs image=20
(e.g., INITRAMFS_IMAGE_NAME) and its type (e.g., INITRAMFS_FSTYPES). For
 example:</div></div><div><br></div><div><div>INITRAMFS_IMAGE =3D "core-ima=
ge-tiny-initramfs"</div></div><div>INITRAMFS_FSTYPES =3D "cpio.gz"</div><di=
v><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); f=
ont-family: Cantarell; font-style: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap-hi=
ghlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-dec=
oration: none;"><div>Moreover, the kernel features required to load and unc=
ompress the initramfs must be enabled in the defconfig of your kernel. For =
example:</div></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, =
0, 0); font-family: Cantarell; font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webki=
t-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; =
text-decoration: none;"><br><div>CONFIG_BLK_DEV_INITRD=3Dy</div><div>CONFIG=
_INITRAMFS_SOURCE=3D""</div><div>CONFIG_RD_GZIP=3Dy</div><div>CONFIG_DECOMP=
RESS_GZIP=3Dy</div></div><div><br></div><blockquote type=3D"cite" style=3D"=
margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir=
=3D"ltr"><div>INITRAMFS_IMAGE_BUNDLE =3D "1"</div></div></blockquote><div><=
br></div><div><div>This is only necessary if you want the initramfs to be p=
ackaged into the
 kernel binary instead of being a separate binary (or a different image=20
node of a kernel fitimage).</div></div><div><br></div><div>Kind regards,</d=
iv><div>Thomas</div><div><br></div><blockquote type=3D"cite" style=3D"margi=
n:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir=3D"l=
tr"><div>INITRAMFS_IMAGE_NAME ?=3D "${INITRAMFS_IMAGE}-${MACHINE}"<br>INITR=
AMFS_KERNEL_IMAGE=3D"${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin"<br>VIRTU=
AL-RUNTIME_dev_manager =3D "busybox-mdev"<br>IMAGE_BOOT_FILES:append =3D " =
${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYPE}"<br><br>INIT_MANAGER ?=3D "sy=
stemd"<br><br>IMAGE_ROOTFS_MAXSIZE ?=3D "4294967296"<br>ROOTFS_PARTITION_SI=
ZE ?=3D "4294967296"<br><br>SDCARD_ROOTFS ?=3D "${DEPLOY_DIR_IMAGE}/${IMAGE=
_NAME}.rootfs.ext4"<br><br>IMAGE_FSTYPES:append =3D " ext4 cpio.gz"<br>####=
##############<br></div><div><br></div><div>This is what I found on the web=
 about what I needed to add to generate that image. Maybe my initrd.img is =
being generated but is being named "core-image-tiny-initramfs" as the varia=
ble INITRAMFS_IMAGE indicates.</div><div><br></div><div>I would like to kno=
w if I'm writing the correct variables to generate the initrd.img.</div><di=
v><br></div><div>Thanks.</div><div><br></div><div>Ulises Vega</div></div><d=
iv><br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><d=
iv>Links: You receive all messages sent to this group.<br></div><div>View/R=
eply Online (#65257): <a href=3D"https://lists.yoctoproject.org/g/yocto/mes=
sage/65257">https://lists.yoctoproject.org/g/yocto/message/65257</a><br></d=
iv><div>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11248=
8442/5443093">https://lists.yoctoproject.org/mt/112488442/5443093</a><br></=
div><div>Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org"=
>yocto+owner@lists.yoctoproject.org</a><br></div><div>Unsubscribe: <a href=
=3D"https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoprojec=
t.org/g/yocto/unsub</a>&nbsp;[<a href=3D"mailto:thomas.perrot@bootlin.com">=
thomas.perrot@bootlin.com</a>]<br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-<br></div><div><br></div></blockquote><div><br></div><div><=
span><pre>-- <br></pre><pre>Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

</pre></span></div></body></html>

--=-Hp6vVoE1ENIWpPVLHj0u--

--=-9AezwuQR6BWcg83ekBdd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmgPLMMACgkQn8ALBXH+
Cu1ECAwAtTA6ZoIpCqDxBZflM+0gdI2KVAnHF2JEhqUqlKCEb9zOrsvPkS8xnB60
CoaG2VfrF5IxF0ImjU9EiPkAY9GNS0NE/i14deykW9UCTvrddo25/ddf1jWzvEBU
IPLedqZUcsArXItfLw2SPFFpnELiszKa3lS6/Gad82DSx5HRltOErCGNSY8xC3GT
qBJmR5adQkbBPMtUBx98/gUfiwAP3cGjhm4YJjy087C/74OVZ0XypXeCpnD5opZ1
fF4YV0kno/ONzqak0X1VSXKenizjs8fxP8xfJqchyHxvo17L3H6VEUYnHmrz4me/
myBnKCyqih+qqgqJfiC9YvjyjzrObmyuanJNVfMUqsyAvGOAQon1M6bgJxzE9TA0
NhqzM4bkZmtgu/mJ2q5+RySXYw7CEwO8fVePauSxb4C4DX3NZV8Q1jUQ2SyYe+It
EgW90nlc0WX1FHVuJmR3UuyjTBGVA9QPrgb3nNbD9lLvaT9zQrkk3HG6umNwUbHd
OVAjNQaX
=spt+
-----END PGP SIGNATURE-----

--=-9AezwuQR6BWcg83ekBdd--

