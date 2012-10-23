Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6370E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:00:59 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id hm2so3354865wib.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=4UVHZHqSEy6scUdM6YY+U90SfOxTybdPs2PxN7ItmpY=;
	b=Kh9IYQV2DjC5EAUWYFGdrqCVEJzc1bOQ0iaWd/EzQMlxlmdarvRAzzTYKChB1t06Ln
	XlSZhKGzFb/8TQy+EvkDh9WfxZQHkZBRUcAZJlXB7cD4X6yewcRD9q5kT9z9mGeYqjNT
	q7GIO5z8wLhmX5T6bEpJIWgCO3eVGk/18r70b12jZfKdobGael6LLduyT09MCZuhDdVd
	BY2xMf6EciNts+0tYmudPZezUCMxqS+8zpKtHZKan/5vArNnLlTMCSEXMdki9SbeWVa3
	53OVwW/s3EFq/rHI3y0otS6dO69PIOGR5u6K/P/OVOV4uWauZlcLh4id7u++WiZS6/p8
	mRvg==
Received: by 10.216.195.133 with SMTP id p5mr8552519wen.1.1351022458745;
	Tue, 23 Oct 2012 13:00:58 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fp6sm441813wib.0.2012.10.23.13.00.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 13:00:57 -0700 (PDT)
Date: Tue, 23 Oct 2012 22:01:14 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Message-ID: <20121023200114.GW3269@jama.jama.net>
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
	<0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
	<4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
	<37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
MIME-Version: 1.0
In-Reply-To: <37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
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
X-List-Received-Date: Tue, 23 Oct 2012 20:01:00 -0000
X-Groupsio-MsgNum: 10234
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="aXNiKu4lnbRqA5kZ"
Content-Disposition: inline

--aXNiKu4lnbRqA5kZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 10:35:49PM +0400, Elvis Dowson wrote:
> Hi,      =20
>=20
> On Oct 23, 2012, at 8:32 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>=20
> > I haven't had any solutions for this build error that I'm facing. If so=
meone could offer some insight as to what might be going wrong, it would be=
 much appreciated.
> >=20
> >> On Oct 23, 2012, at 12:22 AM, Elvis Dowson <elvis.dowson@gmail.com> wr=
ote:
> >>=20
> >>> | Configuring sysvinit.
> >>> | Collected errors:
> >>> |  * preinst_configure: Aborting installation of base-passwd.
> >>> |  * opkg_install_cmd: Cannot install package packagegroup-core-boot.
> >>> | ERROR: Function failed: do_rootfs (see /tool/yocto/poky/build/tmp/w=
ork/zynq_zc702-poky-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_roo=
tfs.30138 for further information)
> >>> ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/images/core-image-m=
inimal.bb, do_rootfs) failed with exit code '1'
> >>> NOTE: Tasks Summary: Attempted 1395 tasks of which 227 didn't need to=
 be rerun and 1 failed.
> >>> No currently running tasks (1395 of 1396)
> >>=20
> >> The build appears to be failing because it cannot install packagegroup=
-core-boot. Has something changed recently in poky/master, that might be ca=
using this?
> >=20
> > I additionally notice that the path being generated is zynq_702 instead=
 of zynq-702.=20
> >=20
> > No-where in Philip Ballister's machine configs for the zc702 board, is =
is mentioned zynq_zc702 with an underscore, yet it adds it.=20
> >=20
> > It's kind of weird.
> >=20
> > ERROR: Function failed: do_rootfs (see /tool/yocto/poky/build/tmp/work/=
zynq_zc702-poky-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.=
30138 for further information)
> >=20
> > It's kind of weird.
> >=20
> > I also see the same zynq_zc702 entry with an underscore in the logs as =
follows:
> >=20
> > | + ipkgarchs=3D'all any noarch arm armv4 armv5 armv5-vfp armv5e armv5e=
-vfp armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon zynq_zc702'
> >=20
> > What could be causing this?
> >=20
>=20
> I found out why it was failing. I recently added two SSD drives in a RAID=
0 stripped disk configuration. One of the performance tweaks was to move /t=
mp to RAM, to improve the life of the SSDs. My /etc/fstab for setting up th=
e /tmp folder inadvertently included the noexec,nodev,nosuid options, which=
 cause the rootfs process to fail.

You can keep nodev and nosuid. I'm using this for long time without
issues. But keep in mind that you have to keep parts of tmpdir (even
after reboot) to keep sstate happy:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3221

>=20
> the following entry works for the /etc/fstab for moving the /tmp file to =
RAM
>=20
> none    /tmp    tmpfs    defaults,noatime,nodiratime    0    0
>=20
> I just updated poky and the rest of the meta-layers to the latest commit =
on their respective master branches, and it built successfully.
>=20
>=20
> Best regards,
>=20
> Elvis Dowson
>=20

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--aXNiKu4lnbRqA5kZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCG94oACgkQN1Ujt2V2gBwJjACgoNCKvxWbnZXSIMbIOluMPIwf
nMQAn0q0Y8t17CMl+JI6jupXcIcoQ39x
=QjDB
-----END PGP SIGNATURE-----

--aXNiKu4lnbRqA5kZ--
