Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6B51E00AB3; Wed, 10 Oct 2018 13:10:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F92FE003D9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 13:10:06 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id y144-v6so7008158wmd.4
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 13:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=11aN/aY4IHQULKn83hkoNtHGZM10aMuXkHhEx/A+/+8=;
	b=cpX7XTIpMpd2P2g0FIMNblu3OBClkFAvrZPf6QwnpBrREAzEtx6tU2IkPCRCW8zvxo
	ZBGWljubCFnxLCnN478qkOj2naV1bdEChnmJv5tAXqoRUtuML7gB9MLmSwpvLh5tve1T
	HubKgVJ99La9Ki6Cqv4R+Ku7PYQV67JiQ62UmxSYwxOxRfidiz6lTqw80BFtJurkOkfC
	40p98Eqilj0WkhlRd7dyr0nG1kSOcUy4umuhCNt1XEGETyDrW/MmOUQb1SVnBLBV1qPR
	/kbHo4YAzFJazdzLRx32tmiNY4Og5F2KBCfVDtjaEirEY2FXaCtLapDBlec+IkAa9wXE
	6hmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=11aN/aY4IHQULKn83hkoNtHGZM10aMuXkHhEx/A+/+8=;
	b=IJy3bcW3TgW8Atn1eg9znEOvon74rqmdNuSSrWVzrZCU6LZyYyx6pSk0GUgGw6IUwA
	wJzWNnGTdYa/Fd0ZRTv1wUhcWKcXhGz73VPSWc+NU7fyz5u9Pwnu+f+aGtvAUDBCYsoy
	lgijJjopUg/S4PxDngPINac7og/RBAo0QhCYQI8TnZXAoEo37bP/v/m8e9N8W6PaVOeB
	c3lUgICdDO3RweZvPhl3gPc30sYQxOF2B9izhIyt0+l2pHh5AeOVjN9gY9djNWCMBPzi
	yAnUenrvsG3n5jcmForjhdXhJaio+wnCXWucfUfpwVuQ1MHFdsWZ8MFaghH4WJX3zN55
	s3uQ==
X-Gm-Message-State: ABuFfoj5KKpxTL03/3taDfhfDZQq9/Zbvn7QhbjFXZ8Tmq0B+6O6noB8
	bDPII+8dFKRwmbjs2FqbLpw=
X-Google-Smtp-Source: ACcGV62H+FW8yjCcMDvoNVe6OooB+ttRnj5yZ0ds8bxM0njO5rUrLvIjllXfBrMGs85wgZAePWfr4w==
X-Received: by 2002:a1c:5e49:: with SMTP id
	s70-v6mr2011261wmb.131.1539202205186; 
	Wed, 10 Oct 2018 13:10:05 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	e196-v6sm11463512wmf.43.2018.10.10.13.10.03
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 10 Oct 2018 13:10:04 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 10 Oct 2018 22:10:06 +0200
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Message-ID: <20181010201006.GA1350@jama>
References: <CANmTPBb3rEK8t6j+bUX92dS7UZCQpu0-ZoEGCDzgq7FBgZUXOA@mail.gmail.com>
	<CANmTPBaHBNZT=391K72aYVm4Gbj6Pn=XGYZf1ObJN+Umws+1fQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANmTPBaHBNZT=391K72aYVm4Gbj6Pn=XGYZf1ObJN+Umws+1fQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: failed to compile php_7.2.10.bb
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
X-List-Received-Date: Wed, 10 Oct 2018 20:10:06 -0000
X-Groupsio-MsgNum: 42732
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline

--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 10, 2018 at 04:03:55PM -0400, Simon Chamlian wrote:
> Hi,
>=20
> I tried to bitbake php_7.2.10.bb and I am getting the following error.
>=20
> Did anyone tried to compile php_7.2.10.bb ?
>=20
> Any clue on what the issue can be ?
>=20
> bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG,
> expression was mysql sqlite3 imap opcache openssl
> ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6 pam', d)}  apache2 sqlite3
> pgsql  which triggered exception AttributeError: module 'bb.utils' has no
> attribute 'filter'

You're missing different versions of oe-core and meta-oe, use both from
the same branch and it will work.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--uAKRQypu60I7Lcqm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCW75cmwAKCRA3VSO3ZXaA
HLHiAKCbbCelrAPm8V7M5CtkOlbJkErZyQCcDgbMOWW+J0KdfjmrG+dLn+lqCnw=
=lgVx
-----END PGP SIGNATURE-----

--uAKRQypu60I7Lcqm--
