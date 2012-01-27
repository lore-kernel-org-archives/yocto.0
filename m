Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2517E00592
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 00:08:53 -0800 (PST)
Received: by eekd4 with SMTP id d4so485896eek.35
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 00:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=DRsaHbWfanaS+PvtD6Q+1DfayUuN1KV754cezdc67zo=;
	b=SocSCqMczP+eaQiBO7h/aKgv2F7XUxYysT9XHvoyoY1PJtWuJxjAcqt+N57MyEgvQs
	3DyKQFXpXHPvSHtKusdrbTauSVcf+fXUBaukzM7RaMX4CHPN74sSZmOAwu0avJoiFOJK
	HSc/83kEsET/7pB5DW2E9zsC/qh1VsQELH/mA=
Received: by 10.14.4.203 with SMTP id 51mr1853808eej.49.1327651732703;
	Fri, 27 Jan 2012 00:08:52 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id r2sm26166487eef.7.2012.01.27.00.08.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 27 Jan 2012 00:08:51 -0800 (PST)
Date: Fri, 27 Jan 2012 09:08:49 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120127080849.GB3779@jama.jama.net>
References: <4F21FDEF.2010500@linux.intel.com>
	<4F220105.3080600@linux.intel.com>
	<4F220477.8030600@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F220477.8030600@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New recipes not installing in core-image-minimal
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
X-List-Received-Date: Fri, 27 Jan 2012 08:08:54 -0000
X-Groupsio-MsgNum: 4449
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline

--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 26, 2012 at 05:57:11PM -0800, Darren Hart wrote:
>=20
>=20
> On 01/26/2012 05:42 PM, Saul Wold wrote:
> > On 01/26/2012 05:29 PM, Darren Hart wrote:
> >> In support of a new BSP I've written two new recipes and appended to
> >> another to depend on them. The new recipes files are not appearing in
> >> the resulting images. I'm sure I'm overlooking something trivial, but
> >> I'm not sure what it would be. The layer is available here:
> >>
> >> http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=3Ddvhar=
t/sys940x
> >>
> >> I've added ranpwd, genmac, and appended to netbase.
> >>
> >> netbase RDEPENDS on genmac and genmac RDEPENDS on ranpwd. Building
> >> core-image-minimal triggers the build of genmac and ranpwd, and the
> >> modified /etc/network/interfaces appears in the rootfs. genmac and
> >> ranpwd place the appropriate files in their workdir/image directory, b=
ut
> >> those files don't make it into the rootfs.
> >>
> > RDEPENDS_${PN} would work much better !
>=20
> Perhaps, but it didn't fix this particular problem. Neither
> /usr/bin/ranpwd nor /etc/init.d/genmac appear in the rootfs. However,
> each still appears in their respective workdir/image:

Are they in workdir/packages-split/genmac/etc/init.d/genmac
workdir/packages-split/ranpwd/etc/init.d/ranpwd

Maybe log.do_package even reports them as unpackaged files..

I don't think that update-rc.d adds /etc/init.d to FILES_${PN} for you.

Cheers,

>=20
> $ find
> tmp/work/sys940x_noemgd-poky-linux/core-image-minimal-1.0-r0/rootfs
> -name "ranpwd"
> <NULL>
>=20
> $ find
> tmp/work/sys940x_noemgd-poky-linux/core-image-minimal-1.0-r0/rootfs
> -name "genmac"
> <NULL>
>=20
> $ ls tmp/work/core2-poky-linux/genmac-1.0-r0/image/etc/init.d/
> genmac
>=20
> $ ls tmp/work/core2-poky-linux/ranpwd-git-r0/image/usr/bin/
> ranpwd
>=20
> genmac doesn't have a log.do_install in the workdir/temp directory. Is
> that significant?
>=20
> ranpwd does, but it isn't instructive:
>=20
> $ cat tmp/work/core2-poky-linux/ranpwd-git-r0/temp/log.do_install
> DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
>=20
> Any other thoughts?
>=20
>=20
> >=20
> > Sau!
> >=20
> >> Can anyone offer an explanation as to why that might be? The top 4
> >> commits of the repository linked to above will list the new recipes and
> >> the bbappend for reference.
> >>
> >> Thanks,
> >>
>=20
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8iW5EACgkQN1Ujt2V2gBw+4wCgj24IEFfebE5yGPNnD2k9p/Dp
8H4AoIzqjw4Bs83ljQ1vlmorBFPOkIbH
=TOYi
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--
