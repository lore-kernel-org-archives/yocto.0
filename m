Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A14DFE00997; Wed,  8 Apr 2015 04:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42058E0098A
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 04:23:54 -0700 (PDT)
Received: by wgin8 with SMTP id n8so84687885wgi.0
	for <yocto@yoctoproject.org>; Wed, 08 Apr 2015 04:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=W/kxIA/01JeaHpaCQcwZ627Ub0DdVSB6PHwCeXKi7Q4=;
	b=N7cbwKBsJwxmUznLS+uZFC1K4+15i0fcheJ/ZABdM4ifLMa0AHYkUHm6CES4y/XA1x
	OdOIeT9hGj2hgzfObIZUJXKrMaQFOocuaqrGtLc51TntMbSXJI1a/jtujMsr33shrobR
	dLjnvyCZuvexgGUISeGhhWsJh5nsOKWq7HtLF2FJ7/rqS0vHirMolIhGHT+GsRBdSKpf
	OvBsBN4WE8BWO3QBR5ZRa4IFReTLQ7CpQyiILXpLUSnfU0OUxr89Z4fyWi8CopQ59+rE
	WcLg4RoTCUcQCYuTXryN7JntGnLtIV8aEOfHNjmDHm5f/vd4Nzj8By6BTmxNTS/OOd7u
	LXjA==
X-Received: by 10.180.109.169 with SMTP id ht9mr13557798wib.86.1428492233929; 
	Wed, 08 Apr 2015 04:23:53 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id
	ha10sm15167943wjc.37.2015.04.08.04.23.52
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Apr 2015 04:23:53 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 8 Apr 2015 13:23:55 +0200
To: Tobias Olausson <tobias.olausson@pelagicore.com>
Message-ID: <20150408112355.GC2337@jama>
References: <CAMg8ce8C3k6L0MOBKtk2i9QGbgmXyza0Kn1sfSZBbfO9kX9EzQ@mail.gmail.com>
	<1521935.2Je9FCNQNj@peggleto-mobl.ger.corp.intel.com>
	<CAMg8ce8=x06ZsMO=zNxh4P0ZCSdRx5f3Q8L_i=+gMXFzcHOA2Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMg8ce8=x06ZsMO=zNxh4P0ZCSdRx5f3Q8L_i=+gMXFzcHOA2Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: bblayer priorities ignored for bbappends?
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
X-List-Received-Date: Wed, 08 Apr 2015 11:23:57 -0000
X-Groupsio-MsgNum: 24369
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wULyF7TL5taEdwHz"
Content-Disposition: inline

--wULyF7TL5taEdwHz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 08, 2015 at 12:29:21PM +0200, Tobias Olausson wrote:
> Hi Paul
>=20
> On 8 April 2015 at 10:55, Paul Eggleton <paul.eggleton@linux.intel.com>
> wrote:
>=20
> > Hi Tobias,
> >
> > On Wednesday 08 April 2015 08:54:20 Tobias Olausson wrote:
> > > I just had a weird experience with yocto and I wanted to know if the
> > > described behaviour is intentional.
> > >
> > > I have a layer with priority 7 containing a recipe, foo.bb. In another
> > > layer, with priority 8, there is a foo.bbappend. Finally, I just added
> > > another layer, with priority 9, where foo.bb is redefined as a binary
> > > recipe.
> > >
> > > When I added the last layer, I expected that to take precedence over =
the
> > > other two. However, the bbappend for foo is still applied (which in t=
his
> > > case changed the SRC_URI, making the whole binary recipe moot). Is th=
is
> > > really the way it's supposed to be? I would expect that lower layers
> > cannot
> > > influence layers with higher priority at all, but that does not seem =
to
> > be
> > > the case.
> >
> > That is the case, yes - bbappends are always applied. As far as I am aw=
are
> > this is the first time this kind of situation has been asked about thou=
gh
> > so
> > it's probably just that we didn't consider it before.
> >
>=20
> I see. I can see a point of always applying bbappends, of course, I had
> just never considered it either.
>=20
>=20
> >
> > Presumably you could use a bbappend rather than a recipe in the last la=
yer?
> > You might need to stub out some of the functions of course, but it shou=
ld
> > be
> > possible.
> >
>=20
> Indeed, that is a reasonable solution.

It's also possible to use BBMASK to mask bbappends from lower layers in
cases where bbappends are hard/impossible to undo and you cannot easily
convert the recipe in top layer to bbappend (e.g. you don't want to,
because it's different version and lower bbappends are version agnostic
with %).

Regards,

>=20
>=20
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> >
>=20
>=20
>=20
> --=20
> Tobias Olausson
> M.Sc
> Software Engineer
>=20
> PELAGICORE | Experience Change
> Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
> Mobile: +46(0)735-873444
> E-Mail: tobias.olausson@pelagicore.com
> IRC: wto @ FreeNode

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--wULyF7TL5taEdwHz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUlD8sACgkQN1Ujt2V2gByhSwCghaVLNh/oiokVXCIJyyJuYTbJ
CI4AniicuzcNecBiwl2JPYHOOS/8OPqJ
=/Nuj
-----END PGP SIGNATURE-----

--wULyF7TL5taEdwHz--
