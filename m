Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5289CE0027E
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 09:40:34 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id fm10so2201322wgb.5
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 09:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ZtFOREPC7DLDw6PuXUlxsCHFtEZeYmwshlO+yq/o8GE=;
	b=xCtjT5bgaCvv1tDaSD/6TLIZtI5514oxwTtZkc+F2Xek+dwW5/kckzSFvA4vz2/H73
	WAI1ziMdXe2ZdkVdLdTaZ5iHHSRxGyjxlxsEfgzg+pCt/7e6TxDnebduUVsqTTHmgrX0
	JQcHuRMeBC4uBebrQM5JNQJPZgkK8NJ6DVO4b9k/H8nJCibMTGcjJiC3Ero4AgyYYHBz
	5moqtdyzPK8cFq0lCuuJp4kBMkZNISeD8/XeJyFDd1aC3To4lUNw6eQKw/5IQW6Bqhkz
	Wlxc6Y/4u2fgbsIkwwTLljULd0EDw/zv9AMsiYcE+wg0OJ4FtLDErfay1K8xo97f9PUi
	zNfA==
Received: by 10.216.207.93 with SMTP id m71mr7174591weo.201.1351010432891;
	Tue, 23 Oct 2012 09:40:32 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id gm7sm28831394wib.10.2012.10.23.09.40.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 09:40:31 -0700 (PDT)
Date: Tue, 23 Oct 2012 18:40:48 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Message-ID: <20121023164048.GQ3269@jama.jama.net>
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
	<0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
	<4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
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
X-List-Received-Date: Tue, 23 Oct 2012 16:40:34 -0000
X-Groupsio-MsgNum: 10222
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vIXBmblrD40XNCy4"
Content-Disposition: inline

--vIXBmblrD40XNCy4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 08:32:02PM +0400, Elvis Dowson wrote:
> Hi,
>        I haven't had any solutions for this build error that I'm facing. =
If someone could offer some insight as to what might be going wrong, it wou=
ld be much appreciated.
>=20
> > On Oct 23, 2012, at 12:22 AM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
> >=20
> >> | Configuring sysvinit.
> >> | Collected errors:
> >> |  * preinst_configure: Aborting installation of base-passwd.
> >> |  * opkg_install_cmd: Cannot install package packagegroup-core-boot.
> >> | ERROR: Function failed: do_rootfs (see /tool/yocto/poky/build/tmp/wo=
rk/zynq_zc702-poky-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_root=
fs.30138 for further information)
> >> ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/images/core-image-mi=
nimal.bb, do_rootfs) failed with exit code '1'
> >> NOTE: Tasks Summary: Attempted 1395 tasks of which 227 didn't need to =
be rerun and 1 failed.
> >> No currently running tasks (1395 of 1396)
> >=20
> > The build appears to be failing because it cannot install packagegroup-=
core-boot. Has something changed recently in poky/master, that might be cau=
sing this?
>=20
> I additionally notice that the path being generated is zynq_702 instead o=
f zynq-702.=20

MACHINE_ARCH replaces - with _ in machine name. see
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D946

Cheers,

>=20
> No-where in Philip Ballister's machine configs for the zc702 board, is is=
 mentioned zynq_zc702 with an underscore, yet it adds it.=20
>=20
> It's kind of weird.
>=20
> ERROR: Function failed: do_rootfs (see /tool/yocto/poky/build/tmp/work/zy=
nq_zc702-poky-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.30=
138 for further information)
>=20
> It's kind of weird.
>=20
> I also see the same zynq_zc702 entry with an underscore in the logs as fo=
llows:
>=20
> | + ipkgarchs=3D'all any noarch arm armv4 armv5 armv5-vfp armv5e armv5e-v=
fp armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon zynq_zc702'
>=20
> What could be causing this?
>=20
> Best regards,
>=20
> Elvis Dowson

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--vIXBmblrD40XNCy4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCGyJAACgkQN1Ujt2V2gBzBbQCgnoxwA61ry74ksHoaVdrzIF6w
4YgAoKN9K8h9KJzs/Kf+oRIwZba+fc3t
=4R8Y
-----END PGP SIGNATURE-----

--vIXBmblrD40XNCy4--
