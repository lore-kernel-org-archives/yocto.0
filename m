Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6328E007B9; Sat, 18 Oct 2014 01:44:28 -0700 (PDT)
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
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 663A4E006EF
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 01:44:25 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id em10so2837753wid.13
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 01:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=RoubrGTR+Ksg6Qumu/qcyPZSA1fZG+xwq6d/SJRb8zw=;
	b=PXAZi2veI1po1ghDtMU7c9yy7C+McMZzQGcO+bDXWaQbciroiFx6PFUjfwAm0rqrlU
	wlql33lANoBxrPZphFvbzSQDqGa10lti6XTXHCu7vuQMY/+nExVq1dIoo62EBbwcjyy3
	KijV9OMLgEzpS+6DQb4nFZWw10gEyVhBxiW1Pai7JMbZrJ75znF2hVqfR5kcG8StNDAa
	2U5yDzg5sl1RgKgknyU6pI2S7ik46Lj4A92Y0L3XXTU1k0crQnfH06jxzmXFiKqIcv7f
	MzJ0WhhE87ebjfforJSnIRTit3qQo0tWmBl47Lk6VCCAfj5VE1FNIxsiOu5trzfT7qy6
	gMjg==
X-Received: by 10.180.21.241 with SMTP id y17mr593808wie.57.1413621864369;
	Sat, 18 Oct 2014 01:44:24 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	ji10sm2281442wid.7.2014.10.18.01.44.23 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Oct 2014 01:44:23 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sat, 18 Oct 2014 10:44:23 +0200
To: Neuer User <auslands-kv@gmx.de>
Message-ID: <20141018084423.GB2437@jama>
References: <m1qpbo$lsa$1@ger.gmane.org>
	<9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
	<m1rb0r$ucm$1@ger.gmane.org>
	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
	<m1rc1u$cvb$1@ger.gmane.org> <m1rf00$l0m$1@ger.gmane.org>
	<m1t3rp$aj2$1@ger.gmane.org>
MIME-Version: 1.0
In-Reply-To: <m1t3rp$aj2$1@ger.gmane.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Sat, 18 Oct 2014 08:44:28 -0000
X-Groupsio-MsgNum: 21844
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ftEhullJWpWg/VHq"
Content-Disposition: inline

--ftEhullJWpWg/VHq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 18, 2014 at 09:11:51AM +0200, Neuer User wrote:
> I don't see any chance to get this running. The whole environment seems
> to be missing, such as BUILD_SYS, HOST_SYS, STAGING_LIB_DIR and other.
>=20
> I will now completely resetup yocto from scratch, hoping that this fixes
> the problem. Will report tomorrow or as soon as I have a result.

Have you tried to revert these 2 changes?
http://git.openembedded.org/openembedded-core/commit/?h=3Ddaisy&id=3Dde5797=
b27a358954eb15318d0d77ad1981981861
http://git.openembedded.org/openembedded-core/commit/?h=3Ddaisy&id=3Dae49ad=
c13db10cb39eeb9377eb4c60a4db436e00

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ftEhullJWpWg/VHq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRCKGcACgkQN1Ujt2V2gBzeKACeMTs7I47guzLciK9agUO6Mhfw
EckAn3vCZP0PWEAIp43cZwghVtrhjYxL
=8eTE
-----END PGP SIGNATURE-----

--ftEhullJWpWg/VHq--
