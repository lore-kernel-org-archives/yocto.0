Return-Path: <joe@deserted.net>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 948DEE015B8
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 10:55:18 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id q58so3014658wes.19
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 10:55:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=UpqKTkRga5Xk3W+qWDGFoab6PqCIXWs8dMF9BnuQxQ4=;
	b=fBUWRbsuPWn3HElERyCnKMnVfQt+WcKy0uZiKtMuJ//aWrZ/NqTOpjX5Rr8p2+u4un
	nanxveEPEFyQzQOE1jCK101lpGi9z7hszt8tzlP5gGRKMNOKeYvckpZHawRg1uVobWxY
	dTTymBWBaFUgMw+vxi8+yeTp7ClzqL7Kizfl3ozu5QXesO1M6s4BhbT37/IPkbBLBOmE
	Vf+iUIy60k8vHnCSfAYg6JfXkorlhlh/w/ywxRGBNjQHn6TaALAVqtsr5rLcCm5Kbvds
	DJZQ6u5PvlS5Sev4mluk0+Dx/cgLdtdllMKW5ks394a1//CRiOQJkCrsy44Hexqhkh0J
	rV0Q==
X-Gm-Message-State: ALoCoQk1k3/8pDhfUjsuUbsAiCfCutLl6QkphwqcpPQlPnaZ4HGcyKbjfCHThrchs99tIwm8waIN
X-Received: by 10.180.9.69 with SMTP id x5mr3589340wia.41.1380304517254;
	Fri, 27 Sep 2013 10:55:17 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id e1sm40741435wij.6.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 10:55:16 -0700 (PDT)
Date: Fri, 27 Sep 2013 13:55:12 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20130927175510.GB7238@deserted.net>
References: <20130923035119.GA17078@longhaul.twobit.us>
MIME-Version: 1.0
In-Reply-To: <20130923035119.GA17078@longhaul.twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Stage SELinux config file in the sysroot.
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
X-List-Received-Date: Fri, 27 Sep 2013 17:55:20 -0000
X-Groupsio-MsgNum: 16271
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="eJnRUKwClWJh1Khz"
Content-Disposition: inline

--eJnRUKwClWJh1Khz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux] Stage SELinux config file in the sysroot.] On 13.09=
=2E23 (Mon 03:51) Philip Tricca wrote:

> This is needed to build policy modules outside of the refpolicy.
> Policy module build systems need to determine the name of the policy
> that will be in effect on the target host. This allows them to
> locate the policy headers that will be under
> $sysroot/usr/share/selinux/$name/include. Given that there *could*
> be more than one policy installed in the sysroot we can't assume
> that the policy installed there is the only policy to build against.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/selinux/selinux-config_0.1.bb |    3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-sec=
urity/selinux/selinux-config_0.1.bb
> index 9521dcf..ad0d647 100644
> --- a/recipes-security/selinux/selinux-config_0.1.bb
> +++ b/recipes-security/selinux/selinux-config_0.1.bb
> @@ -43,3 +43,6 @@ SELINUXTYPE=3D${DEFAULT_POLICY}
>  	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
>  }
> =20
> +sysroot_stage_all_append () {
> +	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
> +}
--=20
-Joe MacDonald.
:wq

--eJnRUKwClWJh1Khz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJFxn4ACgkQwFvcllog0XzmKwCghnbMmKJMu4Nw6c46ZyNkosbb
ePMAn3Yrn9prQNm7HPbGNtJsAVm5Xaby
=sJZ1
-----END PGP SIGNATURE-----

--eJnRUKwClWJh1Khz--
