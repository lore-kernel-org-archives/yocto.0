Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30364E00746; Sun, 15 Feb 2015 14:04:06 -0800 (PST)
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
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C8AE00734
	for <yocto@yoctoproject.org>; Sun, 15 Feb 2015 14:04:02 -0800 (PST)
Received: by mail-wi0-f174.google.com with SMTP id em10so22476540wid.1
	for <yocto@yoctoproject.org>; Sun, 15 Feb 2015 14:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=v3MLAC7RtHuJdcHT75WaodycdZ/rOFM9zMXrElciyCo=;
	b=BMaPh0M+LlH5XTi3+JESvCRH0fub7v9LHvsPoWnInk4ay9n/QbUElLzbOgmUYC5MBo
	xnWvZiTTXB7x/EnznRaZX7ffY1T0ZrcD8deXjfslRe/tlXv0knmFWNO60N97t6kc9QWU
	z/6xN95fsUe14MY9yIbUG/+ols4hcM131qsU2GqMy9CKMt5t6E6YwCLYCx3H3N87fW11
	GOF/aK7GpQqH10tx/GHXf2VBxdWn2k33MCUMC0ELQ+uEgWDpoi5HYeeVE5wxYAMSkmDv
	I0Rt3QmdRW3aDgkd/WQtNLBfdblDnJgI8EF7/M6CTiOl75d25zJC0k3NBuhG5YU9AbYV
	jygg==
X-Received: by 10.180.8.65 with SMTP id p1mr17677319wia.42.1424037841303;
	Sun, 15 Feb 2015 14:04:01 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	qb8sm13894833wjc.4.2015.02.15.14.04.00
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 15 Feb 2015 14:04:00 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sun, 15 Feb 2015 23:04:08 +0100
To: Nikolay Dimitrov <picmaster@mail.bg>
Message-ID: <20150215220408.GC2297@jama>
References: <54E0A128.3040307@mail.bg>
MIME-Version: 1.0
In-Reply-To: <54E0A128.3040307@mail.bg>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Yocto patch tracking
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
X-List-Received-Date: Sun, 15 Feb 2015 22:04:06 -0000
X-Groupsio-MsgNum: 23589
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="da4uJneut+ArUgXk"
Content-Disposition: inline

--da4uJneut+ArUgXk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 15, 2015 at 03:37:44PM +0200, Nikolay Dimitrov wrote:
> Hi guys,
>=20
> Is there a web-based staging area where Yocto project holds all the
> submitted and pending patches until they're merged, something like
> Patchwork? Or is it up to each Yocto layer maintainer to define his own
> work-flow?

layers from meta-openembedded respository and meta-qt5 are tracked in
patchwork:
http://patches.openembedded.org/

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--da4uJneut+ArUgXk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlThF9gACgkQN1Ujt2V2gByWwACeOF6ZKy32G9y7kxjNLkRAuSAB
Sw8An2Zo6WYPuKTbj9IzkNqZwDpX1ndh
=yWsX
-----END PGP SIGNATURE-----

--da4uJneut+ArUgXk--
