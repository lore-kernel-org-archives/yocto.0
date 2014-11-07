Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 998E0E0080D; Fri,  7 Nov 2014 15:35:44 -0800 (PST)
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
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F38F6E0079E
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 15:35:34 -0800 (PST)
Received: by mail-wi0-f171.google.com with SMTP id r20so5997943wiv.10
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 15:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=euckqIk0oJZmGLuenOm9XGyyCTSITGg280SJuSaOKGY=;
	b=UmVpd3/PReJF4GRbVH8bu53PwvI/kxl5xyteEwWg0RlKZqRlMrOiG5ksnunXDtpFnr
	wVKscIM7MrbvRXwFg2S8YyPdzZX6naZnA/LSp7P2PVPYlv6k/w481wGb/5Nfykcma20H
	0SclUETDEk4GoZZNBhrAvOOogeEDI6SEYMktuoeF2zk4sPKkmyJuRzl+dL/mNUybPNTO
	UKzDFrG6sI1/Fqtcw8i07G7FnEEdvZbo5duCmQzEM9Cq0NgoojAlvTJHaZ1eS7Ik2rt7
	/aEWgLqjRrz7mhkrkJMN3BWWY25yB7FaDLj+iSvIIRZGdBRcqBrkf/t/E6Ao8YMhRQmv
	995w==
X-Received: by 10.194.82.104 with SMTP id h8mr20995027wjy.44.1415403333156;
	Fri, 07 Nov 2014 15:35:33 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	mw7sm3776723wib.14.2014.11.07.15.35.32 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Nov 2014 15:35:32 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sat, 8 Nov 2014 00:35:38 +0100
To: Kevyn-Alexandre =?iso-8859-1?Q?Par=E9?= <kapare@rogue-research.com>
Message-ID: <20141107233538.GJ2444@jama>
References: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
	<545C0397.3030304@mlbassoc.com>
	<CACgAsMe_ub+uGya_tkrFnJNdFBxfvxmkfD8eO94TzF205sx=ew@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACgAsMe_ub+uGya_tkrFnJNdFBxfvxmkfD8eO94TzF205sx=ew@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: ERROR: gtest not found in the base feed
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
X-List-Received-Date: Fri, 07 Nov 2014 23:35:44 -0000
X-Groupsio-MsgNum: 22102
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jITzwD3HDGXid3BE"
Content-Disposition: inline

--jITzwD3HDGXid3BE
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 07, 2014 at 06:11:47PM -0500, Kevyn-Alexandre Par=E9 wrote:
> Hi Gary,
>=20
> On Thu, Nov 6, 2014 at 6:26 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> > On 2014-11-06 16:01, Kevyn-Alexandre Par=E9 wrote:
> >>
> >>
> >> ls
> >> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rpms=
/armv7a_vfp_neon/
> >> gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm
> >> gtest-dev-1.7.0-r0.armv7a_vfp_neon.rpm
> >
> >
> > Where is the gtest-1.7.0-r0.armv7a_vfp_neon.rpm??
>=20
> This is a part that I don't yet understand about packaging... Why the
> gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm is there and empty and and
> other empty package are not? I think I have read that -dbg is always
> there ? Anyone can point my to documentation about that didn't found
> it.

I don't know about any documentation of this, but there is:
meta/conf/bitbake.conf:ALLOW_EMPTY_${PN}-dev =3D "1"
meta/conf/bitbake.conf:ALLOW_EMPTY_${PN}-dbg =3D "1"

and ${PN}-dev and ${PN}-dbg are in default PACKAGES value, that's what
makes them always created (even when empty), unless the recipe defines
PACKAGES variable (not recommended).

The default runtime dependency from PN-dev is IMHO more annoying than
PN-dev existence.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--jITzwD3HDGXid3BE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRdV0oACgkQN1Ujt2V2gBxOCQCeKHEgKalQNNOcplrR929ifm1q
y9gAoKUeoX1HCSkJdEO8PbXxQGKgWrs5
=6Cmj
-----END PGP SIGNATURE-----

--jITzwD3HDGXid3BE--
