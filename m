Return-Path: <eren@hambedded.org>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76ABFE006E5
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 03:11:20 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id c13so2236390eek.5
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 03:11:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Bz6QKFyE+W7YOg53Y0OJj6LTGd5+Pixs9rPfVHcccjw=;
	b=Ucm9Kz2yUnbBTCQ3mzCqF4AKbZ0aRVZI21/dBrU7yvHbY4Wg1DhT92J8fVvkqQIN95
	On4XAs9dObf4JUHJWpM7EmsSZrkaxq4rtezUs4a2NUFahoich5l/MiA8oztGhGp3T/3Q
	RYr7zYV46wZ36modtd6qxG78ONk9it3vFaUkV+kRjDwWahwhBuK3iVcmLU6Suem9lnBc
	LXzLRVpic9o5JTiQnNVTgddTQtCIoO0Uv/yENIPz4hj6u1gwP/3mgEAJeJT6xCNeci0n
	CTD2/brFIGzyrlH9zZjfPMTNKI1EX1CJYBP3aE1cSVEBbOmHiBhvIf3RFfBn6g415+CA
	3TSQ==
X-Gm-Message-State: ALoCoQk2mLS//uqJLQsJKKTzCNw2TtwpX32Dj9+OysoB83RjBPtE8tN9T193CxR1rK3GIJiViamX
X-Received: by 10.15.31.12 with SMTP id x12mr1557915eeu.75.1378116679399;
	Mon, 02 Sep 2013 03:11:19 -0700 (PDT)
Received: from localhost ([132.231.11.113])
	by mx.google.com with ESMTPSA id h52sm20753335eez.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 03:11:18 -0700 (PDT)
Date: Mon, 2 Sep 2013 12:11:19 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: openembedded-devel <openembedded-devel@lists.openembedded.org>
Message-ID: <20130902101119.GA75092@airo.local>
References: <20130829162014.GA52370@airo.local>
MIME-Version: 1.0
In-Reply-To: <20130829162014.GA52370@airo.local>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [FIXED] Partitioned Image Creation and Initramfs Problem for ALIX3D3
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
X-List-Received-Date: Mon, 02 Sep 2013 10:11:24 -0000
X-Groupsio-MsgNum: 15784
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline

--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2013 at 06:20:14PM +0200, Eren T=FCrkay wrote:
> Hello all,

Hi again,

> The possible solution that came to my mind is to get
> "boot-directdisk.bbclass", add initramfs installation, put the code
> in a seperate bbclass, rename the function as IMAGE_CMD_alix-hddimage,
> and add "alix-hddimage" to IMAGE_FSTYPES. The same technique is used by
> meta-raspberrypi layer [1]

> However, the problem with this is that "core-image-minimal-initramfs"
> includes "initramfs-live-boot" by default. This script tries to find
> rootfs.img and if it cannot find, it fails to boot the board. In this
> case, we will have extracted rootfs in /dev/sda2, so rootfs.img will not
> be there.
>=20
> I looked at "initramfs-framework" recipe and it seems to fit for it. For
> initramfs problem, should I create "alix3d3-minimal-initramfs" recipe,
> add "initramfs-framework-base initramfs-module-udev" to IMAGE_INSTALL
> and make "IMAGE_CMD_alix-hddimage" depend on
> "alix3d3-minimal-initramfs"? Would it be a proper solution?

I applied the solution here and the generated image works as expected. I
needed to create seperate initramfs image for the board, and have a
bbclass file for image creation (IMAGE_CMD_alix-hddimage). This bbclass
for image creation is the mix of boot-directdisk.bbclass and
sdimage_rpi.

https://github.com/eren/meta-alix3d3

Initramfs image is in "recipes-core/images", and the bbclass file is in
"classes" directory. For those who are interested, taking a look at
"conf/machine/alix3d3.conf" would be helpful as well.

Cheers,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJSJGRGAAoJEOM7bMm6HhcT/t8QAISuvsfTNViUnDZ+qbslB7AG
QwAF33OVLXRydF3kWa1zML/JN9MacYb4WsPERUAeWMdaaXQyMq4ilhhOTrEnj+KM
v2aRGw5ujH+QJphBb7GMTz/FFBNcmWQsnUTBg37Sj/6q3WrfGgMA7Siz2+VMriqU
FZLIWFfJe5StazX4Kwaq/F3S2ERxUDD+F/T+/DyeuOW8oanGRaEenuA/AKG3xP8a
/TjA+WTh5UPZOO8REI4PBX/9+LhQDDk8G0YfgjfIKXMaaeiOPrPBKBecw5ZXE43p
vcZiDERHmTB6VjJcRea3ZWSzzQJAaqjB4D5kyJ4UQBLMyvMwNT+LKrq4aQIS5gjq
zAH0nQZUFfMd/9XL20lvjV3EbakIJlB0nOyS7Jds+jGgMK5mKvYJKyZX5xsyAqpZ
L4z0Ol8zTYhqkN2wWVu2ZyLM9e0xiL27Cd10PuxG00uKJUkyzH2bZgZ57ECYTUOT
QgKHeOVJ4KXQjn6ptlfaZYnt8Doyj72E3ulAmh6doo0Nhvv4TU8oPXjF3+EnqcsJ
N9OFkbrUWPpdr0W60kjWOcDDgSbE2YnMcHdAa4964PRKS3traowp914qPOBZHjcT
NmHKsQ8A66v2CiCqL6qY++H1RHNh7eZ4Ofd9zz2PAbNfx3fE26g+LZqmq6qmsO0q
nFj7bB35Zzvd6W0f6iuL
=nuuT
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--
