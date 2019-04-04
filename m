Return-Path: <d.s.e@sordidmusic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F192E00D24; Thu,  4 Apr 2019 03:00:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 465 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Apr 2019 03:00:53 PDT
Received: from mail.rpgmaster.net (mail.rpgmaster.net [78.46.222.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B8CCE00D20
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 03:00:53 -0700 (PDT)
Received: from phoenix.invalid (x59cc87c8.dyn.telefonica.de [89.204.135.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (No client certificate requested)
	by mail.rpgmaster.net (Postfix) with ESMTPSA id 266E42092C
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 11:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sordidmusic.com;
	s=rpgmaster; t=1554371587;
	bh=kz5CN7q79TYcWy3B1PunPa4TVNFrCD8YXSC2WklEoQA=;
	h=Date:From:To:Subject;
	b=uvtFtRijag71gSYyMFjLrIZ512dHLcSdt27p4KpX9Prcp5QAgDSIpEKOWlNC697o3
	10KWtq04yw35tDUjD/T00ot6L3TVGArK3RBZ9A/3X3TLTI8p1aXH7d65VOaMckslxq
	86QSf58Z1yHUtxOI8XwagRZOh6tND4wEB4Nhubfo=
Date: Thu, 4 Apr 2019 11:53:01 +0200
From: Guenther Meyer <d.s.e@sordidmusic.com>
To: yocto@yoctoproject.org
Message-ID: <20190404115301.1820604a@phoenix.invalid>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Metadata is missing in some Python packages
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
X-List-Received-Date: Thu, 04 Apr 2019 10:00:54 -0000
X-Groupsio-MsgNum: 44638
Content-Type: multipart/signed; boundary="Sig_/+lIt5NiztS6g06mxI+0Hnqv";
	protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/+lIt5NiztS6g06mxI+0Hnqv
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi,

I added some python recipes for my application, and now I have the
problem, that in some of the created packages the metadata is missing.
For example, the package I have for Twisted 18.7 is one of those.
When I use a python package like daphne, which is dependent on
Twisted >=3D 18.7, then it won't work, because daphne checks the version
before doing anything else.
I created a workaround by removing this check in the recipe, but that
doesn't feel right.

Maybe there is something I missed in my recipes?


--=20
Summer-Hack-Session 2.8
http://session.pestilenz.org/session2/


--Sig_/+lIt5NiztS6g06mxI+0Hnqv
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzA/1q58SJcycb7/KVdabz09aRfwFAlyl0/0ACgkQVdabz09a
RfyBaQ/+Mi9pc/2mtOEBPKGiAngg8Xx+kUSFNrb9A4bAXlDmGcyiLLiBQF8SPr6q
JyXQRDwCbVzu17j91u8+6T98udTKz07wybDaCUPAPnNkn5s4S7zhR9fseeftU0GW
HW/SfpTzUbojvzqULenCEjmBTxnir0sf+w9XaqTDOjVf5jSQYwyj7Ji3tA6ZR41J
2YUC5kUx2fXXISNRf7392qOO8R25UICCcHvgR5LDYp1iSRLNHATvJUKR+bT1310C
LNb6gwxrxSf3PlIf0wOpYfEu2YrR30vLOaAiEfmiggfFiufD4CHuhzEv1jA7XsJX
k6xgh+sKEWKodJSJnBp9jNBPuq0bpCFUd3rmUwnq8j4ZOWCNIlSViURhCSmOrm6b
Fu7F9ek6SSOfF9nLojQPp1KR+PKp5PAJ4BKW8q0oebZl4CZAFaEFEuY4Lau71xMD
QhloFHG5xkrtp7Xv/vdx+f49InRnRdczUPp1nHkPQM0KxccB5o5HRuxlrJ6RIOYX
4n80w233rwwjgub58yStrvgDuLpkfFHkkJJ7JlaCcGE1P4mMgKFOLqcP6oynW9wA
9Y3IzEZCwYDz/QN5fAyKMp9NncfqQezJiIRgy8yH5D5Z46t7UJygkXp21WXfeW8J
yo9Ty/ewbyCu9sZ+6/ZbthvXdy9UrXw3VjIg1r+6zBx0R/WzrRg=
=P7jL
-----END PGP SIGNATURE-----

--Sig_/+lIt5NiztS6g06mxI+0Hnqv--
