Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id ADB8EE01459
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 15:33:04 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id wy12so2014311pbc.21
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 15:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=KV0XpUD4zrm1SObGFFr/ta+iP975pJye/AkOUGGdl0s=;
	b=ylVqVnvJRg3OfP/KOxJyEQp8sK8C9ZoA8GlPM1jMCtwRnw99dXhzQlXcFlUo3x48kk
	OLIMGTXwnFIG8XweqBaB2v442FuPfZMZI7I4n3d7OBadx/dJ66tfrCxIKAya2EzOCFaA
	gO95CA40wP5ZlHXOoqvjk+ujY3DcEMi8lPSPLf4OK3sEnuZ0DNUlfBtFtIBxyrz5DWho
	z6QeMgeD1GEhcg8ER1tNlpXFbhk9IkkqCbrrsvckvZIzq/9KjF82QY5MpEvw8SEBou3Q
	fUB4uXCk3MxzwH02Rb0FyhIQO2rR7EDtZzdE4ovsS+F70JNgtFRNa2qZK0IxrLPgqTDH
	8Nxw==
X-Received: by 10.68.219.133 with SMTP id po5mr17203182pbc.36.1362180784463;
	Fri, 01 Mar 2013 15:33:04 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id y9sm14601061paw.1.2013.03.01.15.33.01
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 15:33:03 -0800 (PST)
Date: Sat, 2 Mar 2013 00:32:55 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20130301233255.GW3279@jama>
References: <7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1@ORSMSX101.amr.corp.intel.com>
	<20130301215324.GU3279@jama>
	<CAJTo0LZuw_va=yjLyRZ=mWCNMVDvwe0_fYB23ckbvuZ=irgqaA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZuw_va=yjLyRZ=mWCNMVDvwe0_fYB23ckbvuZ=irgqaA@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Mar 2013 23:33:04 -0000
X-Groupsio-MsgNum: 12306
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lPJ5i9rX1WvdYcWF"
Content-Disposition: inline

--lPJ5i9rX1WvdYcWF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 11:08:30PM +0000, Burton, Ross wrote:
> On 1 March 2013 21:53, Martin Jansa <martin.jansa@gmail.com> wrote:
> > I think it would be good to finish discussion in thread
> > [OE-core] RFE: make the init manager an image feature (again)
> > and resolve systemd situation asap, otherwise we're risking
> > meta-openembedded release or quality of such release.
>=20
> I'm working on a series that implements roughly what I proposed
> (systemd and sysvinit features not mutually exclusive, but no separate
> -sysv or -systemd packages) and hope to have it on the list next week
> - this week has been slow going as we've had a family cold do the
> rounds.

Can you answer this
http://lists.linuxtogo.org/pipermail/openembedded-core/2013-February/036223=
=2Ehtml
and how this solution helps with upgrade paths?

> Any contributions of coding are always welcome, obviously.

Coding was contributed to meta-systemd which was working fine for both
use-cases. Maybe explaining hidden benefits of not splitted packages
would motivate some people..=20

Cheers,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--lPJ5i9rX1WvdYcWF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlExOqcACgkQN1Ujt2V2gBzPJwCfbj07lphUft3PqcNfLbqJLgEk
fCEAn0Tc94uhN0jkyU7fL8WdvRZp/5+X
=pZ2S
-----END PGP SIGNATURE-----

--lPJ5i9rX1WvdYcWF--
