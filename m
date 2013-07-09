Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4E97E013B0
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 13:49:58 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id l15so4145309eak.37
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 13:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=W9FrgDDfviAX9xJw6d0N9ljy5+xcVoYvgyzJkAT+nLE=;
	b=oI/BmpRYWFezT5NocxRp79SD75Y/wWQ9tzzTc/8Yciab8wUEVAhOhrqHoVKGIsZ381
	iB5O3csBqG2CoMRv/jZvo/cqu8S0d/cKIktG/myqQx6ML3ggbKbr7gnc8DwYFe1xnh8I
	qJrSe2i6PfCwMA4xmW/sYSbZZ34vCVgVhCBZeMg/YXMBrxcJErz42N63oqA5C6jey9OU
	dyKGjD9fJrPL5NpX+qCiKjFHS/WFD6gHn9aIXkXjaVR1HuphRAZ198QnaGW6tI0+NzWK
	i4IgGQkePmehVksI1UV/pcEdiBvb7zrb1YPEc2cbZ72PoxCcRFDZUYfmW0iMzR57FxI6
	BPeQ==
X-Received: by 10.15.90.139 with SMTP id q11mr32469254eez.137.1373402997682;
	Tue, 09 Jul 2013 13:49:57 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	ci50sm54027319eeb.12.2013.07.09.13.49.56 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 09 Jul 2013 13:49:57 -0700 (PDT)
Date: Tue, 9 Jul 2013 22:50:06 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <20130709205006.GW3288@jama>
References: <6C54348E-3ADA-4621-9F72-3663C23B5445@keylevel.com>
	<045D8888-C821-4AB7-81B7-75A5C94E2962@keylevel.com>
	<CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
	<38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
MIME-Version: 1.0
In-Reply-To: <38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-freescale] Compile error for boost_1.54.0
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
X-List-Received-Date: Tue, 09 Jul 2013 20:50:00 -0000
X-Groupsio-MsgNum: 14892
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="RCcFxJ34+mAtH0DM"
Content-Disposition: inline

--RCcFxJ34+mAtH0DM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2013 at 09:25:30PM +0100, Chris Tapp wrote:
> Forwarding to Yocto mailing list:
>=20
> On 9 Jul 2013, at 21:21, Otavio Salvador wrote:
>=20
> > On Tue, Jul 9, 2013 at 5:19 PM, Chris Tapp <opensource@keylevel.com> wr=
ote:
> >>=20
> >> On 9 Jul 2013, at 20:09, Chris Tapp wrote:
> >>=20
> >>> I'm getting a failure in do_compile when building boost_1.54.0 using =
master-next for the wandboard-quad.
> >>>=20
> >>> The log is about 1.5MB, but the important bit seems to be that uintpt=
r_t isn't defined but is required by /boost/atomic/atomic.hpp.
> >>>=20
> >>> Has anyone seen this before?
> >>=20
> >> I also meant to say that adding:
> >>=20
> >> typedef unsigned long long uintptr_t;
> >>=20
> >> to atomic.hpp 'fixes' the build, but this is not a good solution ;-)
> >=20
> > It needs to be checked against normal Poky to ensure it is BSP
> > specific; I doubt it is.

See
http://lists.openembedded.org/pipermail/openembedded-devel/2013-July/091331=
=2Ehtml

But maybe it wasn't caused by eglibc upgrade (and header cleanup in
eglibc) but by boost upgrade.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--RCcFxJ34+mAtH0DM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlHcd34ACgkQN1Ujt2V2gBwvywCfSM4N8CHf6Kf8k2rSSCYuHP5g
X4sAn0HOLnk5ngJfQ5Afz0X0KqyUXPll
=J79R
-----END PGP SIGNATURE-----

--RCcFxJ34+mAtH0DM--
