Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06F6DE00723; Sun, 17 Aug 2014 10:39:07 -0700 (PDT)
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
	*      [209.85.215.41 listed in list.dnswl.org]
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 534F8E00655
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 10:39:03 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id s18so3843592lam.28
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 10:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=XEwVJxJEwz3CV11RkHfZlPz/uTktjLXxd+6hz+za68o=;
	b=SRNRrVB+nkN7Y897pI68ZLcRNeUrGYWhz+WkGXdhGCdcGIUu3AgnBDHqtmS/Sun/ot
	ZsOUbdHgwlCcsgBVe2hihRs+j/SV0ZBp5Gkdc6uR9chgai7cD73wMZsYPVqQnita0drb
	bOyfOfVeKAekUEr9+1g0/kApn3Q+CHChEFW/jBFcdO7lDh/Tli+y1ryyop/G1IBugCOA
	5DQWVDZKUJWVSQlg5FF0zFBPihW3mGlFp4vbqXWJM8hV9Asf5ORpd7v6Qe83V+SxGDrl
	+Jj6JVkwVQKEq78+4c9XatG+zEa7xp1SFG1FpXu8ZuKvxAXgLYi+etuOHwf9xhQ2LKkM
	BmnQ==
X-Received: by 10.152.9.100 with SMTP id y4mr24696943laa.26.1408297141991;
	Sun, 17 Aug 2014 10:39:01 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	th7sm2974673lbb.36.2014.08.17.10.39.00 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 Aug 2014 10:39:01 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sun, 17 Aug 2014 19:39:00 +0200
To: Jens Rehsack <rehsack@gmail.com>
Message-ID: <20140817173900.GH3660@jama>
References: <546B672E-C981-41EE-B2E3-655F24672A3F@gmail.com>
MIME-Version: 1.0
In-Reply-To: <546B672E-C981-41EE-B2E3-655F24672A3F@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: Fix for meta-oe/recipes-graphics/fbida/fbida_git.bb
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
X-List-Received-Date: Sun, 17 Aug 2014 17:39:07 -0000
X-Groupsio-MsgNum: 21127
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZY5CS28jBCfb727c"
Content-Disposition: inline

--ZY5CS28jBCfb727c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 17, 2014 at 05:02:39PM +0200, Jens Rehsack wrote:
> Hi,
>=20
> we played a bit with some tools before using a modified psplash to show s=
ome guidance on hdmi-fb and there was an error in fbida which wrongly mixes=
 host-paths and target paths. Additionally - for Poky or OE it's unnecessar=
y to guess additional path to check - recipes will do correctly.

Please follow README and send it as inline patch to oe-devel ML.

Thanks

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ZY5CS28jBCfb727c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlPw6LQACgkQN1Ujt2V2gBxe0wCfV/f2uvIB2ghPv5OsUPvkvDm6
Ue8Ani1QRxhp7NwdAK+3rMmyvPiq8/0L
=HnCK
-----END PGP SIGNATURE-----

--ZY5CS28jBCfb727c--
