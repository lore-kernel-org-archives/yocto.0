Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F300EE0144E
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 14:06:10 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id kq12so3626644pab.1
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 14:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=Gv4fwZimLnqto+Q4cGf4vKgk0ZGfI01LnRdbQoNLQEk=;
	b=u6k7OEKt7AGPwFAudmdFBQwyo6Z2ZMxSxEkIalDAGMLuTbTL1Dw4tOELnhUHF0TRA0
	Z8eGwH3ZYch5zgn6ZsjtQXrUS9zoQeYLNXtxWOvx2v62nUZBZRdi3NRMnLGLdSbFC5gz
	pboVfB6SiGC/ohAFRWOhHVpJV7vREzpM4WISitkE4vk/OMRNp4loTzMkbeJQjzB1aVsH
	RcqUonwN7E6ulRowWqXHzqoyi57breGa6n/RqQ5M5GdqDbdeDWfeHBQrbPPULrocugOL
	HG/PCBtWYkH2Z4VE20n8Amq/+Ay8S61H9lOrr3J9A3zpr2KsiH27PR9mM05OUP6kBdPP
	NfeA==
X-Received: by 10.66.226.71 with SMTP id rq7mr49271497pac.80.1361311570693;
	Tue, 19 Feb 2013 14:06:10 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id rr14sm9084821pbb.34.2013.02.19.14.06.07
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 19 Feb 2013 14:06:09 -0800 (PST)
Date: Tue, 19 Feb 2013 23:06:11 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Pierre Ficheux <pierre.ficheux@openwide.fr>
Message-ID: <20130219220611.GV3300@jama>
References: <14bba8b5-a545-48ea-80a9-5c4e10de8c33@zimbra2.corp.accelance.fr>
	<7ca09268-8696-4643-87d9-33308da50dee@zimbra2.corp.accelance.fr>
MIME-Version: 1.0
In-Reply-To: <7ca09268-8696-4643-87d9-33308da50dee@zimbra2.corp.accelance.fr>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Always removing status files in case of IPK
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
X-List-Received-Date: Tue, 19 Feb 2013 22:06:11 -0000
X-Groupsio-MsgNum: 12177
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oMMpwnf3aH5m/bW8"
Content-Disposition: inline

--oMMpwnf3aH5m/bW8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 19, 2013 at 08:14:22PM +0100, Pierre Ficheux wrote:
> Hi,
>=20
> I've noticed a problem in rootfs_ipk.bbclass as status files are always r=
emoved in case of using IPK (works fine with
> RPM). Here is the small patch which fix it.
>=20

This is expected, see if in which this is:

if ${@base_contains("IMAGE_FEATURES", "package-management", "false", "true"=
, d)}; then

> regards
>=20
> diff --git a/meta/classes/rootfs_ipk.bbclass b/meta/classes/rootfs_ipk.bb=
class
> index fadec4d..89c3128 100644
> --- a/meta/classes/rootfs_ipk.bbclass
> +++ b/meta/classes/rootfs_ipk.bbclass
> @@ -109,9 +109,6 @@ fakeroot rootfs_ipk_do_rootfs () {
>                         if $remove_run_postinsts; then
>                                 update-rc.d -f -r ${IMAGE_ROOTFS} run-pos=
tinsts remove
>                         fi
> -
> -                       # Also delete the status files
> -                       remove_packaging_data_files
>                 fi
>         fi
>         set +x
>=20
>=20
> --=20
> Pierre FICHEUX -/- CTO OW/OS4I, France -\- pierre.ficheux@openwide.fr
>                                          http://www.os4i.com
>                                          http://www.linuxembedded.fr
> I would love to change the world, but they won't give me the source code
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--oMMpwnf3aH5m/bW8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlEj91MACgkQN1Ujt2V2gBxo/ACdH9TkAMT0mq280DE12dTMiQKO
5UQAn3Oqj8jTKvd2ZIeclwLIrGuEqMD4
=Ky4v
-----END PGP SIGNATURE-----

--oMMpwnf3aH5m/bW8--
