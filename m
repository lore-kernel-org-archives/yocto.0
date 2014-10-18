Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4637BE007B9; Sat, 18 Oct 2014 03:03:15 -0700 (PDT)
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
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82BAE006EF
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 03:03:01 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id k14so2365124wgh.31
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 03:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=WKISG8EDSw7+scNomdIUNmCC2TqlyNFMTmT4ZxiZPdI=;
	b=a6qhfXreT5xls+zIHVX6bkYx3cwS+QqH97GRis0xJXgjC+/UwVBYEAS4tU4xnQLDPj
	eSDznHgK+Osc04oHjYCP9bS77h7ZLLa/EvEP8HFaY4Ppak9lQYDaZf1mLxdCGMC1yjfe
	iv3NJr8cyVzvsZq0NZZIREwpY4wEnEWwlhqwwicdx21RUUPFP03F9MPvS/pA1RRVXPwQ
	W76ooW7p9TaMG7TbLO5PE1VHbhrrKI96/BNNnzYp00LUPD1V+GCm0Y+VT6Shi0K4Un7P
	fWu3eMXz0bqwN1ewPZZSv700JSR+n/uxy7HJKm0VwogAsxTyFtHvLngF6DAMAe27X9dl
	gKXg==
X-Received: by 10.194.57.169 with SMTP id j9mr5222887wjq.33.1413626580617;
	Sat, 18 Oct 2014 03:03:00 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	cw6sm4697166wjb.18.2014.10.18.03.02.59 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Oct 2014 03:02:59 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sat, 18 Oct 2014 12:03:00 +0200
To: Neuer User <auslands-kv@gmx.de>, Tyler Hall <tylerwhall@gmail.com>
Message-ID: <20141018100300.GG2437@jama>
References: <9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
	<m1rb0r$ucm$1@ger.gmane.org>
	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
	<m1rc1u$cvb$1@ger.gmane.org> <m1rf00$l0m$1@ger.gmane.org>
	<m1t3rp$aj2$1@ger.gmane.org> <20141018084423.GB2437@jama>
	<m1t9ml$43g$1@ger.gmane.org> <20141018091009.GD2437@jama>
	<544233BF.8020007@gmx.de>
MIME-Version: 1.0
In-Reply-To: <544233BF.8020007@gmx.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: SOLUTION: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Sat, 18 Oct 2014 10:03:15 -0000
X-Groupsio-MsgNum: 21850
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="p7qwJlK53pWzbayA"
Content-Disposition: inline

--p7qwJlK53pWzbayA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 18, 2014 at 11:32:47AM +0200, Neuer User wrote:
> Am 18.10.2014 um 11:10 schrieb Martin Jansa:
> > On Sat, Oct 18, 2014 at 10:51:30AM +0200, Neuer User wrote:
> >>> http://git.openembedded.org/openembedded-core/commit/?h=3Ddaisy&id=3D=
de5797b27a358954eb15318d0d77ad1981981861
>=20
> THANKS A LOT!!!
>=20
> This is it. This patch broke the recipe. I reverted it and it runs
> through now without error.
>=20
> THANKS A LOT!!!
>=20
> What shall we do now? Is this a bug in this patch? Or does my recipe
> need some adaptation?

+ Tyler Hall

My guess is that your app is receiving the include path with sysroot
prefix now from sysconfig and then adds another sysroot prefix so it
points to non-existent directory, check the include paths (e.g. run
make -n in your configured qmake project) and if it's the
case then debug where it's added (OE_QMAKE_DEBUG_OUTPUT =3D "-d" should
help)

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--p7qwJlK53pWzbayA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRCOtQACgkQN1Ujt2V2gBzYtACfVuBOu/Z8gySc0z4vce3CTMSQ
czQAn1A5ujysHktCVnSTLD5vsXQxUtLW
=WoR8
-----END PGP SIGNATURE-----

--p7qwJlK53pWzbayA--
