Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A729E007F1; Mon, 18 Aug 2014 06:45:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 290A3E007EE
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 06:44:58 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id gl10so4488929lab.40
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 06:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:subject:message-id:mime-version:content-type
	:content-disposition:user-agent;
	bh=7oq/ATfdbEVEkLgpVV9k0gRVIsguz5kCpAXGchZjDAM=;
	b=NHr1DOrfzMcf3NFAf/Ixbw/EYXl5UPGYgpS63UB81JmwR4bD5W10z6Nr0LBZp2IbzW
	IpbOjtd8HT0szvV+1eviTLGaswzN64rkEFxA5Rsu5N1Yaxr28HJ/etdW3XZCRqvyBtbm
	e2BfFC73HnaqIjnjVWs3sU04zxIU1iQ1lcAPrZQ5B+FbN+8fs8FQf51XOqpJSTDfi1i/
	m53+GN3cyb2LvCnIXL482PBj2qEGkSiORaZR3i8LbpmYkUBeMGerFUMmj00vb7Q0L/28
	veQmcfCnbduR0PU8rHwnI4DyZDvOPY+fhGuImMhhGJZlPdez56M38Qa263aG8gx4tY89
	MTjA==
X-Received: by 10.152.5.102 with SMTP id r6mr28585554lar.81.1408369496903;
	Mon, 18 Aug 2014 06:44:56 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id b2sm6769532laf.41.2014.08.18.06.44.55
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 18 Aug 2014 06:44:56 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Mon, 18 Aug 2014 13:44:53 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: OE Devel <openembedded-devel@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <20140818134453.GE12992@gmail.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: toybox in OpenEmbedded
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
X-List-Received-Date: Mon, 18 Aug 2014 13:45:00 -0000
X-Groupsio-MsgNum: 21138
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kA1LkgxZ0NN7Mz3A"
Content-Disposition: inline

--kA1LkgxZ0NN7Mz3A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

I've been wanting to try out toybox within OpenEmbedded for quite a while a=
nd
have finally found time to put a recipe together. Toybox is a BSD-licensed
alternative to Busybox which may be of interest to a few people. It's still=
 a
work in progress but it already covers a large number of the basic commands=
 a
system needs. It should tie in well with the recent work Khem has done to e=
nable
the use of musl in OpenEmbedded as toybox and musl are often used together =
(e.g.
Aboriginal Linux distro).

My patches are currently against openembedded-core for convenience but this
probably belongs in meta-oe for now. I've done some basic testing on qemuar=
m but
nothing significant. toybox builds and installs correctly though and I've s=
et
ALTERNATIVE_PRIORITY =3D 60 so that it takes precedence over busybox tools.

Removing toybox after it has been installed currently bricks the system tho=
ugh
as the postrm script runs after '/bin/toybox' has been removed (so things l=
ike
'/bin/ln' become broken links and the update-alternatives script can't run).

I can send patches but as I say, this is a work in progress and you shouldn=
't
install toybox using this recipe on a production system yet. Would anyone e=
lse
be interested in testing this out? And should I send these patches against
openembedded-core or meta-oe or should I create a separate layer for this u=
ntil
it stabilises?

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--kA1LkgxZ0NN7Mz3A
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJT8gNVAAoJEBwoJlo7UPQDRpIIAJkfyU5uwPHqAJarSVJtxJwC
/g9gQIeMHtkZHF3lGqE6syXVSiWXSUwIP2RGG7MplL+EUgaQs0khRTm4Hhp3otuM
LmfAU+wbfEesih2GKtmYJxWOWxQoRk4SQAZB5jwWKlA/59SNnxntZbq0HLn0i/cS
QqHoEwTwnAqVK2s6XiOQsr9nA8sZ91IUYQny110dmV3YyjOVrCY7fRgDFbiPN6W3
pHSNL5tS/Uth6rBelCncPxEBkKWWUyopWyya4k05F4xDByU38PfJLhWw9dUGDEIc
s8Y9TRWXENYXonjez1yI6IbXUZau09Sx3udMXkU64cfbafCxv80kKiQ6zg3p+20=
=Gpp4
-----END PGP SIGNATURE-----

--kA1LkgxZ0NN7Mz3A--
