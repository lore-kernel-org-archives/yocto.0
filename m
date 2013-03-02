Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 53947E002AB
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 16:14:11 -0800 (PST)
Received: by mail-pb0-f41.google.com with SMTP id um15so2062741pbc.14
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 16:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=IMxkhgLjuXHeKvPcuUt+G2ofHm6/04szO0mkWmtt6og=;
	b=Ta9wQdy2SB2Wp/QUDD6Lo6zDM1QXgnYRwYZYSZmtou8w9woY98Aow4z7sWqps8hHnR
	Rw/bqdNNrL5NVu12lM3QLToyXTBqOsFSeEJCPQOILrPwjF3BW2K1VP94fN4t3i4YOiUO
	oMXvqJhz9bqaoVLGTzBwzLnbqMFa2FIFEqpqCkn0eE7P8wCC3shfbdIyMt3ytFGLUGRf
	UGvLXyNswgE1rYxmaZVOeYRCVvxz5f+2e3VfxRkbDB988XtEFLG/No/FVAhDLIOdD8aJ
	q+Y1l5vcZlAkFJATUtM3XhWA6oiBL4w8wQ7vGZPzjDR6qUIiOcrdYMCKIV2Mt71AI3ye
	oYbw==
X-Received: by 10.66.40.238 with SMTP id a14mr20860535pal.209.1362183250843;
	Fri, 01 Mar 2013 16:14:10 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id ax3sm13543531pbd.42.2013.03.01.16.14.06
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 16:14:09 -0800 (PST)
Date: Sat, 2 Mar 2013 01:14:00 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20130302001400.GX3279@jama>
References: <7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1@ORSMSX101.amr.corp.intel.com>
	<20130301215324.GU3279@jama>
	<CAJTo0LZuw_va=yjLyRZ=mWCNMVDvwe0_fYB23ckbvuZ=irgqaA@mail.gmail.com>
	<20130301233255.GW3279@jama>
	<CAJTo0LZYoqF++Sw+S1fbaeO-gAm6k9bXJ5gZr2CuTJb3sBvdYg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZYoqF++Sw+S1fbaeO-gAm6k9bXJ5gZr2CuTJb3sBvdYg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project 1.4 M4 release readiness discussion
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
X-List-Received-Date: Sat, 02 Mar 2013 00:14:11 -0000
X-Groupsio-MsgNum: 12308
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oRWDw5wXQ3uCJU7V"
Content-Disposition: inline

--oRWDw5wXQ3uCJU7V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 11:56:32PM +0000, Burton, Ross wrote:
> On 1 March 2013 23:32, Martin Jansa <martin.jansa@gmail.com> wrote:
> > Can you answer this
> > http://lists.linuxtogo.org/pipermail/openembedded-core/2013-February/03=
6223.html
> > and how this solution helps with upgrade paths?
>=20
> Having split packages can break the upgrade path - say your distro
> goes from sysvinit to sysvinit rescue + systemd main.  How does your
> foo-daemon package get the right init script package on upgrade?

By right RRECOMMENDS like meta-systemd did.
Plus simple way to exclude some at image creation time with
BAD_RECOMMENDATION or explicit entries pulled with packagegroup for each
type of image.

> I proposed a solution for distributions that care - inject the
> migration path dependencies though meta-systemd.  I still maintain
> that oe-core shouldn't have to bend over backwards to maintain
> compatibility with every recipe that migrates.  Obviously we don't
> want to deliberately break where we have a choice but equally so

http://lists.linuxtogo.org/pipermail/openembedded-core/2013-February/036222=
=2Ehtml

> > Coding was contributed to meta-systemd which was working fine for both
> > use-cases. Maybe explaining hidden benefits of not splitted packages
> > would motivate some people..
>=20
> The advantage of having init scripts in the daemon package is
> simplicity.  For the cost of two init scripts (what, 1K between them?)
> you remove lots of complexity, including the upgrade path breakage I
> described above.

There is no upgrade path breakage and complexity is in postinst scripts
which need to support both update-rc.d and systemctl calls.

Lets discuss this in that oe-core thread so that other people not subscribe=
d=20
to yocto ML can also comment.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--oRWDw5wXQ3uCJU7V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlExREgACgkQN1Ujt2V2gByUTgCfcVMz8fwGR0EjejkBZ1BWAr4f
sLoAniHgBLTzJ6XxFYFrpwSEnXASzs/4
=JPsM
-----END PGP SIGNATURE-----

--oRWDw5wXQ3uCJU7V--
