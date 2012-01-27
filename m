Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33399E00592
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 00:02:52 -0800 (PST)
Received: by eekd4 with SMTP id d4so484348eek.35
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 00:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=HCqu7rVJ3JD+jNhwsVstauTK5NvS7CsesUQomV0gmpk=;
	b=cmKNC5fcCsnJWsQuG0qu2DvCQQEYqOPZTxJWcB2AGC1+1UvliPhbiMnDfdnRYhLu0z
	vX90gU5/3qv8X4OmFEpVjaCtpG65Z4uQSPBLny/gGLSBfYUMDP/F6Kp2dJTdZvxVneFW
	CnMK/2a8TiMpcLt1dreIkqj9GrYRp4u2UHJwE=
Received: by 10.14.99.71 with SMTP id w47mr1789083eef.78.1327651369013;
	Fri, 27 Jan 2012 00:02:49 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id x4sm26143916eeb.4.2012.01.27.00.02.46
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 27 Jan 2012 00:02:47 -0800 (PST)
Date: Fri, 27 Jan 2012 09:02:45 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120127080245.GA3779@jama.jama.net>
References: <4F21FDEF.2010500@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F21FDEF.2010500@linux.intel.com>
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
X-List-Received-Date: Fri, 27 Jan 2012 08:02:52 -0000
X-Groupsio-MsgNum: 4447
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline

--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 26, 2012 at 05:29:19PM -0800, Darren Hart wrote:
> In support of a new BSP I've written two new recipes and appended to
> another to depend on them. The new recipes files are not appearing in
> the resulting images. I'm sure I'm overlooking something trivial, but
> I'm not sure what it would be. The layer is available here:
>=20
> http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=3Ddvhart/s=
ys940x
>=20
> I've added ranpwd, genmac, and appended to netbase.
>=20
> netbase RDEPENDS on genmac and genmac RDEPENDS on ranpwd. Building
> core-image-minimal triggers the build of genmac and ranpwd, and the
> modified /etc/network/interfaces appears in the rootfs. genmac and
> ranpwd place the appropriate files in their workdir/image directory, but
> those files don't make it into the rootfs.
>=20
> Can anyone offer an explanation as to why that might be? The top 4
> commits of the repository linked to above will list the new recipes and
> the bbappend for reference.

Have you tried correct version of RDEPENDS? RDEPENDS_${PN} ?

Cheers,
>=20
> Thanks,
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

--X1bOJ3K7DJ5YkBrT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8iWiUACgkQN1Ujt2V2gBwCAgCgiUU42j9s1TEjMRQH6PWXOBRC
BgkAn3tjteDokKLlf8rx72K9jhCT5F+E
=uoYE
-----END PGP SIGNATURE-----

--X1bOJ3K7DJ5YkBrT--
