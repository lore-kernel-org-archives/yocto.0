Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 030BBE00924; Fri, 27 Mar 2015 19:52:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906CFE0091F
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 19:52:39 -0700 (PDT)
Received: by wiaa2 with SMTP id a2so54102164wia.0
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 19:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=qLf7BTrOR0IF3KGmSB1Nb/lVewLG1xgGlnhIEzX1jJk=;
	b=n4Me7G+HzDfi2OxAPBzu/F95Eit1n/TW1TeXl3Kic0NAoQWoIcbM7x3dgKh3VYwS+z
	wi1Pl3oftC0lv6gqn7r8adBfMJEVPOrHvN76Fomew+2qXurOkQ6FGpCkk9hkABUQHl0G
	ibJwTuOTFLT08YKu0qCPvplGVaEO7UL9qqjI7Qxh5HFbOD4g7lEmI09NTfEL7fB0k4WW
	PDXkhxYxamcked29y44eeLWVhKy2nwAo9wrvO0actDaVAvAgjhe2RovUMYS8bEpUWrCd
	IY4tNxawN5Lg7M8GW1tD++XUO4IV3xlkJC7lcIYWr6vD9FsiCI9dB//lmS4cMtgLsj1J
	vJaQ==
X-Received: by 10.180.91.36 with SMTP id cb4mr2860399wib.84.1427511158202;
	Fri, 27 Mar 2015 19:52:38 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	u10sm5953264wib.1.2015.03.27.19.52.36
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Mar 2015 19:52:37 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sat, 28 Mar 2015 03:52:57 +0100
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Message-ID: <20150328025257.GC2343@jama>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDC987968@MSXBEBVT12.planar.net>
MIME-Version: 1.0
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDC987968@MSXBEBVT12.planar.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Best practices for copying recipe from a newer release
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
X-List-Received-Date: Sat, 28 Mar 2015 02:52:43 -0000
X-Groupsio-MsgNum: 24199
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8X7/QrJGcKSMr1RN"
Content-Disposition: inline

--8X7/QrJGcKSMr1RN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 27, 2015 at 01:56:27PM -0700, Matt Schuckmann wrote:
> I find myself in the situation where my project is currently using meta-o=
penembedded from the Dylan branch but I want to use a recipe from the curre=
nt master.
> Is it better for me to copy the recipe into my own branch off of Dylan or=
 to copy the recipe into my own meta-layer?
>=20
> What works out better later on when I want update by project to use a new=
er release like Daisy, etc?

In Open webOS we have meta-webos-backports layer where we're backporting
recipes and bbclass from the very next release when needed.

The problem with this implementation was when we were more than one
release behind (like you, we were using dylan and backporting stuff from
dora, daisy, dizzy and master.

So now we have one layer per release we're backporting from:
meta-webos-backports-1.5
meta-webos-backports-1.6
meta-webos-backports-1.7
meta-webos-backports-1.8
We're using numeric versions, because codename isn't known from the
beginning of the next release cycle and sometimes you need to backport
=66rom "master" branch.

The main advantage of this approach is that when upgrading to next
release, you can just drop some meta-webos-backports-* layers from your
bblayers.conf and the resulting metadata shouldn't change that much (you
sometimes need to do some small tweaks in backported recipes, but at
least functionality wise you shouldn't see any difference)

Regards,

> Thanks,
> Matt S
>=20
> PS. I don't think it matters much, but the recipe in question is the v4l-=
utils_1.6.2 recipe
>=20
>=20
>=20
>=20

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--8X7/QrJGcKSMr1RN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUWF4kACgkQN1Ujt2V2gByO0gCbBbJt0ctFONbSCZxkjEUhBFwH
GJUAnR6BIvDJ6IsVVjJk7wKbkmPnU1O5
=55Yy
-----END PGP SIGNATURE-----

--8X7/QrJGcKSMr1RN--
