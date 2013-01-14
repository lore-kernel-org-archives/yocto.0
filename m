Return-Path: <dedekind1@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66C98E00527
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 10:17:51 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id fe20so4241487lab.1
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 10:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:subject:from:reply-to:to:cc:date:in-reply-to
	:references:content-type:x-mailer:mime-version;
	bh=sRKyogQ52AuwLu3KrFxUkFzRANE6Fq2b+xwCsKM3cl4=;
	b=NchIiMFKSn2qlEeH7Di9uYGeyXbZ1HPNJQ445qpkHaoHiBIBctUILnEOOrJxEw6KvA
	nzM4Ylm8SNfatfDGYblNu7LC4A3ZpZC8QJoWmEUIV2xhFWkZ++UbIVl5BC4QN/eA1AMv
	8580jLw2ZSiEBXBDvufZhbg7W2uPaEl5pKvKz1ttK1JCb9u9p77k4WkPYYhPF6uNG2u8
	Er+k1wmTbDrOJ3Z+bajt7LbaCqbJw9yabuN3gYz6DjdZ9pJDNdHH7iqRvrl3IKzNfuVD
	Ym03M6Q9VTc3Fqv0IDrmLeX3MwHIPIFwXOcaTLxrpbiskYR57MPttN0tuIcFHAk2s8gK
	UtnA==
X-Received: by 10.112.39.129 with SMTP id p1mr35507100lbk.26.1358187469908;
	Mon, 14 Jan 2013 10:17:49 -0800 (PST)
Received: from [192.168.255.2] (host-94-101-1-70.igua.fi. [94.101.1.70])
	by mx.google.com with ESMTPS id v7sm5794848lbj.13.2013.01.14.10.17.41
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Mon, 14 Jan 2013 10:17:42 -0800 (PST)
Message-ID: <1358187450.1627.8.camel@kyv>
From: Artem Bityutskiy <dedekind1@gmail.com>
To: Wolfgang Denk <wd@denx.de>
Date: Mon, 14 Jan 2013 20:17:30 +0200
In-Reply-To: <20130114175648.E653B200A4C@gemini.denx.de>
References: <1358167593.2731.66.camel@sauron.fi.intel.com>
	<20130114175648.E653B200A4C@gemini.denx.de>
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [ANOUNCEMENT] bmaptool
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: dedekind1@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Jan 2013 18:17:51 -0000
X-Groupsio-MsgNum: 11503
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-9L6VN31O0Te0OuesWXrU"

--=-9L6VN31O0Te0OuesWXrU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2013-01-14 at 18:56 +0100, Wolfgang Denk wrote:
> Thanks for doing this, as the links on the page referenced above are
> broken:  both [1] "Introduction" and [2] "Usage" give just a 404 to
> me...
>=20
> [1] https://source.tizen.org/documentation/reference/bmap-tool/bmap-intro=
duction
> [2] https://source.tizen.org/documentation/reference/bmap-tool/usage

Very embarrassing, sorry. The links are broken, I'll try to fix them
tomorrow. Please, so far use the links at the left-side frame of the web
page. You should see them there like this:

The bmaptool
 * Introduction
 * Usage
   - bmaptool copy
   - bmaptool create
 * Bmap-tools project

Sorry for inconvenience. The direct links are:

https://source.tizen.org/documentation/reference/bmaptool/bmap-introduction
https://source.tizen.org/documentation/reference/bmaptool/bmaptool-usage
https://source.tizen.org/documentation/reference/bmaptool/usage/bmaptool-co=
py
https://source.tizen.org/documentation/reference/bmaptool/usage/bmaptool-cr=
eate
https://source.tizen.org/documentation/reference/bmaptool/bmap-tools-projec=
t

--=20
Best Regards,
Artem Bityutskiy

--=-9L6VN31O0Te0OuesWXrU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAABAgAGBQJQ9Eu6AAoJECmIfjd9wqK0gwsP/36O/39r/Orddx5UoIOo3fLy
jcw8ddu8oBlPyjneGGs93qGslLy5ks3d+CS/BDISmjQKSNWzQF6E8LJMXGKDx2kN
J3iz7r8DZIW0fb4hQShPYkQEoKYDeeWGvXda8qZc0RdeFli+GvEbTnsmNx2Q70Nq
cLHpeT5qSAZU+75B0BMybxdhHjZYwhYYY0XimcLLndjp6gG7bgZQuxvLj2knxCuH
eZJWN33jlx1gM0T+P+2LXe2DUaT7ujF45J6zxD3gZi/2nBE+uuPzpCs/IPdTXuCy
amHeMoMfx2hiAlKnUvk8L1aM5x5gLR/Bc3hu0/h/lFFFXQltVXNyuN3T3Ppjg8DK
NwHKFyLetutVkmZ2c4nBE6cRHaQwdQG3kY75uE6X4berau/RswNl6KFWJr3oIUFP
CeE7VlF0uy2LgPtUbFXulFcD89spfgXVvUgvIs/VmAgVUOzOQ4WsjwqUlOgryS7z
Io+Hk9+6jN6iSQkj3YKqGMu5pmv53sSL6hpr209/I1nfhKovs4ddj6mJ48Uu3gc2
4mknekd+fa3ee7Xr/64yZyFHeyxHy6qDIHqdfxGV0AGCPOECngqB3attTwP2v/vl
6VhSjPDUMGqETrlUnErv1mXUpjWpo66JXWWiMjs/Am8k+Y9vxWgZmFtk2QYJCpo7
4uL1M+EWvmn3lqzyMV0l
=5jKB
-----END PGP SIGNATURE-----

--=-9L6VN31O0Te0OuesWXrU--
