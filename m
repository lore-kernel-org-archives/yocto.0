Return-Path: <joe@deserted.net>
Received: from mail-qe0-f42.google.com (mail-qe0-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D6B0E016C5
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 05:23:24 -0700 (PDT)
Received: by mail-qe0-f42.google.com with SMTP id gc15so491823qeb.29
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 05:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=0R2HsqQzMw3kytyFFka8KfXgmW/UvmMdotyj0iiBXWQ=;
	b=mBkZRVm5oVaPUWOaaM/RoA9ZFjSzvJJ8SX23RvA+WvaF6lFJpJZ27DCPOBeABlHAw7
	iJWOFnNIITNsAXIpuKUW7igkVXWZpZ8YKSbuQ0ack/O34QgCVSv6yjC5pn3FP+ATeJcU
	w3i3WCu0p4MNcKEt5cefYRqCWBYVcjRB3M0FMp2s6ZIWkUtpIr2AywIBINfKh2IpvRJ8
	dbUtkTGg4n8bEuI35yA7kxeLZpGdG7WjixoRWSnZbDXoassuB2an7ERS7sezbwpn9L0l
	OOSgQf2/B2O341j6WA6RzEUkvpsoKpZN6TMkuFEo49akHuIhrks6gT8kSDfXceykJhC3
	Xv7w==
X-Gm-Message-State: ALoCoQk80OPXWklYciz7VQNjmVlcVuyvjYUlIF668NOzztqCx1+XeuwJPCO0uibOyFX/3K0Dk+Aw
X-Received: by 10.224.51.199 with SMTP id e7mr10224722qag.41.1381321402973;
	Wed, 09 Oct 2013 05:23:22 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id a2sm75159923qek.7.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 09 Oct 2013 05:23:22 -0700 (PDT)
Date: Wed, 9 Oct 2013 08:23:19 -0400
From: Joe MacDonald <joe@deserted.net>
To: flihp@longhaul.twobit.us
Message-ID: <20131009122318.GB5541@deserted.net>
References: <20131009030220.GC6721@longhaul.twobit.us>
MIME-Version: 1.0
In-Reply-To: <20131009030220.GC6721@longhaul.twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/5] Remove python dependency from refpol.
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
X-List-Received-Date: Wed, 09 Oct 2013 12:23:25 -0000
X-Groupsio-MsgNum: 16420
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wzJLGUyc3ArbnUjN"
Content-Disposition: inline

--wzJLGUyc3ArbnUjN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][PATCH 0/5] Remove python dependency from refpol.] On 13.10.=
09 (Wed 03:02) flihp@longhaul.twobit.us wrote:

> The reference policy package currently pulls in a lot of python stuff
> that isn't strictly necessary to boot an SELinux system and load a
> policy. This is caused by the mix of python and C utilities in
> policycoreutils.
>=20
> This patch set breaks the policycoreutils recipe up into multiple
> packages, one for each utility. In this way we can have the refpol etc
> pull in only the utilities necessary for normal operation. This happens
> to be only the utilities written in C and thus we can remove python
> completely in a minimal image.
>=20
> I've attempted to localize these changes as much as possible so changes
> in this patchset outside of the policycoreutils recipe are few. An
> example image reicpe is added to demonstrate a minimal image with only
> the utilities required to load a policy and manipulate the policy store
> (add / remove policy modules) at runtime.

Hey Philip,

The patches never arrived in my mailbox and I don't see them in
patchworks.  Can you re-send, please?

--=20
-Joe MacDonald.
:wq

--wzJLGUyc3ArbnUjN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJVSrYACgkQwFvcllog0XzomQCeLwZld4CNikZbYfgjKosjNP8c
BfUAoKt7wwNrmVrkdKY66pHdFlFz9FZb
=qJ4V
-----END PGP SIGNATURE-----

--wzJLGUyc3ArbnUjN--
