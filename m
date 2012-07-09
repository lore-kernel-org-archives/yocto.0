Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 243C9E013DB
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 07:53:24 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so8945864wgb.11
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 07:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=/xqMMTzUEhjteFQM1s2EXVFzdUJtynYEyB1FTPwANvo=;
	b=hK4dXgj9XuzW/glWSg9eJiHawT7D5WbTIiVKdXWf7rb0aaQ0KF6D4pUqOaefhEmg1o
	IzWCUkG1nqVWc01LCpvdB4fORWx/8c6jpKcAEjLRtyZx3/7ygUhMnQ0VsMbPlMg0W690
	OtoD031hNeaeTHm4kYwp7CRJ+2m7AzRnvhrriM40T2WACqV3IOmPeS4I40ebcymCnCKl
	5w0s1KoR6HKs+rOEE98tP/tnQ01V+HAIyivK6wI1we81DHOzF/blyaoLtdmG0Xz42nOL
	jzq+uN9WKneUISKieVwzPTVvDJsvxOioozreIcDvKGNVVPTVirUqH+ItSZaHf8ym2i3x
	IgBg==
Received: by 10.180.84.104 with SMTP id x8mr30088438wiy.20.1341845604174;
	Mon, 09 Jul 2012 07:53:24 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id d10sm35381945wiy.3.2012.07.09.07.53.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Jul 2012 07:53:23 -0700 (PDT)
Date: Mon, 9 Jul 2012 16:53:20 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Message-ID: <20120709145320.GF6308@jama.jama.net>
References: <4FFAEBFC.2090603@communistcode.co.uk>
	<20120709143736.GE6308@jama.jama.net>
	<4FFAEFE7.4000303@communistcode.co.uk>
MIME-Version: 1.0
In-Reply-To: <4FFAEFE7.4000303@communistcode.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: m4 build failure - master && denzil branch
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
X-List-Received-Date: Mon, 09 Jul 2012 14:53:25 -0000
X-Groupsio-MsgNum: 7775
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MZf7D3rAEoQgPanC"
Content-Disposition: inline

--MZf7D3rAEoQgPanC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 09, 2012 at 03:51:19PM +0100, Jack Mitchell wrote:
> On 09/07/12 15:37, Martin Jansa wrote:
> > On Mon, Jul 09, 2012 at 03:34:36PM +0100, Jack Mitchell wrote:
> >> So, I'm fairly sure this is a real build failure this time, again on t=
he
> >> poky master and denzil branch.
> >>
> >> Please see attached file as the log is too big to paste.
> >
> > does your host use (e)glibc-2.16?
> >
> > if it's so, then you need this patch for m4
> > http://patchwork.openembedded.org/patch/31377/
> >
> > Cheers,
> >
>=20
> Yes it does, I saw this issue when building for the Rapsberry Pi the=20
> other day and I pulled your patches in which worked. I had assumed it=20

Those are Khem's patches..

> was eglibc 2.16 on target that was causing issues not eglibc 2.16 on the=
=20
> host - hence my confusion to why the Denzil branch not building. I=20
> wonder if Saul looking into pulling these in soon?

Well -native packages are using host libs.. so target recipes are fine
until you manually switch to eglibc-2.16, but -native are affected
immediately when your host distro upgrades (e)glibc.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--MZf7D3rAEoQgPanC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/68GAACgkQN1Ujt2V2gBwNVQCfcjuusmrHV4uz7r+rnhWqbIOO
iwMAoLaKz3d8Ev4e0i0XVlO9m/SIgMVl
=6bKo
-----END PGP SIGNATURE-----

--MZf7D3rAEoQgPanC--
