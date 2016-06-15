Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6933EE00CB0; Wed, 15 Jun 2016 06:12:34 -0700 (PDT)
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
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07BF4E00CAA
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 06:12:29 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id r5so5931352wmr.0
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 06:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ko036sXRYAGkiJ7nMnr3OeGon42CpI6HKOrdHyp9y5g=;
	b=ikmiuET3pywjFEWhrZSCBfJUI4nOwzScboxuIoAn6BVLd3dU0W1JIyjOkfqHLalJEs
	rU+OR67XWPKZsqqFIZapxXYOrSGcu/P88XfHL7i8yq1MEvg4MrjqDfATG806QCS089ql
	9bqwReQ08p7sLrF8m3A4pLXaOKQyZXkE3IqhmKMk/TPVhlCmnEQD/SNv1uByINb2xhXk
	BwrmQ/kCwTsuuvw8JfA9V3tXhvY0cWbFBQsWv4G91xwzs0/3sV/uYLC9Gc6JBbwm8HMT
	tyOGJqf9zSc1Yaqmhz0BuUM1lrh8kCCK+wkqDEYpCVYKv6022qEqwhNigxCEH1E7hBA2
	HlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ko036sXRYAGkiJ7nMnr3OeGon42CpI6HKOrdHyp9y5g=;
	b=QSYKucbGXPzxGSscn1qAIFffSKrkn+QCCbybKuCvaiYNuMVqTZSla1+Moh+nDq7tNB
	IIq/qcBz1Yhbq8Hpb/38kKIWYK5nVF3/0MnIgRj/UM4u7jA20ilPq2m7sxDRtBNkqMob
	LQmdW6TdgI03kvUq4GORomLxw+jmXlUysQmnrZAQXAutWvhOokQr4wgIFl7I4nJWughu
	UidrYPmtTND5tFJMhKktGy3Mu8iiA80bBCLsvfrzDqJWhtVZoxMoZ81z4vPOGscuniLJ
	iB76PsE5WVDCcVRU2eUsxRI40xC5ZPdr1wMTyiq+XeUBbyNSZhJVZ4ulWt1k7hw0uLN0
	NT0Q==
X-Gm-Message-State: ALyK8tLttHgUhbDCZBe6J2/JlkqwACdBNdHZSjkztJwHiKaYyaK6MZJCMpuvpvCEVQC15g==
X-Received: by 10.28.25.129 with SMTP id 123mr10143330wmz.10.1465996348740;
	Wed, 15 Jun 2016 06:12:28 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	b4sm12694847wjd.16.2016.06.15.06.12.27
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 15 Jun 2016 06:12:27 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 15 Jun 2016 15:12:51 +0200
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20160615131251.GE2569@jama>
References: <alpine.LFD.2.20.1606150839230.9417@localhost.localdomain>
	<alpine.LFD.2.20.1606150849540.25853@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1606150849540.25853@localhost.localdomain>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there an actual "compiler-gcc6.h" patch?
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
X-List-Received-Date: Wed, 15 Jun 2016 13:12:34 -0000
X-Groupsio-MsgNum: 30545
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SWTRyWv/ijrBap1m"
Content-Disposition: inline

--SWTRyWv/ijrBap1m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 15, 2016 at 08:51:11AM -0400, Robert P. J. Day wrote:
> On Wed, 15 Jun 2016, Robert P. J. Day wrote:
>=20
> >
> >   following on a post to the list from back on jun 1:
> >
> > https://www.mail-archive.com/yocto@yoctoproject.org/msg29568.html
> >
> > i figured it wouldn't be hard to find the place where that header file
> > was added to the master branch for (in this case) the 4.1 kernel, but
> > i just checked the git repo, master branch, and i don't see that file
> > there, but i see that a patch to add it was submitted back on june 2:
> >
> > https://github.com/Freescale/meta-fsl-arm/blob/master/recipes-kernel/li=
nux/linux-ls1/Fix-the-compile-issue-under-gcc6.patch
> >
> > so what is the status of this? am i just reading this incorrectly? or
> > doing something wrong?
>=20
>   i do realize that that patch referred to above was for the
> meta-fsl-arm repo, i just assumed it would work its way into master in
> short order. but i could be totally off-base here.

Backport this change to your kernel:

=46rom cb984d101b30eb7478d32df56a0023e4603cba7f Mon Sep 17 00:00:00 2001
=46rom: Joe Perches <joe@perches.com>
Date: Thu, 25 Jun 2015 15:01:02 -0700
Subject: [PATCH] compiler-gcc: integrate the various compiler-gcc[345].h fi=
les

As gcc major version numbers are going to advance rather rapidly in the
future, there's no real value in separate files for each compiler
version.

Deduplicate some of the macros #defined in each file too.

Neaten comments using normal kernel commenting style.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--SWTRyWv/ijrBap1m
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAldhVFMACgkQN1Ujt2V2gBzPvACgrxGiln5jjiMTcVhGjYJcFLkr
DL8An30sZvrmp5j7v5mcA+77jJxiO8bq
=NFUd
-----END PGP SIGNATURE-----

--SWTRyWv/ijrBap1m--
