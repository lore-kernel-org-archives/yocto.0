Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 637D1E01275
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 08:21:43 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b45so5338009eek.35
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 08:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=eSeQg/hhD9XH2ITPkHNeko+qutkC5ccN0RGnDakXqM0=;
	b=fqBBmOBnbXuOgNffzk1kqOkbpOI1iUFtvFq+XT3ftQqMBWPVJp+HQOAmNniBGasG0C
	r0xy3j1U47Vjfz/L0iRbWhKS0rVdJDzUD1ToFdi2LDf92DsJT93gDFsZg7/2oKXzKeDX
	vokhHNNljjv4Jtrn5hNGhqK+BP5gE2OIzbxzVWV/TtSMdu7SG1Pp/NnIgd7ok0vwmYdT
	fWwIyzfqKFCr9grQTM8Afx3kaQV0PahpeeuJomAidzLJUc/QW4H1BwCtLJrJRCeMn+LK
	ZKM197rmNQtKRJsC7bL9CeMHty8DwM8z1HXUiJ2JgSjzRC0WJDvcu6frvqhk8ihV7FhO
	3ydw==
Received: by 10.14.193.136 with SMTP id k8mr31982269een.30.1350573702089;
	Thu, 18 Oct 2012 08:21:42 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id x8sm40351863een.13.2012.10.18.08.21.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 18 Oct 2012 08:21:40 -0700 (PDT)
Date: Thu, 18 Oct 2012 17:21:50 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Marc Ferland <ferlandm@sonatest.com>
Message-ID: <20121018152150.GA3087@jama.jama.net>
References: <87mwzj3jau.fsf@sonatest.com>
MIME-Version: 1.0
In-Reply-To: <87mwzj3jau.fsf@sonatest.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Problem genrerating module autoloading commands
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
X-List-Received-Date: Thu, 18 Oct 2012 15:21:43 -0000
X-Groupsio-MsgNum: 10157
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 18, 2012 at 11:13:13AM -0400, Marc Ferland wrote:
> Hi,
>=20
> I'm having trouble generating the module auto-loading instructions in
> /etc for one of my modules. I have already many modules that all work
> fine, but for some reason this one does not get listed in /etc/modules
> nor /etc/modules-load.d.
>=20
> The only thing that distinguishes this module from the other ones is that
> it has the same name has the MACHINE and layer. So basically I have
> something like:
>=20
> build/conf/local.conf:
> MACHINE =3D foo
>=20
> poky/meta-foo/conf/machine/foo.conf:
> module_autoload_foo =3D "foo"
>=20
> The module gets built correctly and is included in the images. Running
> 'modprobe foo' works as intended on the target hardware.
>=20
> Did I fall in some edge case?

Does foo have any '-' or '_'?

If yes then foo needs to match module name, not name of kernel
module package (where we always have '-').

>=20
> Regards,
>=20
> Marc
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCAHo4ACgkQN1Ujt2V2gBySOgCfcg7noSr4b5MoaI4aSSjCUu1w
2uEAn26amzvQ5qmop/KsA4IGK5GIw4BD
=rgp9
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--
