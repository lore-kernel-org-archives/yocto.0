Return-Path: <lukma@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F313C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 08:09:14 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web08.28541.1632730151880606079
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 01:09:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=HQeIP7di;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 8BE6D832AD;
	Mon, 27 Sep 2021 10:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1632730148;
	bh=+ydJ2+rnQ8ZlQymfR+uXMOP0Id4qwiphGp/Y6msXnCE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HQeIP7disqFKH5CEZHSV2ZSrV925o6Ps8EWIX0zKcE749jZRe7YxAC9RzwbHnZcHG
	 Mw6Gsaz1LH3I28RkhaSzsz91ibF41bJTzg3q5nS2B1DRh1TfUrXze+PnGC9sb4dTPt
	 QVafPsZbIuFl3094MwttV2REv5pTsZZuSVYDDZ6jU0WRUsVvPbEj8titYZuxuU1757
	 FmzZy/Qf1pbq4Tz3eC2aqustCHE4ntuBjDyIdv6SJlX3R8tNj+n/j2u5KMaGFAf7Yr
	 pylKA1uXzG+sOD8PYiTlsMrfmp55IVZPcoLY4dAUJpvDP5+41jxWpwVVLgysFuZ2n5
	 gxdB7+WJr/fEg==
Date: Mon, 27 Sep 2021 10:09:01 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Anibal Limon <anibal.limon@linaro.org>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>, Adrian Freihofer
 <adrian.freihofer@siemens.com>
Subject: Re: [yocto] [PATCH v2 ptest-runner 2/2] main: Do not return number
 of failed tests when calling ptest-runner
Message-ID: <20210927100901.1ba0b8fb@ktm>
In-Reply-To: 
 <CANNYZj8hGOPSa+zAKRSqGmMoEsueb4zB6yNPT7GPnc4Pe-Q+UQ@mail.gmail.com>
References: <20210817123812.18075-1-lukma@denx.de>
	<20210817123812.18075-2-lukma@denx.de>
	<20210827124350.71c00d33@ktm>
	<20210920111852.174eff07@ktm>
	<CANNYZj8hGOPSa+zAKRSqGmMoEsueb4zB6yNPT7GPnc4Pe-Q+UQ@mail.gmail.com>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/xyVNYhz9RFlB+nB18D_+/fo"; protocol="application/pgp-signature"
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 08:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54872

--Sig_/xyVNYhz9RFlB+nB18D_+/fo
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

> I think we might be having an 'unresponsive maintainer' situation?
> How can Anibal be reached?

I saw recenlty your patches on this topic. Is there a chance that
Anibal will pull/review them soon?

It looks like those are crucial for ptest-runner operation.

>=20
> Alex
>=20
> On Mon, 20 Sept 2021 at 11:19, ?ukasz Majewski <lukma@denx.de> wrote:
>=20
> > Hi Anibal,
> > =20
> > > Hi Anibal,
> > > =20
> > > > Up till now ptest-runner2 returns number of failed tests with
> > > > its exit status code. Such use case is not recommended [1] and
> > > > may cause issues when there are more than 256 tests to be
> > > > executed.
> > > >
> > > > To alleviate this issue the number of total tests with number of
> > > > failed ones is printed before exit. To be more specific -
> > > > failure of tests (one or more) causes ptest-runner to provide
> > > > exit code of 1.
> > > >
> > > > One can test this change with executing:
> > > > ./ptest-runner -d tests/data fail =20
> > >
> > > Gentle ping on this patch.
> > > =20
> >
> > Gentle ping on this patch.
> >
> > Is it OK to be applied?
> > =20
> > > >
> > > > Links:
> > > > [1] -
> > > > https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
> > > >
> > > > Signed-off-by: Lukasz Majewski <lukma@denx.de>
> > > > ---
> > > > Changes for v2:
> > > > - When number of failed tests is N, the ptest-runner returns
> > > > value of 1 to indicate error in the execution
> > > > ---
> > > >  main.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > >
> > > > diff --git a/main.c b/main.c
> > > > index 890bc6a..bcec844 100644
> > > > --- a/main.c
> > > > +++ b/main.c
> > > > @@ -220,6 +220,9 @@ main(int argc, char *argv[])
> > > >             ptest_list_remove(run, opts.exclude[i], 1);
> > > >
> > > >     rc =3D run_ptests(run, opts, argv[0], stdout, stderr);
> > > > +   fprintf(stdout, "TOTAL: %d FAIL: %d\n",
> > > > ptest_list_length(run), rc);
> > > > +   if (rc > 0)
> > > > +           rc =3D 1;
> > > >
> > > >     ptest_list_free_all(&run);
> > > > =20
> > >
> > >
> > >
> > >
> > > Best regards,
> > >
> > > Lukasz Majewski
> > >
> > > --
> > >
> > > DENX Software Engineering GmbH,      Managing Director: Wolfgang
> > > Denk HRB 165235 Munich, Office: Kirchenstr.5, D-82194
> > > Groebenzell, Germany Phone: (+49)-8142-66989-59 Fax:
> > > (+49)-8142-66989-80 Email: lukma@denx.de =20
> >
> >
> >
> >
> > Best regards,
> >
> > Lukasz Majewski
> >
> > --
> >
> > DENX Software Engineering GmbH,      Managing Director: Wolfgang
> > Denk HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell,
> > Germany Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:
> > lukma@denx.de
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#54769):
> > https://lists.yoctoproject.org/g/yocto/message/54769
> > Mute This Topic: https://lists.yoctoproject.org/mt/84946492/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> > alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
> > =20




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/xyVNYhz9RFlB+nB18D_+/fo
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmFRfB0ACgkQAR8vZIA0
zr3Rbgf7B9bYLPQfpOiT9UHvjbPBLk2l5ulIwY11CPVwRiYj3dH6RgzJzJjWMtVL
HJ1y7Rj5qkEMMYcHeaAan4JAYVUa19TvNAkb76NaViSnwQpXQ22KT92bFRtpOV09
msyzGmzRxpVp0R9243qt2qagjB0hjAQdjBR+DBU5heM0zTYrd9dL9RTWfnl7rbwt
xNbutpoiWPAb6bCGzbqWYhDz7XAKOgFFBWRTBwC4XPG/ufDr95j/IXQwrYEGbdYs
sKBfm0foCTJXmLPDmjGvu7FkLDyN77rUaRMBS9UcCOcMAbuVwwd39gAjX/r4d0Vc
BIt3Q83m6zbvNE1KiFZAgiMcc0ewkQ==
=cnH+
-----END PGP SIGNATURE-----

--Sig_/xyVNYhz9RFlB+nB18D_+/fo--

